"""Verify imported Asylum against source bytes, native outputs and Lua playback.

Lua checks need the optional development-only lupa package. They emulate engine
entities, not rendering, sound output, navigation or a physical VR controller.
"""
import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path
import struct
import sys
import tempfile
import wave

from bloodlines_assets import Assets, asset_path, dialogue
from alyx_sdk import resolve_addon


def check_readers():
    with tempfile.TemporaryDirectory(prefix='bloodlines-assets-') as scratch:
        root = Path(scratch)
        base, patch = root/'Vampire', root/'Unofficial_Patch'
        base.mkdir(); patch.mkdir()
        def pack(file, name, raw):
            key = name.encode('ascii')
            directory = struct.pack('<I', len(key))+key+struct.pack('<II', 0, len(raw))
            file.write_bytes(raw+directory+struct.pack('<IIB', 1, len(raw), 0))
        pack(base/'pack000.vpk', 'dlg/test.dlg', b'base pack')
        pack(base/'pack101.vpk', 'dlg/test.dlg', b'later pack')
        assert Assets(root).read('DLG\\TEST.DLG') == b'later pack'
        (base/'dlg').mkdir(); (base/'dlg/test.dlg').write_bytes(b'base loose')
        assert Assets(root).read('dlg/test.dlg') == b'base loose'
        pack(patch/'pack000.vpk', 'dlg/test.dlg', b'patch pack')
        assert Assets(root).read('dlg/test.dlg') == b'patch pack'
        (patch/'dlg').mkdir(); (patch/'dlg/test.dlg').write_bytes(b'patch loose')
        assert Assets(root).read('dlg/test.dlg') == b'patch loose'
        for bad in ('../outside', 'C:/outside', '/outside'):
            try: asset_path(bad)
            except ValueError: pass
            else: raise AssertionError('Unsafe path accepted')


def check_lua(checkout, manifest):
    from lupa import LuaRuntime
    runtime = LuaRuntime(unpack_returned_tuples=True)
    modules = checkout/'scripts/vscripts'
    runtime.execute('package.path='+json.dumps(str(modules).replace('\\', '/')+'/?.lua;', ensure_ascii=False)+'..package.path')
    runtime.execute('''
        clock=0
        function Time() return clock end
        settings={tuning={jawGain=.81,speechGain=.11,expressionGain=.03,smoothAttack=.005,smoothRelease=.005,expressionFade=.05},shapeGains={}}
        package.loaded.npc_dialog_lipsync={GetSettings=function() return settings end,Stop=function() end}
        actor={weights={},thinks={},writes=0}
        function actor:IsNull() return false end
        function actor:GetEntityIndex() return 123 end
        function actor:GetGraphParameter(name) return 0 end
        function actor:SetGraphParameterFloat(name,value)
            assert(type(value)=='number' and value==value and value>=0 and value<=1)
            self.weights[name]=value;self.writes=self.writes+1
        end
        function actor:SetContextThink(name,fn,delay) self.thinks[name]=fn end
        function actor:GetModelName() return 'models/character/npc/unique/santa_monica/jeanette/jeanette.vmdl' end
        function step(t)
            clock=t
            local callback=actor.thinks.VTMBVRSourcePerformance
            if callback then callback() end
        end
        performance=require('npc_source_performance')
    ''')
    accepted = 0
    for character in manifest['characters']:
        runtime.globals().character = character
        count = runtime.execute('''
            local model=require('asylum_data/'..character)
            local count=0
            for _,line in pairs(model.lines) do
                clock=0
                assert(performance.Start(actor,line,model))
                local times={0,.02,line.duration+.6}
                for _,event in ipairs(line.phonemes) do times[#times+1]=(math.max(0,event[1])+event[2])/2 end
                for _,event in ipairs(line.expressions) do times[#times+1]=(event.start+event.finish)/2 end
                table.sort(times)
                for _,t in ipairs(times) do step(t) end
                assert(actor.thinks.VTMBVRSourcePerformance==nil)
                for _,parameter in ipairs(model.faceParameters) do assert(actor.weights[parameter]==0) end
                count=count+1
            end
            return count
        ''')
        accepted += count
    # Real imported data: zero oral gain and an individually disabled channel
    # must stay zero, including through interruption and the next line.
    runtime.execute('''
        local model=require('asylum_data/jeanette')
        local line=model.lines.line1_col_e
        settings.tuning.jawGain=0;settings.tuning.speechGain=0;settings.tuning.expressionGain=0
        clock=0;assert(performance.Start(actor,line,model));step(.1)
        for _,value in pairs(actor.weights) do assert(value==0) end
        performance.Stop(actor)
        settings.tuning.jawGain=.81;settings.tuning.speechGain=.11
        settings.shapeGains[model.faceControllers[40]]=0
        clock=0;assert(performance.Start(actor,line,model));step(.3)
        assert(actor.weights[model.faceParameters[40]]==0)
        performance.Stop(actor)
        for _,value in pairs(actor.weights) do assert(value==0) end
        local query=actor.GetGraphParameter
        actor.GetGraphParameter=function() return nil end
        assert(not performance.Start(actor,line,model))
        actor.GetGraphParameter=query
        Entities={FindByName=function() return actor end}
        function EmitSoundOn(sound,e) emitted=sound end
        function StopSoundOn(sound,e) stopped=sound end
        function NpcSceneBeginDialogue() return false end
        dofile('''+json.dumps(str(modules/'asylum_source.lua').replace('\\', '/'))+''')
        assert(not AsylumSourcePlay('jeanette',1,'actor'))
        assert(emitted==nil)
        function NpcSceneBeginDialogue() return true end
        function NpcSceneEndDialogue() released=true end
        assert(AsylumSourcePlay('jeanette',1,'actor'))
        assert(emitted=='VTMBVR.Asylum.jeanette.line1_col_e')
        assert(AsylumSourceStop('actor') and released and stopped==emitted)
    ''')
    return accepted


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--bloodlines-root', type=Path, required=True)
    parser.add_argument('--raw-output', type=Path, required=True)
    parser.add_argument('--alyx-root', type=Path, required=True)
    parser.add_argument('--addon', help='SDK addon folder; detected from the checkout when omitted')
    parser.add_argument('--lua-runtime', type=Path, help='Directory containing the optional lupa test package')
    args = parser.parse_args()
    if args.lua_runtime:
        sys.path.insert(0, str(args.lua_runtime))
    checkout = Path(__file__).resolve().parents[1]
    source = checkout/'scripts/dialogue/asylum'
    manifest = json.loads((source/'manifest.json').read_text(encoding='utf8'))
    assets = Assets(args.bloodlines_root)
    check_readers()
    for record in manifest['sourceAssets']:
        raw = (args.raw_output/record['path']).read_bytes()
        assert hashlib.sha256(raw).hexdigest() == record['sha256'], record['path']
        assert raw == assets.read(record['path']), 'Source precedence mismatch: '+record['path']
    rows_checked = 0
    for character in manifest['characters']:
        catalog = json.loads((source/'characters'/(character+'.json')).read_text(encoding='utf8'))
        original_rows = dialogue(assets.read(catalog['source']))
        imported_rows = [{k: v for k, v in row.items() if k != 'performances'} for row in catalog['rows']]
        assert original_rows == imported_rows
        rows_checked += len(catalog['rows'])
        prefix = 'sound/character/'+catalog['source'][:-4]+'/'
        expected = {k for k in assets.entries if k.startswith(prefix) and k.endswith(('.mp3', '.wav'))}
        actual = {a['source'] for a in manifest['audio'] if a['character'] == character}
        assert expected == actual, 'Incomplete dialogue audio: '+character
        assert not catalog['unresolvedTargets'], character
    runtime = resolve_addon(args.alyx_root, checkout, args.addon).runtime
    events = (checkout/'soundevents/vtmbvr_asylum.vsndevts').read_text(encoding='utf8')
    for record in manifest['audio']:
        file = checkout/record['audio']
        assert hashlib.sha256(file.read_bytes()).hexdigest() == record['wavSha256']
        with wave.open(str(file), 'rb') as sound:
            assert (sound.getframerate(), sound.getnchannels(), sound.getsampwidth()) == (48000, 1, 2)
            assert abs(sound.getnframes()/sound.getframerate()-record['duration']) < .000001
        compiled = runtime/Path(record['audio']).with_suffix('.vsnd_c')
        assert compiled.is_file() and compiled.stat().st_size > 0, record['audio']
        assert events.count(json.dumps(record['sound'])+' =') == 1
    accepted = check_lua(checkout, manifest)
    assert accepted == manifest['counts']['dialogueAudioFiles']
    result = {'sourceAssetsVerified': len(manifest['sourceAssets']), 'dialogueRowsVerified': rows_checked,
              'nativeAudioResourcesVerified': len(manifest['audio']), 'luaPerformancesExercised': accepted,
              'engineRenderingAndAudioOutputVerified': False, 'physicalVRVerified': False}
    print(json.dumps(result, indent=2), flush=True)


if __name__ == '__main__':
    main()
