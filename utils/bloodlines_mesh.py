"""Extract v2531 reference meshes and LOD0 optimized topology.

Layouts follow Crowbar-VTMB and Valve's public optimized model structures.
This exports source data only; animation/render acceptance is a separate step.
"""
import math
from functools import lru_cache
from pathlib import Path
import struct


@lru_cache(maxsize=2)
def normal_table(kind):
    # Troika's packed normals are latitude rings, not three color bytes.
    # Verified against vtmb-sbox-mounter's TroikaDb tables (5314 / 202 vectors).
    rings, density = (64,32) if kind==1 else (12,6)
    result=[]
    for ring in range(rings+1):
        polar=ring*math.pi/rings
        count=1 if ring in (0,rings) else 4*math.floor(density*math.sin(polar)+.9)
        result.extend((math.sin(polar)*math.cos(step*2*math.pi/count),
                       math.sin(polar)*math.sin(step*2*math.pi/count),-math.cos(polar))
                      for step in range(count))
    return tuple(result)


def vertex_data(raw,model,offset,kind,index):
    if kind==0:
        vertex=model+offset+index*44
        count=max(1,raw[vertex+3]%5)
        weights=list(raw[vertex:vertex+3])+[0]
        if count==4:weights[3]=255-sum(weights[:3])
        if min(weights)<0:raise ValueError('Invalid native skin weights')
        bones=struct.unpack_from('<4h',raw,vertex+4)
        values=struct.unpack_from('<8f',raw,vertex+12)
        links=[(bone,weight/255) for bone,weight in zip(bones[:count],weights[:count]) if weight and bone>=0]
        total=sum(v for _,v in links)
        return values,[(bone,v/total) for bone,v in links] if total else [(0,1.0)]
    origin=struct.unpack_from('<3f',raw,model+160)
    scale=struct.unpack_from('<3f',raw,model+172)
    if kind==1:
        x,y,z,normal,u,v=struct.unpack_from('<6H',raw,model+offset+index*12)
        if normal%12:raise ValueError('Misaligned packed normal offset')
        normal//=12
        position=tuple(p*s+o for p,s,o in zip((x,y,z),scale,origin))
    elif kind==2:
        x,y,z,normal,u,v=struct.unpack_from('<4B2H',raw,model+offset+index*8)
        position=tuple(p/255*s+o for p,s,o in zip((x,y,z),scale,origin))
    else:
        raise ValueError('Unsupported native vertex type: '+str(kind))
    table=normal_table(kind)
    if not 0<=normal<len(table):raise ValueError('Invalid packed normal index: '+str(normal))
    return position+table[normal]+(u/65535,v/65535),[(0,1.0)]


def reference_smd(assets, model_name, destination):
    raw = assets.read(model_name)
    topology = assets.read(model_name[:-4]+'.dx80.vtx')
    if struct.unpack_from('<i',topology)[0] != 107:
        raise ValueError('Expected the Bloodlines VTX107 layout')
    def string(at): return raw[at:raw.index(b'\0', at)].decode('ascii')
    bone_count, bone_offset = struct.unpack_from('<2i', raw, 240)
    lines, poses = ['version 1', 'nodes'], []
    for i in range(bone_count):
        at = bone_offset+i*160
        name_offset, parent = struct.unpack_from('<2i', raw, at)
        name = string(at+name_offset)
        position = struct.unpack_from('<3f', raw, at+32)
        x, y, z, w = struct.unpack_from('<4f', raw, at+44)
        length=math.sqrt(x*x+y*y+z*z+w*w)
        x,y,z,w=(v/length for v in (x,y,z,w))
        cy=math.hypot(1-2*(y*y+z*z),2*(x*y+w*z))
        if cy>1e-6:
            angles=(math.atan2(2*(y*z+w*x),1-2*(x*x+y*y)),
                    math.atan2(2*(w*y-z*x),cy),math.atan2(2*(x*y+w*z),1-2*(y*y+z*z)))
        else:
            angles=(math.atan2(2*(w*x-y*z),1-2*(x*x+z*z)),math.atan2(2*(w*y-z*x),cy),0.0)
        lines.append(str(i)+' "'+name+'" '+str(parent))
        poses.append(str(i)+' '+' '.join(format(v,'.9g') for v in position+angles))
    lines += ['end', 'skeleton', 'time 0']+poses+['end', 'triangles']
    texture_count, texture_offset = struct.unpack_from('<2i', raw, 292)
    materials = []
    for i in range(texture_count):
        at = texture_offset+i*20
        materials.append(string(at+struct.unpack_from('<i',raw,at)[0]))
    bodies, body_offset = struct.unpack_from('<2i', raw, 320)
    v_bodies, v_offset = struct.unpack_from('<2i', topology, 28)
    if bodies != v_bodies:
        raise ValueError('MDL/VTX body count mismatch')
    triangles = 0
    for b in range(bodies):
        at = body_offset+b*16
        _, count, _, offset = struct.unpack_from('<4i',raw,at)
        vat = v_offset+b*8
        vcount, voffset = struct.unpack_from('<2i',topology,vat)
        if count!=1 or vcount!=1:
            raise ValueError('Body alternatives require an explicit selection')
        model = at+offset
        meshes, mesh_offset, vertices, vertex_offset, _, kind = struct.unpack_from('<6i',raw,model+136)
        if kind not in (0,1,2):
            raise ValueError('Unsupported native vertex type: '+str(kind))
        vmodel = vat+voffset
        _, lod_offset = struct.unpack_from('<2i',topology,vmodel)
        lod = vmodel+lod_offset
        vmeshes, vmesh_offset = struct.unpack_from('<2i',topology,lod)
        if meshes != vmeshes:
            raise ValueError('MDL/VTX mesh count mismatch')
        for m in range(meshes):
            mesh = model+mesh_offset+m*60
            material, _, _, first = struct.unpack_from('<4i',raw,mesh)
            vmesh = lod+vmesh_offset+m*8
            groups, _, _, group_offset = struct.unpack_from('<hBBi',topology,vmesh)
            for g in range(groups):
                group = vmesh+group_offset+g*20
                _, _, strips, group_flags, _, verts_offset, index_offset, strip_offset = struct.unpack_from('<3hBB3i',topology,group)
                for s in range(strips):
                    strip = group+strip_offset+s*16
                    nindices, start, _, _, _, flags, _, _ = struct.unpack_from('<4hBBhi',topology,strip)
                    indices = struct.unpack_from('<'+str(nindices)+'H',topology,group+index_offset+start*2)
                    if flags&1:
                        faces = [indices[i:i+3] for i in range(0,len(indices),3)]
                    else:
                        faces = [((indices[i+1],indices[i],indices[i+2]) if i%2 else indices[i:i+3]) for i in range(len(indices)-2)]
                    for face in faces:
                        if len(set(face))!=3:
                            continue
                        lines.append(materials[material])
                        # VTX and SMD use opposite triangle winding. Retaining
                        # VTX order renders the model inside out in ModelDoc.
                        for index in (face[0],face[2],face[1]):
                            at = group+verts_offset+(index*2 if group_flags&16 else index*12+10)
                            original = struct.unpack_from('<H',topology,at)[0]+first
                            if original >= vertices:
                                raise ValueError('Optimized vertex outside original model')
                            values,links=vertex_data(raw,model,vertex_offset,kind,original)
                            fields = [str(links[0][0])]+[format(v,'.9g') for v in values[:7]+(1-values[7],)]
                            fields += [str(len(links))]+[item for bone,weight in links for item in (str(bone),format(weight,'.9g'))]
                            lines.append(' '.join(fields))
                        triangles += 1
    lines += ['end']
    destination = Path(destination)
    destination.parent.mkdir(parents=True,exist_ok=True)
    destination.write_text('\n'.join(lines)+'\n',encoding='utf8')
    return {'bones':bone_count,'triangles':triangles,'materials':materials}
