"""Prepare source Asylum places, scene cues and local ambience without editing VMAP."""
import argparse
import hashlib
import json
import math
from pathlib import Path
import re
import subprocess
import struct
import wave

from bloodlines_assets import Assets, write_json
from build_asylum import lua


def sisters_scene(assets,scene,vmf):
    trigger=next(e for e in scene['entities'] if e['properties'].get('targetname')=='tourette_trigger')
    where=vmf.index('"targetname" "tourette_trigger"')
    start=list(re.finditer(r'(?m)^entity\s*\n\{',vmf[:where]))[-1].start()
    level=0;quoted=False;escaped=False;end=None
    for i in range(vmf.index('{',start),len(vmf)):
        c=vmf[i]
        if c=='"' and not escaped:quoted=not quoted
        if not quoted:
            if c=='{':level+=1
            elif c=='}':
                level-=1
                if level==0:end=i+1;break
        escaped=c=='\\' and not escaped
    planes=re.findall(r'"plane"\s+"([^"]+)"',vmf[start:end])
    points=[tuple(map(float,p.split())) for plane in planes for p in re.findall(r'\(([^)]+)\)',plane)]
    if not points:raise ValueError('Missing original sisters trigger volume')
    actor=next(e for e in scene['entities'] if e['properties'].get('targetname')=='Tourette')
    source=assets.read(actor['properties']['model']);count,offset=struct.unpack_from('<2i',source,264)
    durations={}
    for index in range(count):
        at=offset+index*72;name,fps,flags,frames=struct.unpack_from('<ifii',source,at)
        at+=name;name=source[at:source.index(b'\0',at)].decode('ascii').lstrip('@')
        if name in ('Tourette_intro','Tourette_intro_pre','Tourette_ShootsHerself'):
            durations[name]=max(0,(frames-1)/fps)
    return {'actor':'npc_vampire_asylum_'+str(actor['id']),'sourceTrigger':trigger['id'],
        'minimum':[min(p[i] for p in points) for i in range(3)],
        'maximum':[max(p[i] for p in points) for i in range(3)],'durations':durations}


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--bloodlines-root',type=Path,required=True)
    parser.add_argument('--raw-output',type=Path,required=True)
    args=parser.parse_args()
    root=Path(__file__).resolve().parents[1]
    raw=args.raw_output.resolve()
    if raw.is_relative_to(root) or raw.is_relative_to(args.bloodlines_root.resolve()):
        parser.error('Keep raw exports outside the checkout and installed game')
    assets=Assets(args.bloodlines_root)
    directory=root/'scripts/dialogue/asylum'
    scene=json.loads((directory/'scene.json').read_text(encoding='utf8'))
    manifest=json.loads((directory/'manifest.json').read_text(encoding='utf8'))
    source_audio={entry['source'].lower():entry for entry in manifest['audio']}
    vector=lambda value:[float(v) for v in value.split()]
    places=[]
    for entity in scene['entities']:
        p=entity['properties']
        if p.get('classname')!='intersting_place':continue
        for slot in range(int(p.get('max_npcs','1'))):
            origin=vector(p['origin']);bounds=vector(p.get('min_bounds','-16 -16 0'));upper=vector(p.get('max_bounds','16 16 72'))
            if int(p.get('max_npcs','1'))>1:
                columns=math.ceil(math.sqrt(int(p['max_npcs'])))
                rows=math.ceil(int(p['max_npcs'])/columns)
                origin[0]+=bounds[0]+(slot%columns+.5)*(upper[0]-bounds[0])/columns
                origin[1]+=bounds[1]+(slot//columns+.5)*(upper[1]-bounds[1])/rows
            places.append({'id':entity['id']*10+slot,'name':'iplace_'+str(100000+entity['id']*10+slot),
                'sourceId':entity['id'],'group':int(p.get('group_id','0')),'kind':p['type'],
                'origin':origin,'yaw':vector(p.get('angles','0 0 0'))[1],
                'minimum':float(p.get('min_time','15')),'maximum':float(p.get('max_time','60')),
                'conversation':p.get('targetname','') if p['type']=='conversation_normal' else ''})
    actors=json.loads((directory/'cast.json').read_text(encoding='utf8'))
    for entry in actors:
        original=scene['entities'][entry['sourceId']]['properties']
        entry['groups']=[int(v) for v in original.get('interesting_place_groups','').split()]
        entry['usesInteresting']=original.get('use_interesting','1')=='1'
    sounds={};new_audio=[]
    wanted={'argument':'sound/character/conversations/sisters_argument.wav',
        'doorSlam':'sound/area/santa_monica/ocean_house/doors_end_1.wav',
        'ding':'sound/environmental/machines/elevator_ding.wav',
        'sistersGunshot':'sound/weapons/ranged/anaconda/attack_1.wav',
        'denied':'sound/environmental/electronic/deny_beep.wav',
        'unlock':'sound/usable/doors/standard_door/standard_door_locked.wav',
        'conversation1':'sound/environmental/people/conversation1.wav',
        'conversation4':'sound/environmental/people/conversation4.wav',
        'conversation5':'sound/environmental/people/conversation5.wav',
        'music':'sound/music/licenced/05. chiasm - isolated.mp3'}
    for key in assets.entries:
        if key.startswith(('sound/whispers/deluded/','sound/whispers/moaning/')) and key.endswith('.wav'):
            wanted['whisper_'+Path(key).stem.replace(' ','_')]=key
    import imageio_ffmpeg
    ffmpeg=imageio_ffmpeg.get_ffmpeg_exe()
    for label,source in wanted.items():
        if source in source_audio and label not in ('music','conversation1','conversation4','conversation5'):
            sounds[label]={k:source_audio[source][k] for k in ('sound','duration')};continue
        data=assets.read(source);original=raw/source;original.parent.mkdir(parents=True,exist_ok=True);original.write_bytes(data)
        relative=('sounds/music/asylum/isolated.wav' if label=='music' else 'sounds/ambience/asylum/location/'+label+'.wav')
        target=root/relative;target.parent.mkdir(parents=True,exist_ok=True)
        subprocess.run([ffmpeg,'-y','-hide_banner','-loglevel','error','-i',str(original),'-ar','48000',
                        '-ac','2' if label=='music' else '1','-c:a','pcm_s16le',str(target)],check=True,
                       capture_output=True,creationflags=getattr(subprocess,'CREATE_NO_WINDOW',0))
        with wave.open(str(target),'rb') as wav:duration=wav.getnframes()/wav.getframerate()
        record={'sound':'VTMBVR.Asylum.Location.'+label,'source':source,'audio':relative,'duration':duration,
                'sourceSha256':hashlib.sha256(data).hexdigest()}
        sounds[label]={k:record[k] for k in ('sound','duration')};new_audio.append(record)
    conversations=[{'name':e['properties']['interesting_places'],'id':e['id'],'places':e['properties']['interesting_places'],'origin':vector(e['properties']['origin']),
        'sound':sounds['conversation'+re.search(r'(\d+)\.wav$',e['properties']['sound_loop'],re.I)[1]]}
        for e in scene['entities'] if e['properties'].get('classname')=='intersting_place_conversation']
    whispers={category:[sounds[label] for label,source in wanted.items() if '/'+category.lower()+'/' in source]
              for category in ('Deluded','Moaning')}
    result={'actors':actors,'places':places,'conversations':conversations,'sounds':sounds,'whispers':whispers,
            'sisters':sisters_scene(assets,scene,(raw/'mapsrc/sm_asylum_1.vmf').read_text(encoding='utf-8-sig')),
            'argumentDuration':sounds['argument']['duration'],
            'storyKeys':['Asylum_Visited','Doll_Seduce'],
            'sourceMap':'sm_asylum_1','geometryEdited':False}
    write_json(directory/'location.json',result)
    (root/'scripts/vscripts/npc_source_location_data.lua').write_text(
        '-- Generated from original Asylum entities and sound assets.\nreturn '+lua(result)+'\n',encoding='utf8')
    write_json(directory/'location_audio.json',new_audio)
    lines=['<!-- kv3 encoding:text:version{e21c7f3c-8a33-41c5-9977-a76d3a32aa0d} format:generic:version{7412167c-06e9-4698-aff2-e63eb59037e7} -->','{']
    for record in new_audio:
        music=record['sound'].endswith('.music');conversation='conversation' in record['sound']
        lines.append(json.dumps(record['sound'])+' = { type = "hlvr_default_3d" volume = '+str(.14 if music else .28 if conversation else .65)+
            ' volume_falloff_min = 40.0 volume_falloff_max = 260.0 vsnd_files = ['+json.dumps(str(Path(record['audio']).with_suffix('.vsnd')).replace('\\','/'))+'] }')
    lines.append('}');(root/'soundevents/vtmbvr_asylum_location.vsndevts').write_text('\n'.join(lines)+'\n',encoding='utf8')
    write_json(directory/'location_resources.json',[a['audio'] for a in new_audio]+['soundevents/vtmbvr_asylum_location.vsndevts'])
    print('Prepared',len(places),'source place slots,',len(new_audio),'additional audio resources; VMAP unchanged.')


if __name__=='__main__':main()
