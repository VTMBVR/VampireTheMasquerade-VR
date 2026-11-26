"""Check generated SMD winding, finite skin data and source model coverage."""
import json
import math
import re
from pathlib import Path
from PIL import Image
from build_jeanette_face import read_smd
from bloodlines_animation import quaternion_euler
from prepare_asylum_models import class_blocks
from prepare_jeanette_skirt import canonical
from jeanette_cloth_mesh import skirt_boundaries, surface_at, sub, cross, dot


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
    jeanette=root/'models/character/npc/unique/santa_monica/jeanette'
    bones,_,vertices,skirt_triangles=read_smd(jeanette/'jeanette_body.smd')
    skirt=[vertex for material,vertex in vertices if material.lower()=='jeanette_skirt']
    assert skirt,'Jeanette lost her authored skirt source'
    assert not any(name.startswith('skirt_phys_') for _,name,_ in bones),'Retired fitted cloth joints remain'
    document=(jeanette/'jeanette.vmdl').read_text(encoding='utf8')
    driver=list(class_blocks(document,'ClothProxyMeshFile'))
    assert len(driver)==1,'Missing or duplicated skirt simulation surface'
    for field in ('back_solve_joints','back_solve_joints_drive_meshes'):
        assert re.search(field+r'\s*=\s*false',driver[0]),'Selected skirt must drive the render mesh directly'
    assert re.search(r'add_bones_to_render_mesh\s*=\s*true',driver[0]),'Direct proxy render binding is disabled'
    for suffix in ('jeanette_proxy_body.smd','jeanette_proxy_skirt.dmx','jeanette_skirt_proxy.dmx'):
        assert suffix in document and (jeanette/suffix).stat().st_size>0,'Missing proxy asset: '+suffix
    assert not any(material=='jeanette_skirt' for material,_ in read_smd(jeanette/'jeanette_proxy_body.smd')[2]),'Body duplicates the simulated skirt'
    active=[block for block in class_blocks(document,'RenderMeshFile') if not re.search(r'disabled\s*=\s*true',block)]
    assert len(active)==3,'Duplicate or missing body, face or skirt mesh'
    parameters=list(class_blocks(document,'ClothProxyMeshList'))
    assert len(parameters)==1 and 'ClothParams' in parameters[0],'Cloth settings must reach the native compiler'
    shapes=list(class_blocks(document,'ClothShapeCapsule'))
    shape_names={re.search(r'name\s*=\s*"([^"]+)"',shape)[1] for shape in shapes}
    assert shape_names=={'jeanette_skirt_l_thigh','jeanette_skirt_r_thigh',
                         'jeanette_skirt_pelvis','jeanette_skirt_pelvis_back'},'Missing fitted thigh or rear hip collision'
    attachments=list(class_blocks(document,'Attachment'))
    assert not any('cloth_debug_' in a for a in attachments),'Retired preview attachments remain'
    for name in ('eyes','mouth','r_hand'):
        assert any(re.search(r'name\s*=\s*"'+name+'"',a) for a in attachments),'Missing production attachment: '+name
    def array(text,name,kind):
        block=re.search('"'+re.escape(name)+'" "'+kind+r'_array"\s*\[([^\]]*)\]',text)
        assert block,'Missing DMX field: '+name
        return [list(map(float,row.split())) for row in re.findall(r'"([^"\n]+)"',block[1])]
    render=(jeanette/'jeanette_proxy_skirt.dmx').read_text()
    points=array(render,'position$0','vector3')
    normals=array(render,'normal$0','vector3')
    assert len(points)==len(skirt) and all(abs(sum(n*n for n in normal)-1)<1e-4 for normal in normals),'Invalid render normals or vertex count'
    assert all(math.isfinite(x) for p in points for x in p),'Non-finite cloth geometry'
    enabled=[v[0] for v in array(render,'cloth_enable$0','float')]
    assert min(enabled)==0 and max(enabled)==1,'Skirt must have a sewn band and a free hem'
    assert all(weight in (0.,1.) for weight in enabled),'Free skirt vertices blend pelvis skin back through cloth collision'
    # DMX imports in the +90 degree SMD basis. Keep the authored edge height,
    # with an outward clearance that prevents its polygon chords cutting skin.
    waist,hem=skirt_boundaries(vertices,skirt_triangles)
    seam={tuple(round(v,5) for v in p) for p in waist}
    for vertex,point,weight in zip(skirt,points,enabled):
        if tuple(round(v,5) for v in vertex[0]) in seam:
            x,y,z=vertex[0]
            assert abs(point[2]-z)<1e-5,'Draping displaced the waistband vertically'
    hem_positions={tuple(round(v,5) for v in p) for p in hem}
    lowered=[(vertex[0][2],point[2]) for vertex,point in zip(skirt,points)
             if tuple(round(v,5) for v in vertex[0]) in hem_positions]
    assert lowered and sum(a-b for a,b in lowered)/len(lowered)>2.,'Skirt still has the horizontal rest shape'
    indices=[int(v[0]) for v in array(render,'position$0Indices','int')]
    faces=[int(v[0]) for v in array(render,'faces','int')]
    assert len(faces)%4==0 and all(faces[i]==-1 for i in range(3,len(faces),4)),'Invalid render triangles'
    outward=inward=0
    for start in range(0,len(faces),4):
        ids=[indices[i] for i in faces[start:start+3]]
        a,b,c=[points[i] for i in ids]
        normal=tuple(sum(normals[j][k] for j in ids) for k in range(3))
        direction=dot(cross(sub(b,a),sub(c,a)),normal)
        outward+=direction>1e-7;inward+=direction< -1e-7
    assert outward/(outward+inward)>.95,'Draping inverted the visible skirt'
    center=tuple(sum(p[i] for p in waist)/len(waist) for i in range(2))
    body=[tuple(vertices[i][1][0] for i in face) for mat,face in skirt_triangles
          if mat=='jeanette_body' and all(math.dist(vertices[i][1][0][:2],center)<9 for i in face)]
    for vertex,(x,y,z) in zip(skirt,points):
        if tuple(round(v,5) for v in vertex[0]) not in seam:continue
        point=(y,-x,z);angle=math.atan2(point[1]-center[1],point[0]-center[0])
        hit=surface_at(body,center,angle,z)
        assert math.dist(point[:2],center)-math.dist(hit[:2],center)>.16,'Waistband has insufficient skin clearance'
    body_hits=0
    for (x,y,z),weight in zip(points,enabled):
        if weight<.999:continue
        point=(y,-x,z);angle=math.atan2(point[1]-center[1],point[0]-center[0])
        try:hit=surface_at(body,center,angle,z)
        except ValueError:continue
        body_hits+=1
        assert math.dist(point[:2],center)-math.dist(hit[:2],center)>.32,'Draped rest mesh intersects the hips'
    assert body_hits>50,'No representative hip clearance check'
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
