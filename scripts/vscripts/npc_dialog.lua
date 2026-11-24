-- Source conversations borrow actors from the shared ambient scene owner.
local data = require("npc_dialog_catalog")
local lips = require("npc_dialog_lipsync")
local faceEditor = require("npc_dialog_face_editor")
local sourceDialogue = require("npc_dialog_source")
local sourceFace = require("npc_source_performance")
local vrInput = require("npc_dialog_vr_input")
local windowGeometry = require("npc_dialog_panel")
local sourceSession,sourceIndex,sourceDeadline
local exampleMode=false
local PANEL_NAME = "vtmbvr_dialog_panel"
local INPUT_CLASSES = "DialogueChoose1 DialogueChoose2 DialogueChoose3 DialogueChoose4 DialogueReset"
local panel = nil
local panelAnchor=nil
local previousKeys = nil
local desktopSession = nil
local desktopCamera = nil
local desktopControls = nil
local desktopHeartbeat = 0
local desktopSignals = {}
local desktopPendingClick = nil
local pointerSession = nil
local conversationActor = nil
local currentNode = data.start
local desktopNumber
local activeSound = nil
local prompts = {}
local listenerSession = nil
local listenerHeartbeat = 0
local panelPose=nil
local panelYaw = nil
local vrDown, vrPress, vrSuppressed = {}, {}, {}
local vrPointerHand=nil
local VR_SESSION = 1073741825
local vrSequence = 0
local fakeDown = {}
local windowProbe,resolveWindowProbe
local windowProbeSequence=0
local OWNER = "npc_dialog"
local DESKTOP_PITCH = 18

desktopNumber = function(name, value, bits)
    local old = desktopSignals[name] or 0
    if old == value then return end
    for bit = 0, bits - 1 do
        local divisor = 2 ^ bit
        local before = math.floor(old / divisor) % 2
        local after = math.floor(value / divisor) % 2
        if before ~= after then
            local class = "D" .. name .. bit
            if after == 1 then panel:AddCSSClasses(class) else panel:RemoveCSSClasses(class) end
        end
    end
    desktopSignals[name] = value
end

local function coordinate(value)
    value = tonumber(value)
    if not value or value ~= value then return nil end
    return math.floor(math.max(-32, math.min(1056, value)))
end

local function exists(entity)
    return entity ~= nil and not entity:IsNull()
end

local function releaseControl(name, input)
    local entity = Entities:FindByName(nil, name)
    if exists(entity) then
        DoEntFireByInstanceHandle(entity, input, "", 0, Entities:GetLocalPlayer(), thisEntity)
        -- Allow the native Disable/Deactivate Input to release the player first.
        DoEntFireByInstanceHandle(entity, "Kill", "", 0.05, nil, nil)
    end
end

local function bindKey(key, value)
    SendToConsole("bind " .. key .. " " .. string.format("%q", value))
end

local function validPanel()
    return panel ~= nil and not panel:IsNull()
end

local function stopVoice()
    if activeSound and exists(conversationActor) then StopSoundOn(activeSound,conversationActor) end
    if exists(conversationActor) then sourceFace.Stop(conversationActor);lips.Stop(conversationActor) end
    activeSound=nil
end

local function sourceSignals()
    if not sourceSession or not validPanel() then return end
    panel:AddCSSClasses("SourceDialogue")
    desktopNumber("SourceCharacter",sourceIndex,4)
    desktopNumber("SourceLine",sourceSession.line,11)
    desktopNumber("SourceLast",sourceSession.lastAnswer or 0,11)
    desktopNumber("SourcePage",sourceSession.page,4)
    desktopNumber("SourcePages",sourceSession.pages,4)
    for i,id in ipairs(sourceSession:Visible()) do desktopNumber("SourceChoice"..i,id,11) end
    local female,malkavian=sourceDialogue.Identity()
    if female then panel:AddCSSClasses("SourceFemale") else panel:RemoveCSSClasses("SourceFemale") end
    if malkavian then panel:AddCSSClasses("SourceMalkavian") else panel:RemoveCSSClasses("SourceMalkavian") end
end

local function lineDuration()
    if sourceSession then local performance=sourceSession:Performance();return performance and (performance.sceneDuration or performance.duration) or .1 end
    return data.nodes[currentNode].duration or 4
end

local function playNode()
    stopVoice()
    if not exists(conversationActor) then return end
    if sourceSession then
        local performance,model=sourceSession:Performance()
        sourceSignals()
        if performance then
            EmitSoundOn(performance.sound,conversationActor);activeSound=performance.sound
            local face=sourceFace.Start(conversationActor,performance,model,sourceSession.disposition,function(event)
                if AsylumLocationPerformanceEvent then return AsylumLocationPerformanceEvent(conversationActor,event) end
                return false
            end)
            print("[VTMBVR_DIALOG] SOURCE_RESPONSE character="..sourceSession.character.." line="..sourceSession.line.." face="..tostring(face))
        end
        sourceDeadline=Time()+lineDuration()+.1
        return
    end
    local node=data.nodes[currentNode]
    if not NpcSceneDialogueAction(conversationActor,OWNER,node.animation,node.duration or 4) then
        print("[VTMBVR_DIALOG] ACTION_FAILED node="..currentNode.." clip="..node.animation)
        return
    end
    if node.sound then
        EmitSoundOn(node.sound,conversationActor)
        activeSound=node.sound
        lips.Start(conversationActor,currentNode)
    end
    print("[VTMBVR_DIALOG] RESPONSE node="..currentNode.." actor="..conversationActor:GetName().." animation="..node.animation.." sound="..tostring(node.sound or "none"))
end

function NpcDialogIsOpen() return validPanel() or desktopSession~=nil end
function NpcDialogOpen(desktop,actor)
    local player = Entities:GetLocalPlayer()
    if not player then print("[VTMBVR_DIALOG] No local player") return false end
    if validPanel() or desktopSession then NpcDialogClose() end
    actor=actor or Entities:FindByName(nil,data.actor)
    if actor and not NpcSceneBeginDialogue(actor,OWNER,player) then return false end
    conversationActor=actor
    sourceDialogue.Bind(thisEntity)
    local character,index=sourceDialogue.Character(actor)
    sourceSession=not exampleMode and character and sourceDialogue.Open(character,actor) or nil
    if sourceSession and AsylumLocationDialogueBegin then AsylumLocationDialogueBegin(actor,sourceSession) end
    sourceIndex=index
    currentNode=data.start
    local existing = Entities:FindByName(nil, PANEL_NAME)
    if existing then UTIL_Remove(existing) end
    local facing = player:EyeAngles()
    -- The original dialogue occupies the lower view. Keep it centered below
    -- the listener's gaze; VR never rotates or moves the HMD camera.
    panelYaw=facing.y
    local yaw = math.rad(facing.y)
    local forward = desktop and QAngle(DESKTOP_PITCH,facing.y,0):Forward() or Vector(math.cos(yaw), math.sin(yaw), 0)
    -- Keep the same angular size, but put the desktop panel inside the player's
    -- collision radius so passing NPCs cannot walk between the camera and UI.
    local distance = desktop and 12 or 48
    if not desktop then
        local eye=player:EyePosition()
        local trace={startpos=eye,endpos=eye+forward*distance,ignore=player}
        TraceLine(trace)
        if trace.hit and trace.pos then distance=math.max(16,math.min(distance,(trace.pos-eye):Length()-10)) end
    end
    local scale = distance / 48
    local origin = player:EyePosition() + forward * distance
    if not desktop then origin=origin-Vector(0,0,12*scale) end
    panelPose=not desktop and windowGeometry.New(origin,facing.y,16/scale) or nil
    if panelPose then
        panelAnchor=SpawnEntityFromTableSynchronous("info_target",{targetname="vtmbvr_dialog_anchor",
            origin=origin,angles=panelPose:Angles(),spawnflags="2"})
        if not exists(panelAnchor) then NpcDialogClose();return false end
    end
    panel = SpawnEntityFromTableSynchronous("point_clientui_world_panel", {
        targetname = PANEL_NAME,
        origin = origin,
        angles = panelPose and panelPose:Angles() or QAngle(0, facing.y + 180, 0),
        dialog_layout_name = "file://{resources}/layout/custom_game/"..
            (desktop and "vtmbvr_dialog.xml" or "vtmbvr_dialog_world.xml"),
        width = 64 * scale,
        height = 48 * scale,
        panel_dpi = 16 / scale,
        horizontal_align = "1",
        vertical_align = "1",
        orientation = desktop and "1" or "0",
        ignore_depth = true,
        render_backface = true,
        interact_distance = 160,
        ignore_input = 0,
        enabled = 1
    })
    if not validPanel() then NpcDialogClose();print("[VTMBVR_DIALOG] Panel spawn failed") return false end
    if exists(panelAnchor) then
        panel:SetParent(panelAnchor,"")
        panel:SetLocalOrigin(Vector(0,0,0));panel:SetLocalAngles(0,0,0)
    end
    desktopSignals={}
    panel:AcceptUserInput()
    for i = 0, 9 do
        panel:RedirectOutput("CustomOutput" .. i, "NpcDialogOutput" .. i, thisEntity)
    end
    print("[VTMBVR_DIALOG] OPEN " .. tostring(origin))
    for _,entry in pairs(prompts) do
        if exists(entry.panel) then UTIL_Remove(entry.panel) end
        _G[entry.callback]=nil
    end
    prompts={}
    playNode()
    faceEditor.Bind(panel,desktopNumber,playNode,lineDuration,
        function() return pointerSession or 0 end)
    if not desktop and player:GetHMDAvatar() then
        pointerSession=VR_SESSION
        desktopPendingClick=nil
        panel:IgnoreUserInput()
        panel:AddCSSClasses("PointerMode")
        panel:AddCSSClasses("VRWorldWindow")
        vrSuppressed={[0]=true,[1]=true};vrPointerHand=nil
        print("[VTMBVR_DIALOG] VR_POINTER_READY")
    end
    return true
end

-- These are the native entity Outputs fired by ClientUI_FireOutput in Panorama.
-- Future voice/animation logic can be attached here or to the same Outputs in Hammer.
for i = 0, 9 do
    local slot = i
    _G["NpcDialogOutput" .. slot] = function()
        if windowProbe and (slot==8 or slot==9) then resolveWindowProbe(slot==8);return end
        if slot == 6 then
            if pointerSession and desktopPendingClick ~= nil then
                print("[VTMBVR_DIALOG] POINTER_ACK session=" .. pointerSession .. " seq=" .. desktopPendingClick)
                desktopPendingClick = nil
                if validPanel() then panel:RemoveCSSClasses("DClickReady") end
            end
            return
        end
        if slot==7 then faceEditor.Toggle();return end
        if faceEditor.opened and slot~=5 then faceEditor.Action(slot);return end
        if slot>=8 then return end
        if validPanel() then panel:RemoveCSSClasses(INPUT_CLASSES) end
        if sourceSession and slot<5 then
            if slot==4 then sourceSession:Page();sourceSignals();return end
            if sourceSession:Choice(slot+1) then
                if sourceSession.ended then NpcDialogClose() else playNode() end
            end
            return
        end
        print("[VTMBVR_DIALOG] OUTPUT slot=" .. (slot + 1))
        if slot < 4 then
            local node=data.nodes[currentNode]
            local answers=node.answers=="back" and data.backAnswers or node.answers
            local answer=answers[slot+1]
            if answer then currentNode=answer.next;playNode() end
        elseif slot==4 then currentNode=data.start;playNode()
        elseif slot == 5 then NpcDialogClose() end
    end
end

function NpcDialogChoose(index)
    index = tonumber(index)
    if faceEditor.opened or not validPanel() or not index or index < 1 or index > 4 or index ~= math.floor(index) then return false end
    panel:AddCSSClasses("DialogueChoose" .. index)
    return true
end

function NpcDialogRestart()
    if sourceSession and validPanel() and not faceEditor.opened then
        sourceSession=sourceDialogue.Open(sourceSession.character,conversationActor);playNode();return true
    end
    if validPanel() and not faceEditor.opened then panel:AddCSSClasses("DialogueReset") return true end
    return false
end

function NpcDialogClose()
    faceEditor.Close()
    stopVoice()
    if exists(conversationActor) then NpcSceneEndDialogue(conversationActor,OWNER) end
    if sourceSession and AsylumLocationDialogueEnd then AsylumLocationDialogueEnd(conversationActor,sourceSession) end
    conversationActor=nil
    if sourceSession then NpcDialogLastSourceEffects=sourceSession.effects end
    sourceSession=nil;sourceIndex=nil;sourceDeadline=nil
    pointerSession=nil
    desktopSession = nil
    desktopSignals = {}
    desktopPendingClick = nil
    releaseControl("vtmbvr_dialog_camera", "Disable")
    releaseControl("vtmbvr_dialog_controls", "Deactivate")
    desktopCamera = nil
    desktopControls = nil
    if validPanel() then UTIL_Remove(panel) end
    panel = nil
    if exists(panelAnchor) then UTIL_Remove(panelAnchor) end
    panelAnchor=nil
    panelPose=nil
    windowProbe=nil
    vrPress={};vrDown={};vrSuppressed={};vrPointerHand=nil
    if previousKeys then
        for key, value in pairs(previousKeys) do bindKey(key, value) end
        previousKeys = nil
    end
    print("[VTMBVR_DIALOG] CLOSED")
end

function NpcDialogEnableDesktop(session)
    if not validPanel() then return false end
    session = tonumber(session)
    if not session or session < 1 or session ~= math.floor(session) then return false end
    if Convars:GetBool("vr_enable_fake_vr") then
        print("[VTMBVR_DIALOG] DESKTOP_REFUSED FakeVR is enabled")
        return false
    end
    local player = Entities:GetLocalPlayer()
    local eye = player:EyePosition()
    local facing = player:EyeAngles()
    desktopSession = session
    pointerSession = session
    desktopPendingClick = nil
    panel:IgnoreUserInput() -- Suppress the engine's gaze selection in desktop mode.
    panel:AddCSSClasses("DesktopMode")
    panel:AddCSSClasses("PointerMode")
    panel:AddCSSClasses("DialogSession" .. session)
    desktopControls = SpawnEntityFromTableSynchronous("game_ui", {
        targetname = "vtmbvr_dialog_controls", spawnflags = "64", FieldOfView = -1
    })
    desktopCamera = SpawnEntityFromTableSynchronous("point_viewcontrol", {
        targetname = "vtmbvr_dialog_camera", origin = eye,
        angles = QAngle(DESKTOP_PITCH, panelYaw or facing.y, 0), spawnflags = "140",
        fov = 75, fov_rate = 0, wait = 9999
    })
    if not exists(desktopControls) or not exists(desktopCamera) then
        NpcDialogClose()
        print("[VTMBVR_DIALOG] DESKTOP_FAILED native controls unavailable")
        return false
    end
    DoEntFireByInstanceHandle(desktopControls, "Activate", "", 0, player, thisEntity)
    DoEntFireByInstanceHandle(desktopCamera, "Enable", "", 0, player, thisEntity)
    desktopControls:RedirectOutput("PlayerOff", "NpcDialogDesktopEnded", thisEntity)
    desktopCamera:RedirectOutput("OnEndFollow", "NpcDialogDesktopEnded", thisEntity)
    desktopHeartbeat = Time()
    panel:SetContextThink("VTMBVRDesktopWatchdog", function()
        if desktopSession ~= session then return nil end
        if Time() - desktopHeartbeat > 4 then
            print("[VTMBVR_DIALOG] DESKTOP_WATCHDOG released disconnected input adapter")
            NpcDialogClose()
            return nil
        end
        return 0.25
    end, 0.25)
    print("[VTMBVR_DIALOG] DESKTOP_READY session=" .. session)
    return true
end

function NpcDialogPointerMove(session, x, y, down, focused)
    if pointerSession ~= tonumber(session) or not validPanel() then return end
    x, y = coordinate(x), coordinate(y)
    if not x or not y then return end
    faceEditor.PointerMove(x,y,down==1,focused==1)
    desktopNumber("PointerX", x + 32, 11)
    desktopNumber("PointerY", y + 32, 11)
    if down == 1 then panel:AddCSSClasses("DPressed") else panel:RemoveCSSClasses("DPressed") end
    if focused == 1 then panel:AddCSSClasses("DFocused") else panel:RemoveCSSClasses("DFocused") end
end

function NpcDialogPointerClick(session, sequence, downX, downY, upX, upY)
    if pointerSession ~= tonumber(session) or not validPanel() or desktopPendingClick ~= nil then return end
    downX, downY, upX, upY = coordinate(downX), coordinate(downY), coordinate(upX), coordinate(upY)
    sequence = tonumber(sequence)
    if not downX or not downY or not upX or not upY or not sequence or sequence < 0 or sequence > 255 then return end
    faceEditor.PointerClick(downX,downY,upX,upY)
    desktopNumber("DownX", downX + 32, 11)
    desktopNumber("DownY", downY + 32, 11)
    desktopNumber("UpX", upX + 32, 11)
    desktopNumber("UpY", upY + 32, 11)
    desktopNumber("ClickSequence", math.floor(sequence), 8)
    desktopPendingClick = math.floor(sequence)
    panel:AddCSSClasses("DClickReady")
end

function NpcDialogDesktopEnded()
    if desktopSession then NpcDialogClose() end
end

function NpcDialogFaceSaved(request,ok)
    faceEditor.Saved(tonumber(request),tonumber(ok)==1)
end

-- Reopen at the normal world-panel size without the desktop camera/input lock.
-- Useful for walking around the panel and showing its placement in the scene.
function NpcDialogWorldView()
    local actor=conversationActor
    if not validPanel() then return false end
    if not NpcDialogOpen(false,actor) then return false end
    print("[VTMBVR_DIALOG] WORLD_VIEW camera=free")
    return true
end

function NpcDialogDesktopStatus(session)
    if desktopSession == tonumber(session) then desktopHeartbeat = Time() end
    print("[VTMBVR_DIALOG] DESKTOP_ALIVE session=" .. tostring(desktopSession or 0))
end

function NpcDialogCloseSession(session)
    if desktopSession == tonumber(session) then NpcDialogClose() end
end

-- Optional desktop preview. The launcher supplies the existing bindings and
-- Close restores them; normal VR panels never change the player's controls.
function NpcDialogEnableKeyboard(f1, f2, f3, f4, f5, f6)
    if previousKeys then return false end
    previousKeys = {F1 = f1, F2 = f2, F3 = f3, F4 = f4, F5 = f5, F6 = f6}
    if not NpcDialogCommandsRegistered then
        for i = 1, 4 do
            local choice = i
            Convars:RegisterCommand("vtmbvr_dialog_answer" .. i, function() NpcDialogChoose(choice) end, "Choose a dialogue answer", 0)
        end
        Convars:RegisterCommand("vtmbvr_dialog_restart", function() NpcDialogRestart() end, "Restart the dialogue", 0)
        Convars:RegisterCommand("vtmbvr_dialog_close", function() NpcDialogClose() end, "Close the dialogue and restore preview keys", 0)
        NpcDialogCommandsRegistered = true
    end
    for i = 1, 4 do
        bindKey("F" .. i, "vtmbvr_dialog_answer" .. i)
    end
    bindKey("F5", "vtmbvr_dialog_restart")
    bindKey("F6", "vtmbvr_dialog_close")
    print("[VTMBVR_DIALOG] KEYBOARD F1-F4 answers, F5 restart, F6 close and restore keys")
    return true
end

print("[VTMBVR_DIALOG] Loaded. Call NpcDialogOpen() to begin.")

function NpcDialogListenerHeartbeat(session)
    if listenerSession==tonumber(session) then
        listenerHeartbeat=Time()
        if desktopSession==listenerSession then desktopHeartbeat=Time() end
    end
    print("[VTMBVR_DIALOG] LISTENER_ALIVE session="..tostring(listenerSession or 0))
end

function NpcDialogStopListening(session)
    if listenerSession==tonumber(session) then listenerSession=nil end
    NpcDialogCloseSession(session)
end

function NpcDialogListen(session)
    session=tonumber(session)
    if not session or session<1 or session~=math.floor(session) then return false end
    listenerSession=session;listenerHeartbeat=Time()
    print("[VTMBVR_DIALOG] LISTEN_READY session="..session)
    return true
end

local function dialogueActors()
    local actors={}
    for _,actor in ipairs(Entities:FindAllByClassname("generic_actor")) do
        if actor:Attribute_GetIntValue("vtmbvr_talk_enabled",1)==1 and
            ((exampleMode and actor:GetName()==data.actor) or (not exampleMode and sourceDialogue.Character(actor))) then actors[#actors+1]=actor end
    end
    return actors
end

local function visibleFrom(player,actor)
    local center=actor:GetAbsOrigin()+Vector(0,0,48)
    if (center-player:EyePosition()):Length()>data.interactDistance then return false end
    local trace={startpos=player:EyePosition(),endpos=center,ignore=player}
    TraceLine(trace)
    return not trace.hit or (exists(trace.enthit) and trace.enthit:GetEntityIndex()==actor:GetEntityIndex()) or (trace.pos and (trace.pos-center):Length()<=26)
end

local function actorInRay(origin,direction)
    -- Eligibility is measured from the eyes in visibleFrom(). A controller
    -- behind the head can be farther from a valid NPC, especially over a bar.
    local best,nearest=nil,math.huge
    for _,actor in ipairs(dialogueActors()) do
        local delta=actor:GetAbsOrigin()+Vector(0,0,48)-origin
        local t=delta:Dot(direction)
        if t>=0 and t<nearest and (delta-direction*t):Length()<=26 and visibleFrom(Entities:GetLocalPlayer(),actor) then best=actor;nearest=t end
    end
    return best
end

function NpcDialogDesktopInteract(session)
    if listenerSession~=tonumber(session) or validPanel() or Convars:GetBool("vr_enable_fake_vr") then return false end
    local player=Entities:GetLocalPlayer()
    if not player then return false end
    local actor=actorInRay(player:EyePosition(),player:EyeAngles():Forward())
    if not actor and AsylumLocationInteract then return AsylumLocationInteract(player:EyePosition(),player:EyeAngles():Forward(),true) end
    if not actor then print("[VTMBVR_DIALOG] INTERACT_MISS");return false end
    if not NpcDialogOpen(true,actor) then return false end
    return NpcDialogEnableDesktop(session)
end

function NpcDialogPromptInteract(actor)
    if validPanel() then return end
    local player=Entities:GetLocalPlayer()
    if not player then return end
    actor=actor or actorInRay(player:EyePosition(),player:EyeAngles():Forward())
    if not player or not exists(actor) or not visibleFrom(player,actor) then return end
    local desktop=listenerSession~=nil and not player:GetHMDAvatar()
    if NpcDialogOpen(desktop,actor) and desktop then NpcDialogEnableDesktop(listenerSession) end
end

function NpcDialogConfigure(settings)
    if validPanel() then return false end
    sourceDialogue.Bind(thisEntity);sourceDialogue.Configure(settings);return true
end
function NpcDialogResetStory()
    if validPanel() then return false end
    sourceDialogue.Bind(thisEntity);sourceDialogue.Reset();return true
end
function NpcDialogStoryState() return sourceDialogue.Snapshot() end
function NpcDialogPreset(name)
    if validPanel() then return false end
    local preset=require("npc_source_cast_data").profiles[name]
    if not preset then return false end
    sourceDialogue.Bind(thisEntity);sourceDialogue.Reset();sourceDialogue.Configure(preset)
    print("[VTMBVR_DIALOG] STORY_PRESET "..name)
    return true
end

function NpcDialogUseExample(enabled)
    if validPanel() then NpcDialogClose() end
    exampleMode=enabled==true
end

local function updatePrompts(player,preferred)
    local eye,forward=player:EyePosition(),player:EyeAngles():Forward()
    local target=preferred or actorInRay(eye,forward)
    if not target and not validPanel() then
        local nearest=data.interactDistance+1
        for _,actor in ipairs(dialogueActors()) do
            local delta=actor:GetAbsOrigin()+Vector(0,0,48)-eye
            local distance=delta:Length()
            if distance<nearest and delta:Dot(forward)>distance*.55 and visibleFrom(player,actor) then
                target=actor;nearest=distance
            end
        end
    end
    local present={}
    for _,actor in ipairs(dialogueActors()) do
        local id=actor:GetEntityIndex()
        local show=not validPanel() and target and target:GetEntityIndex()==id and visibleFrom(player,actor)
        present[id]=show
        local entry=prompts[id]
        if show and (not entry or not exists(entry.panel)) then
            local prompt=SpawnEntityFromTableSynchronous("point_clientui_world_panel",{
                targetname="vtmbvr_talk_prompt_"..id,origin=actor:GetAbsOrigin()+Vector(0,0,56),
                angles=QAngle(0,player:EyeAngles().y+180,0),
                dialog_layout_name="file://{resources}/layout/custom_game/vtmbvr_dialog_prompt.xml",
                width=6,height=6,panel_dpi=128/6,horizontal_align="1",vertical_align="1",orientation="2",
                interact_distance=data.interactDistance,enabled=1,ignore_input=0})
            if exists(prompt) then
                prompt:AcceptUserInput()
                local callback="NpcTalkPrompt"..id
                _G[callback]=function() NpcDialogPromptInteract(actor) end
                prompt:RedirectOutput("CustomOutput0",callback,thisEntity)
                local name=sourceDialogue.Character(actor)
                if name=="cal" or name=="chunk" or name=="knox" then prompt:AddCSSClasses("TalkMale") end
                entry={panel=prompt,callback=callback};prompts[id]=entry
            end
        end
        if show and entry then
            -- Place beside the shoulder and towards the viewer. A head-height
            -- icon was easy to miss against ceilings and could sit inside NPCs.
            local delta=eye-actor:GetAbsOrigin();delta.z=0
            local length=delta:Length()
            if length>.01 then delta=delta/length else delta=Vector(1,0,0) end
            local right=Vector(-delta.y,delta.x,0)
            entry.panel:SetAbsOrigin(actor:GetAbsOrigin()+Vector(0,0,56)+delta*16+right*14)
            entry.panel:AddCSSClasses("TalkFocused")
        end
    end
    for id,entry in pairs(prompts) do
        if not present[id] then
            if exists(entry.panel) then UTIL_Remove(entry.panel) end
            _G[entry.callback]=nil;prompts[id]=nil
        end
    end
end

local function handRay(hand)
    -- vr_hand_origin has the controller's basis; do not infer it from the
    -- animated finger bones. FakeVR also exposes this attachment.
    local attachment=hand:ScriptLookupAttachment("vr_hand_origin")
    if attachment and attachment>0 then
        return hand:GetAttachmentOrigin(attachment),hand:GetAttachmentForward(attachment)
    end
    return hand:GetAbsOrigin(),hand:GetForwardVector()
end

function NpcDialogVRStatus()
    local player=Entities:GetLocalPlayer()
    local hmd=player and player:GetHMDAvatar()
    local status={version="raw-trigger-v2",hmd=exists(hmd),fake=Convars:GetBool("vr_enable_fake_vr"),
        open=NpcDialogIsOpen(),range=data.interactDistance,hands={}}
    print("[VTMBVR_DIALOG] VR_STATUS version="..status.version.." hmd="..tostring(status.hmd)..
        " fake="..tostring(status.fake).." open="..tostring(status.open).." range="..status.range)
    if status.hmd then
        for id=0,1 do
            local hand=hmd:GetVRHand(id)
            local row={tracked=exists(hand)}
            if row.tracked then
                local input=vrInput.Status(id) or {}
                local origin,direction=handRay(hand)
                local target=actorInRay(origin,direction)
                row.input=input;row.target=target and target:GetName() or "none"
                print("[VTMBVR_DIALOG] VR_STATUS hand="..id.." literal="..tostring(input.literal)..
                    " source="..tostring(input.source).." pull="..tostring(input.pull)..
                    " down="..tostring(input.down).." emulated="..tostring(input.emulated).." target="..row.target)
            else print("[VTMBVR_DIALOG] VR_STATUS hand="..id.." tracked=false") end
            status.hands[id]=row
        end
    end
    return status
end

local function panelHit(origin,direction)
    if panelPose then return panelPose:Hit(origin,direction) end
end

local function endPanelMove(hand)
    if panelPose and panelPose:End(hand) then
        if validPanel() then panel:RemoveCSSClasses("PanelDragging") end
        print("[VTMBVR_DIALOG] WINDOW_MOVE_END")
    end
end

local function windowClick(hand,press,x,y)
    if press and x and not desktopPendingClick then
        vrSequence=(vrSequence+1)%256
        NpcDialogPointerClick(VR_SESSION,vrSequence,press[1],press[2],x,y)
        print("[VTMBVR_DIALOG] VR_CLICK hand="..hand.." x="..x.." y="..y)
    end
end

resolveWindowProbe=function(background)
    local probe=windowProbe
    if not probe then return end
    windowProbe=nil
    if not validPanel() then return end
    panel:RemoveCSSClasses("WindowGrabProbe")
    if background then
        local input=vrInput.Status(probe.hand)
        if not probe.released and input and input.down and panelPose:Begin(probe.hand,probe.direction,probe.x,probe.y,probe.distance,true) then
            vrPress={};vrPointerHand=nil
            panel:AddCSSClasses("PanelDragging");panel:RemoveCSSClasses("DPressed DFocused")
            print("[VTMBVR_DIALOG] WINDOW_MOVE_BEGIN hand="..probe.hand)
        else vrPress[probe.hand]=nil;vrPointerHand=nil end
    elseif probe.released then
        windowClick(probe.hand,vrPress[probe.hand],probe.upX,probe.upY)
        vrPress[probe.hand]=nil;vrPointerHand=nil
    end
end

local function probeWindow(hand,direction,x,y,distance)
    windowProbeSequence=(windowProbeSequence+1)%256
    windowProbe={hand=hand,direction=direction,x=x,y=y,distance=distance,started=Time()}
    desktopNumber("WindowProbeX",x+32,11);desktopNumber("WindowProbeY",y+32,11)
    desktopNumber("WindowProbeSequence",windowProbeSequence,8)
    panel:AddCSSClasses("WindowGrabProbe")
end

local function cancelWindowProbe(hand)
    if windowProbe and (hand==nil or windowProbe.hand==hand) then
        windowProbe=nil
        if validPanel() then panel:RemoveCSSClasses("WindowGrabProbe") end
    end
end

local function interactionThink()
    local player=Entities:GetLocalPlayer()
    if not player then return .1 end
    if validPanel() then faceEditor.Think() end
    if windowProbe and Time()-windowProbe.started>1 then resolveWindowProbe(false) end
    if listenerSession and Time()-listenerHeartbeat>4 then listenerSession=nil end
    if conversationActor and (not exists(conversationActor) or player:GetHealth()<=0 or (conversationActor:GetAbsOrigin()+Vector(0,0,48)-player:EyePosition()):Length()>180) then
        NpcDialogClose()
    end
    if sourceSession and sourceDeadline and Time()>=sourceDeadline and not faceEditor.opened then
        if sourceSession.auto then
            sourceSession:Automatic()
            if sourceSession.ended then NpcDialogClose() else playNode() end
        elseif #sourceSession.answers==0 then NpcDialogClose() end
    end
    local hmd=player:GetHMDAvatar()
    if not hmd then
        endPanelMove()
        cancelWindowProbe()
        vrInput.Reset();vrDown={};vrPress={};vrSuppressed={};vrPointerHand=nil
        updatePrompts(player);return .03
    end
    local promptActor
    local pointerVisible=false
    for _,id in ipairs({1,0}) do
        local hand=hmd:GetVRHand(id)
        if exists(hand) then
            local fake
            if Convars:GetBool("vr_enable_fake_vr") then fake=fakeDown[id]==true end
            local down,first,source,literal,pressed,released=vrInput.Read(player,hand,id,fake)
            if first then
                -- Tracking can reconnect with the trigger held. Require a
                -- release and a fresh press, rather than opening/selecting.
                vrDown[id]=down;vrPress[id]=nil;vrSuppressed[id]=nil
                print("[VTMBVR_DIALOG] VR_INPUT hand="..id.." literal="..literal.." source="..source)
            end
            local origin,direction=handRay(hand)
            if not validPanel() then
                local target=actorInRay(origin,direction)
                promptActor=promptActor or target
                if pressed then
                    local input=vrInput.Status(id) or {}
                    print("[VTMBVR_DIALOG] VR_PRESS hand="..id.." literal="..literal.." source="..source..
                        " pull="..tostring(input.pull).." emulated="..tostring(input.emulated)..
                        " target="..(target and target:GetName() or "none"))
                    if AsylumLocationInteract and AsylumLocationInteract(origin,direction,true) then
                        vrSuppressed[id]=true
                    elseif target and NpcDialogOpen(false,target) then
                        vrSuppressed[id]=true
                        print("[VTMBVR_DIALOG] VR_INTERACT hand="..id.." actor="..target:GetName())
                    else
                        print("[VTMBVR_DIALOG] VR_OPEN_REJECTED hand="..id.." reason="..
                            (target and "scene_owner_or_panel" or "no_talk_target_in_ray"))
                    end
                end
            elseif pointerSession==VR_SESSION then
                if panelPose and panelPose.grab then
                    if panelPose.grab.hand==id then
                        if down then
                            panelPose:Move(id,origin,direction)
                            panelAnchor:SetAbsOrigin(panelPose.center)
                            local angles=panelPose:Angles();panelAnchor:SetAbsAngles(angles.x,angles.y,angles.z)
                        else endPanelMove(id) end
                    elseif down then vrSuppressed[id]=true end
                    vrPress[id]=nil
                elseif vrSuppressed[id] then
                    if not down then vrSuppressed[id]=nil end
                elseif not vrPointerHand or vrPointerHand==id then
                    local x,y,distance=panelHit(origin,direction)
                    if pressed and x and not windowProbe and not desktopPendingClick then
                        vrPointerHand=id;vrPress[id]={x,y};probeWindow(id,direction,x,y,distance)
                    end
                    if x and (down or not pointerVisible) then
                        NpcDialogPointerMove(VR_SESSION,x,y,down and 1 or 0,1)
                        pointerVisible=true
                    end
                    if released then
                        if windowProbe and windowProbe.hand==id then
                            windowProbe.released=true;windowProbe.upX=x;windowProbe.upY=y
                        else
                            windowClick(id,vrPress[id],x,y);vrPress[id]=nil
                            if vrPointerHand==id then vrPointerHand=nil end
                        end
                    end
                end
            end
            vrDown[id]=down
        else
            endPanelMove(id)
            cancelWindowProbe(id)
            vrInput.Forget(id);vrDown[id]=nil;vrPress[id]=nil;vrSuppressed[id]=nil
            if vrPointerHand==id then vrPointerHand=nil end
        end
    end
    updatePrompts(player,promptActor)
    if pointerSession==VR_SESSION and not pointerVisible then panel:RemoveCSSClasses("DFocused") end
    return .016
end

function NpcDialogInstall()
    sourceDialogue.Bind(thisEntity)
    -- Entity Inputs survive a save while dynamically included Lua locals do
    -- not. Remove only our orphaned panel/controls before binding a fresh scope.
    if not validPanel() then
        local orphan=Entities:FindByName(nil,PANEL_NAME)
        if exists(orphan) then UTIL_Remove(orphan) end
        local orphanAnchor=Entities:FindByName(nil,"vtmbvr_dialog_anchor")
        if exists(orphanAnchor) then UTIL_Remove(orphanAnchor) end
        releaseControl("vtmbvr_dialog_camera","Disable")
        releaseControl("vtmbvr_dialog_controls","Deactivate")
        local actor=Entities:FindByName(nil,data.actor)
        if exists(actor) then
            lips.Stop(actor)
            for _,node in pairs(data.nodes) do if node.sound then StopSoundOn(node.sound,actor) end end
        end
        for _,sourceActor in ipairs(dialogueActors()) do
            local character=sourceDialogue.Character(sourceActor)
            if character then
                local bank=require("asylum_data/"..character)
                sourceFace.Reset(sourceActor,bank)
                for _,line in pairs(bank.lines) do
                    StopSoundOn(line.sound,sourceActor)
                    for _,event in ipairs(line.timelineEvents or {}) do if event.kind=="sound" then StopSoundOn(event.sound,sourceActor) end end
                end
            end
        end
    end
    for _,entity in ipairs(Entities:FindAllByClassname("point_clientui_world_panel")) do
        if entity:GetName():match("^vtmbvr_talk_prompt_") or entity:GetName()=="vtmbvr_jeanette_prompt" then UTIL_Remove(entity) end
    end
    prompts={}
    thisEntity:SetContextThink("NpcDialogueInteraction",function()
        local ok,result=pcall(interactionThink)
        if not ok then print("[VTMBVR_DIALOG] INTERACTION_ERROR "..tostring(result));return .5 end
        return result
    end,.1)
    print("[VTMBVR_DIALOG] INTERACTION_READY actor="..data.actor)
    if not NpcDialogFakeCommandsRegistered then
        for id=0,1 do
            local hand=id
            Convars:RegisterCommand("+vtmbvr_dialog_hand"..id,function() NpcDialogFakeTrigger(hand,true) end,"Press an emulated VR trigger",0)
            Convars:RegisterCommand("-vtmbvr_dialog_hand"..id,function() NpcDialogFakeTrigger(hand,false) end,"Release an emulated VR trigger",0)
        end
        NpcDialogFakeCommandsRegistered=true
    end
end

function NpcDialogFakeTrigger(hand,down)
    if not Convars:GetBool("vr_enable_fake_vr") or (hand~=0 and hand~=1) then return false end
    fakeDown[hand]=down==true
    print("[VTMBVR_DIALOG] EMULATED_TRIGGER hand="..hand.." down="..tostring(down==true))
    return true
end
