"""Prepare Jeanette's selected direct-proxy skirt without launching Alyx."""
import argparse
import json
from pathlib import Path


FOLDER = Path('models/character/npc/unique/santa_monica/jeanette')
REFERENCE = FOLDER/'skirt_rebuild/v5/JeanetteR2_REF.smd'
COLLISION_SCALE = 1.04


def canonical(name):
    return name.replace(' ', '_').replace('.', '_').lower()


def kv3(value, indent=0):
    if isinstance(value, dict):
        return '{\n'+'\n'.join('    '*(indent+1)+key+' = '+kv3(item, indent+1)
                               for key, item in value.items())+'\n'+'    '*indent+'}'
    if isinstance(value, list):
        return '[\n'+',\n'.join('    '*(indent+1)+kv3(item, indent+1) for item in value)+'\n'+'    '*indent+']'
    return json.dumps(value)


def collision_shapes():
    capsules=[{'_class':'ClothShapeCapsule','name':'jeanette_skirt_'+side+'_thigh',
        'parent_bone':'bip01_'+side+'_thigh',
        'cloth_collision_layer0':False,'cloth_collision_layer1':True,
        'cloth_collision_layer2':False,'cloth_collision_layer3':False,
        'cloth_stickiness':0.0,'cloth_collision_priority':0,
        # Fitted between the body and hanging rest mesh, including the cloth
        # contact margin; an oversized upper sphere lifts the side panel. The lower
        # sections shift forward in this bone frame as the leg tapers.
        'radius0':3.32,'radius1':2.6,
        # The upper hemisphere must not reach above the sewn waistband.
        # Offset its centre down the thigh instead of shrinking leg protection.
        # Extend the tapered end toward the knee, which can enter the hem
        # during a high leg lift despite lying below it in the bind pose.
        'point0':[3.3,.4,0.0],'point1':[15.5,1.1,0.0]} for side in ('l','r')]
    capsules.append({'_class':'ClothShapeCapsule','name':'jeanette_skirt_pelvis',
        'parent_bone':'bip01_pelvis','cloth_collision_layer0':False,
        'cloth_collision_layer1':True,'cloth_collision_layer2':False,'cloth_collision_layer3':False,
        'cloth_stickiness':0.0,'cloth_collision_priority':0,'radius0':3.7,'radius1':3.7,
        # Local X points upward in this pelvis bind frame. Keep the lateral
        # hip envelope, with its centre below the sewn waistband.
        'point0':[-.6,.82,-2.64],'point1':[-.6,.82,2.64]})
    # A lower rear volume covers the lateral gluteal surface without pushing
    # the upper panel up. Its base radius is 5% below the old 2.15 units, before the contact padding.
    capsules.append({'_class':'ClothShapeCapsule','name':'jeanette_skirt_pelvis_back',
        'parent_bone':'bip01_pelvis','cloth_collision_layer0':False,
        'cloth_collision_layer1':True,'cloth_collision_layer2':False,'cloth_collision_layer3':False,
        'cloth_stickiness':0.0,'cloth_collision_priority':0,'radius0':2.0425,'radius1':2.0425,
        'point0':[-1.1,-1.2,-3.2],'point1':[-1.1,-1.2,3.2]})
    # Small uniform safety allowance for transient skin/cloth intersections.
    # Keep the fitted capsule centres and the hanging garment unchanged.
    for shape in capsules:
        for key in ('radius0','radius1'):
            shape[key]=round(shape[key]*COLLISION_SCALE,6)
    return capsules


def install_collision_shapes(checkout, capsules):
    """Update the live model collision without rebuilding garment geometry."""
    from prepare_asylum_models import class_blocks
    for filename in ('jeanette.vmdl',):
        path=checkout/FOLDER/filename;text=path.read_text(encoding='utf8')
        lists=list(class_blocks(text,'ClothShapeList'))
        if len(lists)!=1:raise ValueError('Expected one cloth collision list')
        text=text.replace(lists[0],kv3({'_class':'ClothShapeList','children':capsules}))
        path.write_text(text,encoding='utf8')
    prefab=checkout/FOLDER/'prefabs/skirt_softbody.vmdl_prefab'
    text=prefab.read_text(encoding='utf8');block=next(class_blocks(text,'ClothShapeList'))
    prefab.write_text(text.replace(block,kv3({'_class':'ClothShapeList','children':capsules})),encoding='utf8')


def prepare(checkout, source_root=None):
    source_root = source_root or checkout
    from build_jeanette_face import read_smd, split_face
    from prepare_jeanette_proxy import prepare as prepare_proxy

    # Always start from the authored mesh, never an already draped output.
    reference=source_root/REFERENCE
    _,_,vertices,triangles=read_smd(reference)
    split_face(reference,checkout/FOLDER/'jeanette_body.smd',vertices,triangles)
    model=checkout/FOLDER/'jeanette.vmdl'
    if not model.exists():model.write_text((source_root/FOLDER/'jeanette.vmdl').read_text(encoding='utf8'),encoding='utf8')
    capsules=collision_shapes()
    header=model.read_text(encoding='utf-8-sig').splitlines()[0]
    for filename in ('skirt_softbody.vmdl_prefab','skirt_quads_cloth.vmdl_prefab'):
        children=[{'_class':'Softbody','children':[],
                   'stiffness_on_ragdoll':0.0,'cloth_sleep_enabled':True}]
        if filename=='skirt_softbody.vmdl_prefab':children.append({'_class':'ClothShapeList','children':capsules})
        target=checkout/FOLDER/'prefabs'/filename
        target.parent.mkdir(parents=True,exist_ok=True)
        target.write_text(header+'\n'+kv3({'rootNode':{'_class':'RootNode','children':children}})+'\n',encoding='utf8')
    report=prepare_proxy(checkout)
    install_collision_shapes(checkout,capsules)
    return report


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--collisions-only',action='store_true',help='Update collider sources without regenerating the cloth mesh')
    args=parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    if args.collisions_only:
        install_collision_shapes(root,collision_shapes())
        print('Updated Jeanette cloth collision sources.')
    else:print('Prepared dynamic Jeanette skirt:', prepare(root))
    print('Sources only; native compilation and game playback have not run.')


if __name__ == '__main__':
    main()
