-- Local VR interactions: a player seat and button-operated native gravity gloves.
local M={}
local host,magnet,seat,cooldown,previousPull=nil,nil,nil,0,nil
local previousLockon
local teleportListener,teleportAt,walkArmed,walkSince
-- The stool directly opposite Cal. Keep the player's capsule in the clear
-- aisle; the stool/counter row is too narrow for a standing VR collision hull.
local chair=Vector(-771,489.618988,-246.4271)
local landing=Vector(-796,489.618988,-278.9)
local eyeHeight=chair.z+30
local NAME="asylum_player_seat_magnet"
local function valid(e) return e and not e:IsNull() end
local function playerVR()
    local p=Entities:GetLocalPlayer()
    if valid(p) and p.GetHMDAvatar and p:GetHMDAvatar() and not Convars:GetBool("vr_enable_fake_vr") then return p end
end
local function flag(name,value)
    if value~=nil then host:Attribute_SetIntValue("asylum_vr_"..name,value) end
    return host:Attribute_GetIntValue("asylum_vr_"..name,0)
end
local function saveVector(name,v)
    for _,axis in ipairs({"x","y","z"}) do flag(name..axis,math.floor(v[axis]*1000+.5)) end
end
local function loadVector(name) return Vector(flag(name.."x")/1000,flag(name.."y")/1000,flag(name.."z")/1000) end
local function dialogueOpen()
    local scope=host:GetPrivateScriptScope()
    return scope.NpcDialogIsOpen and scope.NpcDialogIsOpen() or false
end
local function occupied()
    for _,actor in ipairs(Entities:FindAllByClassname("generic_actor")) do
        local p=actor:GetAbsOrigin()-chair
        if math.abs(p.z)<80 and p.x*p.x+p.y*p.y<18*18 then return true end
    end
    return false
end
local function buttonPull()
    if previousPull~=nil then return end
    if flag("pull_active")==1 then previousPull=flag("pull_previous")
    else previousPull=Convars:GetInt("vr_gg_gesture_pull");flag("pull_previous",previousPull);flag("pull_active",1) end
    Convars:SetInt("vr_gg_gesture_pull",0)
end
local function menuInput(open)
    if previousLockon==nil then
        if flag("lock_active")==1 then previousLockon=flag("lock_previous")
        else previousLockon=Convars:GetInt("vr_gg_lockon");flag("lock_previous",previousLockon);flag("lock_active",1) end
    end
    -- A reply click must not simultaneously pull a bottle behind the panel.
    local wanted=open and 0 or previousLockon
    if Convars:GetInt("vr_gg_lockon")~=wanted then Convars:SetInt("vr_gg_lockon",wanted) end
end
function M.Stand(reason,keepPosition)
    if not seat then return false end
    local old=seat;seat=nil;flag("seated",0);cooldown=Time()+.6;walkArmed=false;walkSince=nil
    local p=playerVR();local anchor=p and p:GetHMDAnchor()
    if valid(anchor) then
        if keepPosition then
            local at=anchor:GetAbsOrigin()
            -- A teleport already selected a new floor. Do not subtract the
            -- sitting offset twice after native teleportation.
            if math.abs(at.z-old.anchor.z)<6 then anchor:SetAbsOrigin(at-Vector(0,0,old.anchor.z-old.before.z)) end
        else anchor:SetAbsOrigin(old.before) end
    end
    print("[ASYLUM_VR] STAND reason="..(reason or "button"))
    return true
end
local function nearLanding(p,radius)
    local eye=p:EyePosition();local d=eye-landing
    return d.x*d.x+d.y*d.y<=radius*radius and math.abs(p:GetAbsOrigin().z-landing.z)<24
end
function M.Use(reason)
    local p=playerVR()
    if not p or not valid(host) or (Time()<cooldown and reason~="teleport") or dialogueOpen() then return false end
    if seat then return M.Stand("button",false) end
    if not nearLanding(p,14) or occupied() then return false end
    local anchor=p:GetHMDAnchor()
    if not valid(anchor) then return false end
    local before=anchor:GetAbsOrigin()
    local eye=p:EyePosition()
    local target=before+Vector(0,0,eyeHeight-eye.z)
    seat={before=before,anchor=target,since=Time(),center=Vector(eye.x,eye.y,eyeHeight)}
    saveVector("before_",before);saveVector("anchor_",target);saveVector("center_",seat.center);flag("seated",1)
    anchor:SetAbsOrigin(target);cooldown=Time()+.6
    print("[ASYLUM_VR] SIT mode="..(reason or "script").." target="..tostring(seat.center))
    return true
end
function M.Interact(origin,direction,activate)
    return false -- Native teleport/locomotion owns this interaction, not the trigger.
end
function M.Teleported() teleportAt=Time()+.05 end
function M.Tick()
    local p=playerVR()
    if not p then return .1 end
    buttonPull()
    menuInput(dialogueOpen())
    if teleportAt and Time()>=teleportAt then
        teleportAt=nil
        if seat then M.Stand("teleport",true) end
        if nearLanding(p,14) then M.Use("teleport") end
    end
    local anchor=p:GetHMDAnchor()
    if seat and valid(anchor) and Time()-seat.since>.5 then
        local delta=anchor:GetAbsOrigin()-seat.anchor
        local lean=p:EyePosition()-seat.center
        if p:GetHealth()<=0 then M.Stand("death",true)
        elseif delta.x*delta.x+delta.y*delta.y>8*8 or lean.x*lean.x+lean.y*lean.y>36*36 then M.Stand("movement",true) end
    end
    if not seat and not dialogueOpen() and Time()>=cooldown then
        local delta=p:EyePosition()-landing;delta.z=0
        local distance=delta:Length()
        if distance>28 then walkArmed=true end
        local gaze=p:EyeAngles():Forward();gaze.z=0
        local toChair=chair-p:EyePosition();toChair.z=0
        local facing=gaze:Length()>.01 and toChair:Length()>.01 and gaze:Dot(toChair)/(gaze:Length()*toChair:Length())>.7
        if walkArmed and nearLanding(p,12) and facing and not occupied() then
            walkSince=walkSince or Time()
            if Time()-walkSince>.18 then M.Use("walk");walkArmed=false;walkSince=nil end
        else walkSince=nil end
    end
    return .03
end
function M.Start(owner)
    host=owner;cooldown=Time()+.5;walkArmed=false;walkSince=nil;teleportAt=nil
    local oldPanel=Entities:FindByName(nil,"asylum_player_seat_ui")
    if valid(oldPanel) then UTIL_Remove(oldPanel) end
    host:GetPrivateScriptScope().AsylumVRSeatUse=nil
    if flag("seated")==1 then seat={before=loadVector("before_"),anchor=loadVector("anchor_"),center=loadVector("center_"),since=Time()} end
    local restoredMagnet=Entities:FindByName(nil,NAME)
    if valid(restoredMagnet) then UTIL_Remove(restoredMagnet) end
    -- Removal can be deferred until the end of this frame. Keep the returned
    -- fresh handle rather than finding a just-retired entity with this name.
    magnet=SpawnEntityFromTableSynchronous("info_teleport_magnet",{
        targetname=NAME,origin=landing,magnet_radius=42,start_enabled=true})
    if teleportListener then StopListeningToGameEvent(teleportListener) end
    local restoredListener=flag("teleport_listener")
    if restoredListener>0 and restoredListener~=teleportListener then StopListeningToGameEvent(restoredListener) end
    teleportListener=ListenToGameEvent("player_teleport_finish",function() M.Teleported() end,nil)
    flag("teleport_listener",teleportListener)
    if playerVR() then buttonPull();menuInput(dialogueOpen()) end
    host:SetContextThink("AsylumVRInteractions",M.Tick,.05)
end
function M.Stop()
    if not valid(host) then return end
    M.Stand("scene_stop",false)
    if valid(magnet) then UTIL_Remove(magnet) end
    magnet=nil
    if teleportListener then StopListeningToGameEvent(teleportListener);teleportListener=nil end
    flag("teleport_listener",0)
    host:SetContextThink("AsylumVRInteractions",nil,0)
    local original=previousPull
    if original==nil and flag("pull_active")==1 then original=flag("pull_previous") end
    if original~=nil then Convars:SetInt("vr_gg_gesture_pull",original);flag("pull_active",0) end
    local lock=previousLockon
    if lock==nil and flag("lock_active")==1 then lock=flag("lock_previous") end
    if lock~=nil then Convars:SetInt("vr_gg_lockon",lock);flag("lock_active",0) end
    previousPull=nil;previousLockon=nil;seat=nil;host=nil
end
function M.Seated() return seat~=nil end
function M.Status() return {version="native-magnet-2",seated=seat~=nil,magnet=valid(magnet) and magnet:GetAbsOrigin() or nil,buttonPull=previousPull~=nil} end
return M
