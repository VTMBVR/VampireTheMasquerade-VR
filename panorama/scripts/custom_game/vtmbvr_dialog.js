var VTMBVRDialog = (function () {
    var root = $.GetContextPanel();
    var data = VTMBVRDialogueData;
    var current = data.start;
    var lastReply = "";
    var answerList = [];

    function render() {
        var node = data.nodes[current];
        answerList = node.answers === "back" ? data.backAnswers : node.answers;
        $("#DialogueSpeaker").text = data.speaker;
        $("#DialogueText").text = node.text;
        $("#DialogueLastReply").text = lastReply;
        root.SetHasClass("DialogueEnded", answerList.length === 0);
        for (var i = 0; i < 4; i++) {
            var answer = answerList[i];
            $("#DialogueChoice" + (i + 1)).visible = !!answer;
            $("#DialogueAnswer" + (i + 1)).text = answer ? (i + 1) + ".  " + answer.text : "";
        }
        $.Msg("[VTMBVR_DIALOG] node=" + current + " choices=" + answerList.length);
    }
    function choose(index) {
        var answer = answerList[index];
        if (!answer || !data.nodes[answer.next]) { return; }
        $.Msg("[VTMBVR_DIALOG] choice=" + (index + 1) + " from=" + current + " to=" + answer.next);
        lastReply = "Вы: «" + answer.text + "»";
        current = answer.next;
        render();
        $.DispatchEvent("ClientUI_FireOutput", root, index);
    }
    function restart() { current = data.start; lastReply = ""; render(); $.DispatchEvent("ClientUI_FireOutput", root, 4); }
    function close() { $.DispatchEvent("ClientUI_FireOutput", root, 5); }
    function tool(slot) { $.DispatchEvent("ClientUI_FireOutput", root, slot); }

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
        $("#FaceEditorLine").text = "Реплика: " + data.nodes[current].text;
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
