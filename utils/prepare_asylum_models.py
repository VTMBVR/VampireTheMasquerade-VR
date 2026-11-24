"""Prepare facial-capable ModelDoc sources for Asylum's original speaking cast.

No game or resource compiler is started. Native v2531 vertex and morph layouts
follow Crowbar-VTMB SourceMdlFile2531 and the established Jeanette importer.
"""
import argparse
import json
from pathlib import Path
import re
import struct
import tempfile

from bloodlines_assets import Assets, write_json
from build_jeanette_face import (face_graph, facial_material, mesh_dmx, native_shapes,
                                  read_model_rules, read_smd, split_face)
from bloodlines_mesh import reference_smd
from prepare_dialogue_art import texture
from source_body_graph import attach
from bloodlines_animation import export_local


def kv3(value):
    if isinstance(value, dict):
        return '{\n'+'\n'.join(json.dumps(k)+' = '+kv3(v) for k,v in value.items())+'\n}'
    if isinstance(value, list):
        return '[\n'+',\n'.join(kv3(v) for v in value)+'\n]'
    return json.dumps(value)


def movement_settings():
    # Same established movement profile used by Jeanette and Smiling Jack.
    return {'_class':'GameDataList','children':[{'_class':'MovementSettings',
        'movementsettings':{'name':'','speeds':[],'runspeed':150.0,'walkspeed':90.0,
            'maxSpringTension':100.0,'springConstant':10.0,'useSmoothPaths':True,
            'useMotionDamping':False,'sharpStartAngle':179.0,'m_vTraceScale':[1.0,.1,1.0]}}]}


def class_blocks(text, name):
    for match in re.finditer(r'_class\s*=\s*"'+name+'"', text):
        start = text.rfind('{', 0, match.start())
        depth, quoted, escaped = 0, False, False
        for i in range(start, len(text)):
            c = text[i]
            if c=='"' and not escaped: quoted=not quoted
            if not quoted:
                if c=='{': depth+=1
                elif c=='}':
                    depth-=1
                    if not depth:
                        yield text[start:i+1]
                        break
            escaped=c=='\\' and not escaped


def neutral_vertices(raw):
    result = {}
    count, offset = struct.unpack_from('<2i', raw, 320)
    base = 0
    for body in range(count):
        at = offset+body*16
        _, models, _, model_offset = struct.unpack_from('<4i', raw, at)
        if models != 1:
            raise ValueError('Body alternatives need an explicit selection')
        model = at+model_offset
        _, _, vertices, vertex_offset, _, kind = struct.unpack_from('<6i', raw, model+136)
        if kind != 0:
            raise ValueError('Only native float-vertex models are supported')
        for i in range(vertices):
            result[base+i] = struct.unpack_from('<6f', raw, model+vertex_offset+i*44+12)
        base += vertices
    return result


def native_mesh(assets,source,body_file):
    # Old third-party SMD exports can lose a fourth skin influence. Read the
    # installed MDL/VTX for every new model; retain Jeanette's approved mesh.
    with tempfile.TemporaryDirectory(prefix='vtmbvr-reference-') as scratch:
        reference=Path(scratch)/'reference.smd'
        reference_smd(assets,source,reference)
        bones,poses,vertices,triangles=read_smd(reference)
        face_vertices,face_triangles=split_face(reference,body_file,vertices,triangles)
    return bones,poses,vertices,triangles,face_vertices,face_triangles


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--bloodlines-root', type=Path, required=True)
    parser.add_argument('--character',choices=('doll1','cal','chunk','danielle','jeanette','knox','therese','tourette'),
                        help='Regenerate one model while retaining the rest of the resource manifest')
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    assets = Assets(args.bloodlines_root)
    catalogs = root/'scripts/dialogue/asylum'
    entries = json.loads((catalogs/'manifest.json').read_text(encoding='utf8'))['characters']
    existing = {p.relative_to(root).as_posix().lower(): p for p in (root/'materials').rglob('*.vmat')}
    resources, report = [], {}
    if args.character:
        entries=[args.character]
        if (catalogs/'model_resources.json').exists():resources=json.loads((catalogs/'model_resources.json').read_text(encoding='utf8'))
        if (catalogs/'model_preparation.json').exists():report=json.loads((catalogs/'model_preparation.json').read_text(encoding='utf8'))
    header = (root/'models/character/npc/unique/santa_monica/therese/therese.vmdl').read_text(encoding='utf8').splitlines()[0]
    shared_male = 'models/character/shared/prefabs/male/dialogue_shared.vmdl_prefab'
    male_source = (root/'models/character/npc/unique/downtown/smiling_jack/smiling_jack.vmdl').read_text(encoding='utf8')
    animations = [b for b in class_blocks(male_source, 'AnimFile') if 'models/character/shared/male/' in b]
    path = root/shared_male
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(header+'\n{rootNode={_class="RootNode" children=[{_class="AnimationList" children=[\n'+
                    ',\n'.join(animations)+'\n]}]}}\n',encoding='utf8')
    for character in entries:
        if character == 'jeanette':
            library=json.loads((catalogs/'performances/jeanette.json').read_text(encoding='utf8'))
            folder=Path(library['model']['model']).parent
            channels=json.loads((root/'scripts/dialogue/jeanette_lipsync.json').read_text(encoding='utf8'))['faceControllers']
            face_graph(root,root,folder,channels)
            bindings,missing,scene_bindings=attach(root/'animgraphs/jeanette_dialogue.vanmgrph',root/folder/'jeanette.vmdl',library)
            report[character]={'model':(folder/'jeanette.vmdl').as_posix(),'bodyBindings':bindings,'sceneBindings':scene_bindings,'missingBodyClips':missing,'status':'prepared_not_native_tested','meshPreserved':True}
            continue
        library = json.loads((catalogs/'performances'/(character+'.json')).read_text(encoding='utf8'))
        source = library['model']['model']
        folder = Path(source).parent
        stem = Path(source).stem
        directory = root/folder
        model = assets.read(source)
        native_animations=export_local(model,root/folder/'source_animations')
        qc = next(directory.glob('*.qc'), None)
        if qc is None:
            count, offset = struct.unpack_from('<2i', model, 300)
            directories = []
            for i in range(count):
                at = struct.unpack_from('<i', model, offset+i*4)[0]
                directories.append(model[at:model.index(b'\0',at)].decode('ascii'))
            qc_text = '\n'.join('$cdmaterials "'+d+'"' for d in directories)
        else:
            qc_text = qc.read_text(encoding='utf-8-sig')
        _, _, _, frames = read_model_rules(model)
        basis = neutral_vertices(model)
        vta = native_shapes(model, basis, frames)
        body_file = folder/(character+'_body.smd')
        face_file = folder/(character+'_face.dmx')
        bones,poses,vertices,triangles,face_vertices,face_triangles=native_mesh(assets,source,root/body_file)
        controls, details = mesh_dmx(root/face_file, bones, poses, face_vertices, face_triangles, vta, frames)
        gender = 'male' if character in ('cal', 'chunk', 'knox') else 'female'
        face_graph(root, root, folder, controls, character, 'male_shared' if gender == 'male' else 'shared_female')
        search = re.findall(r'\$cdmaterials\s+"([^"]+)"', qc_text, re.I)
        remaps = []
        for material in sorted({m for m, _ in triangles}):
            key = Path(material.replace('\\', '/')).stem
            candidates = ['materials/'+d.replace('\\', '/').strip('/')+'/'+key+'.vmat' for d in search]
            selected = next((existing[c.lower()] for c in candidates if c.lower() in existing), None)
            if selected is None or not re.search(r'\bTextureColor\s+"',selected.read_text(encoding='utf-8-sig'),re.I):
                original = next((c[:-5].lower()+'.vmt' for c in candidates if c[:-5].lower()+'.vmt' in assets.entries),None)
                if original is None:
                    raise ValueError('Material not found: '+str(candidates))
                content = assets.read(original).decode('cp1252')
                color = re.search(r'"?\$basetexture"?\s+"([^"]+)"',content,re.I)
                if not color:
                    raise ValueError('No base texture in '+original)
                image = folder/'dialogue_materials'/(key+'_color.png')
                (root/image).parent.mkdir(parents=True,exist_ok=True)
                texture(assets,color[1].replace('\\','/').lower()).save(root/image)
                target = (folder/'dialogue_materials'/(key+'.vmat')).as_posix()
                content='Layer0\n{\nshader "vr_complex.vfx"\nTextureColor "'+image.as_posix()+'"\n'
                if re.search(r'\$alphatest"?\s+"?1',assets.read(original).decode('cp1252'),re.I):
                    content+='F_ALPHA_TEST "1"\n'
                if re.search(r'\$translucent"?\s+"?1',assets.read(original).decode('cp1252'),re.I):
                    alpha=image.with_name(key+'_opacity.png')
                    texture(assets,color[1].replace('\\','/').lower()).getchannel('A').save(root/alpha)
                    content+='F_TRANSLUCENT "1"\nTextureTranslucency "'+alpha.as_posix()+'"\n'
                content+='}\n'
                (root/target).write_text(content,encoding='utf8')
                selected=root/target
            target = selected.relative_to(root).as_posix()
            if facial_material(material):
                destination = folder/'dialogue_materials'/(key+'.vmat')
                content = selected.read_text(encoding='utf-8-sig')
                if 'F_MORPH_SUPPORTED' not in content:
                    content = content.replace('{', '{\n\tF_MORPH_SUPPORTED "1"', 1)
                path = root/destination
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text(content, encoding='utf8')
                target = destination.as_posix()
            remaps.append({'from': key.lower()+'.vmat', 'to': target})
        children = [
            {'_class': 'WeightListList', 'children': [{'_class': 'WeightList', 'name': 'dialogue_face_only',
              'default_weight': 0.0, 'weights': [], 'master_morph_weight': 1.0, 'morph_weights': []}]},
            {'_class': 'MaterialGroupList', 'children': [{'_class': 'DefaultMaterialGroup', 'remaps': remaps}]},
            {'_class': 'RenderMeshList', 'children': [{'_class': 'RenderMeshFile', 'name': 'body', 'filename': body_file.as_posix(), 'import_scale': 1.0},
             {'_class': 'RenderMeshFile', 'name': 'face', 'filename': face_file.as_posix(), 'import_scale': 1.0}]},
            {'_class': 'AnimationList', 'children': [
                {'_class': 'Prefab', 'target_file': (folder/'prefabs/dialogue_face_channels.vmdl_prefab').as_posix()},
                {'_class': 'Prefab', 'target_file': 'models/character/shared/prefabs/'+gender+'/shared_'+gender+'_misc_anim.vmdl_prefab'},
                {'_class': 'Prefab', 'target_file': 'models/character/shared/prefabs/'+gender+'/move_n_run.vmdl_prefab'}]},
            {'_class': 'AttachmentList', 'children': [{'_class': 'Attachment', 'name': 'r_hand', 'parent_bone': 'bip01_r_hand',
                 'relative_origin': [0.0, 0.0, 0.0], 'relative_angles': [0.0, 0.0, 0.0]}]}]
        if gender=='male':
            children[3]['children']=children[3]['children'][:1]+[{'_class':'Prefab','target_file':shared_male}]
        children.append(movement_settings())
        for sequence, file, fps in re.findall(r'\$sequence\s+"([^"]+)"\s+"([^"]+)"[^\n]*?fps\s+([\d.]+)', qc_text, re.I):
            animation = folder/(file if file.lower().endswith('.smd') else file+'.smd')
            if sequence in native_animations:
                animation=native_animations[sequence]['file'].relative_to(root)
            if (root/animation).exists():
                children[3]['children'].append({'_class': 'AnimFile', 'name': sequence,
                    'children':[{'_class':'AnimOffset','translation':[0.0,0.0,0.0],'rotation_xyz':[0.0,0.0,-90.0]}],
                    'source_filename': animation.as_posix(), 'framerate': float(fps)})
        shared_gestures={}
        if character=='tourette':
            source_gesture='models/character/shared/female/pc/ma.mdl'
            imported=export_local(assets.read(source_gesture),root/folder/'source_animations/shared',{'Malk_Female_Idle2'})
            gesture=imported['Malk_Female_Idle2']
            children[3]['children'].append({'_class':'AnimFile','name':'malk_female_idle',
                'children':[{'_class':'AnimOffset','translation':[0.0,0.0,0.0],'rotation_xyz':[0.0,0.0,-90.0]}],
                'source_filename':gesture['file'].relative_to(root).as_posix(),'framerate':gesture['fps']})
            shared_gestures['malk_female_idle']={'source':source_gesture,'sequence':'Malk_Female_Idle2',
                'reason':'legacy_gesture_name_absent_from_installed_sequences'}
        document = {'rootNode': {'_class': 'RootNode', 'children': children, 'model_archetype': 'generic_actor_model',
                      'primary_associated_entity': 'generic_actor', 'anim_graph_name': 'animgraphs/'+character+'_dialogue.vanmgrph'}}
        target = folder/(stem+'.vmdl')
        (root/target).write_text(header+'\n'+kv3(document)+'\n', encoding='utf8')
        bindings,missing,scene_bindings=attach(root/('animgraphs/'+character+'_dialogue.vanmgrph'),root/target,library)
        resources += ['animgraphs/'+character+'_dialogue.vanmgrph', target.as_posix()]
        report[character] = dict(details, model=target.as_posix(), gender=gender, bodyBindings=bindings,
                                sceneBindings=scene_bindings,missingBodyClips=missing,status='prepared_not_native_tested')
        if shared_gestures:report[character]['sharedGestureAliases']=shared_gestures
        print('Prepared '+character, flush=True)
    write_json(catalogs/'model_resources.json', sorted(set(resources)))
    write_json(catalogs/'model_preparation.json', report)


if __name__ == '__main__':
    main()
