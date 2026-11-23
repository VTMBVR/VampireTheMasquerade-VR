"""Restore Jeanette's original facial shapes and Bloodlines phoneme timing.

Reads the installed game, the existing VTA neutral mesh and current skirt mesh.
The body stays in the original SMD importer, with verbatim triangle/skin rows.
Only the face becomes a ModelDoc DMX mesh; original MDL morphs are transferred
by position/normal. No Blender or speech recognizer is needed. Compilation is a
separate, explicit step.

Format references: robsonner/Crowbar-VTMB SourceModel2531; Valve's studio.h flex
opcodes; Artfunkel/BlenderSourceTools and ValveResourceFormat DMX mesh writers.
"""
import argparse
from collections import Counter, defaultdict
import hashlib
import json
import math
from pathlib import Path
import re
import shlex
import struct
import uuid

from import_jeanette_voice import index_archives


class Dmx:
    """Small typed KeyValues2 writer, with stable references and no dependencies."""
    def __init__(self):
        self.nodes = []

    def element(self, name, kind, key):
        node = {'id': str(uuid.uuid5(uuid.NAMESPACE_URL, 'vtmbvr/jeanette/' + key)),
                'name': name, 'kind': kind, 'attributes': {}}
        self.nodes.append(node)
        return node

    def set(self, node, key, kind, value):
        node['attributes'][key] = kind, value

    def write(self, path):
        def scalar(kind, value):
            if kind == 'element': return value['id'] if value else ''
            if kind == 'bool': return '1' if value else '0'
            if kind == 'int': return str(value)
            if kind == 'float': return format(value, '.9g')
            if kind in ('vector2', 'vector3', 'vector4', 'quaternion'):
                return ' '.join(format(x, '.9g') for x in value)
            return value
        quote = lambda value: json.dumps(value, ensure_ascii=False)
        lines = ['<!-- dmx encoding keyvalues2 1 format model 22 -->']
        for node in self.nodes:
            lines += [quote(node['kind']), '{', '\t"id" "elementid" ' + quote(node['id']),
                      '\t"name" "string" ' + quote(node['name'])]
            for key, (kind, value) in node['attributes'].items():
                prefix = '\t' + quote(key) + ' ' + quote(kind)
                if kind.endswith('_array'):
                    base = kind[:-6]
                    lines += [prefix, '\t[']
                    lines.extend('\t\t' + ('"element" ' if base == 'element' else '')
                                 + quote(scalar(base, x)) + (',' if i + 1 < len(value) else '')
                                 for i, x in enumerate(value))
                    lines.append('\t]')
                else:
                    lines.append(prefix + ' ' + quote(scalar(kind, value)))
            lines.append('}')
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text('\n'.join(lines) + '\n', encoding='utf8')


def read_smd(path):
    text = path.read_text(encoding='utf-8-sig')
    bones = []
    for line in text.split('nodes\n', 1)[1].split('\nend', 1)[0].splitlines():
        match = re.fullmatch(r'\s*(\d+)\s+"([^"]+)"\s+(-?\d+)\s*', line)
        if match: bones.append((int(match[1]), match[2], int(match[3])))
    poses = {}
    for line in text.split('skeleton\n', 1)[1].split('\nend', 1)[0].splitlines():
        fields = line.split()
        if len(fields) == 7:
            poses[int(fields[0])] = tuple(map(float, fields[1:]))
    vertices, triangles, lookup = [], [], {}
    lines = text.split('triangles\n', 1)[1].split('\nend', 1)[0].splitlines()
    for i in range(0, len(lines), 4):
        triangle = []
        for row in lines[i + 1:i + 4]:
            fields = row.split()
            parent, count = int(fields[0]), int(fields[9])
            weights = tuple((int(fields[10 + 2*j]), float(fields[11 + 2*j])) for j in range(count))
            if not weights: weights = ((parent, 1.0),)
            vertex = (tuple(map(float, fields[1:4])), tuple(map(float, fields[4:7])),
                      tuple(map(float, fields[7:9])), weights)
            key = (lines[i], vertex)
            if key not in lookup:
                lookup[key] = len(vertices)
                vertices.append((lines[i], vertex))
            triangle.append(lookup[key])
        triangles.append((lines[i], triangle))
    if [b[0] for b in bones] != list(range(len(bones))) or set(poses) != set(range(len(bones))):
        raise ValueError('Expected a complete, contiguous SMD bind skeleton')
    return bones, poses, vertices, triangles


def read_vta(path):
    frames, names = {}, {}
    for line in path.read_text().split('vertexanimation', 1)[1].splitlines():
        match = re.match(r'\s*time\s+(\d+)\s*#\s*(.*)', line)
        if match:
            frame = int(match[1]); names[frame] = match[2]; frames[frame] = {}
        else:
            values = line.split()
            if len(values) == 7:
                frames[frame][int(values[0])] = tuple(map(float, values[1:]))
    return frames, names


def native_shapes(raw, basis, metadata):
    """Decode v2531 direction/magnitude records, not old Crowbar's int16 guess.

    Fine directions form latitude rings from -Z to +Z. A packed record stores
    byte offsets into that table, followed by separate position/normal lengths.
    Source: https://github.com/robsonner/Crowbar-VTMB/tree/master/Crowbar
    The existing VTA is used ONLY for its neutral vertex correspondence.
    """
    directions = []
    for ring in range(65):
        polar = ring*math.pi/64
        count = 1 if ring in (0, 64) else 4*math.floor(32*math.sin(polar)+.9)
        for step in range(count):
            azimuth = step*2*math.pi/count
            directions.append((math.sin(polar)*math.cos(azimuth),
                               math.sin(polar)*math.sin(azimuth), -math.cos(polar)))
    assert len(directions) == 5314
    def vector(offset, length, extent):
        if offset % 12 or offset//12 >= len(directions):
            raise ValueError('Invalid v2531 direction offset: '+str(offset))
        return tuple(v*length*extent/255 for v in directions[offset//12])
    result = {0: basis}
    order = {(f['index'], *f['targets']): i for i, f in enumerate(metadata, 1)}
    result.update({i: {} for i in order.values()})
    body_count, body_offset = struct.unpack_from('<2i', raw, 320)
    vertex_base = 0
    for p in range(body_count):
        body = body_offset+p*16
        _, count, _, model_offset = struct.unpack_from('<4i', raw, body)
        if count != 1: raise ValueError('Expected one model per body part')
        model = body+model_offset
        meshes, mesh_offset, vertices = struct.unpack_from('<3i', raw, model+136)
        for m in range(meshes):
            mesh = model+mesh_offset+m*60
            _, _, vertex_count, vertex_start, flex_count, flex_offset = struct.unpack_from('<6i', raw, mesh)
            for j in range(flex_count):
                at = mesh+flex_offset+j*32
                index, a, b, c, d, count, offset, kind = struct.unpack_from('<i4f3i', raw, at)
                frame = result[order[(index, a, b, c, d)]]
                if kind not in (0, 1): raise ValueError('Unknown v2531 vertex animation type')
                for k in range(count):
                    record = at+offset+k*(8 if kind == 1 else 20)
                    local = struct.unpack_from('<H', raw, record)[0]
                    if local >= vertex_count: raise ValueError('Flex vertex outside its mesh')
                    source = vertex_base+vertex_start+local
                    if kind == 1:
                        _, pd, nd, pl, nl = struct.unpack_from('<3H2B', raw, record)
                        delta = vector(pd, pl, 8)
                    else:
                        delta = struct.unpack_from('<3f', raw, record+4)
                        nd, nl = struct.unpack_from('<HB', raw, record+16)
                    normal = vector(nd, nl, 2)
                    base = basis[source]
                    frame[source] = tuple(base[i]+delta[i] for i in range(3)) + tuple(base[i+3]+normal[i] for i in range(3))
        vertex_base += vertices
    return result


def eyelid_rules(raw):
    """Original eye metadata maps lid controllers to the two target descriptors."""
    result = []
    count, offset = struct.unpack_from('<2i', raw, 320)
    for p in range(count):
        body = offset+p*16
        model = body+struct.unpack_from('<i', raw, body+12)[0]
        eyes, eye_offset = struct.unpack_from('<2i', raw, model+192)
        for eye in range(eyes):
            at = model+eye_offset+eye*140
            inputs = struct.unpack_from('<6i', raw, at+68)
            targets = struct.unpack_from('<6f', raw, at+92)
            outputs = struct.unpack_from('<2i', raw, at+116)
            for lid in range(2):
                result.append((outputs[lid], inputs[lid*3:lid*3+3], targets[lid*3:lid*3+3]))
    return result


def facial_material(name):
    return any(k in name.lower() for k in ('face', 'teeth', 'mouth', 'molar', 'tongue'))


def split_face(source, output, vertices, triangles):
    """Keep non-facial skinning in the existing SMD importer (including cloth).

    Converting the skirt to DMX changes the compiler's handling of >4 influences.
    Copy its original triangle rows verbatim instead of normalizing or pruning.
    """
    text = source.read_text(encoding='utf-8-sig')
    prefix, rest = text.split('triangles\n', 1)
    rows = rest.split('\nend', 1)[0].splitlines()
    keep = [rows[i:i+4] for i in range(0, len(rows), 4) if not facial_material(rows[i])]
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(prefix+'triangles\n'+'\n'.join(row for chunk in keep for row in chunk)+'\nend\n', encoding='utf8')
    facial_triangles = [(mat, tri) for mat, tri in triangles if facial_material(mat)]
    used = sorted({i for _, tri in facial_triangles for i in tri})
    remap = {old: new for new, old in enumerate(used)}
    return [vertices[i] for i in used], [(mat, [remap[i] for i in tri]) for mat, tri in facial_triangles]


def read_model_rules(raw):
    if raw[:4] != b'IDST' or struct.unpack_from('<I', raw, 4)[0] != 2531:
        raise ValueError('Expected a Bloodlines version-2531 model')
    def string(at): return raw[at:raw.index(b'\0', at)].decode('ascii')
    count, offset, cc, co, rc, ro = struct.unpack_from('<6i', raw, 344)
    descs = [string(offset + i*4 + struct.unpack_from('<i', raw, offset + i*4)[0]) for i in range(count)]
    controls = []
    for i in range(cc):
        at = co + i*20
        _, name, _, low, high = struct.unpack_from('<3i2f', raw, at)
        controls.append({'name': string(at + name), 'min': low, 'max': high})
    rules = []
    for i in range(rc):
        at = ro + i*12
        index, op_count, op_offset = struct.unpack_from('<3i', raw, at)
        ops = []
        for j in range(op_count):
            op, arg = struct.unpack_from('<2i', raw, at + op_offset + j*8)
            if op == 1: arg = struct.unpack_from('<f', raw, at + op_offset + j*8 + 4)[0]
            if op not in (1, 2, 3, 4, 5, 6, 7): raise ValueError('Unsupported original flex opcode: ' + str(op))
            ops.append((op, arg))
        rules.append((index, ops))
    # Same first-seen order as Crowbar's BuildFlexFrameList, including in-betweens.
    frames, seen = [], set()
    body_count, body_offset = struct.unpack_from('<2i', raw, 320)
    for p in range(body_count):
        at = body_offset + p*16
        _, models, _, model_offset = struct.unpack_from('<4i', raw, at)
        if models != 1: raise ValueError('Expected one Jeanette mesh model')
        model = at + model_offset
        meshes, mesh_offset = struct.unpack_from('<2i', raw, model + 136)
        for m in range(meshes):
            mesh = model + mesh_offset + m*60
            _, _, _, _, count, offset = struct.unpack_from('<6i', raw, mesh)
            for i in range(count):
                index, *targets = struct.unpack_from('<i4f', raw, mesh + offset + i*32)
                key = (index, *targets)
                if key not in seen:
                    seen.add(key)
                    frames.append({'name': descs[index], 'index': index, 'targets': targets})
    return descs, controls, rules, frames


def evaluate(controls, rules, values, count):
    inputs = [max(c['min'], min(c['max'], values.get(c['name'], 0.0))) for c in controls]
    outputs = [0.0]*count
    for index, ops in rules:
        stack = []
        for op, arg in ops:
            if op == 1: stack.append(arg)
            elif op == 2: stack.append(inputs[arg])
            elif op == 3: stack.append(outputs[arg])
            else:
                b, a = stack.pop(), stack.pop()
                stack.append({4: lambda: a+b, 5: lambda: a-b, 6: lambda: a*b,
                              7: lambda: a/b if abs(b) > 1e-8 else 0.0}[op]())
        if len(stack) != 1 or not math.isfinite(stack[0]): raise ValueError('Invalid original flex expression')
        outputs[index] = stack[0]
    return outputs


def ramp(value, limits):
    a, b, c, d = limits
    if value <= a or value >= d: return 0.0
    if value < b: return (value-a)/(b-a)
    if value <= c: return 1.0
    return (d-value)/(d-c)


def phoneme_table(raw, controls, rules, descs, frames):
    lines = raw.decode('cp1252').splitlines()
    keys = next(line.split()[1:] for line in lines if line.startswith('$keys '))
    result = {}
    for line in lines:
        if not line.startswith('"'): continue
        cells = shlex.split(line)
        numbers = list(map(float, cells[2:2 + len(keys)*2]))
        values = {k: numbers[2*i]*numbers[2*i+1] for i, k in enumerate(keys)}
        evaluated = evaluate(controls, rules, values, len(descs))
        # Eyelids are a separate runtime layer. They are not phonemes.
        weights = [0 if i < 8 else round(ramp(evaluated[f['index']], f['targets']), 6)
                   for i, f in enumerate(frames)]
        code = int(cells[1], 16) if cells[1].startswith('0x') else ord(cells[1])
        result[str(code)] = weights
    return result


def mesh_dmx(path, bones, poses, vertices, triangles, vta, metadata):
    # Match the names produced by Alyx's SMD importer before the two meshes are
    # merged. Skin references with raw SMD spaces otherwise fail to resolve.
    bones = [(i, re.sub(r'[^a-z0-9_]', '_', name.lower()), parent) for i, name, parent in bones]
    def mesh_basis(value):
        # The installed Alyx compiler rotates a DMX mesh's XY basis relative to
        # its SMD importer. Compensate on geometry/morphs; the shared skeleton
        # keeps the existing SMD bind pose. Compiled vertices are checked against
        # a baseline SMD build, including UVs and resolved bone weights.
        return (-value[1], value[0], value[2])
    basis = vta[0]
    grid = defaultdict(list)
    for index, value in basis.items():
        grid[tuple(math.floor(x/.1) for x in value[:3])].append(index)
    mapping, distances = {}, []
    for i, (material, (position, normal, _, _)) in enumerate(vertices):
        if not facial_material(material): continue
        cell = tuple(math.floor(x/.1) for x in position)
        candidates = [index for dx in (-1, 0, 1) for dy in (-1, 0, 1) for dz in (-1, 0, 1)
                      for index in grid.get((cell[0]+dx, cell[1]+dy, cell[2]+dz), [])]
        candidates = [(sum((position[k]-basis[j][k])**2 for k in range(3)),
                       -sum(normal[k]*basis[j][k+3] for k in range(3)), j) for j in candidates]
        if not candidates: raise ValueError('Facial vertex has no original VTA correspondence')
        # Position first, normal as a tie breaker for duplicated UV/hard-edge vertices.
        distance = min(x[0] for x in candidates)
        _, _, source = min(x for x in candidates if x[0] < distance + 1e-7)
        if distance > .06**2: raise ValueError('Facial mesh differs from VTA by more than .06 game units')
        mapping[i] = source; distances.append(math.sqrt(distance))
    dm = Dmx(); put = dm.set
    root = dm.element('jeanette', 'DmElement', 'root')
    model = dm.element('jeanette', 'DmeModel', 'model')
    put(root, 'model', 'element', model); put(root, 'skeleton', 'element', model)
    def transform(name, position=(0, 0, 0), rotation=(0, 0, 0), key=None):
        x, y, z = [v*.5 for v in rotation]
        sx, sy, sz, cx, cy, cz = math.sin(x), math.sin(y), math.sin(z), math.cos(x), math.cos(y), math.cos(z)
        tr = dm.element(name, 'DmeTransform', key or 'transform/'+name)
        put(tr, 'position', 'vector3', position)
        put(tr, 'orientation', 'quaternion', (sx*cy*cz-cx*sy*sz, cx*sy*cz+sx*cy*sz,
                                               cx*cy*sz-sx*sy*cz, cx*cy*cz+sx*sy*sz))
        return tr
    put(model, 'transform', 'element', transform('root', key='root-transform'))
    put(model, 'visible', 'bool', True)
    axis = dm.element('axisSystem', 'DmeAxisSystem', 'axes')
    for key, value in [('upAxis', 3), ('forwardParity', 1), ('coordSys', 0)]: put(axis, key, 'int', value)
    put(model, 'axisSystem', 'element', axis)
    joints = [dm.element(name, 'DmeJoint', 'joint/'+str(i)) for i, name, _ in bones]
    children = defaultdict(list); transforms = []
    for i, name, parent in bones:
        tr = transform(name, poses[i][:3], poses[i][3:], 'bone-transform/'+str(i))
        put(joints[i], 'transform', 'element', tr); transforms.append(tr)
        children[parent].append(joints[i])
    for i, _, _ in bones: put(joints[i], 'children', 'element_array', children[i])
    dag = dm.element('rework_6', 'DmeDag', 'mesh-dag')
    mesh_tr = transform('rework_6', key='mesh-transform')
    put(dag, 'transform', 'element', mesh_tr); put(dag, 'children', 'element_array', [])
    put(model, 'children', 'element_array', children[-1] + [dag])
    # Use the joint-only layout from Alyx's own DMX sources. Vertex indices are
    # zero-based into this list, including the named SMD root joint.
    put(model, 'jointList', 'element_array', joints)
    base = dm.element('base', 'DmeTransformList', 'base-transforms')
    put(base, 'transforms', 'element_array', transforms + [mesh_tr])
    put(model, 'baseStates', 'element_array', [base])
    mesh = dm.element('rework_6', 'DmeMesh', 'mesh'); put(dag, 'shape', 'element', mesh)
    put(mesh, 'visible', 'bool', True)
    vertex = dm.element('bind', 'DmeVertexData', 'bind')
    put(mesh, 'bindState', 'element', vertex); put(mesh, 'currentState', 'element', vertex)
    put(mesh, 'baseStates', 'element_array', [vertex])
    put(vertex, 'vertexFormat', 'string_array', ['position$0', 'normal$0', 'texcoord$0', 'blendweights$0', 'blendindices$0'])
    joint_count = max(len(v[1][3]) for v in vertices)
    put(vertex, 'flipVCoordinates', 'bool', True); put(vertex, 'jointCount', 'int', joint_count)
    for key, column, kind in [('position$0', 0, 'vector3'), ('normal$0', 1, 'vector3'), ('texcoord$0', 2, 'vector2')]:
        put(vertex, key, kind+'_array', [mesh_basis(v[column]) if column<2 else v[column] for _, v in vertices])
        put(vertex, key+'Indices', 'int_array', [i for _, tri in triangles for i in tri])
    weights, indices = [], []
    for _, v in vertices:
        links = list(v[3])
        indices.extend([i for i, _ in links] + [0]*(joint_count-len(links)))
        weights.extend([w for _, w in links] + [0.0]*(joint_count-len(links)))
    put(vertex, 'blendweights$0', 'float_array', weights); put(vertex, 'blendindices$0', 'int_array', indices)
    face_sets, by_material = [], defaultdict(list)
    for face, (material, _) in enumerate(triangles): by_material[material].extend([face*3, face*3+1, face*3+2, -1])
    for name, faces in by_material.items():
        mat = dm.element(name, 'DmeMaterial', 'material/'+name); put(mat, 'mtlName', 'string', name)
        fs = dm.element(name, 'DmeFaceSet', 'faces/'+name)
        put(fs, 'material', 'element', mat); put(fs, 'faces', 'int_array', faces); face_sets.append(fs)
    put(mesh, 'faceSets', 'element_array', face_sets)
    combination = dm.element('combinationOperator', 'DmeCombinationOperator', 'combination')
    put(root, 'combinationOperator', 'element', combination)
    delta_states, input_controls = [], []
    names = []
    for frame, info in enumerate(metadata, 1):
        name = re.sub('[^A-Za-z0-9]', '', info['name']) + 'Frame' + str(frame)
        control_name = name
        names.append(control_name)
        delta = dm.element(name, 'DmeVertexDeltaData', 'delta/'+str(frame))
        put(delta, 'corrected', 'bool', True)
        ids, positions, normals = [], [], []
        for index, source in mapping.items():
            if source not in vta[frame]: continue
            old, new = basis[source], vta[frame][source]
            ids.append(index); positions.append(mesh_basis(tuple(new[k]-old[k] for k in range(3))))
            normals.append(mesh_basis(tuple(new[k+3]-old[k+3] for k in range(3))))
        if not ids: raise ValueError('Original facial shape has no transferred vertices: '+name)
        put(delta, 'vertexFormat', 'string_array', ['position$0', 'normal$0'])
        for key, kind, values in [('position$0', 'vector3', positions), ('normal$0', 'vector3', normals)]:
            put(delta, key, kind+'_array', values); put(delta, key+'Indices', 'int_array', ids)
        delta_states.append(delta)
        control = dm.element(control_name, 'DmeCombinationInputControl', 'control/'+str(frame))
        put(control, 'rawControlNames', 'string_array', [name]); put(control, 'stereo', 'bool', False)
        put(control, 'eyelid', 'bool', False); put(control, 'flexMin', 'float', 0.0); put(control, 'flexMax', 'float', 1.0)
        put(control, 'wrinkleScales', 'float_array', [0.0]); input_controls.append(control)
    put(mesh, 'deltaStates', 'element_array', delta_states)
    for key in ['deltaStateWeights', 'deltaStateWeightsLagged']: put(mesh, key, 'vector2_array', [(0, 0)]*len(delta_states))
    put(combination, 'controls', 'element_array', input_controls)
    for key in ['controlValues', 'controlValuesLagged']: put(combination, key, 'vector3_array', [(0, .5, .5)]*len(input_controls))
    put(combination, 'usesLaggedValues', 'bool', False); put(combination, 'dominators', 'element_array', [])
    put(combination, 'targets', 'element_array', [mesh])
    dm.write(path)
    return names, {'vertices': len(vertices), 'triangles': len(triangles), 'bones': len(bones),
                   'mappedFaceVertices': len(mapping), 'maxMappingDistance': max(distances),
                   'morphs': len(delta_states), 'materials': dict(Counter(mat for mat, _ in triangles))}


def face_animation(path, controller):
    """A morph-only ramp, sampled by Cycle Control. No skeletal channels."""
    dm = Dmx(); put = dm.set
    root = dm.element('facial ramp', 'DmElement', 'ramp/root')
    skeleton = dm.element('skeleton', 'DmeModel', 'ramp/skeleton')
    transform = dm.element('root', 'DmeTransform', 'ramp/transform')
    put(transform, 'position', 'vector3', (0, 0, 0))
    put(transform, 'orientation', 'quaternion', (0, 0, 0, 1))
    put(skeleton, 'transform', 'element', transform)
    axis = dm.element('axisSystem', 'DmeAxisSystem', 'ramp/axes')
    for key, value in [('upAxis', 3), ('forwardParity', 1), ('coordSys', 0)]:
        put(axis, key, 'int', value)
    put(skeleton, 'axisSystem', 'element', axis)
    for key in ['children', 'jointList', 'baseStates']: put(skeleton, key, 'element_array', [])
    put(root, 'skeleton', 'element', skeleton)
    animations = dm.element('animations', 'DmeAnimationList', 'ramp/list')
    put(root, 'animationList', 'element', animations)
    clip = dm.element(controller, 'DmeChannelsClip', 'ramp/clip')
    put(animations, 'animations', 'element_array', [clip])
    timing = dm.element('time', 'DmeTimeFrame', 'ramp/time')
    for key, value in [('start', '0'), ('duration', '0.0416667'), ('offset', '0')]:
        put(timing, key, 'time', value)
    put(timing, 'scale', 'float', 1.0)
    put(clip, 'timeFrame', 'element', timing); put(clip, 'frameRate', 'float', 24.0)
    channel = dm.element(controller, 'DmeChannel', 'ramp/channel')
    target = dm.element(controller, 'DmeElement', 'ramp/target')
    put(target, 'flexWeight', 'float', 0.0)
    put(channel, 'toElement', 'element', target); put(channel, 'toAttribute', 'string', 'flexWeight')
    put(channel, 'toIndex', 'int', 0); put(channel, 'mode', 'int', 3)
    log = dm.element('weight', 'DmeFloatLog', 'ramp/log')
    layer = dm.element('weight', 'DmeFloatLogLayer', 'ramp/layer')
    put(layer, 'times', 'time_array', ['0', '0.0416667']); put(layer, 'values', 'float_array', [0.0, 1.0])
    put(log, 'layers', 'element_array', [layer]); put(log, 'defaultvalue', 'float', 0.0)
    put(log, 'usedefaultvalue', 'bool', False); put(channel, 'log', 'element', log)
    put(clip, 'channels', 'element_array', [channel]); dm.write(path)


def face_graph(checkout, output, folder, controllers):
    """Derive Jeanette's graph, preserving shared female movement and actions."""
    folder = Path(folder)
    graph = (checkout/'animgraphs/shared_female.vanmgrph').read_text(encoding='utf8')
    root_start = graph.index('_class = "CRootAnimNode"')
    root_end = graph.index('\n\t\t},', root_start)
    root = graph[root_start:root_end]
    child = re.search(r'm_childID\s*=\s*\{\s*m_id\s*=\s*(\d+)', root)
    if not child: raise ValueError('Shared graph root has no child')
    body = int(child[1])
    base = 2100040000
    params, nodes, animations, names = [], [], [], []
    nodes.append('''{key={m_id=2100040000} value={_class="CSequenceAnimNode"
        m_sName="Neutral facial reference" m_nNodeID={m_id=2100040000}
        m_networkMode="ClientSimulate" m_vecPosition=[1500.0,-600.0]
        m_sequenceName="dialogue_face_reference" m_playbackSpeed=0.0 m_bLoop=false}},''')
    for i, controller in enumerate(controllers, 1):
        name = f'dialogue_face_{i:02}'
        names.append(name)
        source = folder/'face_channels'/(name+'.dmx')
        face_animation(output/source, controller)
        param, seq, cycle, add = 2100000000+i, 2100010000+i, 2100020000+i, 2100030000+i
        params.append('''{_class="CFloatAnimParameter" m_name="%s" m_id={m_id=%d}
            m_previewButton="ANIMPARAM_BUTTON_NONE" m_bNetwork=true m_bUseMostRecentValue=false
            m_bAutoReset=false m_bPredicted=false m_fDefaultValue=0.0 m_fMinValue=0.0
            m_fMaxValue=1.0 m_bInterpolate=true},''' % (name, param))
        def node(n, kind, title, properties, x, y):
            return '''{key={m_id=%d} value={_class="%s" m_sName="%s" m_nNodeID={m_id=%d}
                m_networkMode="ClientSimulate" m_vecPosition=[%.1f,%.1f] %s}},''' % (n,kind,title,n,x,y,properties)
        x, y = 1800+(i-1)%9*300, -600+(i-1)//9*480
        nodes.append(node(seq,'CSequenceAnimNode',controller,
            'm_sequenceName="'+name+'" m_playbackSpeed=1.0 m_bLoop=false m_tagSpans=[]',x,y))
        nodes.append(node(cycle,'CCycleControlAnimNode',name,
            'm_childID={m_id=%d} m_valueSource="Parameter" m_param={m_id=%d}' % (seq,param),x,y+120))
        nodes.append(node(add,'CAddAnimNode','Add '+controller,
            '''m_baseChildID={m_id=%d} m_additiveChildID={m_id=%d} m_timingBehavior="UseChild1"
            m_flTimingBlend=0.5 m_footMotionTiming="Child1" m_bResetBase=true m_bResetAdditive=true
            m_bApplyChannelsSeparately=true''' % (base,cycle),x,y+240))
        base = add
        animations.append('''{_class="AnimFile" name="%s" source_filename="%s"
            children=[{_class="AnimSubtract" anim_name="dialogue_face_reference" frame=0}]
            looping=false delta=true worldSpace=false hidden=true start_frame=0 end_frame=1
            weight_list_name="dialogue_face_only"
            fade_in_time=0.0 fade_out_time=0.0 framerate=24.0},''' % (name,source.as_posix()))
    nodes.append('''{key={m_id=2100050000} value={_class="CBoneMaskAnimNode"
        m_sName="Facial channels only" m_nNodeID={m_id=2100050000}
        m_networkMode="ClientSimulate" m_vecPosition=[4700.0,1000.0]
        m_weightListName="dialogue_face_only" m_child1ID={m_id=%d} m_child2ID={m_id=%d}
        m_blendSpace="BlendSpace_Parent" m_bUseBlendScale=false
        m_timingBehavior="UseChild1" m_flTimingBlend=0.0 m_flRootMotionBlend=0.0
        m_footMotionTiming="Child1" m_bResetChild1=false m_bResetChild2=false}},''' % (body,base))
    root = root[:child.start(1)]+'2100050000'+root[child.end(1):]
    graph = graph[:root_start]+root+graph[root_end:]
    graph = re.sub(r'(m_Parameters\s*=\s*\[)',lambda m:m[1]+'\n'+'\n'.join(params),graph,count=1)
    graph = re.sub(r'(m_nodes\s*=\s*\[)',lambda m:m[1]+'\n'+'\n'.join(nodes),graph,count=1)
    (output/'animgraphs').mkdir(parents=True,exist_ok=True)
    (output/'animgraphs/jeanette_dialogue.vanmgrph').write_text(graph,encoding='utf8')
    header = (checkout/folder/'jeanette.vmdl').read_text(encoding='utf8').split('\n',1)[0]
    prefab = header+'\n{rootNode={_class="RootNode" children=[{_class="AnimationList" children=[\n'
    prefab += '''{_class="AnimFile" name="dialogue_face_reference" source_filename="%s"
        looping=false hidden=true start_frame=0 end_frame=0 framerate=24.0},\n''' % (
            folder/'face_channels/dialogue_face_01.dmx').as_posix()
    prefab += '\n'.join(animations)+'\n]}]}}\n'
    path = output/folder/'prefabs/dialogue_face_channels.vmdl_prefab'
    path.parent.mkdir(parents=True,exist_ok=True); path.write_text(prefab,encoding='utf8')
    return names


def lua(value):
    if isinstance(value, dict): return '{'+','.join('['+lua(k)+']='+lua(v) for k, v in value.items())+'}'
    if isinstance(value, list): return '{'+','.join(lua(v) for v in value)+'}'
    if isinstance(value, str): return json.dumps(value, ensure_ascii=False)
    if isinstance(value, (int, float)): return str(value)
    raise ValueError('Unsupported Lua value')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--bloodlines-root', type=Path, required=True)
    parser.add_argument('--output-root', type=Path, help='Stage generated files without changing the checkout')
    args = parser.parse_args()
    checkout = Path(__file__).resolve().parents[1]; output = args.output_root or checkout
    install = args.bloodlines_root; index = index_archives(install/'Vampire'); provenance = []
    def original(name):
        for mount in ['Unofficial_Patch', 'Vampire']:
            loose = install/mount/name
            if loose.is_file(): raw = loose.read_bytes(); source = mount+'/'+name; break
        else:
            archive, offset, length = index[name.lower()]
            with archive.open('rb') as stream: stream.seek(offset); raw = stream.read(length)
            source = 'Vampire/'+archive.name+':'+name
        provenance.append({'source': source, 'sha256': hashlib.sha256(raw).hexdigest()})
        return raw
    model = original('models/character/npc/unique/santa_monica/jeanette/jeanette.mdl')
    descs, controls, rules, frames = read_model_rules(model)
    folder = 'models/character/npc/unique/santa_monica/jeanette/'
    old_vta, labels = read_vta(checkout/folder/'jeanette_01.vta')
    if len(frames) != len(old_vta)-1 or any(f['name'] != labels[i] for i, f in enumerate(frames, 1)):
        raise ValueError('Original model flex order does not match the existing VTA')
    vta = native_shapes(model, old_vta[0], frames)
    lids = eyelid_rules(model)
    mesh_source = checkout/folder/'skirt_rebuild/v5/JeanetteR2_REF.smd'
    bones, poses, all_vertices, all_triangles = read_smd(mesh_source)
    vertices, triangles = split_face(mesh_source, output/folder/'jeanette_body.smd', all_vertices, all_triangles)
    names, report = mesh_dmx(output/folder/'jeanette_face.dmx', bones, poses, vertices, triangles, vta, frames)
    face_parameters = face_graph(checkout, output, folder, names)
    phonemes = phoneme_table(original('expressions/jeanette_phonemes.txt'), controls, rules, descs, frames)
    conversation = json.loads((checkout/'scripts/dialogue/jeanette.json').read_text(encoding='utf8'))
    lines = {}
    used = set()
    for name, node in conversation['nodes'].items():
        raw = original('sound/character/dlg/santa monica/jeanette/line'+str(node['sourceLine'])+'_col_e.lip')
        words = raw.decode('cp1252').split('WORDS', 1)[1].split('EMPHASIS', 1)[0]
        events = []
        for match in re.finditer(r'^\s*(\d+)\s+\S+\s+([\d.]+)\s+([\d.]+)\s+([\d.]+)', words, re.M):
            phoneme, start, end, intensity = match.groups()
            if phoneme not in phonemes: raise ValueError('Unknown original phoneme: '+phoneme)
            start, end, intensity = float(start), float(end), float(intensity)
            if end <= start or intensity < 0: raise ValueError('Invalid original phoneme interval')
            weights = [round(min(1.0, max(0.0, w*intensity)), 6) for w in phonemes[phoneme]]
            # Eyelid fixups are baseline flex rules, not speech. Only oral shapes
            # respond to dialogue; keep the existing neutral eye appearance.
            weights = [0 if i < 8 else w for i, w in enumerate(weights)]
            used.update(i for i, w in enumerate(weights) if w > 0)
            events.append([start, end, weights])
        if not events: raise ValueError('No original lip timing for '+name)
        lines[name] = events
    active = sorted(used)
    lids = eyelid_rules(model)
    def pose(values):
        evaluated = evaluate(controls, rules, values, len(descs))
        for out, inputs, targets in lids:
            evaluated[out] = sum(evaluated[i]*t for i, t in zip(inputs, targets))
        return [round(ramp(evaluated[f['index']], f['targets']), 6) for f in frames]
    # Upper-face direction is authored for this conversation; it is independent
    # of the original phoneme timings. These are not recovered VCD performances.
    expressions = {}
    for node, info in conversation['nodes'].items():
        values = info.get('expression', {})
        allowed = {c['name'] for c in controls[:17]}
        if set(values)-allowed: raise ValueError('Expression must use upper-face controls: '+node)
        expressions[node] = {'open': pose(values), 'blink': pose(dict(values, blink=1))}
    tuning = conversation['faceTuning']
    from face_tuning import validate_settings, specifications
    tuning, shape_gains = validate_settings(tuning, conversation.get('faceShapeGains', {}), names, checkout)
    limits = {v['key']: [v['min'], v['max']] for v in specifications(checkout)['controls']}
    catalog = {'tuning': tuning, 'tuningLimits': limits, 'shapeGains': shape_gains, 'controllers': [names[i] for i in active],
               'speechParameters': [face_parameters[i] for i in active],
               'faceControllers': names, 'faceParameters': face_parameters, 'expressions': expressions,
               'lines': {k: [[a, b, [w[i] for i in active]] for a, b, w in events] for k, events in lines.items()}}
    for relative, content in [('scripts/dialogue/jeanette_lipsync.json', json.dumps(catalog, indent=2)),
                              ('scripts/vscripts/npc_dialog_lipsync_data.lua', '-- Generated by utils/build_jeanette_face.py from original Bloodlines data.\nreturn '+lua(catalog))]:
        path = output/relative; path.parent.mkdir(parents=True, exist_ok=True); path.write_text(content+'\n', encoding='utf8')
    report.update({'sources': provenance, 'sourceVertices':len(all_vertices), 'sourceTriangles':len(all_triangles),
                   'bodyImporter':'original SMD, triangle rows and all skin weights retained verbatim',
                   'speechControllers': len(active), 'nodes': len(lines),
                   'morphEncoding': 'MDL2531 native direction offsets, position magnitude 8/255, normal magnitude 2/255',
                   'faceControllers':len(names), 'eyelidRules':len(lids),
                   'phonemes': {k: len(v) for k, v in lines.items()}})
    path = output/'scripts/dialogue/jeanette_face_sources.json'; path.write_text(json.dumps(report, indent=2)+'\n', encoding='utf8')
    print(json.dumps({k: v for k, v in report.items() if k != 'sources'}, indent=2))


if __name__ == '__main__':
    main()
