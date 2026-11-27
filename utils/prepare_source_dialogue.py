"""Compile original dialogue conditions/actions to data for the Lua interpreter.

Python from the source game is parsed, never executed. World-only callbacks are
retained as typed intents instead of being run as console/script strings.
"""
import ast
import json
from pathlib import Path
import re

from bloodlines_assets import write_json
from build_jeanette_face import lua


def expression(node):
    if isinstance(node, ast.Constant): return ['literal', node.value]
    if isinstance(node, ast.Name): return ['name', node.id]
    if isinstance(node, ast.Attribute): return ['get', expression(node.value), node.attr]
    if isinstance(node, ast.Call):
        if node.keywords: raise ValueError('Keyword arguments require an explicit handler')
        return ['call', expression(node.func), [expression(a) for a in node.args]]
    if isinstance(node, ast.BoolOp): return ['bool',type(node.op).__name__,[expression(v) for v in node.values]]
    if isinstance(node, ast.UnaryOp): return ['unary',type(node.op).__name__,expression(node.operand)]
    if isinstance(node, ast.BinOp): return ['binary',type(node.op).__name__,expression(node.left),expression(node.right)]
    if isinstance(node, ast.Compare): return ['compare',expression(node.left),[type(o).__name__ for o in node.ops],[expression(v) for v in node.comparators]]
    if isinstance(node, (ast.List,ast.Tuple)): return ['list',[expression(v) for v in node.elts]]
    raise ValueError('Unsupported expression '+ast.dump(node))


def condition(source):
    if not source: return ['literal', True]
    skill = re.fullmatch(r'([A-Za-z_]+)\s+(-?\d+)(?:\s*&\s*(.*))?',source)
    if skill:
        source='Skill('+repr(skill[1])+','+skill[2]+')'+(' and ('+skill[3]+')' if skill[3] else '')
    return expression(ast.parse(source.replace('&',' and '),mode='eval').body)


def actions(source):
    result=[]
    for statement in ast.parse(source or '').body:
        if isinstance(statement,ast.Assign) and len(statement.targets)==1:
            result.append(['assign',expression(statement.targets[0]),expression(statement.value)])
        elif isinstance(statement,ast.Expr): result.append(['effect',expression(statement.value)])
        else: raise ValueError('Unsupported action '+ast.dump(statement))
    return result


def generate(root):
    source=root/'scripts/dialogue/asylum'
    names=json.loads((source/'manifest.json').read_text(encoding='utf8'))['characters']
    speakers={'jeanette':'ЖАНЕТТ','therese':'ТЕРЕЗА','cal':'КЭЛ','chunk':'ЧАНК','knox':'НОКС',
              'danielle':'ДАНИЭЛЬ','doll1':'ПОСЕТИТЕЛЬНИЦА','tourette':'ТОРЕТТ'}
    globals_seen=set();quest_names=set();items=set();skills=set();dead_names=set();experience=set()
    placements_file=source/'cast.json'
    placements=json.loads(placements_file.read_text(encoding='utf8')) if placements_file.exists() else []
    result={'order':names,'characters':{},'sourceIssues':[],'sourceRepairs':[]}
    for character in names:
        data=json.loads((source/'characters'/(character+'.json')).read_text(encoding='utf8'))
        rows={};starts=[]
        for original in data['rows']:
            if not any(original['fields'][1:]): continue
            if original['kind']=='player' and not original['textMale'] and not original['textFemale'] and not original['target'] and not original['action']:
                continue
            row=dict(original)
            if row['kind']=='npc':
                row['ops']=[op for command in row['commands'] for op in actions(command)]
            else:
                try:
                    row['gate']=condition(row['condition'])
                except SyntaxError:
                    repaired=re.sub(r'\band\s+or\b','or',row['condition'])
                    if repaired!=row['condition']:
                        row['gate']=condition(repaired)
                        result['sourceRepairs'].append({'character':character,'row':row['id'],
                            'original':row['condition'],'runtime':repaired,'reason':'removed_stray_and_before_or'})
                    else:
                        row['gate']=['unsupported',row['condition']]
                        result['sourceIssues'].append({'character':character,'row':row['id'],'condition':row['condition'],'reason':'invalid_original_syntax'})
                row['ops']=actions(row['action'])
                if row['textMale']=='(Starting Condition)': starts.append(row['id'])
                row['automatic']=row['textMale'].startswith('(Auto-')
                match=re.match(r'(?:[FM]_)?(Seduction|Persuasion|Intimidate|Dominate|Dementation|Thaumaturgy)\s',row['condition'])
                row['style']=match[1].lower() if match else 'normal'
            rows[str(row['id'])]=row
        result['characters'][character]={'speaker':speakers[character],'rows':rows,'starts':starts,
                                         'model':json.loads((source/'performances'/(character+'.json')).read_text(encoding='utf8'))['model']['model'][:-4]+'.vmdl'}
        entry=result['characters'][character]
        entry['attributes']=next((p['dialogueAttributes'] for p in placements if p['alyxModel'].lower()==entry['model'].lower()),{})
        encoded=json.dumps(data,ensure_ascii=False)
        globals_seen.update(re.findall(r'G\.([A-Za-z_0-9]+)',encoded))
        quest_names.update(re.findall(r'GetQuestState\(\\?"([^"\\]+)',encoded))
        quest_names.update(re.findall(r'SetQuest\(\\?"([^"\\]+)',encoded))
        items.update(re.findall(r'item_[a-zA-Z_0-9]+',encoded))
        dead_names.update(re.findall(r'IsDead\(\\?"([^"\\]+)',encoded))
        experience.update(re.findall(r'AwardExperience\(\\?"([^"\\]+)',encoded))
        for row in data['rows']:
            match=re.match(r'([A-Za-z_]+)\s+-?\d+',row.get('condition',''))
            if match:skills.add(match[1])
    presence=source/'presence_sources.json'
    if presence.exists():
        presence_source='\n'.join(json.loads(presence.read_text(encoding='utf8'))['functions'].values())
        globals_seen.update(re.findall(r'G\.([A-Za-z_0-9]+)',presence_source))
        dead_names.update(re.findall(r'\bIsDead\(["\']([^"\']+)',presence_source))
    location=source/'location.json'
    if location.exists():globals_seen.update(json.loads(location.read_text(encoding='utf8'))['storyKeys'])
    result['stateKeys']={'globals':sorted(globals_seen),'quests':sorted(quest_names),
                         'items':sorted(items),'skills':sorted(skills),'dead':sorted(dead_names),
                         'experience':sorted(experience)}
    write_json(source/'dialogue_runtime.json',result)
    cast_file=source/'cast.json'
    if cast_file.exists():
        cast={'actors':json.loads(cast_file.read_text(encoding='utf8')),'profiles':{
            'first_visit':{'globals':{'Patch_Plus':1,'Extra_Lines':1,'Mercurio_Quest':0,'Therese_Quest':0,'Jeanette_Know':0}},
            'first_visit_basic':{'globals':{'Patch_Plus':0,'Extra_Lines':0,'Mercurio_Quest':0,'Therese_Quest':0,'Jeanette_Know':0}},
            'first_visit_quest':{'globals':{'Patch_Plus':1,'Extra_Lines':1,'Mercurio_Quest':2,'Therese_Quest':0,'Jeanette_Know':0}},
            'hotel_return':{'globals':{'Patch_Plus':1,'Extra_Lines':1,'Mercurio_Quest':2,'Therese_Quest':1,'Jeanette_Know':1},'quests':{'Hotel':3},'items':{'item_g_ghost_pendant':1}},
            'gallery':{'globals':{'Patch_Plus':1,'Extra_Lines':1,'Mercurio_Quest':2,'Therese_Quest':2,'Jeanette_Know':1}},
            'gallery_return':{'globals':{'Patch_Plus':1,'Extra_Lines':1,'Mercurio_Quest':2,'Therese_Quest':3,'Jeanette_Quest':2,'Jeanette_Know':1},'quests':{'Slashterpiece':3}},
            'sisters':{'globals':{'Patch_Plus':1,'Extra_Lines':1,'Mercurio_Quest':2,'Therese_Quest':4,'Jeanette_Know':1}}
        }}
        (root/'scripts/vscripts/npc_source_cast_data.lua').write_text('-- Generated source roster and dialogue state presets. No automatic scene changes.\nreturn '+lua(cast)+'\n',encoding='utf8')
    (root/'scripts/vscripts/npc_dialog_source_data.lua').write_text('-- Generated by prepare_source_dialogue.py.\nreturn '+lua(result)+'\n',encoding='utf8')
    # Client receives text/IDs only. Conditions and effects remain server-owned.
    ui={'order':names,'characters':{k:{'speaker':c['speaker'],'rows':{n:{field:r.get(field,'') for field in ['kind','textMale','textFemale','textMalkavian','style']} for n,r in c['rows'].items()}} for k,c in result['characters'].items()}}
    (root/'panorama/scripts/custom_game/vtmbvr_source_data.js').write_text('// Generated source dialogue text.\nvar VTMBVRSourceDialogue = '+json.dumps(ui,ensure_ascii=False)+';\n',encoding='utf8')
    return result


if __name__=='__main__':
    data=generate(Path(__file__).resolve().parents[1])
    print('Prepared source dialogue runtime for '+', '.join(data['order']))
