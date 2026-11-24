"""Check generated SMD winding, finite skin data and source model coverage."""
import json
import math
import re
from pathlib import Path
from PIL import Image
from build_jeanette_face import read_smd
from bloodlines_animation import quaternion_euler


def rotation_roundtrip():
    def quaternion(angles):
        x,y,z=(v/2 for v in angles)
        sx,cx,sy,cy,sz,cz=math.sin(x),math.cos(x),math.sin(y),math.cos(y),math.sin(z),math.cos(z)
        return (sx*cy*cz-cx*sy*sz,cx*sy*cz+sx*cy*sz,cx*cy*sz-sx*sy*cz,cx*cy*cz+sx*sy*sz)
    for pitch in (-math.pi/2,-math.pi/2+1e-8,-.3,0,.6,math.pi/2-1e-8,math.pi/2):
        for roll in (-2.7,-.4,0,.8,2.1):
            for yaw in (-2.3,0,.9):
                source=quaternion((roll,pitch,yaw))
                restored=quaternion(quaternion_euler(source))
                assert abs(sum(a*b for a,b in zip(source,restored)))>1-1e-8,'Lost a singular bone rotation'


def mesh(path):
    bones,poses,vertices,triangles=read_smd(path)
    outward=inward=0
    for _,vertex in vertices:
        assert all(math.isfinite(x) for values in vertex[:3] for x in values),str(path)
        assert abs(sum(weight for _,weight in vertex[3])-1)<.001,str(path)
        assert all(0<=bone<len(bones) and weight>=0 for bone,weight in vertex[3]),str(path)
    for _,indices in triangles:
        a,b,c=[vertices[i][1][0] for i in indices]
        u=[b[i]-a[i] for i in range(3)];v=[c[i]-a[i] for i in range(3)]
        cross=[u[1]*v[2]-u[2]*v[1],u[2]*v[0]-u[0]*v[2],u[0]*v[1]-u[1]*v[0]]
        normal=[sum(vertices[j][1][1][i] for j in indices) for i in range(3)]
        dot=sum(cross[i]*normal[i] for i in range(3))
        if dot>1e-7:outward+=1
        elif dot< -1e-7:inward+=1
    assert outward/(outward+inward)>.95,(str(path),'inside-out mesh',outward,inward)
    return len(triangles)


def main():
    rotation_roundtrip()
    root=Path(__file__).resolve().parents[1]
    data=json.loads((root/'scripts/dialogue/asylum/model_preparation.json').read_text(encoding='utf8'))
    assert set(data)=={'doll1','cal','chunk','danielle','jeanette','knox','therese','tourette'}
    paths=[]
    for name,entry in data.items():
        paths.append(root/Path(entry['model']).parent/(name+'_body.smd'))
        assert 'animgraphs/'+name+'_dialogue.vanmgrph' in (root/entry['model']).read_text(encoding='utf8'),name+' lost its facial graph'
        graph=(root/('animgraphs/'+name+'_dialogue.vanmgrph')).read_text(encoding='utf8')
        options=re.search(r'm_name="source_scene_clip"[^\n]*m_enumOptions=\[([^\]]+)\]',graph)
        assert options,name+' lost its scene selector'
        options=json.loads('['+options[1]+']')
        for clip,index in entry['sceneBindings'].items():
            assert options[index].lower()==clip.lower(),(name,clip,'Scene binding differs from graph')
    crowd=json.loads((root/'scripts/dialogue/asylum/crowd_preparation.json').read_text(encoding='utf8'))
    assert not {e['model'].lower() for e in crowd.values()} & {e['model'].lower() for e in data.values()},'Crowd importer owns a dialogue model'
    paths.extend(root/Path(entry['model']).parent/'asylum_reference.smd' for entry in crowd.values())
    items=json.loads((root/'scripts/dialogue/asylum/items.json').read_text(encoding='utf8'))
    paths.extend(root/Path(entry['model']).parent/'reference.smd' for entry in items['items'].values())
    paths.append(root/Path(items['sceneGun']['model']).parent/'hand_local.smd')
    triangles=sum(mesh(path) for path in paths)
    eyes=json.loads((root/'scripts/dialogue/asylum/eye_preparation.json').read_text(encoding='utf8'))
    eye_count=0
    for model,materials in eyes.items():
        document=(root/model).read_text(encoding='utf-8-sig')
        assert len(materials)==2,(model,'Expected two independently sourced irises')
        for name,eye in materials.items():
            assert eye['material'] in document,(model,name,'Lost eye remap')
            material=(root/eye['material']).read_text(encoding='utf8')
            assert eye['color'] in material and 'vr_complex.vfx' in material
            assert 100<eye['irisPixels']<eye['uvPixels'],(model,name,'Missing or oversized iris')
            bitmap=Image.open(root/eye['color']).convert('RGB')
            assert bitmap.size==(512,512) and min(bitmap.getextrema()[0])<60,(model,name,'Missing pupil')
            assert eye['gaze']=='neutral_baked'
            eye_count+=1
    cast=json.loads((root/'scripts/dialogue/asylum/cast.json').read_text(encoding='utf8'))
    mapped_materials=0
    for model in sorted({entry['alyxModel'] for entry in cast}):
        document=(root/model).read_text(encoding='utf-8-sig')
        remaps={a.lower():b for a,b in re.findall(
            r'"?from"?\s*=\s*"([^"]+)"\s*,?\s*"?to"?\s*=\s*"([^"]+)"',document)}
        for mesh_path in re.findall(r'\bfilename"?\s*=\s*"([^"]+\.smd)"',document):
            for material in {name for name,_ in read_smd(root/mesh_path)[3]}:
                key=material.lower()+'.vmat'
                assert key in remaps,(model,key,'Used mesh material has no remap')
                assert (root/remaps[key]).is_file(),(model,key,'Material file is missing')
                mapped_materials+=1
    print(json.dumps({'modelMeshes':len(paths),'triangles':triangles,
                      'windingAndSkinData':'passed','restoredEyeMaterials':eye_count,
                      'usedSmdMaterials':mapped_materials}))


if __name__=='__main__':main()
