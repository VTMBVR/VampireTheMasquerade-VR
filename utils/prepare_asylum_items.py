"""Import original Asylum dialogue quest items as VR physics props, offline."""
import argparse
import json
from pathlib import Path
import re
import struct
import tempfile

from bloodlines_assets import Assets,write_json
from bloodlines_mesh import reference_smd
from build_asylum import lua
from build_jeanette_face import read_smd
from prepare_asylum_models import kv3
from prepare_dialogue_art import texture


ITEMS={
    'item_w_knife':(.45,'metal'),
    'item_w_thirtyeight':(.8,'metal'),
    'item_g_ghost_pendant':(.12,'metal'),
    'item_g_oh_diary':(.35,'paper'),
    'item_k_oceanhouse_sewer_key':(.05,'metal'),
    'item_g_driver_license_gimble':(.02,'paper'),
}


def scene_gun(assets,root,header):
    """Rebase the original female wield mesh into its actual hand bone space."""
    source='models/weapons/thirtyeight/wield/w_f_thirtyeight.mdl'
    folder=Path('models/items/asylum/tourette_handgun')
    with tempfile.TemporaryDirectory(prefix='vtmbvr-wield-') as temporary:
        original=Path(temporary)/'wield.smd'
        reference_smd(assets,source,original)
        bones,_,vertices,triangles=read_smd(original)
    hand=next(i for i,name,_ in bones if name.lower()=='bip01 r hand')
    raw=assets.read(source);_,offset=struct.unpack_from('<2i',raw,240)
    matrix=struct.unpack_from('<12f',raw,offset+hand*160+88)
    lines=['version 1','nodes','0 "static_prop" -1','end','skeleton','time 0','0 0 0 0 0 0 0','end','triangles']
    for material,indices in triangles:
        lines.append(material)
        for i in indices:
            position,normal,uv,_=vertices[i][1]
            local=[sum(matrix[row+j]*position[j] for j in range(3))+matrix[row+3] for row in (0,4,8)]
            rotated=[sum(matrix[row+j]*normal[j] for j in range(3)) for row in (0,4,8)]
            lines.append('0 '+' '.join(format(v,'.9g') for v in local+rotated+list(uv))+' 1 0 1')
    lines.append('end');mesh=folder/'hand_local.smd'
    (root/mesh).write_text('\n'.join(lines)+'\n',encoding='utf8')
    count,at=struct.unpack_from('<2i',raw,328)
    if count!=1 or struct.unpack_from('<i',raw,at+8)[0]!=hand:raise ValueError('Unexpected source gun attachment')
    local=struct.unpack_from('<12f',raw,at+12);muzzle=[local[i] for i in (3,7,11)]
    remaps=[]
    for material in {m for m,_ in triangles}:
        target=Path('models/items/asylum/item_w_thirtyeight/materials')/(material+'.vmat')
        if not (root/target).is_file():raise ValueError('Missing wield material: '+str(target))
        remaps.append({'from':material.lower()+'.vmat','to':target.as_posix()})
    model=folder/'gun.vmdl'
    doc={'rootNode':{'_class':'RootNode','children':[
        {'_class':'RenderMeshList','children':[{'_class':'RenderMeshFile','filename':mesh.as_posix(),'import_scale':1.0}]},
        {'_class':'MaterialGroupList','children':[{'_class':'DefaultMaterialGroup','remaps':remaps}]},
        {'_class':'AttachmentList','children':[{'_class':'Attachment','name':'muzzle','parent_bone':'static_prop',
            'relative_origin':muzzle,'relative_angles':[0.0,0.0,0.0]}]}],
        'model_archetype':'generic_prop_model','primary_associated_entity':'prop_dynamic','anim_graph_name':''}}
    (root/model).write_text(header+'\n'+kv3(doc)+'\n',encoding='utf8')
    return {'model':model.as_posix(),'attachment':'r_hand','muzzle':muzzle,'source':assets.reads[source]}


def prepare(root,assets):
    header=(root/'models/scenery/misc/shampoo/shampoo.vmdl').read_text(encoding='utf-8-sig').splitlines()[0]
    result={'order':sorted(ITEMS),'items':{}}
    resources=[]
    for name in result['order']:
        source='vdata/items/'+name+'.txt'
        raw=assets.read(source)
        # UP's Russian item descriptions are CP1251, unlike ASCII MDL names.
        text=raw.decode('utf-8-sig') if raw.startswith(b'\xef\xbb\xbf') else raw.decode('cp1251')
        properties=dict(re.findall(r'"(playermodel|infomodel|printname|description)"\s*"((?:\\.|[^"\\])*)"',text,re.I))
        model=properties['playermodel'].replace('\\','/').lower()
        folder=Path('models/items/asylum')/name
        mesh=folder/'reference.smd'
        info=reference_smd(assets,model,root/mesh)
        bones,_,vertices,triangles=read_smd(root/mesh)
        low=[min(v[1][0][i] for v in vertices) for i in range(3)]
        high=[max(v[1][0][i] for v in vertices) for i in range(3)]
        mdl=assets.read(model);count,offset=struct.unpack_from('<2i',mdl,300)
        directories=[]
        for i in range(count):
            at=struct.unpack_from('<i',mdl,offset+i*4)[0]
            directories.append(mdl[at:mdl.index(b'\0',at)].decode('ascii').replace('\\','/').strip('/'))
        remaps=[]
        for material in sorted({m for m,_ in triangles}):
            key=Path(material).stem
            original=next((('materials/'+d+'/'+key+'.vmt').lower() for d in directories
                if ('materials/'+d+'/'+key+'.vmt').lower() in assets.entries),None)
            if not original:raise ValueError('Missing item material: '+model+': '+material)
            vmt=assets.read(original).decode('cp1252')
            color=re.search(r'"?\$basetexture"?\s+"([^"]+)"',vmt,re.I)
            if not color:raise ValueError('Missing base texture: '+original)
            image=texture(assets,color[1].lower().replace('\\','/'))
            path=folder/'materials'/(key+'_color.png');(root/path).parent.mkdir(parents=True,exist_ok=True);image.save(root/path)
            target=folder/'materials'/(key+'.vmat')
            content='Layer0\n{\n\tshader "vr_complex.vfx"\n\tTextureColor "'+path.as_posix()+'"\n'
            if re.search(r'\$alphatest"?\s+"?1',vmt,re.I):content+='\tF_ALPHA_TEST "1"\n'
            if re.search(r'\$translucent"?\s+"?1',vmt,re.I):
                alpha=path.with_name(key+'_opacity.png');image.getchannel('A').save(root/alpha)
                content+='\tF_TRANSLUCENT "1"\n\tTextureTranslucency "'+alpha.as_posix()+'"\n'
            (root/target).write_text(content+'}\n',encoding='utf8')
            remaps.append({'from':key.lower()+'.vmat','to':target.as_posix()})
        mass,surface=ITEMS[name]
        children=[{'_class':'RenderMeshList','children':[{'_class':'RenderMeshFile','name':'item','filename':mesh.as_posix(),'import_scale':1.0}]},
            {'_class':'MaterialGroupList','children':[{'_class':'DefaultMaterialGroup','remaps':remaps}]},
            {'_class':'PhysicsShapeList','children':[{'_class':'PhysicsHullFile','name':'item_hull',
                'parent_bone':'','surface_prop':surface,'collision_prop':'default','recenter_on_parent_bone':False,
                'offset_origin':[0.0,0.0,0.0],'offset_angles':[0.0,0.0,0.0],
                'filename':mesh.as_posix(),'import_scale':1.0,'import_mode':'SingleHull',
                'maxHullVertices':32,'faceMergeAngle':10.0,'optimization_algorithm':'QEM'}]},
            {'_class':'GameDataList','children':[{'_class':'GenericGameData','game_class':'prop_data',
                'game_keys':{'base':'Item.Small','health':-1.0,'spawn_motion_disabled':False}}]}]
        target=folder/'item.vmdl'
        (root/target).write_text(header+'\n'+kv3({'rootNode':{'_class':'RootNode','children':children,
            'model_archetype':'physics_prop_model','primary_associated_entity':'prop_physics','anim_graph_name':''}})+'\n',encoding='utf8')
        result['items'][name]=dict(model=target.as_posix(),name=properties.get('printname',name),
            description=properties.get('description','').replace('\\"','"'),mass=mass,sourceModel=model,
            minimum=low,maximum=high,radius=max(abs(v) for v in low+high),
            source=assets.reads[source],modelSource=assets.reads[model],triangles=info['triangles'])
        resources.append(target.as_posix());print('Prepared item: '+name,flush=True)
    result['sceneGun']=scene_gun(assets,root,header)
    resources.append(result['sceneGun']['model'])
    result['sourceAssets']=dict(assets.reads)
    write_json(root/'scripts/dialogue/asylum/items.json',result)
    write_json(root/'scripts/dialogue/asylum/item_resources.json',resources)
    (root/'scripts/vscripts/npc_source_item_data.lua').write_text('-- Original item models and labels.\nreturn '+lua(result)+'\n',encoding='utf8')
    return result


if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--bloodlines-root',type=Path,required=True)
    args=parser.parse_args()
    prepare(Path(__file__).resolve().parents[1],Assets(args.bloodlines_root))
