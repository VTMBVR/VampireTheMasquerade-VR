-- Source sisters introduction and typed choreography cues. No player camera,
-- teleport, controller capture or execution of the source Python is used.
local data=require("npc_source_location_data").sisters
local gunData=require("npc_source_item_data").sceneGun
local M={}
local host,story,gun,seenActor,introAt,endingAt
local flashes={}
local enabled=false
local function valid(e) return e and not e:IsNull() end
local function scene(name,...)
    -- require() modules do not inherit the script entity's private scope.
    local fn=host:GetPrivateScriptScope()[name] or _G[name]
    assert(type(fn)=="function","Missing Asylum scene callback: "..name)
    return fn(...)
end
local function flag(name,value)
    if value~=nil then host:Attribute_SetIntValue("asylum_sisters_"..name,value) end
    return host:Attribute_GetIntValue("asylum_sisters_"..name,0)
end
local function removeGun()
    if valid(gun) then UTIL_Remove(gun) end
    gun=nil
end
local function actor() return Entities:FindByName(nil,data.actor) end
local function showGun(npc)
    if valid(gun) then return end
    gun=Entities:FindByName(nil,"vtmbvr_tourette_handgun")
    if not valid(gun) then gun=SpawnEntityFromTableSynchronous("prop_dynamic",{
        targetname="vtmbvr_tourette_handgun",model=gunData.model,solid=0}) end
    if valid(gun) then
        gun:SetParent(npc,gunData.attachment)
        gun:SetLocalOrigin(Vector(0,0,0));gun:SetLocalAngles(0,0,0)
    end
end
function M.Inside(player)
    if not valid(player) then return false end
    local point=player:GetAbsOrigin()
    -- Original trigger_once touches the player's collision hull, not just feet.
    local low,high=data.minimum,data.maximum
    return point.x+16>=low[1] and point.x-16<=high[1] and
           point.y+16>=low[2] and point.y-16<=high[2] and
           point.z+72>=low[3] and point.z<=high[3]
end
function M.CanTalk(npc)
    if not enabled or not valid(npc) or npc:GetName()~=data.actor then return true end
    if endingAt then return false end
    if flag("resolved")==1 then return story.Get("g","Story_State",0)>=10 end
    return flag("intro_done")==1
end
function M.Keep(id)
    return enabled and endingAt~=nil and data.actor=="npc_vampire_asylum_"..id
end
function M.Start(owner,state,reset)
    host=owner;story=state;enabled=true;seenActor=nil;introAt=nil;endingAt=nil
    if reset then flag("intro_done",0);flag("intro_pending",0);flag("ending_pending",0);flag("resolved",0) end
    if flag("ending_pending")==1 then endingAt=Time()+3 end
end
function M.Tick(player)
    if not enabled then return end
    local npc=actor()
    if not valid(npc) then removeGun();seenActor=nil;return end
    if flag("resolved")==1 then removeGun();return end
    if not endingAt then showGun(npc) end
    if npc~=seenActor then
        seenActor=npc
        if flag("intro_pending")==1 then
            scene("NpcSceneSourceSequence",npc,"Tourette_intro");introAt=Time()+data.durations.Tourette_intro
        elseif flag("intro_done")==0 then scene("NpcSceneSourceSequence",npc,"Tourette_intro_pre") end
    end
    if endingAt then
        if Time()>=endingAt then
            if story.Get("g","Jeanette_Dead",0)==1 then
                -- Exact source post-dialogue model switch. Roster rules own
                -- subsequent presence; this does not advance campaign state.
                npc:SetModel("models/character/npc/unique/santa_monica/therese/therese.vmdl")
            end
            endingAt=nil;flag("ending_pending",0);flag("resolved",1);removeGun()
        end
        return
    end
    if flag("intro_done")==0 and not introAt and M.Inside(player) and not scene("NpcSceneDialogueBusy",npc) then
        if scene("NpcSceneSourceSequence",npc,"Tourette_intro") then
            introAt=Time()+data.durations.Tourette_intro;flag("intro_pending",1)
        end
    end
    if introAt and Time()>=introAt then
        introAt=nil;flag("intro_pending",0);flag("intro_done",1)
        scene("NpcSceneSourceSequence",npc,nil)
        -- Open a world panel only if the player remained in the room and no
        -- other conversation/editor is active. Head position stays untouched.
        if M.Inside(player) and player:GetHMDAvatar() and not scene("NpcDialogIsOpen") then
            scene("NpcDialogOpen",false,npc)
        end
    end
end
function M.DialogueEnd(npc,session)
    if not enabled or session.character~="tourette" or not valid(npc) then return end
    if story.Get("g","Jeanette_Dead",0)==1 or story.Get("g","Tourette_Wins",0)==1 then
        endingAt=Time()+3;flag("ending_pending",1);removeGun()
    end
end
function M.Event(npc,event)
    if not enabled or not valid(npc) or npc:GetName()~=data.actor or event.name~="sisters_muzzle_flash" then return false end
    local position=npc:GetAbsOrigin()+Vector(0,0,58)
    if valid(gun) then
        local attachment=gun:ScriptLookupAttachment("muzzle")
        if attachment and attachment>0 then position=gun:GetAttachmentOrigin(attachment) end
    end
    local light=SpawnEntityFromTableSynchronous("light_omni",{targetname="vtmbvr_sisters_flash",origin=position,
        color="255 210 140",brightness=4.0,range=64.0,enabled=true})
    if not valid(light) then return false end
    flashes[#flashes+1]=light
    light:SetContextThink("AsylumMuzzleFlash",function() if valid(light) then UTIL_Remove(light) end;return nil end,.06)
    return true
end
function M.Stop()
    enabled=false;removeGun()
    for _,light in ipairs(flashes) do if valid(light) then UTIL_Remove(light) end end
    flashes={};seenActor=nil;introAt=nil;endingAt=nil
end
function M.Status() return {introDone=flag("intro_done")==1,introPending=introAt~=nil,endingPending=endingAt~=nil,gun=valid(gun)} end
return M
