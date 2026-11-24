var VTMBVRWorldWindow = (function () {
    var root = $.GetContextPanel(), lastProbe = -1;
    function has(name) { return root.BHasClass(name) || root.BAscendantHasClass(name); }
    function number(name, bits) {
        var value = 0;
        for (var bit = 0; bit < bits; bit++) if (has("D" + name + bit)) value += Math.pow(2, bit);
        return value;
    }
    function inside(id, x, y) {
        var panel = $("#" + id);
        if (!panel || !panel.visible || !panel.actuallayoutwidth || !panel.actuallayoutheight) return false;
        var base = root.GetPositionWithinWindow(), pos = panel.GetPositionWithinWindow();
        var left = pos.x - base.x, top = pos.y - base.y;
        return x >= left && y >= top && x < left + panel.actuallayoutwidth && y < top + panel.actuallayoutheight;
    }
    function canGrab(x, y) {
        if (inside("DialogueGrabHandle", x, y)) return true;
        var editing = has("FaceEditorOpen"), protectedIds;
        if (editing) {
            if (!inside("FaceEditorBackground", x, y)) return false;
            protectedIds = ["DialogueClose", "FaceEditorTitle", "FaceEditorLine", "FaceMode", "FacePrev", "FacePage", "FaceNext",
                "FaceRow1", "FaceRow2", "FaceRow3", "FaceRow4", "FaceRow5", "FaceRow6", "FaceLoop", "FaceBack", "FaceReset", "FaceSave", "FaceStatus"];
        } else {
            if (!inside("DialogueFrame", x, y)) return false;
            protectedIds = ["DialogueClose", "DialogueTuning", "DialogueHeading", "DialogueText", "DialogueLastReply", "DialogueFootnote",
                "DialogueChoice1", "DialogueChoice2", "DialogueChoice3", "DialogueChoice4", "DialoguePage", "DialogueRestart"];
        }
        for (var i = 0; i < protectedIds.length; i++) if (inside(protectedIds[i], x, y)) return false;
        return true;
    }
    function input() {
        var close = $("#DialogueClose");
        if (has("WindowGrabProbe") && close && close.actuallayoutwidth) {
            var sequence = number("WindowProbeSequence", 8);
            var surface = $(has("FaceEditorOpen") ? "#FaceEditorBackground" : "#DialogueFrame");
            // Opening settings and replicating its input can precede reflow.
            // Leave the probe latched until its rendered surface exists.
            if (sequence !== lastProbe && surface && surface.actuallayoutwidth) {
                lastProbe = sequence;
                var grab = canGrab(number("WindowProbeX", 11) - 32, number("WindowProbeY", 11) - 32);
                $.DispatchEvent("ClientUI_FireOutput", root, grab ? 8 : 9);
            }
        }
        $.Schedule(0.016, input);
    }
    var text = $("#DialogueGrabText");
    if (text && typeof VTMBVRBitmapFont !== "undefined") {
        VTMBVRBitmapFont.set(text, "Рамка: зажмите курок для переноса", 20, "#c2ad74");
    }
    $.Msg("[VTMBVR_DIALOG] WORLD_WINDOW_LAYOUT_READY");
    input();
    return { canGrab: canGrab };
})();
