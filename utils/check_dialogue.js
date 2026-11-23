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
    'DialogueAnswer1', 'DialogueAnswer2', 'DialogueAnswer3', 'DialogueAnswer4']) panel(id);
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
