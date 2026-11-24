"""Add a source-dialogue body selector underneath the facial-only layer."""
import json
from pathlib import Path
import re


def attach(graph_file, model_file, performance):
    graph=Path(graph_file).read_text(encoding='utf8')
    model=Path(model_file).read_text(encoding='utf8')
    available=re.findall(r'"?name"?\s*=\s*"([^"]+)"',model)
    clean=lambda s:re.sub('[^a-z0-9]','',s.lower())
    requested=sorted({e['fields'].get('param',[''])[0] for r in performance['lines'].values()
                      for e in r.get('choreography',{}).get('events',[]) if e['type'] in ('gesture','sequence')})
    bindings={};missing=[];nodes=[];children=[];options=['scene']
    start=graph.index('m_nNodeID={m_id=2100050000}')
    match=re.search(r'm_child1ID=\{m_id=(\d+)\}',graph[start:])
    if not match:raise ValueError('Facial mask body child not found')
    old=int(match[1]);children.append('{m_id='+str(old)+'}')
    # A separate lower selector supplies authored scene poses (for example
    # Cal behind the bar) while dialogue gestures keep priority above it.
    root=Path(model_file).resolve()
    while root.name!='models' and root.parent!=root:root=root.parent
    root=root.parent
    seen=set()
    def sequences(path):
        if path in seen:return []
        seen.add(path);source=path.read_text(encoding='utf8')
        values=re.findall(r'(?:^|[\s{])"?name"?\s*=\s*"([^\"]+)"',source)
        for prefab in re.findall(r'"?target_file"?\s*=\s*"([^\"]+)"',source):
            target=root/prefab
            if target.is_file():values+=sequences(target)
        return values
    scene_available=sequences(Path(model_file))
    scene_requested=['idle01','doorknock','dialog_bar_idle01','Tourette_intro_pre','Tourette_intro',
                     'Tourette_ShootsHerself','malk_female_idle','SM_Huddle','hunt_walk']
    scene_bindings={};scene_children=['{m_id='+str(old)+'}'];scene_options=['movement'];scene_nodes=[]
    for name in scene_requested:
        actual=next((value for value in scene_available if value.lower()==name.lower()),None)
        if actual is None:continue
        index=len(scene_options);identifier=2300010000+index
        scene_bindings[name]=index;scene_options.append(actual);scene_children.append('{m_id='+str(identifier)+'}')
        loop=name not in ('doorknock','Tourette_intro','Tourette_ShootsHerself')
        scene_nodes.append('{key={m_id=%d} value={_class="CSequenceAnimNode" m_sName=%s m_nNodeID={m_id=%d} m_networkMode="ClientSimulate" m_vecPosition=[1000.0,3300.0] m_sequenceName=%s m_playbackSpeed=1.0 m_bLoop=%s}},' % (identifier,json.dumps(name),identifier,json.dumps(actual),str(loop).lower()))
    children[0]='{m_id=2300000000}'
    scene_parameter='{_class="CEnumAnimParameter" m_name="source_scene_clip" m_id={m_id=2300000001} m_bNetwork=true m_bUseMostRecentValue=false m_bAutoReset=false m_bPredicted=false m_defaultValue=0 m_enumOptions=['+','.join(json.dumps(x) for x in scene_options)+']},'
    scene_selector='{key={m_id=2300000000} value={_class="CSelectorAnimNode" m_sName="Asylum scene pose" m_nNodeID={m_id=2300000000} m_networkMode="ClientSimulate" m_vecPosition=[1200.0,3300.0] m_children=['+','.join(scene_children)+'] m_tags=['+','.join('{m_id=4294967295}' for _ in scene_children)+'] m_selectionSource="SelectionSource_Enum" m_boolParamID={m_id=4294967295} m_enumParamID={m_id=2300000001} m_blendDuration=0.2 m_tagBehavior="SelectorTagBehavior_OffWhenFinished" m_bResetOnChange=true m_bSyncCyclesOnChange=false m_blendCurve={m_vControlPoint1=[0.5,0.0] m_vControlPoint2=[0.5,1.0]}}},'
    for name in requested:
        candidates=[a for a in available if clean(a).endswith(clean(name))]
        if not candidates:
            missing.append(name);continue
        actual=min(candidates,key=len);index=len(options);identifier=2200010000+index
        bindings[name]=index;options.append(actual);children.append('{m_id='+str(identifier)+'}')
        nodes.append('{key={m_id=%d} value={_class="CSequenceAnimNode" m_sName=%s m_nNodeID={m_id=%d} m_networkMode="ClientSimulate" m_vecPosition=[1000.0,3000.0] m_sequenceName=%s m_playbackSpeed=1.0 m_bLoop=false}},' % (identifier,json.dumps(name),identifier,json.dumps(actual)))
    parameter='{_class="CEnumAnimParameter" m_name="dialogue_body_clip" m_id={m_id=2200000001} m_bNetwork=true m_bUseMostRecentValue=false m_bAutoReset=false m_bPredicted=false m_defaultValue=0 m_enumOptions=['+','.join(json.dumps(o) for o in options)+']},'
    selector='{key={m_id=2200000000} value={_class="CSelectorAnimNode" m_sName="Source dialogue performance" m_nNodeID={m_id=2200000000} m_networkMode="ClientSimulate" m_vecPosition=[1400.0,3000.0] m_children=['+','.join(children)+'] m_tags=['+','.join('{m_id=4294967295}' for _ in children)+'] m_selectionSource="SelectionSource_Enum" m_boolParamID={m_id=4294967295} m_enumParamID={m_id=2200000001} m_blendDuration=0.15 m_tagBehavior="SelectorTagBehavior_OffWhenFinished" m_bResetOnChange=true m_bSyncCyclesOnChange=false m_blendCurve={m_vControlPoint1=[0.5,0.0] m_vControlPoint2=[0.5,1.0]}}},'
    begin=start+match.start(1);end=start+match.end(1)
    graph=graph[:begin]+'2200000000'+graph[end:]
    graph=re.sub(r'(m_Parameters\s*=\s*\[)',lambda m:m[1]+'\n'+parameter+scene_parameter,graph,count=1)
    graph=re.sub(r'(m_nodes\s*=\s*\[)',lambda m:m[1]+'\n'+selector+'\n'+scene_selector+'\n'+'\n'.join(nodes+scene_nodes),graph,count=1)
    Path(graph_file).write_text(graph,encoding='utf8')
    return bindings,missing,scene_bindings
