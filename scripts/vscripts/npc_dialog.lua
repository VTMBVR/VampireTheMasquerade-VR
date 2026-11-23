-- Jeanette conversation. The scene owner lends us the actor for its lifetime.
local data = require("npc_dialog_catalog")
local lips = require("npc_dialog_lipsync")
local faceEditor = require("npc_dialog_face_editor")
local PANEL_NAME = "vtmbvr_dialog_panel"
local INPUT_CLASSES = "DialogueChoose1 DialogueChoose2 DialogueChoose3 DialogueChoose4 DialogueReset"
local panel = nil
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
local prompt = nil
local listenerSession = nil
local listenerHeartbeat = 0
local panelCenter, panelRight = nil, nil
local panelYaw = nil
local vrDown, vrPress, vrSuppressed = {}, {}, {}
local VR_SESSION = 1073741825
local vrSequence = 0
local fakeDown = {}
local OWNER = "npc_dialog"

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
    if exists(conversationActor) then lips.Stop(conversationActor) end
    activeSound=nil
end

local function playNode()
    local node=data.nodes[currentNode]
    stopVoice()
    if not exists(conversationActor) then return end
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

function NpcDialogOpen(desktop,actor)
    local player = Entities:GetLocalPlayer()
    if not player then print("[VTMBVR_DIALOG] No local player") return false end
    if validPanel() or desktopSession then NpcDialogClose() end
    if actor and not NpcSceneBeginDialogue(actor,OWNER,player) then return false end
    conversationActor=actor
    currentNode=data.start
    local existing = Entities:FindByName(nil, PANEL_NAME)
    if existing then UTIL_Remove(existing) end
    local facing = player:EyeAngles()
    -- Keep the person visible beside the conversation. Desktop uses a temporary
    -- offset camera; VR places the panel to the right without rotating the HMD.
    if actor then facing.y=facing.y-(desktop and 15 or 25) end
    panelYaw=facing.y
    local yaw = math.rad(facing.y)
    local forward = Vector(math.cos(yaw), math.sin(yaw), 0)
    -- Keep the same angular size, but put the desktop panel inside the player's
    -- collision radius so passing NPCs cannot walk between the camera and UI.
    local distance = desktop and 12 or 48
    local scale = distance / 48
    local origin = player:EyePosition() + forward * distance
    panelCenter=origin
    panelRight=Vector(math.sin(yaw),-math.cos(yaw),0)
    panel = SpawnEntityFromTableSynchronous("point_clientui_world_panel", {
        targetname = PANEL_NAME,
        origin = origin,
        angles = QAngle(0, facing.y + 180, 0),
        dialog_layout_name = "file://{resources}/layout/custom_game/vtmbvr_dialog.xml",
        width = 64 * scale,
        height = 48 * scale,
        panel_dpi = 16 / scale,
        horizontal_align = "1",
        vertical_align = "1",
        orientation = "2",
        interact_distance = 160,
        ignore_input = 0,
        enabled = 1
    })
    if not validPanel() then NpcDialogClose();print("[VTMBVR_DIALOG] Panel spawn failed") return false end
    panel:AcceptUserInput()
    for i = 0, 9 do
        panel:RedirectOutput("CustomOutput" .. i, "NpcDialogOutput" .. i, thisEntity)
    end
    print("[VTMBVR_DIALOG] OPEN " .. tostring(origin))
    if exists(prompt) then DoEntFireByInstanceHandle(prompt,"Disable","",0,nil,nil) end
    playNode()
    faceEditor.Bind(panel,desktopNumber,playNode,function() return data.nodes[currentNode].duration or 4 end,
        function() return pointerSession or 0 end)
    if not desktop and player:GetHMDAvatar() then
        pointerSession=VR_SESSION
        desktopSignals={};desktopPendingClick=nil
        panel:IgnoreUserInput()
        panel:AddCSSClasses("PointerMode")
        print("[VTMBVR_DIALOG] VR_POINTER_READY")
    end
    return true
end

-- These are the native entity Outputs fired by ClientUI_FireOutput in Panorama.
-- Future voice/animation logic can be attached here or to the same Outputs in Hammer.
for i = 0, 9 do
    local slot = i
    _G["NpcDialogOutput" .. slot] = function()
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
    if validPanel() and not faceEditor.opened then panel:AddCSSClasses("DialogueReset") return true end
    return false
end

function NpcDialogClose()
    faceEditor.Close()
    stopVoice()
    if exists(conversationActor) then NpcSceneEndDialogue(conversationActor,OWNER) end
    conversationActor=nil
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
    vrPress={};vrDown={};vrSuppressed={}
    if exists(prompt) then DoEntFireByInstanceHandle(prompt,"Enable","",0,nil,nil) end
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
    desktopSignals = {}
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
        angles = QAngle(0, panelYaw or facing.y, 0), spawnflags = "140",
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

local function actorInRay(origin,direction)
    local actor=Entities:FindByName(nil,data.actor)
    if not exists(actor) then return nil end
    local center=actor:GetAbsOrigin()+Vector(0,0,48)
    local delta=center-origin
    local t=delta:Dot(direction)
    if t<0 or t>data.interactDistance or (delta-direction*t):Length()>26 then return nil end
    local trace={startpos=origin,endpos=center,ignore=Entities:GetLocalPlayer()}
    TraceLine(trace)
    if trace.hit and trace.enthit~=actor and (not trace.pos or (trace.pos-center):Length()>26) then return nil end
    return actor
end

function NpcDialogDesktopInteract(session)
    if listenerSession~=tonumber(session) or validPanel() or Convars:GetBool("vr_enable_fake_vr") then return false end
    local player=Entities:GetLocalPlayer()
    if not player then return false end
    local actor=actorInRay(player:EyePosition(),player:EyeAngles():Forward())
    if not actor then print("[VTMBVR_DIALOG] INTERACT_MISS");return false end
    if not NpcDialogOpen(true,actor) then return false end
    return NpcDialogEnableDesktop(session)
end

function NpcDialogPromptInteract()
    if validPanel() then return end
    local player=Entities:GetLocalPlayer()
    local actor=Entities:FindByName(nil,data.actor)
    if not player or not exists(actor) or (player:EyePosition()-actor:GetAbsOrigin()-Vector(0,0,48)):Length()>data.interactDistance then return end
    local desktop=listenerSession~=nil and not player:GetHMDAvatar()
    if NpcDialogOpen(desktop,actor) and desktop then NpcDialogEnableDesktop(listenerSession) end
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

local function panelHit(origin,direction)
    if not panelCenter or not panelRight then return nil end
    -- Face User Upright follows the player's position, not their head rotation.
    local facing=panelCenter-Entities:GetLocalPlayer():EyePosition()
    facing.z=0
    if facing:Length()>.01 then facing=facing:Normalized();panelRight=Vector(facing.y,-facing.x,0) end
    local normal=Vector(-panelRight.y,panelRight.x,0)
    local denominator=direction:Dot(normal)
    if math.abs(denominator)<.001 then return nil end
    local t=(panelCenter-origin):Dot(normal)/denominator
    if t<0 or t>160 then return nil end
    local hit=origin+direction*t
    local delta=hit-panelCenter
    local x=512+delta:Dot(panelRight)*16
    local y=384-delta.z*16
    if x<0 or x>1024 or y<0 or y>768 then return nil end
    return math.floor(x),math.floor(y)
end

local function interactionThink()
    local player=Entities:GetLocalPlayer()
    if not player then return .1 end
    if validPanel() then faceEditor.Think() end
    if listenerSession and Time()-listenerHeartbeat>4 then listenerSession=nil end
    if conversationActor and (not exists(conversationActor) or player:GetHealth()<=0 or (conversationActor:GetAbsOrigin()+Vector(0,0,48)-player:EyePosition()):Length()>180) then
        NpcDialogClose()
    end
    local actor=Entities:FindByName(nil,data.actor)
    if exists(actor) and not exists(prompt) then
        prompt=SpawnEntityFromTableSynchronous("point_clientui_world_panel",{
            targetname="vtmbvr_jeanette_prompt",origin=actor:GetAbsOrigin()+Vector(0,0,76),
            dialog_layout_name="file://{resources}/layout/custom_game/vtmbvr_dialog_prompt.xml",
            width=16,height=4,panel_dpi=32,horizontal_align="1",vertical_align="1",orientation="2",interact_distance=100,enabled=1
        })
        if exists(prompt) then prompt:RedirectOutput("CustomOutput0","NpcDialogPromptInteract",thisEntity) end
    end
    if exists(prompt) and exists(actor) then prompt:SetAbsOrigin(actor:GetAbsOrigin()+Vector(0,0,76)) end
    local hmd=player:GetHMDAvatar()
    if not hmd then return .03 end
    local pointerVisible=false
    for _,id in ipairs({1,0}) do
        local hand=hmd:GetVRHand(id)
        if exists(hand) then
            local down=player:IsDigitalActionOnForHand(1-id,3)
            -- The retail FakeVR hands expose poses but do not update SteamVR's
            -- digital-action API. Explicit emulator commands supply only the
            -- trigger state; targeting still uses the engine hand's actual ray.
            if Convars:GetBool("vr_enable_fake_vr") then down=down or fakeDown[id]==true end
            local origin,direction=handRay(hand)
            if not validPanel() then
                if down and not vrDown[id] then
                    local target=actorInRay(origin,direction)
                    if target and NpcDialogOpen(false,target) then
                        vrSuppressed[id]=true
                        print("[VTMBVR_DIALOG] VR_INTERACT hand="..id.." actor="..target:GetName())
                    end
                end
            elseif pointerSession==VR_SESSION then
                if vrSuppressed[id] then
                    if not down then vrSuppressed[id]=nil end
                else
                    local x,y=panelHit(origin,direction)
                    if x and (down or not pointerVisible) then
                        NpcDialogPointerMove(VR_SESSION,x,y,down and 1 or 0,1)
                        pointerVisible=true
                    end
                    if down and not vrDown[id] then vrPress[id]=x and {x,y} or nil end
                    if not down and vrDown[id] then
                        local press=vrPress[id]
                        if press and x and not desktopPendingClick then
                            vrSequence=(vrSequence+1)%256
                            NpcDialogPointerClick(VR_SESSION,vrSequence,press[1],press[2],x,y)
                            print("[VTMBVR_DIALOG] VR_CLICK hand="..id.." x="..x.." y="..y)
                        end
                        vrPress[id]=nil
                    end
                end
            end
            vrDown[id]=down
        end
    end
    if pointerSession==VR_SESSION and not pointerVisible then panel:RemoveCSSClasses("DFocused") end
    return .016
end

function NpcDialogInstall()
    -- Entity Inputs survive a save while dynamically included Lua locals do
    -- not. Remove only our orphaned panel/controls before binding a fresh scope.
    if not validPanel() then
        local orphan=Entities:FindByName(nil,PANEL_NAME)
        if exists(orphan) then UTIL_Remove(orphan) end
        releaseControl("vtmbvr_dialog_camera","Disable")
        releaseControl("vtmbvr_dialog_controls","Deactivate")
        local actor=Entities:FindByName(nil,data.actor)
        if exists(actor) then
            lips.Stop(actor)
            for _,node in pairs(data.nodes) do if node.sound then StopSoundOn(node.sound,actor) end end
        end
    end
    if not exists(prompt) then prompt=Entities:FindByName(nil,"vtmbvr_jeanette_prompt") end
    if exists(prompt) then prompt:RedirectOutput("CustomOutput0","NpcDialogPromptInteract",thisEntity) end
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
