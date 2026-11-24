"""Compile the standalone Panorama dialogue using an installed Alyx SDK."""
import argparse
from pathlib import Path
import subprocess
import json
import wave
from alyx_sdk import compiled_relative, install_manifest_alias, resolve_addon

def generate_data(checkout):
    from prepare_source_dialogue import generate
    generate(checkout)
    data = json.loads((checkout / 'scripts/dialogue/jeanette.json').read_text(encoding='utf8'))
    from face_tuning import specifications
    data['faceEditor'] = specifications(checkout)
    face = json.loads((checkout/'scripts/dialogue/jeanette_lipsync.json').read_text(encoding='utf8'))
    data['faceEditor']['channels'] = face['faceControllers']
    import csv
    with (checkout / 'utils/npc_animation_sources.csv').open(encoding='utf8', newline='') as source:
        allowed = {row['clip'] for row in csv.DictReader(source) if row['family'] == 'ambient'}
    for name, node in data['nodes'].items():
        if node['animation'] not in allowed:
            raise ValueError('Conversation animation is not an ambient catalog clip: ' + name)
        answers = data['backAnswers'] if node['answers'] == 'back' else node['answers']
        if len(answers) not in (0, 4) or any(a['next'] not in data['nodes'] for a in answers):
            raise ValueError('Invalid conversation destinations: ' + name)
        if node.get('audio'):
            with wave.open(str(checkout / node['audio']), 'rb') as sound:
                node['duration'] = round(sound.getnframes() / sound.getframerate(), 3)
            node['sound'] = 'VTMBVR.Jeanette.' + name
    events = ['<!-- kv3 encoding:text:version{e21c7f3c-8a33-41c5-9977-a76d3a32aa0d} format:generic:version{7412167c-06e9-4698-aff2-e63eb59037e7} -->', '{']
    for node in data['nodes'].values():
        if node.get('audio'):
            resource = str(Path(node['audio']).with_suffix('.vsnd')).replace('\\', '/')
            events.append(json.dumps(node['sound']) + ' = { type = "hlvr_default_3d" volume = 1.0 volume_falloff_min = 100.0 volume_falloff_max = 500.0 vsnd_files = [' + json.dumps(resource) + '] }')
    events.append('}')
    (checkout / 'soundevents/vtmbvr_dialogue.vsndevts').write_text('\n'.join(events) + '\n', encoding='utf8')
    encoded = json.dumps(data, ensure_ascii=False, indent=2)
    (checkout / 'panorama/scripts/custom_game/vtmbvr_dialog_data.js').write_text(
        '// Generated from scripts/dialogue/jeanette.json by build_dialogue.py.\nvar VTMBVRDialogueData = ' + encoded + ';\n', encoding='utf8')
    def lua(value):
        if isinstance(value, dict):
            return '{' + ','.join('[' + lua(k) + ']=' + lua(v) for k, v in value.items()) + '}'
        if isinstance(value, list):
            return '{' + ','.join(lua(v) for v in value) + '}'
        if isinstance(value, str): return json.dumps(value, ensure_ascii=False)
        if isinstance(value, bool): return 'true' if value else 'false'
        if isinstance(value, (int, float)): return str(value)
        raise ValueError('Unsupported dialogue data value')
    (checkout / 'scripts/vscripts/npc_dialog_catalog.lua').write_text(
        '-- Generated from scripts/dialogue/jeanette.json by build_dialogue.py.\nreturn ' + lua(data) + '\n', encoding='utf8')
    return data

ASSETS = (
    'animgraphs/jeanette_dialogue.vanmgrph',
    'models/character/npc/unique/santa_monica/jeanette/jeanette.vmdl',
    'panorama/styles/custom_game/vtmbvr_dialog.css',
    'panorama/scripts/custom_game/vtmbvr_dialog_data.js',
    'panorama/scripts/custom_game/vtmbvr_dialog.js',
    'panorama/scripts/custom_game/vtmbvr_source_data.js',
    'panorama/scripts/custom_game/vtmbvr_font_data.js',
    'panorama/scripts/custom_game/vtmbvr_font.js',
    'panorama/layout/custom_game/vtmbvr_font_preload.xml',
    'panorama/layout/custom_game/vtmbvr_dialog.xml',
    'panorama/layout/custom_game/vtmbvr_dialog_world.xml',
    'panorama/styles/custom_game/vtmbvr_dialog_window.css',
    'panorama/scripts/custom_game/vtmbvr_dialog_window.js',
    'panorama/layout/custom_game/vtmbvr_dialog_prompt.xml',
    'panorama/layout/custom_game/vtmbvr_lift.xml',
    'panorama/styles/custom_game/vtmbvr_lift.css',
    'resourcemanifests/vtmbvr_addon_resources.vrman',
)

def generate_world_layout(checkout):
    """Share the original dialogue markup, adding only the world-window handle."""
    source=checkout/'panorama/layout/custom_game/vtmbvr_dialog.xml'
    text=source.read_text(encoding='utf8')
    text=text.replace('</styles>', '    <include src="s2r://panorama/styles/custom_game/vtmbvr_dialog_window.vcss_c" />\n    </styles>',1)
    text=text.replace('</scripts>', '    <include src="s2r://panorama/scripts/custom_game/vtmbvr_dialog_window.vjs_c" />\n    </scripts>',1)
    handle='<Panel id="DialogueGrabHandle" class="WindowGrabHandle" hittest="false"><Panel id="DialogueGrabText" hittest="false" /></Panel>\n        '
    text=text.replace('<Button id="DialogueTuning"',handle+'<Button id="DialogueTuning"',1)
    target=source.with_name('vtmbvr_dialog_world.xml')
    if not target.exists() or target.read_text(encoding='utf8')!=text:target.write_text(text,encoding='utf8')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--alyx-root', required=True, type=Path,
                        help='Half-Life Alyx installation directory')
    parser.add_argument('--addon', help='SDK addon folder; detected from this checkout when omitted')
    args = parser.parse_args()
    sdk = args.alyx_root.resolve()
    checkout = Path(__file__).resolve().parents[1]
    try:
        paths = resolve_addon(sdk, checkout, args.addon)
    except ValueError as error:
        parser.error(str(error))
    compiler, source, runtime = paths.compiler, paths.source, paths.runtime
    print('Building SDK addon: '+paths.name)
    data = generate_data(checkout)
    generate_world_layout(checkout)
    audio = [node['audio'] for node in data['nodes'].values() if node.get('audio')]
    resources = audio + ['soundevents/vtmbvr_dialogue.vsndevts'] + list(ASSETS)
    for filename in ('model_resources.json','crowd_resources.json','eye_resources.json','item_resources.json','location_resources.json'):
        model_list=checkout/'scripts/dialogue/asylum'/filename
        if model_list.exists(): resources=json.loads(model_list.read_text(encoding='utf8'))+resources
    for relative in dict.fromkeys(resources):
        target = runtime / compiled_relative(relative)
        before = target.stat().st_mtime_ns if target.exists() else None
        result = subprocess.run([str(compiler), '-i', str(source / relative),
                                 '-game', str(sdk / 'game/hlvr'), '-nop4', '-f'],
                                capture_output=True, text=True, errors='replace',
                                creationflags=getattr(subprocess,'CREATE_NO_WINDOW',0))
        print(result.stdout)
        # Some SDK failures still exit 0. Require both the success summary and
        # the newly written compiled resource rather than trusting the exit code.
        if result.returncode or '0 failed' not in result.stdout or 'Error calling' in result.stdout or 'Error!' in result.stdout or not target.is_file() or target.stat().st_mtime_ns == before:
            raise SystemExit('Compile failed or output was not updated: ' + relative + '\n' + result.stderr)
    install_manifest_alias(paths)
    # Dynamic glyph URLs are compiled through the build-only preload layout.
    # Check the actual texture outputs: the SDK reports "0 failed" even when
    # an unsupported direct PNG invocation compiled nothing.
    image_root=source/'panorama/images/custom_game/vtmbvr'
    if image_root.exists():
        missing=[]
        for png in image_root.rglob('*.png'):
            texture=runtime/png.relative_to(source).with_name(png.stem+'_png.vtex_c')
            if not texture.is_file() or not texture.stat().st_size:missing.append(str(texture))
        if missing:raise SystemExit('Missing Panorama glyph/icon textures: '+str(missing[:10]))
    print('Dialogue assets compiled: ' + str(runtime / 'panorama'))

if __name__ == '__main__':
    main()
