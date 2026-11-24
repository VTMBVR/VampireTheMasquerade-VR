"""Prepare Asylum arrival anchors from its baked human navigation hull."""
import argparse
import hashlib
import json
from pathlib import Path
import re

from build_asylum import lua
from source2_nav import closest_point, components, read_nav


def walking_selector(path):
    text = path.read_text(encoding='utf-8')
    if 'm_name = "source_walk"' in text:
        return
    root = int(re.search(r'm_rootNodeID\s*=\s*\{\s*m_id\s*=\s*(\d+)', text)[1])
    root_at = re.search(r'_class\s*=\s*"CRootAnimNode"', text).start()
    child = re.search(r'm_childID\s*=\s*\{\s*m_id\s*=\s*(\d+)', text[root_at:])
    original = int(child[1])
    sequence = re.search(r'm_sequenceName\s*=\s*"hunt_walk"', text).start()
    sequence_id = list(re.finditer(r'm_nNodeID\s*=\s*\{\s*m_id\s*=\s*(\d+)', text[:sequence]))[-1][1]
    parameter, selector = 2400100001, 2400100002
    if str(parameter) in text or str(selector) in text:
        raise ValueError('Reserved navigation graph IDs are already in use')
    at = root_at + child.start(1)
    text = text[:at]+str(selector)+text[root_at+child.end(1):]
    param = ('{_class="CBoolAnimParameter" m_name = "source_walk" '
             f'm_id={{m_id={parameter}}} m_bNetwork=true m_bUseMostRecentValue=false '
             'm_bAutoReset=false m_bPredicted=false m_defaultValue=false},')
    node = ('{key={m_id=%d} value={_class="CSelectorAnimNode" m_sName="Supported arrival walk" '
            'm_nNodeID={m_id=%d} m_networkMode="ServerAuthoritative" m_vecPosition=[1400,1000] '
            'm_children=[{m_id=%d},{m_id=%s}] m_tags=[{m_id=4294967295},{m_id=4294967295}] '
            'm_selectionSource="SelectionSource_Bool" m_boolParamID={m_id=%d} '
            'm_enumParamID={m_id=4294967295} m_blendDuration=0.15 '
            'm_tagBehavior="SelectorTagBehavior_OffWhenFinished" m_bResetOnChange=true '
            'm_bSyncCyclesOnChange=false m_blendCurve={m_vControlPoint1=[0.5,0] '
            'm_vControlPoint2=[0.5,1]}}},') % (selector, selector, original, sequence_id, parameter)
    text = re.sub(r'(m_Parameters\s*=\s*\[)', lambda m:m[1]+'\n'+param, text, count=1)
    text = re.sub(r'(m_nodes\s*=\s*\[)', lambda m:m[1]+'\n'+node, text, count=1)
    path.write_text(text, encoding='utf-8')


def prepare(root, nav_file):
    nav = read_nav(nav_file)
    # Hull 0 is a 24-unit crawling creature, not a standing NPC. Read human
    # dimensions rather than treating its connected graph as proof of access.
    human = min((h for h in nav['hulls'] if h['enabled'] and h['height']>=64),
                key=lambda h:h['radius'])
    areas = [a for a in nav['areas'] if a['hull']==human['index']]
    groups = components(areas)
    packed = [{'id':a['id'], 'component':groups[a['id']], 'corners':[list(p) for p in a['corners']],
               'connections':a['connections']}
              for a in areas]
    location = json.loads((root/'scripts/dialogue/asylum/location.json').read_text(encoding='utf-8'))
    audit = []
    active_groups = {group for actor in location['actors']
                     if not actor.get('dialogue') and (actor['usesInteresting'] or actor['name']=='jeanette_flirt_partner')
                     for group in actor['groups']}
    for place in location['places']:
        point = place['origin']
        choices = []
        for area in areas:
            nearest = closest_point(point, area['corners'])
            if abs(nearest[2]-point[2])<=24:
                distance = sum((nearest[i]-point[i])**2 for i in (0,1))**.5
                choices.append((distance, area['id'], nearest))
        best = min(choices) if choices else None
        audit.append({'place':place['name'], 'sourceId':place['sourceId'],
                      'activeCrowdPlace':place['kind']!='Doorknock' and place['group'] in active_groups,
                      'distance':best[0] if best else None, 'area':best[1] if best else None,
                      'canApproach':best is not None and best[0]<=64})
    result = {'map':'sm_asylum_fix_navfix', 'navSha256':hashlib.sha256(nav_file.read_bytes()).hexdigest(),
              'hull':human, 'maximumApproach':64, 'areas':packed}
    destination = root/'scripts/vscripts/npc_source_navigation_data.lua'
    destination.write_text('-- Prepared from the installed Asylum NAV, no geometry edits.\nreturn '+lua(result)+'\n', encoding='utf-8')
    report = {'navSha256':result['navSha256'], 'hull':human, 'areas':len(areas),
              'components':len(set(groups.values())), 'activeCrowdPlaces':sum(p['activeCrowdPlace'] for p in audit),
              'approachableCrowdPlaces':sum(p['activeCrowdPlace'] and p['canApproach'] for p in audit),'places':audit}
    (root/'scripts/dialogue/asylum/navigation.json').write_text(json.dumps(report,indent=2)+'\n', encoding='utf-8')
    for name in ('male_shared', 'shared_female'):
        walking_selector(root/'animgraphs'/(name+'.vanmgrph'))
    return report


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--nav-file', type=Path, required=True)
    args = parser.parse_args()
    report = prepare(Path(__file__).resolve().parents[1], args.nav_file)
    print(json.dumps({k:v for k,v in report.items() if k!='places'},indent=2))
    print('Approachable source slots:',sum(p['canApproach'] for p in report['places']), '/', len(report['places']))


if __name__ == '__main__':
    main()
