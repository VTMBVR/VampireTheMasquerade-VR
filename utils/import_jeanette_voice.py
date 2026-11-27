"""Import the selected original Jeanette voice lines from a local Bloodlines install.

The Troika archive footer is (file count, directory offset, version byte).
Version-zero directory entries contain a length-prefixed path, offset and size.
Reference: sourcepp/src/vpkpp/format/VPK_VTMB.cpp. No archives are modified.
"""
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil
import struct
import subprocess
import tempfile


def index_archives(directory):
    entries = {}
    for archive in sorted(directory.glob('pack*.vpk')):
        length = archive.stat().st_size
        with archive.open('rb') as stream:
            stream.seek(-9, 2)
            count, offset, version = struct.unpack('<IIB', stream.read(9))
            if version != 0:  # Version-one packs in this install contain directory metadata.
                continue
            if offset > length - 9 or count > 1000000:
                raise ValueError('Invalid Bloodlines directory: ' + str(archive))
            stream.seek(offset)
            for _ in range(count):
                size = struct.unpack('<I', stream.read(4))[0]
                if size > 4096:
                    raise ValueError('Invalid archive path length')
                name = stream.read(size).decode('cp1252').replace('\\', '/').lower()
                start, size = struct.unpack('<II', stream.read(8))
                if start + size > offset:
                    raise ValueError('Archive entry exceeds data area: ' + name)
                entries[name] = archive, start, size
    return entries


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--bloodlines-root', required=True, type=Path)
    parser.add_argument('--ffmpeg', type=Path, default=shutil.which('ffmpeg'))
    args = parser.parse_args()
    if not args.ffmpeg or not args.ffmpeg.is_file():
        parser.error('Specify an installed ffmpeg.exe using --ffmpeg')
    root = Path(__file__).resolve().parents[1]
    data = json.loads((root / 'scripts/dialogue/jeanette.json').read_text(encoding='utf8'))
    entries = index_archives(args.bloodlines_root / 'Vampire')
    dialog = args.bloodlines_root / 'Unofficial_Patch/dlg/santa monica/jeanette.dlg'
    if not dialog.is_file():
        parser.error('The installed Jeanette dialogue file was not found')
    lines = {}
    for line in dialog.read_text(encoding='cp1252').splitlines():
        cells = [cell.strip() for cell in re.findall(r'\{(.*?)\}', line)]
        if len(cells) > 3 and cells[3] == '#':
            lines[int(cells[0])] = cells[1]
    provenance = []
    with tempfile.TemporaryDirectory(prefix='vtmbvr-jeanette-') as scratch:
        for name, node in data['nodes'].items():
            line = node['sourceLine']
            relative = f'sound/character/dlg/santa monica/jeanette/line{line}_col_e.mp3'
            loose = args.bloodlines_root / 'Unofficial_Patch' / relative
            if loose.is_file():
                raw, origin = loose.read_bytes(), 'Unofficial_Patch/' + relative
            elif relative in entries:
                archive, offset, size = entries[relative]
                with archive.open('rb') as stream:
                    stream.seek(offset)
                    raw = stream.read(size)
                origin = 'Vampire/' + archive.name + ':' + relative
            else:
                raise ValueError('Missing original voice: ' + relative)
            target = root / node['audio']
            if not target.resolve().is_relative_to(root / 'sounds/dialogue/jeanette'):
                raise ValueError('Voice target must stay in sounds/dialogue/jeanette')
            target.parent.mkdir(parents=True, exist_ok=True)
            source = Path(scratch) / (name + '.mp3')
            source.write_bytes(raw)
            subprocess.run([str(args.ffmpeg), '-y', '-hide_banner', '-loglevel', 'error',
                            '-i', str(source), '-ar', '48000', '-ac', '1', '-c:a', 'pcm_s16le',
                            str(target)], check=True)
            provenance.append({'node': name, 'line': line, 'source': origin,
                               'originalText': lines[line],
                               'sourceSha256': hashlib.sha256(raw).hexdigest(),
                               'wavSha256': hashlib.sha256(target.read_bytes()).hexdigest()})
            print(name + ': line ' + str(line))
    (root / 'scripts/dialogue/jeanette_voice_sources.json').write_text(
        json.dumps(provenance, ensure_ascii=False, indent=2) + '\n', encoding='utf8')


if __name__ == '__main__':
    main()
