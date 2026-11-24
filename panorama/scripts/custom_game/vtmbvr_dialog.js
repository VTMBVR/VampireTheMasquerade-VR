var VTMBVRDialog = (function () {
    var root = $.GetContextPanel();
    var data = VTMBVRDialogueData;
    var current = data.start;
    var lastReply = "";
    var answerList = [];
    var sourceText="",sourceSpeaker="";
    var speechColor="#d0a82c";
    function draw(id,text,size,color,family) {
        if(typeof VTMBVRBitmapFont!=="undefined") VTMBVRBitmapFont.set($("#"+id),text,size,color,family);
        else $("#"+id).text=text;
    }

    function render() {
        var node = data.nodes[current];
        answerList = node.answers === "back" ? data.backAnswers : node.answers;
        draw("DialogueSpeaker",data.speaker,32,"#e6b773","heading");
        draw("DialogueText",node.text,28,speechColor);
        draw("DialogueLastReply",lastReply,18,"#ac9a8e");
        root.SetHasClass("DialogueEnded", answerList.length === 0);
        for (var i = 0; i < 4; i++) {
            var answer = answerList[i];
            $("#DialogueChoice" + (i + 1)).visible = !!answer;
            draw("DialogueAnswer"+(i+1),answer ? (i+1)+".  "+answer.text : "",28,"#ffffff");
        }
        $.Msg("[VTMBVR_DIALOG] node=" + current + " choices=" + answerList.length);
    }
    function choose(index) {
        if(hasSignal("SourceDialogue")) { $.DispatchEvent("ClientUI_FireOutput",root,index);return; }
        var answer = answerList[index];
        if (!answer || !data.nodes[answer.next]) { return; }
        $.Msg("[VTMBVR_DIALOG] choice=" + (index + 1) + " from=" + current + " to=" + answer.next);
        lastReply = "Вы: «" + answer.text + "»";
        current = answer.next;
        render();
        $.DispatchEvent("ClientUI_FireOutput", root, index);
    }
    function restart() { if(!hasSignal("SourceDialogue")){current = data.start; lastReply = ""; render();} $.DispatchEvent("ClientUI_FireOutput", root, 4); }
    function close() { $.DispatchEvent("ClientUI_FireOutput", root, 5); }
    function tool(slot) { $.DispatchEvent("ClientUI_FireOutput", root, slot); }

    function sourceInput() {
        if(!hasSignal("SourceDialogue")||typeof VTMBVRSourceDialogue==="undefined")return;
        var name=VTMBVRSourceDialogue.order[numberSignal("SourceCharacter",4)-1];
        var character=VTMBVRSourceDialogue.characters[name];
        if(!character)return;
        var female=hasSignal("SourceFemale"),malkavian=hasSignal("SourceMalkavian");
        function text(row){return !row?"":(row.kind==="player"&&malkavian&&row.textMalkavian?row.textMalkavian:(female?(row.textFemale||row.textMale):row.textMale));}
        sourceText=text(character.rows[String(numberSignal("SourceLine",11))]);sourceSpeaker=character.speaker;
        draw("DialogueSpeaker",sourceSpeaker,32,"#e6b773","heading");draw("DialogueText",sourceText,28,speechColor);
        var previous=text(character.rows[String(numberSignal("SourceLast",11))]);
        draw("DialogueLastReply",previous?"Вы: «"+previous+"»":"",17,"#ac9a8e");
        // Original TrackerScheme palette; gates stay server owned.
        var colors={seduction:"#ff6dff",persuasion:"#0078ff",intimidate:"#00ff51",dominate:"#ff0000",dementation:"#ff0000",thaumaturgy:"#ff0000"};
        var sizes={seduction:36,persuasion:29,intimidate:28,dominate:32,dementation:28};
        var pages=numberSignal("SourcePages",4),page=numberSignal("SourcePage",4);
        answerList=[];root.SetHasClass("DialogueEnded",false);
        for(var i=1;i<=4;i++) {
            var id=numberSignal("SourceChoice"+i,11),row=character.rows[String(id)];
            $("#DialogueChoice"+i).visible=!!row;
            if(row)answerList.push(row);
            var family=row&&row.style;
            if(family==="thaumaturgy")family="dominate";
            if(malkavian&&family==="normal")family="malkavian";
            draw("DialogueAnswer"+i,row?(page*4+i)+".  "+text(row):"",sizes[family]||28,colors[row&&row.style]||"#ffffff",family);
        }
        $("#DialoguePage").visible=pages>1;
        draw("DialoguePageText","Другие ответы · "+(page+1)+" / "+pages,24,speechColor);
    }

    function faceEditorInput() {
        var opened = hasSignal("FaceEditorOpen");
        root.SetHasClass("FaceEditing", opened);
        if (!opened) { return; }
        var shapes = hasSignal("FaceEditorShapes"), page = numberSignal("FacePage", 4);
        var spec = data.faceEditor, layout = spec.layout;
        $("#FaceModeText").text = shapes ? "Общие настройки" : "Отдельные движения лица";
        $("#FacePage").text = shapes ? (page + 1) + " / " + Math.ceil(spec.channels.length / layout.rows) : "";
        $("#FacePrev").visible = shapes && page > 0;
        $("#FaceNext").visible = shapes && (page + 1) * layout.rows < spec.channels.length;
        $("#FaceEditorLine").text = "Реплика: " + (hasSignal("SourceDialogue")?sourceText:data.nodes[current].text);
        if(typeof VTMBVRSourceDialogue!=="undefined")$("#FaceEditorTitle").text="МИМИКА · "+(hasSignal("SourceDialogue")?sourceSpeaker:data.speaker);
        $("#FaceLoopText").text = hasSignal("FaceEditorLoop") ? "■ Остановить повтор реплики" : "▶ Повторять эту реплику";
        var states = ["Изменения видны сразу. Сохраните подходящие значения.", "Сохранение…", "Сохранено в файлы мода.", "Не удалось сохранить. Проверьте окно помощника.", "Возвращены сохранённые значения."];
        $("#FaceStatus").text = states[numberSignal("FaceStatus", 3)] || states[0];
        for (var i = 1; i <= layout.rows; i++) {
            var channel = spec.channels[page * layout.rows + i - 1];
            var control = shapes ? (channel ? {label: channel, min: 0, max: 1, scale: 100, unit: "%"} : null) : spec.controls[i - 1];
            $("#FaceRow" + i).visible = !!control;
            if (!control) { continue; }
            $("#FaceRow" + i).style.position = layout.left + "px " + (layout.top + (i - 1) * layout.rowHeight) + "px 0px";
            var fraction = numberSignal("FaceRow" + i, 10) / 1000;
            var value = control.min + fraction * (control.max - control.min);
            $("#FaceName" + i).text = control.label;
            $("#FaceValue" + i).text = Math.round(value * control.scale) + " " + control.unit;
            $("#FaceFill" + i).style.width = (fraction * 100) + "%";
            $("#FaceKnob" + i).style.position = Math.round(fraction * (layout.right - layout.left - 12)) + "px 0px 0px";
        }
    }

    function buttons() {
        var result = [$("#DialogueClose")];
        if (hasSignal("FaceEditorOpen")) {
            for (var j = 0, ids = ["FaceMode", "FacePrev", "FaceNext", "FaceLoop", "FaceBack", "FaceReset", "FaceSave"]; j < ids.length; j++) {
                var button = $("#" + ids[j]);
                if (button.visible) { result.push(button); }
            }
            return result;
        }
        result.push($("#DialogueTuning"));
        if(hasSignal("SourceDialogue")) {
            for(var n=1;n<=4;n++)if($("#DialogueChoice"+n).visible)result.push($("#DialogueChoice"+n));
            if($("#DialoguePage").visible)result.push($("#DialoguePage"));
            return result;
        }
        if (answerList.length === 0) { result.push($("#DialogueRestart")); }
        else {
            for (var i = 0; i < answerList.length; i++) { result.push($("#DialogueChoice" + (i + 1))); }
        }
        return result;
    }
    function hitButton(x, y, list) {
        var origin = root.GetPositionWithinWindow();
        for (var i = 0; i < list.length; i++) {
            var p = list[i];
            var pos = p.GetPositionWithinWindow();
            var left = pos.x - origin.x, top = pos.y - origin.y;
            if (p.visible && x >= left && y >= top && x < left + p.actuallayoutwidth && y < top + p.actuallayoutheight) { return p; }
        }
        return null;
    }
    var desktopReady = false;
    var lastClick = -1;
    function hasSignal(name) { return root.BHasClass(name) || root.BAscendantHasClass(name); }
    function numberSignal(name, bits) {
        var value = 0;
        for (var bit = 0; bit < bits; bit++) { if (hasSignal("D" + name + bit)) { value += Math.pow(2, bit); } }
        return value;
    }
    // Values travel in the entity's replicated CSS class set, which works for
    // world panels independently of the desktop window's event/input focus.
    // Pointer moves may coalesce. Complete clicks have an ACK and stay latched
    // until the actual rendered controls have processed their down/up positions.
    function desktopInput() {
        if (!hasSignal("PointerMode")) { return; }
        // Server class replication can arrive before Panorama's first layout.
        // Keep a latched click pending until button geometry actually exists.
        if (!$("#DialogueClose").actuallayoutwidth) { return; }
        if (!desktopReady) {
            desktopReady = true;
            var list = buttons(), rects = [];
            for (var i = 0; i < list.length; i++) {
                rects.push({id: list[i].id, position: list[i].GetPositionWithinWindow(), width: list[i].actuallayoutwidth, height: list[i].actuallayoutheight});
            }
            $.Msg("[VTMBVR_DIALOG] POINTER_READY rects=" + JSON.stringify(rects));
        }
        var x = numberSignal("PointerX", 11) - 32;
        var y = numberSignal("PointerY", 11) - 32;
        var list = buttons(), target = hitButton(x, y, list);
        var focused = hasSignal("DFocused");
        $("#DialoguePointer").visible = focused;
        $("#DialoguePointer").style.position = (x - 7) + "px " + (y - 7) + "px 0px";
        for (var i = 0; i < list.length; i++) {
            list[i].SetHasClass("PointerHover", focused && list[i] === target);
            list[i].SetHasClass("PointerPressed", focused && hasSignal("DPressed") && list[i] === target);
        }
        if (hasSignal("DClickReady")) {
            var sequence = numberSignal("ClickSequence", 8);
            if (sequence !== lastClick) {
                lastClick = sequence;
                var down = hitButton(numberSignal("DownX", 11) - 32, numberSignal("DownY", 11) - 32, list);
                var up = hitButton(numberSignal("UpX", 11) - 32, numberSignal("UpY", 11) - 32, list);
                if (down && down === up) {
                    $.Msg("[VTMBVR_DIALOG] POINTER_CLICK id=" + up.id + " seq=" + sequence);
                    $.DispatchEvent("Activated", up, "mouse");
                } else { $.Msg("[VTMBVR_DIALOG] POINTER_MISS seq=" + sequence); }
                $.DispatchEvent("ClientUI_FireOutput", root, 6);
            }
        }
    }

    // The world-panel entity can request the same Activated event as a physical
    // button press. This also makes the PoC usable in the non-VR tools preview.
    function readInput() {
        sourceInput();
        faceEditorInput();
        for (var i = 1; i <= 4; i++) {
            var name = "DialogueChoose" + i;
            if (root.BHasClass(name)) {
                root.RemoveClass(name);
                if (answerList[i - 1]) { $.DispatchEvent("Activated", $("#DialogueChoice" + i), "mouse"); }
            }
        }
        if (root.BHasClass("DialogueReset")) {
            root.RemoveClass("DialogueReset");
            $.DispatchEvent("Activated", $("#DialogueRestart"), "mouse");
        }
        desktopInput();
        $.Schedule(hasSignal("PointerMode") ? 0.016 : 0.05, readInput);
    }
    render();
    readInput();
    return { choose: choose, restart: restart, close: close, tool: tool };
})();
