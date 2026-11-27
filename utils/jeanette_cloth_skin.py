"""Sample body skin weights for the sewn cloth border."""
from collections import defaultdict
from jeanette_cloth_mesh import sub, dot


def normalized_links(weights):
    links=sorted(((bone,weight) for bone,weight in weights.items() if weight>1e-8),key=lambda item:item[1],reverse=True)[:4]
    total=sum(weight for _,weight in links)
    return tuple((bone,weight/total) for bone,weight in links)



def body_skin_sampler(bones,vertices,triangles):
    names={index:name.replace(' ','_').lower() for index,name,_ in bones}
    pelvis=next(index for index,name in names.items() if name=='bip01_pelvis')
    def allowed(vertex):
        return sum(weight for bone,weight in vertex[3] if names[bone] in
                   ('bip01_pelvis','bip01_l_thigh','bip01_r_thigh') or
                   names[bone].startswith(('bip01_spine','shirt')))>.99
    surface=[tuple(vertices[i][1] for i in face) for material,face in triangles
             if material=='jeanette_body' and all(allowed(vertices[i][1]) for i in face)]
    if not surface:raise ValueError('No torso/hip surface for the sewn skirt edge')
    cache={}
    def sample(point):
        if point not in cache:
            best=None
            for triangle in surface:
                distance,bary=closest_weights(point,[vertex[0] for vertex in triangle])
                if best is None or distance<best[0]:best=(distance,triangle,bary)
            weights=defaultdict(float)
            for vertex,blend in zip(best[1],best[2]):
                for bone,weight in vertex[3]:weights[pelvis if names[bone].startswith('shirt') else bone]+=blend*weight
            cache[point]=normalized_links(weights)
        return cache[point]
    return sample



def closest_weights(point,triangle):
    a,b,c=triangle;ab=sub(b,a);ac=sub(c,a);ap=sub(point,a)
    aa,bb,cc=dot(ab,ab),dot(ab,ac),dot(ac,ac)
    denominator=aa*cc-bb*bb
    candidates=[]
    if denominator>1e-12:
        u=(cc*dot(ap,ab)-bb*dot(ap,ac))/denominator
        v=(aa*dot(ap,ac)-bb*dot(ap,ab))/denominator
        if u>=0 and v>=0 and u+v<=1:candidates.append((1-u-v,u,v))
    for i,j in ((0,1),(1,2),(2,0)):
        edge=sub(triangle[j],triangle[i]);length=dot(edge,edge)
        t=max(0,min(1,dot(sub(point,triangle[i]),edge)/length)) if length else 0
        weights=[0.,0.,0.];weights[i]=1-t;weights[j]=t;candidates.append(weights)
    def distance(weights):
        closest=tuple(sum(weights[j]*triangle[j][i] for j in range(3)) for i in range(3))
        delta=sub(point,closest);return dot(delta,delta)
    weights=min(candidates,key=distance)
    return distance(weights),weights
