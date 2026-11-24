"""Export local v2531 animations, retaining quaternion rotations at gimbal lock."""
import math
from pathlib import Path
import re
import struct


def multiply(a,b):
    x,y,z,w=a;X,Y,Z,W=b
    return (w*X+x*W+y*Z-z*Y,w*Y-x*Z+y*W+z*X,
            w*Z+x*Y-y*X+z*W,w*W-x*X-y*Y-z*Z)


def quaternion_euler(q):
    length=math.sqrt(sum(v*v for v in q))
    if length<1e-8:raise ValueError('Invalid zero animation quaternion')
    x,y,z,w=(v/length for v in q)
    cy=math.hypot(1-2*(y*y+z*z),2*(x*y+w*z))
    if cy>1e-6:
        return (math.atan2(2*(y*z+w*x),1-2*(x*x+y*y)),
                math.atan2(2*(w*y-z*x),cy),math.atan2(2*(x*y+w*z),1-2*(y*y+z*z)))
    return (math.atan2(2*(w*x-y*z),1-2*(x*x+z*z)),math.atan2(2*(w*y-z*x),cy),0.0)


def values(raw,at,count):
    result=[]
    while len(result)<count:
        valid,total=struct.unpack_from('<2B',raw,at)
        if not 0<valid<=total:raise ValueError('Invalid v2531 animation span')
        samples=struct.unpack_from('<'+str(valid)+'h',raw,at+2)
        result.extend(samples);result.extend([samples[-1]]*(total-valid));at+=2+2*valid
    return result[:count]


def export_local(raw,directory,names=None):
    """Return local sequence names, frame counts and generated SMD paths.

    mstudiobone_t is 160 bytes, mstudioanimdesc_t is 72 bytes, and each
    per-bone animation has a float plus seven relative RLE channel offsets.
    Animated quaternion components are absolute; translations use base+delta.
    """
    if struct.unpack_from('<i',raw,4)[0]!=2531:raise ValueError('Expected MDL v2531')
    bones,base=struct.unpack_from('<2i',raw,240)
    count,offset=struct.unpack_from('<2i',raw,264)
    nodes=[];bind=[]
    def string(at):return raw[at:raw.index(b'\0',at)].decode('ascii')
    for i in range(bones):
        at=base+i*160;name,parent=struct.unpack_from('<2i',raw,at)
        nodes.append(str(i)+' "'+string(at+name)+'" '+str(parent))
        bind.append((struct.unpack_from('<3f',raw,at+32),struct.unpack_from('<4f',raw,at+44),
                     struct.unpack_from('<3f',raw,at+60),struct.unpack_from('<4f',raw,at+72),
                     struct.unpack_from('<i',raw,at+140)[0],parent,struct.unpack_from('<i',raw,at+136)[0]))
    directory=Path(directory);directory.mkdir(parents=True,exist_ok=True)
    result={}
    for index in range(count):
        at=offset+index*72
        name_offset,fps,flags,frames=struct.unpack_from('<ifii',raw,at)
        name=string(at+name_offset).lstrip('@')
        if names is not None and name not in names:continue
        anim=struct.unpack_from('<i',raw,at+48)[0]
        if not anim:continue
        if not 0<fps<=240 or not 0<frames<100000:raise ValueError('Invalid animation descriptor')
        tracks=[]
        for bone in range(bones):
            track=at+anim+bone*32;channels=struct.unpack_from('<7i',raw,track+4)
            tracks.append([values(raw,track+v,frames) if v>0 else None for v in channels])
        lines=['version 1','nodes',*nodes,'end','skeleton']
        for frame in range(frames):
            lines.append('time '+str(frame))
            world={-1:(0,0,0,1)}
            for bone,(position,rotation,pscale,rscale,procedure,parent,bone_flags) in enumerate(bind):
                channels=tracks[bone]
                p=tuple(position[i]+(channels[i][frame]*pscale[i] if channels[i] else 0) for i in range(3))
                q=tuple(channels[i+3][frame]*rscale[i] if channels[i+3] and procedure not in (1,2) else rotation[i] for i in range(4))
                length=math.sqrt(sum(v*v for v in q));q=tuple(v/length for v in q)
                # Bloodlines flag 2 stores a model-space rotation. Convert it
                # back to parent space before writing SMD. The root transform
                # is excluded from this accumulation by the source format.
                if bone_flags&2:
                    x,y,z,w=world[parent]
                    q=multiply((-x,-y,-z,w),q)
                world[bone]=(0,0,0,1) if parent==-1 else multiply(world[parent],q)
                angles=quaternion_euler(q)
                lines.append(str(bone)+' '+' '.join(format(v,'.9g') for v in p+angles))
        lines.append('end')
        target=directory/(re.sub(r'[^A-Za-z0-9_.-]','_',name)+'.smd')
        target.write_text('\n'.join(lines)+'\n',encoding='utf8')
        result[name]={'file':target,'frames':frames,'fps':fps}
    return result
