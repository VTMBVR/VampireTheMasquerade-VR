"""Shared skirt boundary and surface sampling for cloth source preparation."""
import math
from collections import Counter, defaultdict


def sub(a, b):
    return tuple(x-y for x,y in zip(a,b))

def dot(a, b):
    return sum(x*y for x,y in zip(a,b))

def cross(a, b):
    return (a[1]*b[2]-a[2]*b[1], a[2]*b[0]-a[0]*b[2], a[0]*b[1]-a[1]*b[0])

def unit(v):
    length=math.sqrt(dot(v,v))
    return tuple(x/length for x in v)

def skirt_boundaries(vertices, triangles):
    positions={};ids={}
    for i,(material,vertex) in enumerate(vertices):
        if material=='jeanette_skirt':
            key=tuple(round(v,5) for v in vertex[0])
            ids[i]=positions.setdefault(key,len(positions))
    points=list(positions)
    edges=Counter()
    for material,triangle in triangles:
        if material!='jeanette_skirt':continue
        a,b,c=[ids[i] for i in triangle]
        edges.update(tuple(sorted(edge)) for edge in ((a,b),(b,c),(c,a)))
    adjacent=defaultdict(set)
    for (a,b),count in edges.items():
        if count==1:adjacent[a].add(b);adjacent[b].add(a)
        elif count!=2:raise ValueError('Non-manifold skirt surface')
    if any(len(neighbours)!=2 for neighbours in adjacent.values()):
        raise ValueError('Skirt boundary is not a closed loop')
    loops=[]
    while adjacent:
        start=next(iter(adjacent));loop=[start];previous=None;current=start
        while True:
            following=next(n for n in adjacent[current] if n!=previous)
            if following==start:break
            loop.append(following);previous,current=current,following
        loops.append([points[i] for i in loop])
        for i in loop:del adjacent[i]
    if len(loops)!=2:raise ValueError('Expected waist and hem boundaries')
    return sorted(loops,key=lambda loop:sum(p[2] for p in loop)/len(loop),reverse=True)

def boundary_at(loop, center, angle):
    direction=(math.cos(angle),math.sin(angle));hits=[]
    for a,b in zip(loop,loop[1:]+loop[:1]):
        dx,dy=b[0]-a[0],b[1]-a[1]
        denominator=dx*direction[1]-dy*direction[0]
        if abs(denominator)<1e-9:continue
        x,y=center[0]-a[0],center[1]-a[1]
        u=(x*direction[1]-y*direction[0])/denominator
        radius=(x*dy-y*dx)/denominator
        if -1e-6<=u<=1+1e-6 and radius>0:
            hits.append((radius,tuple(a[i]+u*(b[i]-a[i]) for i in range(3))))
    if not hits:raise ValueError('Skirt boundary cannot be sampled at angle '+str(angle))
    return max(hits,key=lambda hit:hit[0])[1]

def surface_at(surface, center, angle, height):
    origin=(center[0],center[1],height);direction=(math.cos(angle),math.sin(angle),0.0)
    hits=[]
    for a,b,c in surface:
        e1,e2=sub(b,a),sub(c,a);h=cross(direction,e2);det=dot(e1,h)
        if abs(det)<1e-9:continue
        s=sub(origin,a);u=dot(s,h)/det
        if not -1e-6<=u<=1+1e-6:continue
        q=cross(s,e1);v=dot(direction,q)/det
        if v< -1e-6 or u+v>1+1e-6:continue
        radius=dot(e2,q)/det
        if radius>0:hits.append(radius)
    if not hits:raise ValueError('Proxy sample missed the skirt surface')
    radius=max(hits)
    return tuple(origin[i]+radius*direction[i] for i in range(3))
