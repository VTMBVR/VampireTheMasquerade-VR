-- Keep the tracked playspace above moving ground. Moving the player capsule
-- alone does not move the HMD anchor in Alyx's legacy func_tracktrain maps.
local M={}
local host,train,lastTrain,rider,pendingSpawn
local function valid(e) return e and not e:IsNull() end
local function supported(player)
    local feet=player:GetAbsOrigin()
    local q={startpos=feet+Vector(0,0,12),endpos=feet-Vector(0,0,24),ignore=player}
    TraceLine(q)
    return q.hit and valid(q.enthit) and
        (q.enthit==train or (q.enthit.GetRootMoveParent and q.enthit:GetRootMoveParent()==train))
end
function M.ValidateSpawn(player,destination)
    if not valid(player) or not player:GetHMDAvatar() or Convars:GetBool("vr_enable_fake_vr") then return false end
    local eye=player:EyePosition()
    if eye.z>=player:GetAbsOrigin().z+8 then return false end
    local anchor=player:GetHMDAnchor()
    if not valid(anchor) then return false end
    local q={startpos=destination+Vector(0,0,80),endpos=destination-Vector(0,0,80),ignore=player}
    TraceLine(q)
    if not q.hit or not q.normal or q.normal.z<.7 then return false end
    local height=math.max(24,math.min(72,eye.z-anchor:GetAbsOrigin().z))
    local target=Vector(destination.x,destination.y,q.pos.z+height)
    anchor:SetAbsOrigin(anchor:GetAbsOrigin()+target-eye)
    print("[ASYLUM_VR] SPAWN_RECOVERED")
    return true
end
function M.Tick()
    if not valid(train) then rider=nil;return .1 end
    local at=train:GetAbsOrigin()
    local previous=lastTrain or at
    lastTrain=at
    local player=Entities:GetLocalPlayer()
    if not valid(player) or not player:GetHMDAvatar() or Convars:GetBool("vr_enable_fake_vr") then rider=nil;return .1 end
    local anchor=player:GetHMDAnchor()
    if not valid(anchor) then rider=nil;return .1 end
    if pendingSpawn then
        pendingSpawn=false
        M.ValidateSpawn(player,Vector(-1010,350,-282))
    end
    local delta=at-previous
    if not rider and delta:Length()>.0001 and supported(player) then
        rider={offset=anchor:GetAbsOrigin().z-previous.z,checkAt=Time()+.1}
        print("[ASYLUM_VR] PLATFORM_BOARD")
    end
    if rider then
        if Time()>=rider.checkAt then
            rider.checkAt=Time()+.1
            if not supported(player) then rider=nil;print("[ASYLUM_VR] PLATFORM_LEAVE");return .03 end
        end
        local origin=anchor:GetAbsOrigin()
        local correction=at.z+rider.offset-origin.z
        -- Respect an explicit teleport/reset instead of dragging it back.
        if math.abs(correction)>32 then rider=nil;return .03 end
        if math.abs(correction)>.0001 then anchor:SetAbsOrigin(origin+Vector(0,0,correction)) end
    end
    return rider and .01 or .03
end
function M.Start(owner,carrier,fresh)
    host=owner;train=carrier;lastTrain=valid(train) and train:GetAbsOrigin() or nil;rider=nil;pendingSpawn=fresh==true
    host:SetContextThink("AsylumVRPlatform",M.Tick,.03)
end
function M.Stop()
    if valid(host) then host:SetContextThink("AsylumVRPlatform",nil,0) end
    host=nil;train=nil;lastTrain=nil;rider=nil;pendingSpawn=nil
end
function M.Status() return {riding=rider~=nil,offset=rider and rider.offset or nil} end
return M
