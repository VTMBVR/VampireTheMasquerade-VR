"""Prepare Jeanette's draped skirt using Source 2's direct cloth proxy.

Keep the sewn waistband, rotate the free cloth downward and bind the visible
skirt directly to the simulation. No game, editor or compiler is started.
"""
import argparse
from collections import defaultdict
import heapq
import math
from pathlib import Path
import re

from build_jeanette_face import Dmx, read_smd
from prepare_asylum_models import class_blocks
from prepare_jeanette_skirt import FOLDER, canonical, kv3
from jeanette_cloth_mesh import skirt_boundaries, boundary_at, surface_at, cross, unit


MODEL = FOLDER/'jeanette.vmdl'
SEWN_BAND = .15
PINNED_ROWS = 2
HEM_SPREAD = .45


class SkirtDrape:
    """Turn the flared free panel downward and clear the hips.

    Changing gravity alone fights the authored horizontal rest shape. Both
    render and simulation meshes need the same hanging rest surface instead.
    The sewn edge retains its authored height with a small clearance from the
    body. The whole panel below it is draped to avoid a flared upper shelf.
    """
    def __init__(self, vertices, triangles, bones):
        self.waist,self.hem=skirt_boundaries(vertices,triangles)
        self.seam=frozenset(self.waist)
        self.center=tuple(sum(p[i] for p in self.waist)/len(self.waist) for i in range(2))
        self.surface=[tuple(vertices[i][1][0] for i in face)
                      for material,face in triangles if material=='jeanette_skirt']
        allowed={i for i,n,_ in bones if canonical(n) in ('bip01_pelvis','bip01_l_thigh','bip01_r_thigh')
                 or canonical(n).startswith(('bip01_spine','shirt'))}
        self.body=[tuple(vertices[i][1][0] for i in face)
                   for material,face in triangles if material=='jeanette_body'
                   and all(sum(w for b,w in vertices[i][1][3] if b in allowed)>.99 for i in face)]
        self.samples={}
        # Follow distance along the garment, not its old Z coordinate. The
        # authored upper rows are almost vertical before abruptly flaring;
        # retaining that distribution leaves a horizontal crease after draping.
        key=lambda p:tuple(round(v,5) for v in p)
        edges=defaultdict(dict)
        for material,face in triangles:
            if material!='jeanette_skirt':continue
            points=[key(vertices[i][1][0]) for i in face]
            for a,b in zip(points,points[1:]+points[:1]):
                length=math.dist(a,b)
                if length:edges[a][b]=length;edges[b][a]=length
        def distances(starts):
            result={p:0. for p in starts};queue=[(0.,p) for p in starts];heapq.heapify(queue)
            while queue:
                distance,p=heapq.heappop(queue)
                if distance!=result[p]:continue
                for q,length in edges[p].items():
                    candidate=distance+length
                    if candidate<result.get(q,math.inf):
                        result[q]=candidate;heapq.heappush(queue,(candidate,q))
            return result
        upper,lower=distances(self.waist),distances(self.hem)
        self.depths={p:upper[p]/(upper[p]+lower[p]) for p in edges}

    def strip(self, angle):
        if angle not in self.samples:
            a,b=boundary_at(self.waist,self.center,angle),boundary_at(self.hem,self.center,angle)
            self.samples[angle]=(a,b,a)
        return self.samples[angle]

    def depth(self, point):
        return self.depths[tuple(round(v,5) for v in point)]

    def point(self, point):
        sewn=tuple(round(v,5) for v in point) in self.seam
        angle=math.atan2(point[1]-self.center[1],point[0]-self.center[0])
        a,b,_=self.strip(angle);t=self.depth(point)
        upper_radius,lower_radius=math.dist(a[:2],self.center),math.dist(b[:2],self.center)
        radial=(lower_radius-upper_radius)*HEM_SPREAD
        hem_height=a[2]-math.sqrt(max(0.,math.dist(a,b)**2-radial*radial))
        radius=upper_radius+radial*t
        height=a[2]*(1-t)+hem_height*t
        if sewn:radius=math.dist(point[:2],self.center);height=point[2]
        # A downward panel must go around the hips before it can hang freely.
        # Do not put the rest surface inside the body and rely on an explosive
        # first simulation frame to separate them. Keep the seam continuous.
        try:
            body_point=surface_at(self.body,self.center,angle,height)
            blend=max(0.,min(1.,t/.20))
            blend=blend*blend*(3-2*blend)
            radius=max(radius,math.dist(body_point[:2],self.center)+.18+.17*blend)
        except ValueError:
            if sewn:raise ValueError('No body surface beneath the sewn waistband')
            pass  # A ray between the two legs legitimately has no body hit.
        return (self.center[0]+radius*math.cos(angle),self.center[1]+radius*math.sin(angle),height)

    def mesh(self, vertices, triangles):
        points={i:self.point(v[0]) for i,(m,v) in enumerate(vertices) if m=='jeanette_skirt'}
        groups={i:(tuple(round(x,5) for x in vertices[i][1][0]),
                   tuple(round(x,5) for x in vertices[i][1][1])) for i in points}
        normals=defaultdict(lambda:[0.,0.,0.])
        for material,face in triangles:
            if material!='jeanette_skirt':continue
            a,b,c=[points[i] for i in face]
            area=cross(tuple(y-x for x,y in zip(a,b)),tuple(y-x for x,y in zip(a,c)))
            for i in face:
                for axis in range(3):normals[groups[i]][axis]+=area[axis]
        result=list(vertices)
        for i,point in points.items():
            old=vertices[i][1]
            result[i]=('jeanette_skirt',(point,unit(normals[groups[i]]),old[2],old[3]))
        return result


def write_mesh(path, name, bones, poses, vertices, faces, maps):
    """Write Model22 DMX with both vertices and bind skeleton in SMD import space."""
    dm=Dmx();put=dm.set
    element=lambda title,kind,key:dm.element(title,kind,'cloth-proxy/'+name+'/'+key)
    root=element(name,'DmElement','root');model=element(name,'DmeModel','model')
    put(root,'model','element',model);put(root,'skeleton','element',model)
    def transform(title,position=(0,0,0),rotation=(0,0,0),key=''):
        x,y,z=[v*.5 for v in rotation]
        sx,sy,sz,cx,cy,cz=math.sin(x),math.sin(y),math.sin(z),math.cos(x),math.cos(y),math.cos(z)
        tr=element(title,'DmeTransform',key or title)
        put(tr,'position','vector3',position)
        put(tr,'orientation','quaternion',(sx*cy*cz-cx*sy*sz,cx*sy*cz+sx*cy*sz,cx*cy*sz-sx*sy*cz,cx*cy*cz+sx*sy*sz))
        return tr
    put(model,'transform','element',transform('root',key='root-transform'));put(model,'visible','bool',True)
    axis=element('axisSystem','DmeAxisSystem','axes')
    for key,value in [('upAxis',3),('forwardParity',1),('coordSys',0)]:put(axis,key,'int',value)
    put(model,'axisSystem','element',axis)
    joints=[element(canonical(n),'DmeJoint','joint/'+str(i)) for i,n,_ in bones]
    children=defaultdict(list);transforms=[]
    for i,n,parent in bones:
        position,rotation=poses[i][:3],poses[i][3:]
        if parent<0:
            # SMD imports rotate their bind skeleton +90 degrees around Z.
            # DMX vertex positions already use that basis; its skeleton must
            # match too, especially for pelvis/thigh cloth collision drivers.
            position=(-position[1],position[0],position[2])
            rotation=(rotation[0],rotation[1],rotation[2]+math.pi/2)
        tr=transform(canonical(n),position,rotation,'bone-transform/'+str(i))
        put(joints[i],'transform','element',tr);transforms.append(tr);children[parent].append(joints[i])
    for i,_,_ in bones:put(joints[i],'children','element_array',children[i])
    dag=element(name,'DmeDag','mesh-dag');mesh_tr=transform(name,key='mesh-transform')
    put(dag,'transform','element',mesh_tr);put(dag,'children','element_array',[])
    put(model,'children','element_array',children[-1]+[dag]);put(model,'jointList','element_array',joints)
    base=element('base','DmeTransformList','base-transforms');put(base,'transforms','element_array',transforms+[mesh_tr])
    put(model,'baseStates','element_array',[base])
    mesh=element(name,'DmeMesh','mesh');put(dag,'shape','element',mesh);put(mesh,'visible','bool',True)
    vertex=element('bind','DmeVertexData','bind')
    put(mesh,'bindState','element',vertex);put(mesh,'currentState','element',vertex);put(mesh,'baseStates','element_array',[vertex])
    fields=['position$0','normal$0','texcoord$0','blendweights$0','blendindices$0']+list(maps)
    put(vertex,'vertexFormat','string_array',fields);put(vertex,'flipVCoordinates','bool',True)
    joint_count=max(len(v[3]) for v in vertices);put(vertex,'jointCount','int',joint_count)
    corner_indices=[i for face in faces for i in face]
    def basis(v):return (-v[1],v[0],v[2])
    for key,column,kind in [('position$0',0,'vector3'),('normal$0',1,'vector3'),('texcoord$0',2,'vector2')]:
        put(vertex,key,kind+'_array',[basis(v[column]) if column<2 else v[column] for v in vertices])
        put(vertex,key+'Indices','int_array',corner_indices)
    weights=[];indices=[]
    for v in vertices:
        weights.extend([w for _,w in v[3]]+[0.0]*(joint_count-len(v[3])))
        indices.extend([i for i,_ in v[3]]+[0]*(joint_count-len(v[3])))
    put(vertex,'blendweights$0','float_array',weights);put(vertex,'blendindices$0','int_array',indices)
    for key,values in maps.items():
        put(vertex,key,'float_array',values);put(vertex,key+'Indices','int_array',corner_indices)
    material=element('jeanette_skirt','DmeMaterial','material');put(material,'mtlName','string','jeanette_skirt')
    fs=element('jeanette_skirt','DmeFaceSet','faces');put(fs,'material','element',material)
    face_corners=[];offset=0
    for face in faces:face_corners.extend(list(range(offset,offset+len(face)))+[-1]);offset+=len(face)
    put(fs,'faces','int_array',face_corners);put(mesh,'faceSets','element_array',[fs])
    dm.write(path)


def prepare(root, columns=56, rows=8):
    if columns<8 or rows<3:raise ValueError('Proxy resolution is too small')
    folder=root/FOLDER
    bones,poses,vertices,triangles=read_smd(folder/'jeanette_body.smd')
    drape=SkirtDrape(vertices,triangles,bones)
    draped_vertices=drape.mesh(vertices,triangles)
    waist,hem=skirt_boundaries(draped_vertices,triangles);center=drape.center
    surface=[tuple(draped_vertices[i][1][0] for i in face)
             for material,face in triangles if material=='jeanette_skirt']
    from jeanette_cloth_skin import body_skin_sampler
    body_skin=body_skin_sampler(bones,vertices,triangles)
    pelvis=next(i for i,name,_ in bones if canonical(name)=='bip01_pelvis')
    proxy=[];strength=[];radii=[];anchors=[];contact=[]
    for row in range(rows):
        t=row/(rows-1)
        for col in range(columns):
            angle=2*math.pi*col/columns
            a,b=boundary_at(waist,center,angle),boundary_at(hem,center,angle)
            point=a if row==0 else b if row==rows-1 else surface_at(surface,center,angle,a[2]*(1-t)+b[2]*t)
            pinned=row<PINNED_ROWS
            links=body_skin(point) if pinned else ((pelvis,1.0),)
            proxy.append((point,(math.cos(angle),math.sin(angle),0.0),(col/columns,t),links))
            # Reserve a small render/contact clearance over the moving thigh.
            # The rear panel keeps a smaller contact margin and hanging silhouette.
            front=max(0.,min(1.,(.45-math.sin(angle))/.9))
            front=front*front*(3-2*front)
            contact.append(.6+.25*front)
            free=row/(rows-1)
            strength.append(1.0 if pinned else .45-.27*free)
            # A tight linear radius conflicts with thigh collision during knee lifts.
            # Bound the free sheet without pinning its upper dynamic rows to
            # the pelvis pose; spring lengths still keep it sewn to the belt.
            radii.append(0.0 if pinned else max(3.8,5.0*free));anchors.append(float(pinned))
    proxy_faces=[]
    # The top belt is animated skin. Exclude its all-static simulation faces.
    for row in range(PINNED_ROWS-1,rows-1):
        for col in range(columns):
            n=(col+1)%columns
            proxy_faces.append((row*columns+col,(row+1)*columns+col,(row+1)*columns+n,row*columns+n))
    maps={'cloth_enable$0':[1.0-a for a in anchors],'cloth_goal_strength_v2$0':strength,
          'cloth_goal_damping$0':[.2]*len(proxy),'cloth_collision_radius$0':contact,
          'cloth_ground_collision$0':[0.0]*len(proxy),'cloth_friction$0':[.1]*len(proxy),
          'cloth_gravity$0':[360.0]*len(proxy),'cloth_mass$0':[1.0]*len(proxy),
          'cloth_stray_radius$0':radii,'cloth_suspenders$0':[1.0]*len(proxy)}
    write_mesh(folder/'jeanette_skirt_proxy.dmx','skirt_proxy',bones,poses,proxy,proxy_faces,maps)

    skirt=[];remap={};enable=[]
    for i,(material,vertex) in enumerate(vertices):
        if material!='jeanette_skirt':continue
        point,normal,uv,links=vertex;weights=defaultdict(float)
        draped,new_normal,_,_=draped_vertices[i][1]
        for bone,weight in body_skin(draped):weights[bone]=weight
        remap[i]=len(skirt);skirt.append((draped,new_normal,uv,tuple(weights.items())))
        t=drape.depth(point)
        # Mixing pelvis skin back into a collision-resolved cloth vertex pulls
        # it through the hip during sharp turns. The sewn band stays animated;
        # every vertex below it belongs completely to the physical sheet.
        enable.append(0.0 if t<=SEWN_BAND else 1.0)
    skirt_faces=[tuple(remap[i] for i in face) for material,face in triangles if material=='jeanette_skirt']
    write_mesh(folder/'jeanette_proxy_skirt.dmx','proxy_skirt_render',bones,poses,skirt,skirt_faces,{'cloth_enable$0':enable})
    text=(folder/'jeanette_body.smd').read_text(encoding='utf8');prefix,rest=text.split('triangles\n',1)
    lines=rest.split('\nend',1)[0].splitlines()
    keep=[lines[i:i+4] for i in range(0,len(lines),4) if lines[i]!='jeanette_skirt']
    (folder/'jeanette_proxy_body.smd').write_text(prefix+'triangles\n'+'\n'.join(row for chunk in keep for row in chunk)+'\nend\n',encoding='utf8')

    model=(folder/'jeanette.vmdl').read_text(encoding='utf8')
    model=model.replace((FOLDER/'jeanette_body.smd').as_posix(),(FOLDER/'jeanette_proxy_body.smd').as_posix())
    # Preparation may start from the already selected proxy model. Replace its
    # generated render node instead of accumulating a second visible skirt.
    mesh_list=next(class_blocks(model,'RenderMeshList'))
    new_mesh={'_class':'RenderMeshFile','name':'proxy_skirt_render','filename':(FOLDER/'jeanette_proxy_skirt.dmx').as_posix(),'import_scale':1.0,
              'import_filter':{'exclude_by_default':False,'exception_list':[]}}
    meshes=[block for block in class_blocks(mesh_list,'RenderMeshFile') if 'jeanette_proxy_skirt.dmx' not in block]
    model=model.replace(mesh_list,'{_class="RenderMeshList" children=[\n'+',\n'.join(meshes+[kv3(new_mesh)])+'\n]}')
    softbody=next(class_blocks(model,'Softbody'))
    params={'_class':'ClothParams','default_stretch':0.0,'additional_shear_stretch':0.0,
            'extra_iterations':16,'extra_goal_iterations':2,'default_gravity_scale':1.0,
            'velocity_smooth_rate':0.0,'local_force':.5,'local_rotation':.75,'new_style':True,
            'add_stiffness_rods':False,'add_bend_only_rods':True,'rigid_edge_hinges':False,
            'add_curvature':.18,'force_world_collision_on_all_nodes':False}
    model=model.replace(softbody,kv3({'_class':'Softbody','children':[],'stiffness_on_ragdoll':0.0,'cloth_sleep_enabled':True}))
    shapes=[]
    source=(folder/'prefabs/skirt_softbody.vmdl_prefab').read_text()
    for block in class_blocks(source,'ClothShapeCapsule'):
        shapes.append(block)
    for index,shape_list in enumerate(list(class_blocks(model,'ClothShapeList'))):
        model=model.replace(shape_list,'{_class="ClothShapeList" children=[\n'+(',\n'.join(shapes) if index==0 else '')+'\n]}')
    proxy_node={'_class':'ClothProxyMeshList','children':[params,{'_class':'ClothProxyMeshFile','name':'skirt_proxy',
        'filename':(FOLDER/'jeanette_skirt_proxy.dmx').as_posix(),'import_scale':1.0,
        'back_solve_joints':False,'back_solve_joints_drive_meshes':False,'flex_cloth_borders':False,
        'add_bones_to_render_mesh':True,'back_solve_influence_threshold':.05,
        'cloth_stray_radius_scale':1.0,'cloth_stray_radius_inv_scale':1.0,
        'import_filter':{'exclude_by_default':False,'exception_list':[]}}]}
    inherited=list(class_blocks(model,'ClothProxyMeshList'))
    if inherited:model=model.replace(inherited[0],kv3(proxy_node))
    else:model=re.sub(r'(children\s*=\s*\[)',lambda m:m[1]+'\n'+kv3(proxy_node)+',\n',model,count=1)
    (root/MODEL).write_text(model,encoding='utf8')
    return {'model':MODEL.as_posix(),'renderSkirtVertices':len(skirt),'renderSkirtTriangles':len(skirt_faces),
            'proxyVertices':len(proxy),'proxyQuads':len(proxy_faces),'pinnedWaistVertices':columns*PINNED_ROWS,
            'waistSourceVertices':len(waist),'hemSourceVertices':len(hem),
            'solver':'direct_proxy','hemSpread':HEM_SPREAD,
            'hemHeightBefore':sum(p[2] for p in drape.hem)/len(drape.hem),
            'hemHeightAfter':sum(p[2] for p in hem)/len(hem)}


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--columns',type=int,default=56)
    parser.add_argument('--rows',type=int,default=8)
    args=parser.parse_args()
    print(prepare(Path(__file__).resolve().parents[1],args.columns,args.rows))


if __name__=='__main__':main()
