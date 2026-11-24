"""Bake original Bloodlines irises into the existing Asylum eye UVs.

Source Eyes materials project a separate alpha-masked $iris using the MDL's
eyeball basis. A plain conversion of $basetexture loses the iris; Alyx's eye
shader also needs rig data which these imported meshes do not have. Bake the
neutral projection instead, without changing geometry, skinning or facial
calibration. This restores appearance, not animated pupil tracking.

v2531 layout reference: Crowbar-VTMB SourceMdlFile2531.ReadEyeballs/ReadMeshes.
"""
import argparse
from functools import lru_cache
import json
import math
from pathlib import Path
import re
import struct

from PIL import Image, ImageDraw

from bloodlines_assets import Assets, write_json
from build_jeanette_face import read_smd
from prepare_dialogue_art import texture


def dot(a, b):
    return sum(x*y for x, y in zip(a, b))


def cross(a, b):
    return (a[1]*b[2]-a[2]*b[1], a[2]*b[0]-a[0]*b[2], a[0]*b[1]-a[1]*b[0])


def normalize(v):
    length = math.sqrt(dot(v, v))
    if length < 1e-8:
        raise ValueError('Invalid eyeball basis')
    return tuple(x/length for x in v)


def eye_records(raw):
    """Map actual eye meshes to their bone-local projection, not name guesses."""
    count, offset = struct.unpack_from('<2i', raw, 292)
    def string(at):
        return raw[at:raw.index(b'\0', at)].decode('ascii')
    materials = []
    for i in range(count):
        at = offset+i*20
        materials.append(string(at+struct.unpack_from('<i', raw, at)[0]))
    _, bones = struct.unpack_from('<2i', raw, 240)
    count, offset = struct.unpack_from('<2i', raw, 320)
    result = {}
    for b in range(count):
        body = offset+b*16
        models, model_offset = struct.unpack_from('<i4xi', raw, body+4)
        if models != 1:
            raise ValueError('Select a model body alternative explicitly')
        model = body+model_offset
        meshes, mesh_offset = struct.unpack_from('<2i', raw, model+136)
        eyes, eye_offset = struct.unpack_from('<2i', raw, model+192)
        for m in range(meshes):
            at = model+mesh_offset+m*60
            material = struct.unpack_from('<i', raw, at)[0]
            kind, index = struct.unpack_from('<2i', raw, at+24)
            if kind != 1:
                continue
            if not 0 <= index < eyes:
                raise ValueError('Invalid eye mesh record')
            eye = model+eye_offset+index*140
            bone = struct.unpack_from('<i', raw, eye+4)[0]
            result[materials[material].lower()] = {
                'center': struct.unpack_from('<3f', raw, eye+8),
                'radius': struct.unpack_from('<f', raw, eye+24)[0],
                'up': struct.unpack_from('<3f', raw, eye+28),
                'forward': struct.unpack_from('<3f', raw, eye+40),
                'scale': struct.unpack_from('<f', raw, eye+60)[0],
                # v2531 has a fourth quaternion-scale float before poseToBone.
                'inverseBind': struct.unpack_from('<12f', raw, bones+bone*160+88),
            }
    count, offset = struct.unpack_from('<2i', raw, 300)
    directories = [string(struct.unpack_from('<i', raw, offset+i*4)[0]).replace('\\', '/').strip('/')
                   for i in range(count)]
    return result, directories


def projection(eye, position):
    matrix = eye['inverseBind']
    local = tuple(dot(matrix[i:i+3], position)+matrix[i+3]-eye['center'][i//4] for i in (0, 4, 8))
    up = normalize(eye['up'])
    forward = normalize(eye['forward'])
    right = normalize(cross(forward, up))
    return (.5+dot(local, right)*eye['scale'], .5-dot(local, up)*eye['scale'])


def affine(points, values):
    """Coefficients for the scalar affine function at three 2D points."""
    (x0,y0),(x1,y1),(x2,y2) = points
    z0,z1,z2 = values
    determinant = (x1-x0)*(y2-y0)-(x2-x0)*(y1-y0)
    if abs(determinant) < 1e-8:
        return None
    a = ((z1-z0)*(y2-y0)-(z2-z0)*(y1-y0))/determinant
    b = ((x1-x0)*(z2-z0)-(x2-x0)*(z1-z0))/determinant
    return a,b,z0-a*x0-b*y0


def bake(base, iris, eye, vertices, triangles, size=512):
    background = base.convert('RGB').resize((size,size), Image.Resampling.LANCZOS)
    output = background.copy()
    coverage = Image.new('L', (size,size))
    iris_coverage = Image.new('L', (size,size))
    projected = 0
    for triangle in triangles:
        values = [vertices[i][1] for i in triangle]
        pixels = [(v[2][0]*size, (1-v[2][1])*size) for v in values]
        uv = [projection(eye, v[0]) for v in values]
        u = affine(pixels, [p[0]*iris.width for p in uv])
        v = affine(pixels, [p[1]*iris.height for p in uv])
        if u is None:
            continue
        sampled = iris.transform((size,size), Image.Transform.AFFINE, u+v,
                                 Image.Resampling.BICUBIC)
        mask = Image.new('L', (size,size))
        ImageDraw.Draw(mask).polygon(pixels, fill=255)
        # Apply alpha once; RGB black outside the iris is transparent in VTMB.
        alpha = Image.composite(sampled.getchannel('A'), Image.new('L',(size,size)), mask)
        patch = Image.composite(sampled.convert('RGB'), background, sampled.getchannel('A'))
        output.paste(patch, (0,0), mask)
        coverage.paste(255, (0,0), mask)
        iris_coverage.paste(alpha, (0,0), mask)
        projected += 1
    covered = sum(coverage.histogram()[1:])
    iris_pixels = sum(iris_coverage.histogram()[129:])
    if not covered or iris_pixels < 50:
        raise ValueError('Eye projection lost the visible iris')
    return output, {'triangles': projected, 'uvPixels': covered, 'irisPixels': iris_pixels}


def prepare(root, assets):
    cast = json.loads((root/'scripts/dialogue/asylum/cast.json').read_text(encoding='utf8'))
    models = sorted(set(item['alyxModel'] for item in cast))
    resources, report = [], {}
    load_texture = lru_cache(maxsize=64)(lambda stem: texture(assets, stem.lower().replace('\\','/')))
    for model_path in models:
        path = root/model_path
        document = path.read_text(encoding='utf-8-sig')
        source = Path(model_path).with_suffix('.mdl').as_posix()
        eyes, directories = eye_records(assets.read(source))
        if not eyes:
            continue
        sources = re.findall(r'\bfilename"?\s*=\s*"([^"]+\.smd)"', document, re.I)
        model_report = {}
        for mesh in sources:
            _, _, vertices, triangles = read_smd(root/mesh)
            for material in sorted(set(m for m,_ in triangles)):
                key = Path(material).stem.lower()
                if key not in eyes:
                    continue
                candidates = [('materials/'+d+'/'+key+'.vmt').lower() for d in directories]
                original = next((p for p in candidates if p in assets.entries), None)
                if not original:
                    raise ValueError('No original eye material for '+source+': '+key)
                vmt = assets.read(original).decode('cp1252')
                channels = dict((k.lower(),v) for k,v in re.findall(r'"?\$(basetexture|iris)"?\s+"([^"]+)"',vmt,re.I))
                if set(channels) != {'basetexture','iris'}:
                    raise ValueError('Incomplete original eye material: '+original)
                image, stats = bake(load_texture(channels['basetexture']), load_texture(channels['iris']),
                                    eyes[key], vertices, [t for m,t in triangles if m==material])
                folder = Path(model_path).parent/'asylum_eyes'
                color_path = folder/(key+'_color.png')
                target = folder/(key+'.vmat')
                (root/folder).mkdir(parents=True, exist_ok=True)
                image.save(root/color_path)
                (root/target).write_text('Layer0\n{\n\tshader "vr_complex.vfx"\n'
                    '\tTextureColor "'+color_path.as_posix()+'"\n'
                    '\tg_flRoughnessScaleFactor "0.200"\n}\n', encoding='utf8')
                pattern = r'("?from"?\s*=\s*"'+re.escape(key)+r'\.vmat"\s*,?\s*"?to"?\s*=\s*")[^"]+(\")'
                document, count = re.subn(pattern, lambda m:m[1]+target.as_posix()+m[2], document, flags=re.I)
                if count != 1:
                    raise ValueError('Expected one material remap: '+model_path+': '+key)
                model_report[key] = dict(stats, material=target.as_posix(), color=color_path.as_posix(),
                    sourceMaterial=original, baseTexture=channels['basetexture'], irisTexture=channels['iris'],
                    source=assets.reads[original], gaze='neutral_baked')
        if set(model_report) != set(eyes):
            raise ValueError('Not all native eyes have exported geometry: '+model_path)
        path.write_text(document, encoding='utf8')
        report[model_path] = model_report
        resources.append(model_path)
        print('Prepared eyes: '+model_path, flush=True)
    write_json(root/'scripts/dialogue/asylum/eye_preparation.json', report)
    write_json(root/'scripts/dialogue/asylum/eye_resources.json', resources)
    return report


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--bloodlines-root', type=Path, required=True)
    args = parser.parse_args()
    prepare(Path(__file__).resolve().parents[1], Assets(args.bloodlines_root))


if __name__ == '__main__':
    main()
