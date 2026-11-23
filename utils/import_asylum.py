"""Import the installed Asylum source scene and every associated performance.

The raw export stays outside the addon. Portable dialogue, scene and performance
catalogs go into scripts/dialogue/asylum; original voice is converted to native
48 kHz PCM assets. This does not execute Bloodlines Python or change a live map.
"""
import argparse
from collections import Counter
from concurrent.futures import ThreadPoolExecutor
import hashlib
import json
import math
from pathlib import Path
import re
import shutil
import subprocess
import struct
import wave

from bloodlines_assets import Assets, asset_path, choreography, dialogue, entities, lip_sync, pose_table, text, write_json
from build_jeanette_face import evaluate, eyelid_rules, lua, ramp, read_model_rules


MAP = 'sm_asylum_1'
KV3 = '<!-- kv3 encoding:text:version{e21c7f3c-8a33-41c5-9977-a76d3a32aa0d} format:generic:version{7412167c-06e9-4698-aff2-e63eb59037e7} -->'


def resource_refs(value):
    pattern = r'(?:models|materials|sound|expressions|vdata|scripts|particles)/[^"\r\n\x00<>]*?\.(?:mdl|vmt|wav|mp3|txt|vcd|lip|spr|pcf)'
    return [asset_path(m.group()) for m in re.finditer(pattern, value.replace('\\', '/'), re.I)]


def extract_dependencies(assets, raw_root, map_entities, vmf):
    """Keep source dependencies and explicit unresolved paths for later conversion."""
    queue = set()
    for entity in map_entities:
        p = entity['properties']
        for key, value in entity['pairs']:
            queue.update(resource_refs(value))
            if key in ('message', 'sound_loop') and value.lower().endswith(('.wav', '.mp3')):
                queue.add(asset_path('sound/'+value.lstrip('*#')))
            if key in ('scheme_file', 'default_camera') and '/' in value:
                queue.add(asset_path(value))
    for name in re.findall(r'"material"\s+"([^"]+)"', vmf, re.I):
        if not name.startswith('**'):
            queue.add(asset_path('materials/'+name+'.vmt'))
    missing = set()
    seen = set()
    while queue:
        name = queue.pop()
        if name in seen:
            continue
        seen.add(name)
        if name not in assets.entries:
            missing.add(name)
            continue
        raw = assets.export(name, raw_root)
        if name.endswith('.mdl'):
            stem = name[:-4]
            queue.update(k for k in assets.entries if k.startswith(stem+'.') and k.endswith(('.vtx', '.phy', '.vvd')))
            if raw[:4] == b'IDST' and struct.unpack_from('<I', raw, 4)[0] == 2531:
                # Native v2531 texture table: 20-byte entries with relative
                # names; search directories are absolute string offsets.
                count, offset, dirs, dir_offset = struct.unpack_from('<4i', raw, 292)
                def cstring(at):
                    return raw[at:raw.index(b'\0', at)].decode('ascii')
                search = [cstring(struct.unpack_from('<i', raw, dir_offset+i*4)[0]) for i in range(dirs)]
                for i in range(count):
                    at = offset+i*20
                    material = cstring(at+struct.unpack_from('<i', raw, at)[0])
                    candidates = [asset_path('materials/'+directory+material+'.vmt') for directory in search]
                    selected = next((c for c in candidates if c in assets.entries), None)
                    if selected:
                        queue.add(selected)
                    elif candidates:
                        missing.add(candidates[0])
        if name.endswith(('.txt', '.vmt', '.vcd', '.mdl')):
            content = text(raw) if not name.endswith('.mdl') else raw.decode('ascii', errors='ignore')
            queue.update(resource_refs(content))
            if name.endswith('.vmt'):
                for texture in re.findall(r'"?\$(?:base|bump|detail|envmapmask|normal)texture"?\s+"([^"]+)"', content, re.I):
                    for ext in ('.tth', '.ttz', '.vtf'):
                        candidate = asset_path('materials/'+texture+ext)
                        if candidate in assets.entries:
                            queue.add(candidate)
            if name.startswith('sound/schemes/'):
                for sound in re.findall(r'"([^"\r\n]+\.(?:wav|mp3))"', content, re.I):
                    queue.add(asset_path('sound/'+sound.lstrip('*#')))
    return sorted(missing)


def expression_metadata(assets, raw_root, model_name, character):
    raw = assets.export(model_name, raw_root)
    descs, controls, rules, frames = read_model_rules(raw)
    lids = eyelid_rules(raw)
    def pose(values):
        evaluated = evaluate(controls, rules, values, len(descs))
        for out, inputs, targets in lids:
            evaluated[out] = sum(evaluated[i]*t for i, t in zip(inputs, targets))
        return [round(ramp(evaluated[f['index']], f['targets']), 6) for f in frames]
    tables = {}
    expression_name = 'blood_doll' if character == 'doll1' else character
    for key in assets.entries:
        if key.startswith('expressions/'+expression_name) and key.endswith(('.txt', '.vfe')):
            data = assets.export(key, raw_root)
            if key.endswith('.txt'):
                tables[key] = pose_table(data)
    phonemes, poses = {}, {}
    for key, table in sorted(tables.items(), key=lambda item: (item[0] == 'expressions/'+expression_name+'_phonemes.txt', item[0])):
        for label, setting in table.items():
            if '_phonemes' in key:
                code = setting['code']
                code = int(code, 16) if code.startswith('0x') else ord(code)
                # The established imported model uses its first eight frames
                # for eyelids. Never drive those baseline frames from speech.
                phonemes[str(code)] = [0 if i < 8 else w for i, w in enumerate(pose(setting['controls']))]
            else:
                poses[label] = pose(setting['controls'])
    return {'model': model_name, 'descriptors': descs, 'controls': controls,
            'rules': rules, 'frames': frames, 'phonemePoses': phonemes,
            'expressionPoses': poses, 'neutral': pose({}), 'blink': pose({'blink': 1}),
            'sourceTables': tables}


def make_audio(job, ffmpeg, raw_root, checkout):
    source, target = raw_root/job['source'], checkout/job['audio']
    target.parent.mkdir(parents=True, exist_ok=True)
    if not target.exists() or source.stat().st_mtime_ns > target.stat().st_mtime_ns:
        subprocess.run([str(ffmpeg), '-y', '-hide_banner', '-loglevel', 'error', '-i', str(source),
                        '-ar', '48000', '-ac', '1', '-c:a', 'pcm_s16le', str(target)],
                       check=True, capture_output=True,
                       creationflags=getattr(subprocess, 'CREATE_NO_WINDOW', 0))
    with wave.open(str(target), 'rb') as wav:
        if (wav.getnchannels(), wav.getsampwidth(), wav.getframerate()) != (1, 2, 48000):
            raise ValueError('Invalid converted voice format: '+job['audio'])
        duration = wav.getnframes()/wav.getframerate()
        if duration <= 0:
            raise ValueError('Empty converted voice: '+job['audio'])
    job['duration'] = round(duration, 6)
    job['wavSha256'] = hashlib.sha256(target.read_bytes()).hexdigest()
    return job


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--bloodlines-root', type=Path, required=True)
    parser.add_argument('--raw-output', type=Path, required=True)
    parser.add_argument('--output-root', type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument('--ffmpeg', type=Path)
    args = parser.parse_args()
    checkout, raw_root = args.output_root.resolve(), args.raw_output.resolve()
    if raw_root == checkout or raw_root.is_relative_to(checkout):
        parser.error('Keep the original-game raw export outside the addon checkout')
    if raw_root.is_relative_to(args.bloodlines_root.resolve()):
        parser.error('Never export into the installed source game')
    ffmpeg = args.ffmpeg or shutil.which('ffmpeg')
    if not ffmpeg:
        try:
            import imageio_ffmpeg
            ffmpeg = imageio_ffmpeg.get_ffmpeg_exe()
        except ImportError:
            parser.error('Specify an installed ffmpeg with --ffmpeg')
    if not Path(ffmpeg).is_file():
        parser.error('ffmpeg executable not found')
    assets = Assets(args.bloodlines_root)
    raw_root.mkdir(parents=True, exist_ok=True)
    destination = checkout/'scripts/dialogue/asylum'
    original = assets.export('maps/'+MAP+'.bsp', raw_root)
    scene_entities = entities(original)
    npcs = [e for e in scene_entities if e['properties'].get('classname', '').lower().startswith('npc_')]
    source_vmf = args.bloodlines_root/'SDKContent/mapsrc/up sources'/ (MAP+'.vmf')
    vmf = text(source_vmf.read_bytes()) if source_vmf.exists() else ''
    if vmf:
        target = raw_root/'mapsrc'/(MAP+'.vmf')
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_text(vmf, encoding='utf8')
    world = scene_entities[0]['properties']
    script = 'python/'+world['levelscript']+'/'+world['levelscript']+'.py'
    for name in (script, 'python/vamputil.py'):
        assets.export(name, raw_root)
    for name in assets.entries:
        if name.startswith('maps/graphs/'+MAP+'.'):
            assets.export(name, raw_root)

    dialogs = {asset_path(e['properties']['dialogname']) for e in npcs if e['properties'].get('dialogname')}
    # The conditional dancing Chunk has no dialogname in this map. Keep his
    # associated conversation too, without pretending it is map-bound.
    dialogs.add('dlg/santa monica/chunk.dlg')
    characters, jobs, performances, errors = {}, [], {}, []
    models = {Path(asset_path(e['properties'].get('dialogname', 'unknown'))).stem:
              asset_path(e['properties']['model']) for e in npcs if e['properties'].get('dialogname')}
    chunk = next(e for e in npcs if e['properties'].get('targetname') == 'Chunk')
    models['chunk'] = asset_path(chunk['properties']['model'])
    for dlg in sorted(dialogs):
        character = Path(dlg).stem
        rows = dialogue(assets.export(dlg, raw_root))
        speakers = [e['id'] for e in npcs if asset_path(e['properties'].get('dialogname', 'unknown')) == dlg]
        prefix = 'sound/character/'+dlg[:-4]+'/'
        keys = sorted(k for k in assets.entries if k.startswith(prefix))
        line_data = {}
        for key in keys:
            raw = assets.export(key, raw_root)
            match = re.fullmatch(r'line(\d+)([^/]*)\.(mp3|wav|lip|vcd)', Path(key).name)
            if not match:
                continue
            line, variant, suffix = int(match[1]), match[2], match[3]
            identifier = 'line'+str(line)+variant
            performance = line_data.setdefault(identifier, {'line': line, 'variant': variant, 'sources': {}})
            performance['sources'][suffix] = key
            if suffix == 'lip':
                performance['lip'] = lip_sync(raw)
            elif suffix == 'vcd':
                performance['choreography'] = choreography(raw)
            elif suffix in ('mp3', 'wav'):
                target = 'sounds/dialogue/asylum/'+character+'/'+identifier+'.wav'
                if any(j['audio'] == target for j in jobs):
                    errors.append({'type': 'duplicate_voice_variant', 'character': character, 'line': identifier})
                    continue
                jobs.append({'character': character, 'id': identifier, 'line': line, 'source': key,
                             'audio': target, 'sound': 'VTMBVR.Asylum.'+character+'.'+identifier})
        for row in rows:
            if row['kind'] == 'npc':
                row['performances'] = [key for key, value in line_data.items() if value['line'] == row['id']]
        # Preserve dangling and special transition targets instead of silently
        # inventing edges or claiming that Python quest logic was ported.
        npc_ids = {r['id'] for r in rows if r['kind'] == 'npc'}
        unresolved = [{'from': r['id'], 'target': r['next']} for r in rows
                      if r.get('next', 0) > 0 and r['next'] not in npc_ids]
        characters[character] = {'source': dlg, 'mapNpcIds': speakers, 'rows': rows,
                                 'unresolvedTargets': unresolved}
        metadata = expression_metadata(assets, raw_root, models[character], character)
        performances[character] = {'model': metadata, 'lines': line_data}
        print(character+': '+str(len(rows))+' dialogue rows, '+str(len(line_data))+' performances', flush=True)

    missing = extract_dependencies(assets, raw_root, scene_entities, vmf)
    groups = {e['properties']['soundgroup'].lower() for e in npcs if e['properties'].get('soundgroup')}
    for key in assets.entries:
        if key.startswith('sound/character/') and any('/'+g+'/' in key for g in groups):
            assets.export(key, raw_root)
    dialogue_sources = {j['source'] for j in jobs}
    ambient = []
    for key in sorted(assets.reads):
        if key.startswith('sound/') and not key.startswith('sound/music/') and key.endswith(('.wav', '.mp3')) and key not in dialogue_sources:
            identifier = hashlib.sha256(key.encode('utf8')).hexdigest()[:12]
            job = {'character': '_ambient', 'id': identifier, 'source': key,
                   'audio': 'sounds/ambience/asylum/'+key[6:].rsplit('.', 1)[0]+'.wav',
                   'sound': 'VTMBVR.Asylum.Ambient.'+identifier}
            companion = key.rsplit('.', 1)[0]+'.lip'
            if companion in assets.entries:
                job['lip'] = lip_sync(assets.export(companion, raw_root))
            ambient.append(job)
    jobs.extend(ambient)
    # Models/materials and dialog audio are preserved verbatim above; only the
    # derived PCM files enter the addon. No external script is ever executed.
    with ThreadPoolExecutor(max_workers=2) as pool:
        jobs = list(pool.map(lambda job: make_audio(job, ffmpeg, raw_root, checkout), jobs))
    events = [KV3, '{']
    for job in sorted(jobs, key=lambda j: (j['character'], j['id'])):
        if job['character'] != '_ambient':
            perf = performances[job['character']]['lines'][job['id']]
            perf.update({k: job[k] for k in ('audio', 'sound', 'duration', 'wavSha256')})
        resource = job['audio'][:-4]+'.vsnd'
        events.append(json.dumps(job['sound'])+' = { type = "hlvr_default_3d" volume = 1.0 volume_falloff_min = 100.0 volume_falloff_max = 500.0 vsnd_files = ['+json.dumps(resource)+'] }')
    events.append('}')
    sound_file = checkout/'soundevents/vtmbvr_asylum.vsndevts'
    sound_file.parent.mkdir(parents=True, exist_ok=True)
    sound_file.write_text('\n'.join(events)+'\n', encoding='utf8')

    scene = {'map': MAP, 'coordinateSystem': 'Original Source units and Euler angles; no inferred transform',
             'world': world, 'entities': scene_entities, 'npcIds': [e['id'] for e in npcs],
             'levelScript': script, 'geometrySourceAvailable': bool(vmf),
             'storyLogic': 'Original Python and entity Outputs retained; not executed in Alyx',
             'unresolvedResourcePaths': missing}
    write_json(destination/'scene.json', scene)
    write_json(destination/'ambient.json', [j for j in jobs if j['character'] == '_ambient'])
    for character, catalog in characters.items():
        write_json(destination/'characters'/(character+'.json'), catalog)
        write_json(destination/'performances'/(character+'.json'), performances[character])
    names = {p.relative_to(checkout).as_posix().lower(): p.relative_to(checkout).as_posix()
             for p in (checkout/'models').rglob('*.vmdl')}
    placements = []
    for npc in npcs:
        p = npc['properties']
        desired = asset_path(p['model'])[:-4]+'.vmdl'
        placements.append({'sourceId': npc['id'], 'name': p.get('targetname', ''),
                           'model': p['model'], 'alyxModel': names.get(desired),
                           'origin': list(map(float, p['origin'].split())),
                           'angles': list(map(float, p.get('angles', '0 0 0').split())),
                           'startHidden': p.get('StartHidden', '0') == '1',
                           'interestingGroups': p.get('interesting_place_groups', ''),
                           'dialogue': p.get('dialogname'),
                           'visibility': 'Subject to santamonica.py and OnMapLoad callbacks'})
    write_json(destination/'placements.json', placements)
    manifest = {'schema': 1, 'map': MAP, 'sourceLayers': ['Unofficial_Patch loose', 'Unofficial_Patch packs', 'Vampire loose', 'Vampire numbered packs'],
                'patchReadmeSha256': hashlib.sha256((args.bloodlines_root/'VTMBup-readme.txt').read_bytes()).hexdigest(),
                'sourceAssets': sorted(assets.reads.values(), key=lambda x: x['path']), 'audio': jobs,
                'characters': list(characters), 'issues': errors,
                'counts': {'entities': len(scene_entities), 'npcDefinitions': len(npcs),
                           'dialogueFiles': len(characters), 'dialogueRows': sum(len(c['rows']) for c in characters.values()),
                           'audioFiles': len(jobs), 'dialogueAudioFiles': len(jobs)-len(ambient),
                           'ambientAudioFiles': len(ambient), 'voiceSeconds': round(sum(j['duration'] for j in jobs if j['character'] != '_ambient'), 3),
                           'vcdFiles': sum('choreography' in p for c in performances.values() for p in c['lines'].values()),
                           'lipFiles': sum('lip' in p for c in performances.values() for p in c['lines'].values()),
                           'sourceAssets': len(assets.reads), 'unresolvedResourcePaths': len(missing)}}
    write_json(destination/'manifest.json', manifest)
    write_json(raw_root/'export-manifest.json', manifest)
    print(json.dumps(manifest['counts'], indent=2), flush=True)
    if errors:
        raise SystemExit('Import finished with issues; inspect manifest.json')


if __name__ == '__main__':
    main()
