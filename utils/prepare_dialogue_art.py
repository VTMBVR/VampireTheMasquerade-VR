"""Convert the installed game's bitmap fonts and talk icons for Panorama.

Format references: LaZar00/VtMBFontEditor FontFile.cs and
craftablescience/sourcepp vtfpp/TTX.cpp. Original pixels are retained.
"""
import argparse
from io import BytesIO
import json
from pathlib import Path
import re
import struct
import zlib

from PIL import Image
from bloodlines_assets import Assets, text, write_json


def texture(assets, stem):
    header = assets.read('materials/'+stem+'.tth')
    count = header[6]
    chunk = struct.unpack_from('<I', header, 8)[0]
    offset = 12+count*8
    total, compressed = struct.unpack_from('<2I', header, offset)
    data = header[offset+8:offset+8+chunk]
    if compressed:
        data += zlib.decompress(assets.read('materials/'+stem+'.ttz'))
    if len(data) != total or data[:4] != b'VTF\0':
        raise ValueError('Invalid Troika texture: '+stem)
    width, height = struct.unpack_from('<2H', data, 16)
    fmt = struct.unpack_from('<I', data, 52)[0]
    if fmt in (13, 14, 15):
        fourcc = {13: b'DXT1', 14: b'DXT3', 15: b'DXT5'}[fmt]
        size = ((width+3)//4)*((height+3)//4)*(8 if fmt == 13 else 16)
        fields = [124, 0x81007, height, width, size, 0, 0]+[0]*11
        fields += [32, 4, int.from_bytes(fourcc, 'little'), 0, 0, 0, 0, 0, 0x1000, 0, 0, 0, 0]
        return Image.open(BytesIO(b'DDS '+struct.pack('<31I', *fields)+data[-size:])).convert('RGBA')
    modes = {0: ('RGBA', 4), 1: ('ABGR', 4), 2: ('RGB', 3), 3: ('BGR', 3), 12: ('BGRA', 4)}
    if fmt not in modes:
        raise ValueError('Unsupported texture format '+str(fmt)+': '+stem)
    mode, stride = modes[fmt]
    return Image.frombytes('RGBA' if stride == 4 else 'RGB', (width, height),
                           data[-width*height*stride:], 'raw', mode).convert('RGBA')


def font(assets, filename, target, family):
    raw = assets.read(filename)
    pages, page_offset, version, spacing, ascent, descent, _, _, records = struct.unpack_from('<9I', raw)
    if version != 1 or records != 292 or page_offset < records:
        raise ValueError('Unsupported Bloodlines font: '+filename)
    table = raw[36:292]
    page_images = []
    for page in range(pages):
        at = page_offset+page*16
        width, height, name_offset, _ = struct.unpack_from('<4I', raw, at)
        start = at+name_offset
        stem = raw[start:raw.index(b'\0', start)].decode('ascii')
        own_stem = Path(filename).stem+'-page'+str(page)
        if 'materials/fonts/'+own_stem+'.tth' in assets.entries:
            stem = own_stem  # Some shipped descriptors retain an older filename.
        bitmap = texture(assets, 'fonts/'+stem)
        page_images.append((bitmap, width, height))
    glyphs = {}
    target.mkdir(parents=True, exist_ok=True)
    for code in range(32, 256):
        index = table[code]
        at = records+index*44
        if at+44 > page_offset:
            continue
        settings = struct.unpack_from('<28b', raw, at)
        a, b, c = settings[16], raw[at+17], settings[18]
        if code == 32:
            glyphs[' '] = {'advance': max(1, a+b+c)}
            continue
        page = settings[24]
        uv = struct.unpack_from('<4f', raw, at+28)
        if page < 0 or page >= pages:
            continue
        bitmap, logical_width, logical_height = page_images[page]
        width, height = bitmap.size
        box = tuple(round(v*s) for v, s in zip(uv, (width, height, width, height)))
        if box[2] <= box[0] or box[3] <= box[1]:
            continue
        try:
            character = bytes([code]).decode('cp1251')
        except UnicodeDecodeError:
            continue
        file = str(ord(character))+'.png'
        bitmap.crop(box).save(target/file)
        glyphs[character] = {'file': family+'/'+file, 'width': round((uv[2]-uv[0])*logical_width),
                             'height': round((uv[3]-uv[1])*logical_height),
                             'x': a, 'y': ascent+struct.unpack_from('<h', raw, at+20)[0],
                             'advance': max(1, a+b+c)}
    return {'source': filename, 'height': ascent+descent, 'lineSpacing': spacing, 'glyphs': glyphs}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--bloodlines-root', type=Path, required=True)
    parser.add_argument('--font-resolution',type=int,choices=(640,800,1024,1280,1600),default=1280,
                        help='Original TrackerScheme font bank (independent of Panorama layout size)')
    args = parser.parse_args()
    assets = Assets(args.bloodlines_root)
    root = Path(__file__).resolve().parents[1]
    images = root/'panorama/images/custom_game/vtmbvr'
    images.mkdir(parents=True, exist_ok=True)
    result = {}
    scheme = text(assets.read('resource/trackerscheme.res'))
    scheme_names={'normal':'Base','seduction':'Seduction','persuasion':'Persuasion',
                  'intimidate':'Intimidate','dominate':'Dominate','dementation':'Dementation','malkavian':'Malk'}
    for family, prefix in [('normal', 'vamp_dialog_base'), ('heading','vamp_mainfont'),
                           ('seduction','vamp_dialog_seduction'), ('persuasion','vamp_dialog_persuasion'),
                           ('intimidate','vamp_dialog_intimidate'), ('dominate','vamp_dialog_domination'),
                           ('dementation','vamp_dialog_dementation'), ('malkavian','vamp_dialog_malkavian')]:
        candidates = [k for k in assets.entries if re.fullmatch('materials/fonts/'+prefix+r'_\d+_\d+_\d+\.fnt', k)]
        # The small 1024 atlas in the Russian patch has a heavier cut than
        # its 1280/1600 banks. Choose the reference-game bank explicitly;
        # Panorama's virtual 1024-pixel panel is not the game's screen size.
        bank=1024 if family=='heading' else args.font_resolution
        block=re.search(r'"Dlg_'+scheme_names.get(family,'Base')+'_'+str(bank)+r'"[^\{]*\{[^\{]*\{([^}]+)',scheme)
        tall=re.search(r'"tall"\s+"(\d+)"',block[1]) if block else None
        weight=re.search(r'"weight"\s+"(\d+)"',block[1]) if block else None
        requested=int(tall[1]) if tall else 24
        selected=min(candidates,key=lambda k:(abs(int(Path(k).stem.split('_')[-3])-requested),
                      abs(int(Path(k).stem.split('_')[-2])-(int(weight[1]) if weight else 900))))
        result[family] = font(assets, selected, images/'fonts'/family, family)
    for name in ('talk_female', 'talk_male'):
        texture(assets, 'hud/context_icons/'+name).save(images/(name+'.png'))
    corners=texture(assets,'hud/dialogfrmcrnrs')
    corners.crop((0,0,96,96)).save(images/'dialog_corner_tl.png')
    corners.crop((160,160,256,256)).save(images/'dialog_corner_br.png')
    write_json(root/'scripts/dialogue/interface_sources.json', {'fontResolution':args.font_resolution,'fonts': {k: v['source'] for k, v in result.items()},
               'assets': list(assets.reads.values())})
    (root/'panorama/scripts/custom_game/vtmbvr_font_data.js').write_text(
        '// Original Bloodlines bitmap glyphs. Generated by prepare_dialogue_art.py.\nvar VTMBVRFontData = '+
        json.dumps(result, ensure_ascii=False)+';\n', encoding='utf8')
    # The Alyx image compiler is reached through Panorama layout dependencies;
    # resourcecompiler cannot compile a PNG directly. This layout is build-only.
    glyphs=sorted(images.rglob('*.png'))
    preload='<root>\n<Panel hittest="false">\n'+''.join(
        '<Image src="file://{images}/custom_game/vtmbvr/'+p.relative_to(images).as_posix()+'" />\n'
        for p in glyphs)+'</Panel>\n</root>\n'
    (root/'panorama/layout/custom_game/vtmbvr_font_preload.xml').write_text(preload,encoding='utf8')
    print('Prepared original fonts and talk icons; no game launched.')


if __name__ == '__main__':
    main()
