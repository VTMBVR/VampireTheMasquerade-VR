"""Prepare missing original crowd models and a non-destructive cast manifest."""
import argparse
import json
from pathlib import Path
import re
import struct

from bloodlines_assets import Assets, text, write_json
from bloodlines_mesh import reference_smd
from prepare_asylum_models import kv3, movement_settings
from prepare_dialogue_art import texture
from build_jeanette_face import read_smd


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--bloodlines-root',type=Path,required=True)
    args=parser.parse_args()
    root=Path(__file__).resolve().parents[1]
    source=root/'scripts/dialogue/asylum'
    placements=json.loads((source/'placements.json').read_text(encoding='utf8'))
    assets=Assets(args.bloodlines_root)
    header=(root/'models/character/npc/unique/santa_monica/therese/therese.vmdl').read_text(encoding='utf8').splitlines()[0]
    materials={p.relative_to(root).as_posix().lower():p for p in (root/'materials').rglob('*.vmat')}
    prior_report=source/'crowd_preparation.json'
    prepared=json.loads(prior_report.read_text(encoding='utf8')) if prior_report.exists() else {}
    resources=[];seen=set()
    dialogue_models={item['model'].replace('\\','/').lower() for item in placements if item.get('dialogue')}
    model_report=source/'model_preparation.json'
    if model_report.exists():
        dialogue_models.update(str(Path(entry['model']).with_suffix('.mdl')).replace('\\','/').lower()
            for entry in json.loads(model_report.read_text(encoding='utf8')).values())
    entities=json.loads((source/'scene.json').read_text(encoding='utf8'))['entities']
    for item in placements:
        name=item['model'].replace('\\','/').lower()
        target=Path(name).with_suffix('.vmdl')
        item['alyxModel']=target.as_posix()
        male=('/male_' in name or '/male/' in name or '/hustler/' in name or '/security_guard/' in name or '/cal/' in name or '/knox/' in name)
        gender='male' if male else 'female'
        item['gender']=gender
        original=entities[item['sourceId']]['properties']
        item['pinned']=original.get('use_interesting','1')=='0'
        item['dialogueAttributes']={key:int(original.get(key,0)) for key in ('pl_criminal_attack','pl_investigate')}
        if name in seen:continue
        seen.add(name)
        # A model can be both an ordinary guard and a named speaking character.
        # The facial importer owns it even if an older crowd manifest listed it.
        if name in dialogue_models:
            prepared.pop(name,None)
            continue
        if (root/target).exists() and name not in prepared:
            existing=(root/target).read_text(encoding='utf-8-sig')
            if item.get('dialogue') or ('MovementSettings' in existing and
                    re.search(r'anim_graph_name\s*=\s*"animgraphs/',existing) and
                    re.search(r'name\s*=\s*"r_hand"',existing)):
                continue
        folder=target.parent;raw=assets.read(name)
        mesh=folder/'asylum_reference.smd'
        info=reference_smd(assets,name,root/mesh)
        used={material.lower() for material,_ in read_smd(root/mesh)[3]}
        count,offset=struct.unpack_from('<2i',raw,300)
        search=[]
        for i in range(count):
            at=struct.unpack_from('<i',raw,offset+i*4)[0]
            search.append(raw[at:raw.index(b'\0',at)].decode('ascii').replace('\\','/'))
        remaps=[]
        for material in info['materials']:
            candidates=['materials/'+directory+material+'.vmat' for directory in search]
            found=next((materials[c.lower()] for c in candidates if c.lower() in materials),None)
            if found and re.search(r'\bTextureColor\s+"',found.read_text(encoding='utf-8-sig'),re.I):
                material_path=found.relative_to(root).as_posix()
            else:
                originals=[c[:-5].lower()+'.vmt' for c in candidates]
                # Some original crowd meshes retain a small extra eyeball
                # triangle but omit the shared eye directory from cdmaterials.
                if material.lower()=='eyeball':originals.append('materials/models/character/eyes/eyeball.vmt')
                old=next((c for c in originals if c in assets.entries),None)
                if not old:
                    if material.lower() in used:raise ValueError('Used material not found: '+name+': '+material)
                    continue  # Unused alternate-skin materials stay in the source MDL.
                vmt=assets.read(old).decode('cp1252')
                base=re.search(r'"?\$basetexture"?\s+"([^"]+)"',vmt,re.I)
                if not base: continue
                image=folder/'asylum_materials'/(material+'_color.png')
                (root/image).parent.mkdir(parents=True,exist_ok=True)
                texture(assets,base[1].replace('\\','/').lower()).save(root/image)
                material_path=(folder/'asylum_materials'/(material+'.vmat')).as_posix()
                content='Layer0\n{\nshader "vr_complex.vfx"\nTextureColor "'+image.as_posix()+'"\n'
                if re.search(r'\$alphatest"?\s+"?1',vmt,re.I):content+='F_ALPHA_TEST "1"\n'
                if re.search(r'\$translucent"?\s+"?1',vmt,re.I):
                    alpha=image.with_name(material+'_opacity.png')
                    texture(assets,base[1].replace('\\','/').lower()).getchannel('A').save(root/alpha)
                    content+='F_TRANSLUCENT "1"\nTextureTranslucency "'+alpha.as_posix()+'"\n'
                (root/material_path).write_text(content+'}\n',encoding='utf8')
            remaps.append({'from':material.lower()+'.vmat','to':material_path})
        prefabs=['models/character/shared/prefabs/male/dialogue_shared.vmdl_prefab'] if male else [
            'models/character/shared/prefabs/female/shared_female_misc_anim.vmdl_prefab',
            'models/character/shared/prefabs/female/move_n_run.vmdl_prefab']
        document={'rootNode':{'_class':'RootNode','children':[
            {'_class':'MaterialGroupList','children':[{'_class':'DefaultMaterialGroup','remaps':remaps}]},
            {'_class':'RenderMeshList','children':[{'_class':'RenderMeshFile','name':'body','filename':mesh.as_posix(),'import_scale':1.0}]},
            {'_class':'AnimationList','children':[{'_class':'Prefab','target_file':p} for p in prefabs]},
            {'_class':'AttachmentList','children':[{'_class':'Attachment','name':'r_hand',
                'parent_bone':'bip01_r_hand','relative_origin':[0.0,0.0,0.0],
                'relative_angles':[0.0,0.0,0.0]}]},
            movement_settings()],
            'model_archetype':'generic_actor_model','primary_associated_entity':'generic_actor',
            'anim_graph_name':'animgraphs/'+('male_shared' if male else 'shared_female')+'.vanmgrph'}}
        (root/target).write_text(header+'\n'+kv3(document)+'\n',encoding='utf8')
        resources.append(target.as_posix());prepared[name]=dict(info,model=target.as_posix(),status='prepared_not_native_tested')
        print('Prepared '+target.as_posix(),flush=True)
    write_json(source/'cast.json',placements)
    script_path='python/santamonica/santamonica.py'
    script=text(assets.read(script_path))
    functions={}
    blocks=list(re.finditer(r'^def ([A-Za-z_][A-Za-z_0-9]*)\(',script,re.M))
    names={'chunkDancing','knoxPresence','jeanetteDownstairs','jeanetteGoesUp',
           'populateOffice','touretteDialogueResults','danielleDialog'}
    for i,match in enumerate(blocks):
        if match[1] in names:
            end=blocks[i+1].start() if i+1<len(blocks) else len(script)
            functions[match[1]]=script[match.start():end].rstrip()
    write_json(source/'presence_sources.json',{
        'source':assets.reads[script_path], 'functions':functions,
        'onMapLoad':[{'sourceId':e['id'],'outputs':[p for p in e['outputs'] if p[0]=='OnMapLoad']}
                     for e in entities if any(p[0]=='OnMapLoad' for p in e['outputs'])],
        'appliedToAlyxMap':False})
    write_json(source/'crowd_preparation.json',prepared)
    # Existing generated resources stay in the list on repeat preparation.
    prior=source/'crowd_resources.json'
    if prior.exists():resources+=json.loads(prior.read_text(encoding='utf8'))
    protected={str(Path(name).with_suffix('.vmdl')).replace('\\','/') for name in dialogue_models}
    resources=[resource for resource in resources if resource.lower() not in protected]
    write_json(prior,sorted(set(resources)))


if __name__=='__main__':main()
