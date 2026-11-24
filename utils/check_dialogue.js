// Headless checks complement the required in-game mouse/controller test.
// Run with: node utils/check_dialogue.js
const fs = require('node:fs');
const path = require('node:path');
const vm = require('node:vm');
const assert = require('node:assert/strict');
const source = path.join(__dirname, '../panorama/scripts/custom_game');
const panels = {}, classes = new Set(), events = [], logs = [];
let tick;
function panel(id, x = 0, y = 0, width = 0, height = 0) {
    return panels['#' + id] = {
        id, visible: true, text: '', style: {},
        actuallayoutwidth: width, actuallayoutheight: height,
        // Alyx returns an object, not an array. Include a nonzero root offset.
        GetPositionWithinWindow: () => ({x: x + 70, y: y + 90}),
        SetHasClass() {}
    };
}
const root = panel('root');
root.SetHasClass = (name, value) => value ? classes.add(name) : classes.delete(name);
root.BHasClass = name => classes.has(name);
root.BAscendantHasClass = () => false;
root.RemoveClass = name => classes.delete(name);
panel('DialogueClose', 954, 24, 42, 42);
panel('DialogueRestart', 46, 365, 932, 66);
panel('DialogueTuning',435,704,230,40);
for (const id of ['FaceModeText','FacePage','FaceEditorLine','FaceLoopText','FaceStatus']) panel(id);
for (const [id,x,y,width,height] of [['FaceMode',435,112,310,34],['FacePrev',770,112,50,34],['FaceNext',928,112,50,34],['FaceLoop',435,598,543,40],['FaceBack',435,652,150,40],['FaceReset',595,652,195,40],['FaceSave',800,652,178,40]]) panel(id,x,y,width,height);
for (let i=1;i<=6;i++) for(const prefix of ['FaceRow','FaceName','FaceValue','FaceFill','FaceKnob']) panel(prefix+i);
for (let i = 1; i <= 4; i++) panel('DialogueChoice' + i, 46, 329 + (i - 1) * 75, 932, 66);
for (const id of ['DialogueSpeaker', 'DialogueText', 'DialogueLastReply', 'DialoguePointer',
    'DialogueAnswer1', 'DialogueAnswer2', 'DialogueAnswer3', 'DialogueAnswer4', 'DialogueGrabText']) panel(id);
const $ = id => panels[id];
$.GetContextPanel = () => root;
$.Msg = message => logs.push(message);
$.Schedule = (_, callback) => { tick = callback; };
$.DispatchEvent = (name, target, index) => {
    if (name === 'Activated') {
        if (target.id === 'DialogueRestart') context.VTMBVRDialog.restart();
        else if (target.id === 'DialogueClose') context.VTMBVRDialog.close();
        else if (target.id === 'DialogueTuning') context.VTMBVRDialog.tool(7);
        else if (target.id.startsWith('Face')) context.VTMBVRDialog.tool({FaceMode:2,FacePrev:0,FaceNext:1,FaceLoop:8,FaceBack:7,FaceReset:3,FaceSave:9}[target.id]);
        else context.VTMBVRDialog.choose(Number(target.id.slice(-1)) - 1);
    } else events.push({name, index});
};
const context = vm.createContext({$});
for (const file of ['vtmbvr_dialog_data.js', 'vtmbvr_dialog.js']) {
    vm.runInContext(fs.readFileSync(path.join(source, file), 'utf8'), context);
}
const data = context.VTMBVRDialogueData, dialog = context.VTMBVRDialog;
const visited = new Set(), queue = [data.start];
while (queue.length) {
    const name = queue.shift();
    if (visited.has(name)) continue;
    visited.add(name);
    const node = data.nodes[name];
    assert(node && node.text, 'Missing dialogue node: ' + name);
    const answers = node.answers === 'back' ? data.backAnswers : node.answers;
    assert(answers.length === 0 || answers.length === 4);
    for (const answer of answers) {
        assert(data.nodes[answer.next], 'Missing destination: ' + answer.next);
        queue.push(answer.next);
    }
}
assert.equal(visited.size, Object.keys(data.nodes).length, 'Unreachable dialogue node');
classes.add('PointerMode'); classes.add('DFocused');
function number(name, value, bits) {
    for (let bit = 0; bit < bits; bit++) root.SetHasClass('D' + name + bit, !!(value & (1 << bit)));
}
function click(sequence, downX, downY, upX = downX, upY = downY) {
    for (const [name, value] of Object.entries({DownX: downX, DownY: downY, UpX: upX, UpY: upY})) number(name, value + 32, 11);
    number('ClickSequence', sequence, 8);
    classes.add('DClickReady'); tick();
}
for (let slot = 0; slot < 4; slot++) {
    dialog.restart(); events.length = 0;
    click(slot + 1, 100, 350 + slot * 75);
    assert.deepEqual(events.map(e => e.index), [slot, 6]);
    assert(logs.some(s => s.includes('from=welcome to=' + data.nodes.welcome.answers[slot].next)));
    tick(); assert.equal(events.length, 2, 'Latched click repeated');
    classes.delete('DClickReady');
}
// Ending hides old answer hit areas; only the rendered restart button is active.
assert(classes.has('DialogueEnded'));
events.length = 0; click(5, 100, 580);
assert.deepEqual(events.map(e => e.index), [6]);
events.length = 0; click(6, 100, 390);
assert.deepEqual(events.map(e => e.index), [4, 6]);
assert(!classes.has('DialogueEnded'));
assert.equal(panels['#DialogueLastReply'].text, '');
// Outside hits, right edges and drags between different answers must not select.
for (const [seq, x, y, upX, upY] of [[7, 45, 350, 45, 350], [8, 978, 350, 978, 350], [9, 100, 350, 100, 430]]) {
    events.length = 0; click(seq, x, y, upX, upY);
    assert.deepEqual(events.map(e => e.index), [6]);
}
// Sequence rollover still processes both clicks exactly once.
for (const seq of [255, 0]) {
    events.length = 0; click(seq, 100, 350);
    assert.deepEqual(events.map(e => e.index), [0, 6]);
    tick(); assert.equal(events.length, 2);
}
events.length = 0; click(1, 970, 40);
assert.deepEqual(events.map(e => e.index), [5, 6]);
console.log('PASS: ' + visited.size + ' reachable nodes, four mouse targets, ending/restart/close, object geometry, misses, drag cancellation, ACK deduplication and sequence rollover.');

// Editor controls use the same physical pointer/ACK path as dialogue answers.
events.length=0;click(2,500,720);
assert.deepEqual(events.map(e=>e.index),[7,6]);
classes.add('FaceEditorOpen');tick();
assert(classes.has('FaceEditing'));
assert.equal(panels['#FaceValue1'].text,'0 %');
number('FaceRow1',500,10);tick();assert.equal(panels['#FaceValue1'].text,'50 %');
events.length=0;click(3,850,670);assert.deepEqual(events.map(e=>e.index),[9,6]);
events.length=0;click(4,600,615);assert.deepEqual(events.map(e=>e.index),[8,6]);
events.length=0;click(5,600,128);assert.deepEqual(events.map(e=>e.index),[2,6]);
classes.add('FaceEditorShapes');number('FacePage',8,4);tick();
assert.equal(panels['#FaceName1'].text,data.faceEditor.channels[48]);
assert(panels['#FacePrev'].visible && !panels['#FaceNext'].visible);
assert(!panels['#FaceRow6'].visible);
events.length=0;click(6,500,670);assert.deepEqual(events.map(e=>e.index),[7,6]);
classes.delete('FaceEditorOpen');tick();assert(!classes.has('FaceEditing'));
console.log('PASS: facial editor toggle, values, save/repeat/back, last shape page and input ACKs.');

// Expanded server-owned conversations and the real original bitmap glyph data.
{
    const ui={}, signals=new Set(), outputs=[];
    let poll;
    const create=id=>ui[id]={id,style:{},visible:true,actuallayoutwidth:510,
        actuallayoutheight:40,SetHasClass(){},SetImage(url){this.image=url;},
        GetPositionWithinWindow(){return {x:0,y:0};}};
    const xml=fs.readFileSync(path.join(__dirname,'../panorama/layout/custom_game/vtmbvr_dialog.xml'),'utf8');
    for(const match of xml.matchAll(/id="([^"]+)"/g))create(match[1]);
    const host=create('root');
    host.BHasClass=name=>signals.has(name);host.BAscendantHasClass=()=>false;
    host.SetHasClass=(name,on)=>on?signals.add(name):signals.delete(name);
    host.RemoveClass=name=>signals.delete(name);
    const api=id=>ui[id.slice(1)];api.GetContextPanel=()=>host;api.Msg=()=>{};
    api.Schedule=(_,fn)=>{poll=fn;};api.CreatePanel=()=>create('glyph'+Object.keys(ui).length);
    api.DispatchEvent=(event,panel,slot)=>{if(event==='ClientUI_FireOutput')outputs.push(slot);};
    const ctx=vm.createContext({$:api});
    for(const filename of ['vtmbvr_dialog_data.js','vtmbvr_source_data.js','vtmbvr_font_data.js','vtmbvr_font.js','vtmbvr_dialog.js'])
        vm.runInContext(fs.readFileSync(path.join(source,filename),'utf8'),ctx);
    function signal(name,value,bits){for(let i=0;i<bits;i++)host.SetHasClass('D'+name+i,!!(value&(1<<i)));}
    signals.add('SourceDialogue');
    let rendered=0;
    for(const [index,name] of ctx.VTMBVRSourceDialogue.order.entries()) {
        const character=ctx.VTMBVRSourceDialogue.characters[name];
        signal('SourceCharacter',index+1,4);signal('SourcePages',1,4);
        for(const [id,row] of Object.entries(character.rows))if(row.kind==='npc'&&row.textMale) {
            signal('SourceLine',Number(id),11);poll();rendered++;
            assert.equal(ctx.VTMBVRSourceDialogue.characters[name].speaker,character.speaker);
            assert(ui.DialogueText._bitmapPool.some(p=>p.visible),'NPC subtitle has no rendered glyphs');
        }
        const answers=Object.entries(character.rows).filter(([id,r])=>r.kind==='player'&&r.textMale&&!r.textMale.startsWith('(')).slice(0,4);
        for(let i=0;i<4;i++)signal('SourceChoice'+(i+1),answers[i]?Number(answers[i][0]):0,11);
        signal('SourcePages',2,4);signal('SourcePage',1,4);signals.add('SourceFemale');signals.add('SourceMalkavian');poll();
        assert(ui.DialoguePage.visible);assert(ui.DialoguePageText._bitmapSignature.startsWith('Другие ответы · 2 / 2|'));
        assert(ui.DialogueAnswer1._bitmapSignature.startsWith('5.  '),'Paged answers must keep their global numbers');
        outputs.length=0;ctx.VTMBVRDialog.choose(0);ctx.VTMBVRDialog.tool(4);
        assert.deepEqual(outputs,[0,4]); // Client sends choices; it never applies source conditions/actions.
    }
    const expected={normal:['#ffffff','normal'],seduction:['#ff6dff','seduction'],persuasion:['#0078ff','persuasion'],intimidate:['#00ff51','intimidate'],dominate:['#ff0000','dominate'],dementation:['#ff0000','dementation'],thaumaturgy:['#ff0000','dominate']};
    signals.delete('SourceMalkavian');signal('SourcePage',0,4);
    for(const [style,[color,family]] of Object.entries(expected)) {
        let found=false;
        for(const [index,name] of ctx.VTMBVRSourceDialogue.order.entries()) {
            const row=Object.entries(ctx.VTMBVRSourceDialogue.characters[name].rows).find(([id,r])=>r.kind==='player'&&r.style===style&&r.textMale&&!r.textMale.startsWith('('));
            if(!row)continue;
            signal('SourceCharacter',index+1,4);signal('SourceChoice1',Number(row[0]),11);poll();
            const signature=ui.DialogueAnswer1._bitmapSignature;
            assert(signature.includes('|'+color+'|'+family+'|'),style+': '+signature);
            found=true;break;
        }
        assert(found,'Missing original answer style '+style);
    }
    for(const family of Object.values(ctx.VTMBVRFontData)) {
        for(const ch of 'Привет, Жанетт! Ёжик ёлка ABC 123?')assert(family.glyphs[ch],family.source+' missing '+ch);
        assert(family.glyphs[' '].advance>0);
    }
    for(const p of Object.values(ui))if(p.image) {
        const relative=p.image.replace('file://{images}/','');
        assert(fs.existsSync(path.join(__dirname,'../panorama/images',relative)),relative);
        assert(!/NaN|Infinity/.test(JSON.stringify(p.style)),'Non-finite bitmap glyph coordinates');
    }
    console.log('PASS: '+rendered+' source subtitles, eight speakers, Cyrillic/special bitmap fonts, answer paging and server-owned selection.');
}

// The world-window probe uses rendered geometry, including a shifted root.
classes.delete('FaceEditing');classes.delete('FaceEditorOpen');classes.delete('WindowGrabProbe');
panel('DialogueFrame',32,152,960,600);
panel('DialogueText',80,180,864,140);
panel('DialogueGrabHandle',230,720,560,32);
panel('FaceEditorBackground',389,0,635,768);
panel('FaceRow1',435,180,543,58);
panel('FaceStatus',435,710,543,35);
vm.runInContext(fs.readFileSync(path.join(source,'vtmbvr_dialog_window.js'),'utf8'),context);
const grab=context.VTMBVRWorldWindow.canGrab;
assert(grab(36,400));assert(grab(500,736));
assert(!grab(100,200));assert(!grab(100,350));assert(!grab(10,400));
classes.add('FaceEditing');classes.add('FaceEditorOpen');
panel('DialogueGrabHandle',16,16,380,32);
assert(grab(405,250));assert(!grab(500,200));assert(!grab(850,670));assert(!grab(500,720));
classes.delete('FaceEditing');classes.delete('FaceEditorOpen');
events.length=0;number('WindowProbeX',36+32,11);number('WindowProbeY',400+32,11);
number('WindowProbeSequence',1,8);classes.add('WindowGrabProbe');tick();tick();
assert.deepEqual(events.map(e=>e.index),[8]);
number('WindowProbeX',100+32,11);number('WindowProbeY',200+32,11);number('WindowProbeSequence',2,8);tick();
assert.deepEqual(events.map(e=>e.index),[8,9]);
console.log('PASS: dialogue/editor blank-background grabs, protected text/answers/sliders and deduplicated native probes.');
