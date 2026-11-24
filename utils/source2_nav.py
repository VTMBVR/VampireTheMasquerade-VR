"""Read legacy Source 2 NAV v30 polygons for offline reachability checks.

Layout reference: ValveResourceFormat/NavMesh at commit
5977db6fb057d69b96b4d14d8bcc4827926e415b. This reader never rewrites NAV files.
"""
from pathlib import Path
import struct


def read_nav(path):
    raw = Path(path).read_bytes()
    offset = 0

    def read(fmt):
        nonlocal offset
        fmt = '<' + fmt
        values = struct.unpack_from(fmt, raw, offset)
        offset += struct.calcsize(fmt)
        return values[0] if len(values) == 1 else values

    magic, version, subversion = read('III')
    if (magic, version, subversion) != (0xFEEDFACE, 30, 0):
        raise ValueError('Expected Asylum legacy Source 2 NAV v30 without custom data')
    analyzed = read('B')
    for _ in range(read('H')):
        length = read('H')
        offset += length
    read('B')
    areas = []
    for _ in range(read('I')):
        identifier, flags, hull = read('IqB')
        corners = [read('fff') for _ in range(read('I'))]
        if len(corners) < 3:
            raise ValueError('NAV area has fewer than three corners')
        read('f')
        neighbors = []
        connections = []
        for edge in range(len(corners)):
            for _ in range(read('I')):
                target, target_edge = read('II')
                neighbors.append(target)
                connections.append({'area':target,'edge':edge,'targetEdge':target_edge})
        for _ in range(read('B')):
            read('IfffB')
        if read('I') != 0:
            raise ValueError('Unsupported NAV encounter paths')
        for _ in range(2):
            ladder_count = read('I')
            offset += 4 * ladder_count
        areas.append({'id': identifier, 'hull': hull, 'flags': flags,
                      'corners': corners, 'neighbors': neighbors,'connections':connections})
    # Asylum has no ladders or transformed bounds. Reject a different layout
    # rather than silently accepting an incomplete navigation graph.
    if read('I') != 0 or read('I') != 0:
        raise ValueError('Ladders/transformed bounds require another NAV reader')
    generation = read('i')
    if not 6 <= generation <= 11:
        raise ValueError('Unsupported legacy NAV generation parameters')
    read('Ifffii ffi fi'.replace(' ', ''))
    if generation >= 7:
        read('f')
    count = read('i')
    if count == 0:
        count = 3
    hulls = []
    for index in range(count):
        enabled = read('B') if generation >= 9 else True
        radius, height = read('ff')
        climb, slope, down, across, up = read('fifff')
        if generation >= 11:
            read('i')
        hulls.append({'index': index, 'radius': radius, 'height': height,
                      'enabled': bool(enabled), 'climb': climb})
    # Remaining generation-only settings do not affect stored connectivity.
    by_id = {area['id']: area for area in areas}
    if len(by_id) != len(areas):
        raise ValueError('Duplicate NAV area IDs')
    for area in areas:
        if any(n not in by_id or by_id[n]['hull'] != area['hull'] for n in area['neighbors']):
            raise ValueError('NAV connection references an unknown/different hull')
    return {'version': version, 'analyzed': bool(analyzed), 'areas': areas, 'hulls': hulls}


def closest_point(point, polygon):
    """XY closest point on a convex NAV polygon, with its interpolated Z."""
    x, y, z = point
    signs = []
    best = None
    distance = float('inf')
    for a, b in zip(polygon, polygon[1:] + polygon[:1]):
        dx, dy = b[0]-a[0], b[1]-a[1]
        signs.append(dx*(y-a[1])-dy*(x-a[0]))
        t = max(0, min(1, ((x-a[0])*dx+(y-a[1])*dy)/(dx*dx+dy*dy))) if dx*dx+dy*dy else 0
        candidate = tuple(a[i]+t*(b[i]-a[i]) for i in range(3))
        d = (candidate[0]-x)**2+(candidate[1]-y)**2
        if d < distance:
            distance, best = d, candidate
    if min(signs) >= -1e-5 or max(signs) <= 1e-5:
        a, b, c = polygon[:3]
        ux, uy, uz = (b[i]-a[i] for i in range(3))
        vx, vy, vz = (c[i]-a[i] for i in range(3))
        nx, ny, nz = uy*vz-uz*vy, uz*vx-ux*vz, ux*vy-uy*vx
        return (x, y, a[2]-(nx*(x-a[0])+ny*(y-a[1]))/nz) if abs(nz)>1e-6 else (x, y, a[2])
    return best


def components(areas):
    by_id = {a['id']: a for a in areas}
    remaining = set(by_id)
    result = {}
    component = 0
    while remaining:
        component += 1
        pending = [remaining.pop()]
        while pending:
            index = pending.pop()
            result[index] = component
            for neighbor in by_id[index]['neighbors']:
                if neighbor in remaining:
                    remaining.remove(neighbor)
                    pending.append(neighbor)
    return result
