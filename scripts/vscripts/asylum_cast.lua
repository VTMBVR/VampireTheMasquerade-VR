-- Optional original Asylum roster. Loading this file does not change the scene.
-- Enable/disable is reversible within this map session; VMAP is never rewritten.
local roster=require("npc_source_cast_data")
local story=require("npc_dialog_source")
local actors,parked,positions={},{},{}
local enabled=false
local function valid(e) return e and not e:IsNull() end
local function floorPosition(position,actor,entry)
    local at=Vector(position[1],position[2],position[3])
    -- The Alyx port adjusts some platform heights. Keep source XY and use the
    -- local floor instead of leaving a character suspended above/below it.
    local trace={startpos=at+Vector(0,0,32),endpos=at-Vector(0,0,128),ignore=actor}
    for i=1,8 do
        TraceLine(trace)
        local class=valid(trace.enthit) and trace.enthit:GetClassname() or ""
        if not trace.hit or (class~="generic_actor" and class~="prop_dynamic") then break end
        trace.ignore=trace.enthit;trace.startpos=trace.pos-Vector(0,0,1)
    end
    if trace.hit and trace.normal and trace.normal.z>.7 then at.z=trace.pos.z+.1 end
    -- The port's countertop sits above the source bar-rest wrist position.
    if entry and entry.name=="Cal" then at.z=at.z+4 end
    return at
end
local function office(state)
    local g,q=state.globals,state.quests
    local therese=g.Therese_Quest or 0
    if therese<2 then return {Jeanette=g.Jeanette_Know~=1,Therese=true} end
    if therese<3 and (g.Jeanette_Quest or 0)<2 and (g.Jeanette_Refuse or 0)<1 then return {Jeanette=true} end
    if g.Jeanette_Quest==2 and therese<4 then return {Therese=true} end
    if (q.Hotel or 0)>3 and q.Hotel<6 and (q.Slashterpiece or 0)==0 then return {Therese=true} end
    if (g.Jeanette_Refuse or 0)>=1 and (g.Jeanette_Fire or 0)<3 and therese<3 then return {} end
    if g.Jeanette_Fire==3 and therese<4 then return {Therese=true} end
    if therese==4 and (g.Tourette_Wins or 0)==0 and (g.Therese_Dead or 0)==0 and (g.Jeanette_Dead or 0)==0 then return {Tourette=true} end
    if g.Tourette_Wins==1 or g.Therese_Dead==1 or g.Jeanette_Dead==1 then
        if (g.Story_State or 0)<10 then return {} end
        if g.Tourette_Wins==1 then return {Tourette=true} end
        if g.Jeanette_Dead==1 then return {Therese=true} end
        if g.Therese_Dead==1 then return {Jeanette=true} end
    end
    return {}
end

function AsylumCastPlan(state)
    state=state or story.Snapshot()
    local g=state.globals;local upstairs=office(state);local result={}
    for _,entry in ipairs(roster.actors) do
        local show=not entry.startHidden
        local name=entry.name
        if name=="basic_raver" then show=g.Patch_Plus~=1
        elseif name=="plus_raver" then show=g.Patch_Plus==1
        elseif name=="Knox_basic" or name=="Knox_plus" then
            show=(g.Mercurio_Quest or 0)>=2 and (state.dead.Knox or 0)==0 and ((name=="Knox_plus")== (g.Patch_Plus==1))
        elseif name=="Chunk" then show=g.Chunk_Dominated==2 and (g.Story_State or 0)<10 and (g.Chunk_Dead or 0)==0 and (state.dead.Chunk or 0)==0
        elseif name=="Doll1" then show=(g.Doll1_Dead or 0)==0
        elseif name=="Danielle" then
            show=(g.Danielle_Dead or 0)==0 and not (g.Vandal_Quest==3 and g.Patty_SM~=1 and g.Gimble_Vandal~=1)
        elseif name=="Jeanette" or name=="Therese" or name=="Tourette" then show=upstairs[name]==true end
        local position={entry.origin[1],entry.origin[2],entry.origin[3]}
        local yaw=entry.angles[2]
        if name=="Jeanette" and (state.talked.jeanette or 0)==0 and (g.Therese_Quest or 0)<2 then
            show=true;position={-904.223,420.837,-280.691};yaw=0
        end
        if show then result[#result+1]={entry=entry,position=position,yaw=yaw} end
    end
    return result
end

local function refresh()
    if not enabled then return nil end
    local wanted={}
    for _,slot in ipairs(AsylumCastPlan()) do
        local entry=slot.entry;local id=entry.sourceId;wanted[id]=true
        local signature=table.concat(slot.position,",")..":"..slot.yaw
        local idle=not entry.dialogue and (entry.gender=="male" and "dance01" or "dance02") or nil
        if not valid(actors[id]) then
            local actor=SpawnEntityFromTableSynchronous("generic_actor",{
                targetname="npc_vampire_asylum_"..id,model=entry.alyxModel,
                origin=Vector(slot.position[1],slot.position[2],slot.position[3]),
                angles=QAngle(0,slot.yaw,0)})
            if valid(actor) then
                actors[id]=actor
                actor:Attribute_SetIntValue("vtmbvr_talk_enabled",entry.dialogue and 1 or 0)
                if NpcSceneSourcePose(actor,floorPosition(slot.position,actor,entry),slot.yaw,idle) then positions[id]=signature end
            end
        else
            if positions[id]~=signature and not (AsylumLocationOwns and AsylumLocationOwns(actors[id])) and NpcSceneSourcePose(actors[id],floorPosition(slot.position,actors[id],entry),slot.yaw,idle) then positions[id]=signature end
        end
    end
    for id,actor in pairs(actors) do
        if not wanted[id] and not NpcSceneDialogueBusy(actor) and not (AsylumLocationKeepActor and AsylumLocationKeepActor(id)) then
            if valid(actor) then UTIL_Remove(actor) end
            actors[id]=nil
        end
    end
    return .5
end

function AsylumCastEnable(profile)
    if NpcDialogClose then NpcDialogClose() end
    if AsylumLocationStop then AsylumLocationStop() end
    story.Bind(thisEntity)
    if profile then
        if not roster.profiles[profile] then return false end
        story.Reset();story.Configure(roster.profiles[profile])
        positions={}
    end
    if not enabled then
        for _,actor in ipairs(Entities:FindAllByClassname("generic_actor")) do
            local sourceId=actor:GetName():match("^npc_vampire_asylum_(%d+)$")
            if sourceId then actors[tonumber(sourceId)]=actor
            elseif actor:GetName():match("^npc_vampire_") then
                local origin,angles=actor:GetAbsOrigin(),actor:GetAngles()
                if actor:Attribute_GetIntValue("asylum_parked",0)==1 then
                    origin=Vector(actor:Attribute_GetIntValue("asylum_x",0)/1000,actor:Attribute_GetIntValue("asylum_y",0)/1000,actor:Attribute_GetIntValue("asylum_z",0)/1000)
                    angles=QAngle(0,actor:Attribute_GetIntValue("asylum_yaw",0)/1000,0)
                else
                    for key,value in pairs({x=origin.x,y=origin.y,z=origin.z,yaw=angles.y}) do actor:Attribute_SetIntValue("asylum_"..key,math.floor(value*1000)) end
                    actor:Attribute_SetIntValue("asylum_parked",1)
                end
                parked[#parked+1]={actor=actor,origin=origin,angles=angles}
                NpcSceneSourcePose(actor,Vector(0,0,-16000),0,nil)
            end
        end
    end
    enabled=true
    thisEntity:Attribute_SetIntValue("asylum_cast_enabled",1)
    if profile then refresh() end
    thisEntity:SetContextThink("AsylumOriginalCast",refresh,.1)
    if not AsylumLocationStart then DoIncludeScript("asylum_location",thisEntity:GetPrivateScriptScope()) end
    AsylumLocationStart(profile)
    print("[ASYLUM_CAST] ENABLED profile="..tostring(profile or "current"))
    return true
end

function AsylumCastDisable()
    if NpcDialogClose then NpcDialogClose() end
    if AsylumLocationStop then AsylumLocationStop() end
    enabled=false;thisEntity:SetContextThink("AsylumOriginalCast",nil,0)
    thisEntity:Attribute_SetIntValue("asylum_cast_enabled",0)
    for _,actor in pairs(actors) do if valid(actor) then UTIL_Remove(actor) end end
    for _,record in ipairs(parked) do
        if valid(record.actor) then
            NpcSceneSourcePose(record.actor,record.origin,record.angles.y,nil)
            NpcSceneSourcePose(record.actor,nil,nil,nil)
            record.actor:SetAbsOrigin(record.origin);record.actor:SetAbsAngles(record.angles.x,record.angles.y,record.angles.z)
            record.actor:Attribute_SetIntValue("asylum_parked",0)
        end
    end
    actors={};parked={};positions={}
    print("[ASYLUM_CAST] DISABLED")
end
