"""Read-only Bloodlines assets, dialogue and choreography readers.

Loose Unofficial_Patch files override its archives, then loose Vampire files
and numbered Vampire archives. All exported paths remain relative to a root.
"""
import hashlib
import json
import math
from pathlib import Path, PurePosixPath
import re
import shlex
import struct

from import_jeanette_voice import index_archives


def asset_path(value):
    value = value.replace('\\', '/').lower()
    path = PurePosixPath(value)
    if path.is_absolute() or ':' in value or '..' in path.parts or not path.parts:
        raise ValueError('Invalid relative asset path: ' + value)
    return str(path)


class Assets:
    def __init__(self, root):
        self.root = Path(root).resolve()
        self.entries = {}
        self.reads = {}
        for layer in ('Vampire', 'Unofficial_Patch'):
            directory = self.root/layer
            for name, (archive, offset, size) in index_archives(directory).items():
                self.entries[asset_path(name)] = (archive, offset, size)
            for file in sorted(directory.rglob('*')):
                if file.is_file() and file.suffix.lower() not in ('.vpk', '.sav'):
                    self.entries[asset_path(file.relative_to(directory).as_posix())] = (file, 0, file.stat().st_size)

    def read(self, name):
        name = asset_path(name)
        file, offset, size = self.entries[name]
        with file.open('rb') as stream:
            stream.seek(offset)
            raw = stream.read(size)
        if len(raw) != size:
            raise ValueError('Truncated asset: ' + name)
        origin = file.relative_to(self.root).as_posix()
        if file.suffix.lower() == '.vpk':
            origin += ':' + name
        self.reads[name] = {'path': name, 'source': origin, 'bytes': size,
                            'sha256': hashlib.sha256(raw).hexdigest()}
        return raw

    def export(self, name, root):
        name = asset_path(name)
        target = Path(root)/name
        raw = self.read(name)
        target.parent.mkdir(parents=True, exist_ok=True)
        if not target.exists() or target.read_bytes() != raw:
            target.write_bytes(raw)
        return raw


def text(raw, russian=False):
    if raw.startswith((b'\xff\xfe', b'\xfe\xff')):
        return raw.decode('utf16')
    try:
        return raw.decode('utf-8-sig')
    except UnicodeDecodeError:
        return raw.decode('cp1251' if russian else 'cp1252')


def entities(raw):
    if raw[:4] != b'VBSP' or len(raw) < 1036:
        raise ValueError('Not a Source BSP')
    offset, size, version, fourcc = struct.unpack_from('<4i', raw, 8)
    if offset < 1036 or size <= 0 or offset+size > len(raw) or fourcc:
        raise ValueError('Unsupported or truncated BSP entity lump')
    source = text(raw[offset:offset+size].rstrip(b'\0'), russian=True)
    result = []
    for index, block in enumerate(re.findall(r'\{([^{}]*)\}', source)):
        pairs = re.findall(r'"((?:\\.|[^"\\])*)"\s*"((?:\\.|[^"\\])*)"', block)
        properties = dict(pairs)
        outputs = [[k, v] for k, v in pairs if k.startswith('On')]
        result.append({'id': index, 'properties': properties, 'outputs': outputs,
                       'pairs': [list(p) for p in pairs]})
    if not result or result[0]['properties'].get('classname') != 'worldspawn':
        raise ValueError('No BSP worldspawn')
    return result


def dialogue(raw, russian=True):
    """Preserve all 13 columns, including gender text and executable callbacks.

    NPC '#' rows own subsequent player rows up to the next NPC row. Conditions
    on player rows and commands on NPC rows share column 4 in this format.
    No source code is evaluated here.
    """
    rows = []
    current = None
    ids = set()
    for physical, line in enumerate(text(raw, russian).splitlines(), 1):
        if not line.strip() or line.lstrip().startswith('//'):
            continue
        cells = [x.strip() for x in re.findall(r'\{([^{}]*)\}', line)]
        if not cells or not cells[0].isdigit():
            raise ValueError('Unparsed dialogue row ' + str(physical))
        if len(cells) != 13:
            raise ValueError('Expected 13 dialogue columns at row ' + str(physical))
        number = int(cells[0])
        if number in ids:
            raise ValueError('Duplicate dialogue line ' + str(number))
        ids.add(number)
        npc = cells[3] == '#'
        row = {'id': number, 'physicalLine': physical, 'kind': 'npc' if npc else 'player',
               'textMale': cells[1], 'textFemale': cells[2], 'target': cells[3],
               'fields': cells}
        if npc:
            current = number
            row['commands'] = [x for x in cells[4:12] if x]
            row['answers'] = []
        else:
            row.update({'parent': current, 'condition': cells[4], 'action': cells[5],
                        'textMalkavian': cells[12]})
            if cells[3] and re.fullmatch(r'-?\d+', cells[3]):
                row['next'] = int(cells[3])
        rows.append(row)
    lookup = {r['id']: r for r in rows}
    for row in rows:
        if row.get('parent') is not None and any(row['fields'][1:]):
            lookup[row['parent']]['answers'].append(row['id'])
    return rows


def choreography(raw):
    """Keep all VCD channels and event fields, including ramps and flex tracks."""
    root = []
    stack = [root]
    last = None
    for number, line in enumerate(text(raw).splitlines(), 1):
        line = line.strip()
        quoted, escaped = False, False
        for i, char in enumerate(line):
            if char == '"' and not escaped:
                quoted = not quoted
            if not quoted and line[i:i+2] == '//':
                line = line[:i].rstrip()
                break
            escaped = char == '\\' and not escaped
        if not line or line.startswith('//'):
            continue
        if line == '{':
            if last is None:
                raise ValueError('Unexpected VCD block at line ' + str(number))
            stack.append(last['items'])
            last = None
        elif line == '}':
            if len(stack) == 1:
                raise ValueError('Unbalanced VCD close')
            stack.pop()
            last = None
        else:
            lexer = shlex.shlex(line, posix=True)
            lexer.whitespace_split = True
            lexer.commenters = ''
            tokens = list(lexer)
            last = {'header': tokens, 'items': []}
            stack[-1].append(last)
    if len(stack) != 1:
        raise ValueError('Unclosed VCD block')
    events = []
    def visit(nodes, actor=None, channel=None):
        for node in nodes:
            head, children = node['header'], node['items']
            if head[0] == 'actor':
                visit(children, head[1], channel)
            elif head[0] == 'channel':
                visit(children, actor, head[1])
            elif head[0] == 'event':
                fields = {c['header'][0]: c['header'][1:] for c in children}
                event = {'actor': actor, 'channel': channel, 'type': head[1],
                         'name': ' '.join(head[2:]), 'fields': fields, 'tree': children}
                if 'time' in fields:
                    event['start'], event['end'] = map(float, fields['time'])
                    if not all(math.isfinite(event[x]) for x in ('start', 'end')):
                        raise ValueError('Non-finite VCD interval')
                events.append(event)
            else:
                visit(children, actor, channel)
    visit(root)
    return {'events': events, 'tree': root}


def lip_sync(raw):
    source = text(raw)
    if 'WORDS' not in source:
        raise ValueError('No WORDS section in original lip file')
    words = source.split('WORDS', 1)[1].split('EMPHASIS', 1)[0]
    events = []
    for line in words.splitlines():
        match = re.fullmatch(r'\s*(\d+)\s+(\S+)\s+([\d.eE+-]+)\s+([\d.eE+-]+)\s+([\d.eE+-]+)(?:\s+.*)?', line)
        if not match:
            continue
        code, label, start, end, intensity = match.groups()
        start, end, intensity = float(start), float(end), float(intensity)
        if not all(math.isfinite(v) for v in (start, end, intensity)):
            raise ValueError('Invalid phoneme interval')
        events.append({'code': int(code), 'label': label, 'start': start, 'end': end, 'intensity': intensity})
    return {'phonemes': events,
            'timingNotes': [{'index': i, 'reason': 'preroll' if e['start'] < 0 else 'nonpositive_interval_or_intensity'}
                            for i, e in enumerate(events) if e['start'] < 0 or e['end'] <= e['start'] or e['intensity'] < 0],
            'plaintext': source.split('PLAINTEXT', 1)[-1].split('WORDS', 1)[0].strip().strip('{}\r\n ')}


def pose_table(raw):
    source = text(raw)
    keys = next(line.split()[1:] for line in source.splitlines() if line.startswith('$keys '))
    poses = {}
    for line in source.splitlines():
        if not line.startswith('"'):
            continue
        cells = shlex.split(line)
        values = list(map(float, cells[2:2+len(keys)*2]))
        if len(values) != len(keys)*2:
            raise ValueError('Incomplete expression weights')
        poses[cells[0]] = {'code': cells[1], 'controls': {k: values[2*i]*values[2*i+1] for i, k in enumerate(keys)}}
    return poses


def write_json(path, value):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    encoded = (json.dumps(value, ensure_ascii=False, indent=2)+'\n').encode('utf8')
    if not path.exists() or path.read_bytes() != encoded:
        path.write_bytes(encoded)
