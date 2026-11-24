-- Map-local adaptation of Asylum's source events. Never executes source Python.
local data=require("npc_source_location_data")
local story=require("npc_dialog_source")
local items=require("npc_source_items")
local sisters=require("asylum_sisters")
local navigation=require("npc_source_navigation")
local vrPlatform=require("npc_vr_platform")
local vrInteractions=require("asylum_vr")
local running=false
local records,slots,emitters,scheduled={},{},{},{}
local departure,argument,musicAt,musicPlaying=nil,nil,0,false
local liftTravel=nil
local liftDeniedAt=0
local liftPanels={}
local liftButtons={elev_button_up="AsylumLocationLiftUp",elev_button_down="AsylumLocationLiftDown"}
local OWNER="AsylumLocation"
local function valid(e) return e and not e:IsNull() end
local function log(message) print("[ASYLUM_LOCATION] "..message) end
local function get(name) return story.Get("g",name,0) end
local function set(name,value) return story.Set("g",name,value) end
local function flag(name,value)
    if value~=nil then thisEntity:Attribute_SetIntValue("asylum_loc_"..name,value) end
    return thisEntity:Attribute_GetIntValue("asylum_loc_"..name,0)
end
local function vector(v) return Vector(v[1],v[2],v[3]) end
local function floor(position,actor)
    local at=vector(position)
    local trace={startpos=at+Vector(0,0,32),endpos=at-Vector(0,0,128),ignore=actor}
    for i=1,8 do
        TraceLine(trace)
        local class=valid(trace.enthit) and trace.enthit:GetClassname() or ""
        if not trace.hit or (class~="generic_actor" and class~="prop_dynamic") then break end
        trace.ignore=trace.enthit;trace.startpos=trace.pos-Vector(0,0,1)
    end
    local grounded=trace.hit and trace.normal and trace.normal.z>.7
    if grounded then at.z=trace.pos.z+.1 end
    return at,grounded
end
local function after(seconds,callback) scheduled[#scheduled+1]={at=Time()+seconds,callback=callback} end
local function emitter(name,position)
    local e=emitters[name]
    if not valid(e) then
        e=Entities:FindByName(nil,"asylum_location_"..name)
        if not valid(e) then e=SpawnEntityFromTableSynchronous("info_target",{targetname="asylum_location_"..name,origin=position}) end
        emitters[name]=e
    end
    return e
end
local function sound(name,position)
    local cue=data.sounds[name]
    if not cue then return false end
    local e=emitter(name,position)
    if valid(e) then EmitSoundOn(cue.sound,e);return true end
    return false
end
local function input(name,operation)
    for _,e in ipairs(Entities:FindAllByName(name)) do
        local class=e:GetClassname()
        if class=="func_button" or class=="func_door" or class:match("^prop_door") then
            DoEntFireByInstanceHandle(e,operation,"",0,nil,thisEntity)
        end
    end
end
local function liftDoors(open,upper)
    for _,name in ipairs({"door_left","door_right","door_left2","door_right2"}) do
        input(name,open and ((name:sub(-1)=="2")==upper) and "Open" or "Close")
    end
end
local function syncLiftButtons()
    -- The imported OnPressed outputs also lock their own button. Reconcile
    -- after those queued outputs, including denied and same-floor presses.
    input("elev_button_up",not liftTravel and get("Cal_Permission")==1 and "Unlock" or "Lock")
    input("elev_button_down",liftTravel and "Lock" or "Unlock")
    for name,panel in pairs(liftPanels) do
        if valid(panel) then
            local locked=liftTravel~=nil or (name=="elev_button_up" and get("Cal_Permission")~=1)
            if locked then panel:AddCSSClasses("LiftLocked") else panel:RemoveCSSClasses("LiftLocked") end
        end
    end
end
function AsylumLocationLiftLocked()
    if not running or Time()<liftDeniedAt then return false end
    liftDeniedAt=Time()+1
    local train=Entities:FindByName(nil,"lift_train")
    if valid(train) then sound("denied",train:GetAbsOrigin()) end
    log(liftTravel and "LIFT_BUSY" or "LIFT_DENIED permission="..get("Cal_Permission"))
    return false
end
local function liftRequest(upper,npc)
    local train=Entities:FindByName(nil,"lift_train")
    local stop=Entities:FindByName(nil,upper and "path_top" or "path_bottom")
    if not running or not valid(train) or not valid(stop) then return false end
    if liftTravel then return AsylumLocationLiftLocked() end
    if upper and not npc and get("Cal_Permission")~=1 then return AsylumLocationLiftLocked() end
    if math.abs(train:GetAbsOrigin().z-stop:GetAbsOrigin().z)<8 then
        liftDoors(true,upper);sound("ding",train:GetAbsOrigin());return true
    end
    liftTravel={train=train,upper=upper,z=stop:GetAbsOrigin().z,deadline=Time()+25,
        previous=train:GetAbsOrigin().z,lastMotion=Time()+2,lastCommand=Time()+2,retries=0}
    flag("lift_pending",upper and 2 or 1)
    input("elev_button_up","Lock");input("elev_button_down","Lock");liftDoors(false,upper)
    local trip=liftTravel
    after(2,function()
        if liftTravel~=trip or not valid(train) then return end
        DoEntFireByInstanceHandle(train,"Stop","",0,nil,thisEntity)
        -- The port has startspeed=45 but speed=0. Maximum-speed inputs stop
        -- this train; restarting uses its authored speed and direction.
        DoEntFireByInstanceHandle(train,upper and "StartForward" or "StartBackward","",.05,nil,thisEntity)
    end)
    log("LIFT_START "..(upper and "up" or "down"));return true
end
function AsylumLocationLiftUp() return liftRequest(true,false) end
function AsylumLocationLiftDown() return liftRequest(false,false) end
function AsylumLocationPlayerSeated() return vrInteractions.Seated() end
function AsylumLocationVRStop() vrInteractions.Stop() end
function AsylumLocationVRStand() return vrInteractions.Stand("console",false) end
function AsylumLocationInteract(origin,direction,activate)
    if not running then return false end
    if vrInteractions.Interact(origin,direction,activate) then return true end
    local closestButton,nearest=nil,80
    for name,panel in pairs(liftPanels) do
        if valid(panel) then
            local delta=panel:GetAbsOrigin()-origin;local t=delta:Dot(direction)
            if t>=0 and t<nearest and (delta-direction*t):Length()<5 then
                local q={startpos=origin,endpos=panel:GetAbsOrigin(),ignore=Entities:GetLocalPlayer()};TraceLine(q)
                if not q.hit or (q.pos-panel:GetAbsOrigin()):Length()<5 then closestButton=name;nearest=t end
            end
        end
    end
    if not closestButton then return false end
    if activate then liftRequest(closestButton=="elev_button_up",false) end
    return true
end
local function entity(id) return Entities:FindByName(nil,"npc_vampire_asylum_"..id) end
local function entryFor(actor)
    if not valid(actor) then return nil end
    local id=tonumber(actor:GetName():match("^npc_vampire_asylum_(%d+)$"))
    for _,entry in ipairs(data.actors) do if entry.sourceId==id then return entry end end
end
local function releaseSlot(record)
    if record.slot then
        slots[record.slot.id]=nil
        record.slot=nil
    end
end
local function returnEmptyCab()
    if not running or flag("cab_return")==0 then return end
    local player=Entities:GetLocalPlayer();local train=Entities:FindByName(nil,"lift_train")
    if valid(player) and valid(train) then
        local p=player:GetAbsOrigin()
        local ground={startpos=p+Vector(0,0,16),endpos=p-Vector(0,0,12),ignore=player}
        TraceLine(ground)
        if ground.hit and valid(ground.enthit) and (ground.enthit==train or ground.enthit:GetRootMoveParent()==train) then
            after(1,returnEmptyCab);return
        end
    end
    if liftRequest(false,true) then flag("cab_return",0) else after(1,returnEmptyCab) end
end
local function finishDeparture()
    flag("jeanette_departing",0);flag("jeanette_riding",0);departure=nil
    log("JEANETTE_EXITED")
    -- The port has no working downstairs call button. Return the empty cab.
    flag("cab_return",1);after(1,returnEmptyCab)
end
local function chooseIdle(kind,entry)
    if kind=="Dance" then return entry.gender=="male" and "dance01" or "dance02" end
    if kind=="conversation_normal" then return "party_talk_idle1" end
    if kind=="Doorknock" then return "party_idle" end
    return entry.gender=="male" and "ArmsCrossed_Idle" or "party_idle"
end
local function assign(record)
    local actor,entry=record.actor,record.entry
    if not valid(actor) or NpcSceneDialogueBusy(actor) then return end
    local context=navigation.Context(actor:GetAbsOrigin())
    if not context then record.nextAt=Time()+10;return end
    local candidates={}
    for _,place in ipairs(data.places) do
        local compatible=false
        for _,group in ipairs(entry.groups) do if group==place.group then compatible=true end end
        if compatible and not slots[place.id] and place.kind~="Doorknock" and
                (not record.blocked or (record.blocked[place.id] or 0)<Time()) then
            local at,grounded=floor(place.origin,actor)
            -- Stay on a connected floor; the original office/balcony are not
            -- interchangeable just because their XY coordinates are nearby.
            if grounded and math.abs(at.z-actor:GetAbsOrigin().z)<24 then
                at=navigation.Resolve(at,actor,function(position)
                    local result,supported=floor({position.x,position.y,position.z},actor)
                    return supported and result or nil
                end)
                if at then
                    local approach=navigation.Approach(actor:GetAbsOrigin(),at,context)
                    if approach then candidates[#candidates+1]={place=place,at=at,approach=approach} end
                end
            end
        end
    end
    if #candidates==0 then record.nextAt=Time()+10;return end
    local choice=candidates[RandomInt(1,#candidates)];local place=choice.place
    releaseSlot(record);slots[place.id]=record;record.slot=place;record.moving=true
    local idle=chooseIdle(place.kind,entry)
    if not NpcSceneSourceRoute(actor,choice.at,place.yaw,idle,function(success)
        if not running or records[entry.sourceId]~=record or record.slot~=place then return end
        record.moving=false
        record.nextAt=Time()+RandomFloat(math.min(place.minimum,45),math.min(place.maximum,90))
        if success then
            record.arrivals=(record.arrivals or 0)+1
            log("ARRIVED actor="..entry.name.." place="..place.name.." clip="..idle)
        else
            record.blocked=record.blocked or {};record.blocked[place.id]=Time()+180
            releaseSlot(record);record.failures=(record.failures or 0)+1
        end
    end,function() return valid(place.trigger) and place.trigger:IsTouching(actor) end,
        {approach=choice.approach,finalApproach=navigation.MaximumApproach(),clearance=navigation.Clearance(actor),path=navigation.Path}) then
        record.moving=false;releaseSlot(record);record.nextAt=Time()+5
    end
end
local function makePlaces()
    -- This SDK exposes no Lua SetSize/SetCollisionBounds on brush triggers.
    -- Reuse the map's compiled 36x36x72 trigger hull, already precached here.
    local template=Entities:FindByName(nil,"iplace_6")
    assert(valid(template) and template:GetModelName()~="","Asylum trigger hull is missing")
    for _,place in ipairs(data.places) do
        local trigger=Entities:FindByName(nil,place.name)
        if not valid(trigger) then
            trigger=SpawnEntityFromTableSynchronous("trigger_multiple",{targetname=place.name,
                model=template:GetModelName(),origin=floor(place.origin)+Vector(0,0,36),
                spawnflags="2",wait="0.2",StartDisabled="0"})
        end
        place.trigger=trigger
        if valid(trigger) then
            local callback="AsylumSourcePlace"..place.id
            thisEntity:GetPrivateScriptScope()[callback]=function(params)
                local actor=params and params.activator
                local record=slots[place.id]
                if record and valid(actor) and actor:GetEntityIndex()==record.actor:GetEntityIndex() then
                    record.touches=(record.touches or 0)+1
                end
            end
            trigger:RedirectOutput("OnStartTouch",callback,thisEntity)
        end
    end
end
local function talkFlags(entry,actor)
    local allowed=entry.dialogue~=nil
    if not sisters.CanTalk(actor) then allowed=false end
    if entry.name=="Cal" or entry.name=="Doll1" then
        allowed=allowed and (flag("greeting_done")==1 or get("Cal_Known")==1 or get("Therese_Quest")>0)
    end
    if entry.name=="Danielle" and get("Vandal_Quest")==3 and get("Patty_SM")~=1 and get("Gimble_Vandal")~=1 then allowed=false end
    if (entry.name=="Therese" or entry.name=="Tourette") and argument then allowed=false end
    if entry.name=="Jeanette" and departure then allowed=false end
    actor:Attribute_SetIntValue("vtmbvr_talk_enabled",allowed and 1 or 0)
end
function AsylumLocationOwns(actor)
    local entry=entryFor(actor)
    return running and entry and ((departure and entry.name=="Jeanette") or records[entry.sourceId]~=nil) or false
end
function AsylumLocationKeepActor(id)
    return running and ((departure~=nil and id==187) or sisters.Keep(id))
end
function AsylumLocationPerformanceEvent(actor,event) return sisters.Event(actor,event) end
function AsylumLocationActorCreated(entry,actor)
    if not running then return end
    entry=entryFor(actor) or entry
    talkFlags(entry,actor)
    if entry.name=="Cal" then NpcSceneSourceSequence(actor,"dialog_bar_idle01") end
    if entry.name=="jeanette_flirt_partner" and flag("greeting_done")==0 then
        NpcSceneSourcePose(actor,actor:GetAbsOrigin(),actor:GetAngles().y,"party_talk_idle1")
    end
    if entry.usesInteresting and not entry.dialogue then
        NpcSceneSourcePose(actor,actor:GetAbsOrigin(),actor:GetAngles().y,chooseIdle("Dance",entry))
        records[entry.sourceId]={actor=actor,entry=entry,nextAt=Time()+RandomFloat(2,8)}
    elseif entry.name=="jeanette_flirt_partner" and flag("greeting_done")==1 then
        NpcSceneSourcePose(actor,actor:GetAbsOrigin(),actor:GetAngles().y,"ArmsCrossed_Idle")
        records[entry.sourceId]={actor=actor,entry=entry,nextAt=Time()+3}
    end
end
local function boardDeparture()
    local actor=departure and departure.actor
    if not valid(actor) then return end
    NpcSceneSourceSequence(actor,nil);departure.stage="boarding_approach"
    -- Baked navigation ends before the doorway. Walk to its reachable edge,
    -- then cross the missing link along the centre using collision sweeps.
    NpcSceneSourceRoute(actor,floor({-1168,491,-281.65},actor),90,nil,function(approached)
      if not departure then return end
      if not approached then departure.stage="failed";log("JEANETTE_APPROACH_FAILED");return end
      departure.stage="boarding"
      local centered=NpcSceneSourceStep(actor,floor({-1190.29,491,-281.65},actor),90,nil,function(aligned)
        if not departure then return end
        if not aligned then departure.stage="failed";log("JEANETTE_CENTER_FAILED");return end
        local walking=NpcSceneSourceStep(actor,floor({-1190.29,574.787,-281.65},actor),90,nil,function(boarded)
            if not departure then return end
            if not boarded then departure.stage="failed";log("JEANETTE_BOARD_FAILED");return end
            log("JEANETTE_BOARDED")
            local train=Entities:FindByName(nil,"lift_train")
            if NpcSceneSourceCarrier(actor,train) then departure.stage="riding";flag("jeanette_riding",1);liftRequest(true,true) end
        end)
        if not walking then departure.stage="failed";log("JEANETTE_WALK_UNAVAILABLE") end
      end)
      if not centered then departure.stage="failed";log("JEANETTE_WALK_UNAVAILABLE") end
    end)
end
local function beginDeparture(actor)
    if not valid(actor) or departure then return end
    flag("greeting_done",1);flag("jeanette_departing",1)
    departure={actor=actor,stage="walking",started=Time()}
    actor:Attribute_SetIntValue("vtmbvr_talk_enabled",0)
    local destination=floor({-1144,491.121,-280},actor)
    local ok=NpcSceneSourceRoute(actor,destination,90,nil,function(success)
        if not departure or departure.actor~=actor then return end
        departure.stage=success and "knocking" or "failed"
        if not success then log("JEANETTE_ROUTE_FAILED");return end
        NpcSceneSourceSequence(actor,"doorknock")
        log("JEANETTE_KNOCK")
        after(2,function()
            if not departure or not valid(actor) then return end
            liftRequest(false,true)
            departure.stage="waiting_lift";departure.boardAt=Time()+5
        end)
    end)
    if not ok then departure.stage="failed" end
    log("JEANETTE_DEPARTURE")
end
local function finishArgument()
    argument=nil;set("Asylum_Visited",1);flag("argument_pending",0)
    input("*bedroom_door*","Unlock");input("*bathroom_door*","Unlock")
    sound("unlock",Vector(-983,704,32));sound("doorSlam",Vector(-972,362,-6))
    log("ARGUMENT_FINISHED")
end
function AsylumLocationStartArgument()
    if not running or argument or get("Asylum_Visited")==1 then return false end
    argument={finish=Time()+data.argumentDuration}
    flag("argument_pending",1)
    input("*bedroom_door*","Lock");input("*bathroom_door*","Lock")
    sound("argument",Vector(-1036.81,551.528,58))
    log("ARGUMENT_STARTED duration="..data.argumentDuration)
    return true
end
function AsylumLocationDialogueBegin(actor,session)
    if not running then return end
    local entry=entryFor(actor)
    if not entry then return end
    local record=records[entry.sourceId]
    if record then record.nextAt=Time()+15 end
end
function AsylumLocationDialogueEnd(actor,session)
    if not running then return end
    local entry=entryFor(actor)
    if not entry then return end
    items.Flush(session)
    sisters.DialogueEnd(actor,session)
    if entry.name=="Jeanette" and actor:GetAbsOrigin().z< -200 and flag("greeting_done")==0 then
        beginDeparture(actor)
    elseif entry.name=="Cal" then
        NpcSceneSourceSequence(actor,"dialog_bar_idle01")
        log("CAL_PERMISSION "..get("Cal_Permission"))
    end
    local record=records[entry.sourceId]
    if record then record.nextAt=Time()+RandomFloat(8,15) end
end
local function world(session,event)
    if not running or not entryFor(session.actor) then return false end
    if items.Handle(session,event) then return true end
    local name,args=event.name,event.args
    if name=="pc.SetCamera" then
        -- Persona selection changes expression/voice through the source
        -- dialogue. Never apply original cinematic camera snaps to the HMD.
        return true
    elseif name=="Whisper" then
        local group=args[1]=="Moaning" and data.whispers.Moaning or data.whispers.Deluded
        if group and #group>0 then EmitSoundOnClient(group[RandomInt(1,#group)].sound,Entities:GetLocalPlayer());return true end
    elseif name=="npc.SetRelationship" then
        story.Set("npc",session.character.."_hostile",tostring(args[1]):find("D_HT",1,true) and 1 or 0)
        return true
    elseif name=="npc.SetGesture" then return NpcSceneSourceSequence(session.actor,args[1]) end
    return false
end
function AsylumLocationMusic(enabled)
    local wasMuted=flag("music_muted")==1
    flag("music_muted",enabled and 0 or 1)
    if not enabled and musicPlaying then
        StopSoundOn(data.sounds.music.sound,Entities:GetLocalPlayer());musicPlaying=false
    end
    if enabled and (wasMuted or not musicPlaying) then musicAt=Time() end
end
local function think()
    if not running then return nil end
    local now=Time();local player=Entities:GetLocalPlayer()
    sisters.Tick(player)
    for i=#scheduled,1,-1 do
        local item=scheduled[i]
        if now>=item.at then table.remove(scheduled,i);item.callback() end
    end
    local permission=get("Cal_Permission")==1
    -- Do not let a permission change unlock a moving cab. Also undo legacy
    -- button self-locks even when permission itself has not changed.
    syncLiftButtons()
    if liftTravel and not valid(liftTravel.train) then
        liftTravel=nil;flag("lift_pending",0);syncLiftButtons();log("LIFT_FAILED missing train")
    end
    if liftTravel then
        local trip=liftTravel;local z=trip.train:GetAbsOrigin().z
        if math.abs(z-trip.z)<8 and math.abs(z-trip.previous)<.05 then trip.stable=trip.stable or now else trip.stable=nil end
        if math.abs(z-trip.previous)>.05 then trip.lastMotion=now end
        trip.previous=z
        -- The port's path OnPass outputs can stop a just-started/restored
        -- train at its departure node. Retry actual motion, with a limit;
        -- collisions still block it and the trip still has a hard deadline.
        if math.abs(z-trip.z)>=8 and now-trip.lastMotion>1 and now-trip.lastCommand>1 and trip.retries<2 then
            trip.retries=trip.retries+1;trip.lastCommand=now
            DoEntFireByInstanceHandle(trip.train,"Stop","",0,nil,thisEntity)
            DoEntFireByInstanceHandle(trip.train,trip.upper and "StartForward" or "StartBackward","",.05,nil,thisEntity)
            log("LIFT_RESTART "..trip.retries)
        end
        if trip.stable and now-trip.stable>.3 then
            liftTravel=nil;flag("lift_pending",0);liftDoors(true,trip.upper);syncLiftButtons()
            sound("ding",trip.train:GetAbsOrigin())
            log("LIFT_ARRIVED "..(trip.upper and "up" or "down"))
            if departure and departure.stage=="waiting_lift" then departure.boardAt=now+5 end
            if departure and departure.stage=="riding" and trip.upper then
                after(3,finishDeparture)
            end
        elseif now>trip.deadline then
            DoEntFireByInstanceHandle(trip.train,"Stop","",0,nil,thisEntity)
            liftTravel=nil;flag("lift_pending",0);syncLiftButtons()
            -- Only open onto an actual landing; never into the shaft.
            for _,upper in ipairs({false,true}) do
                local stop=Entities:FindByName(nil,upper and "path_top" or "path_bottom")
                if valid(stop) and math.abs(z-stop:GetAbsOrigin().z)<8 then liftDoors(true,upper);break end
            end
            log("LIFT_FAILED")
        end
    end
    if departure and departure.stage=="waiting_lift" and not liftTravel and now>=departure.boardAt then boardDeparture() end
    for _,entry in ipairs(data.actors) do
        local actor=entity(entry.sourceId)
        if valid(actor) then
            if not actor:Attribute_GetIntValue("asylum_loc_registered",0) or actor:Attribute_GetIntValue("asylum_loc_registered",0)==0 then
                actor:Attribute_SetIntValue("asylum_loc_registered",1);AsylumLocationActorCreated(entry,actor)
            end
            if entry.name=="jeanette_flirt_partner" and flag("greeting_done")==1 and not records[entry.sourceId] then AsylumLocationActorCreated(entry,actor) end
            talkFlags(entry,actor)
        end
    end
    for id,record in pairs(records) do
        if not valid(record.actor) then releaseSlot(record);records[id]=nil
        elseif not record.moving and now>=record.nextAt and not NpcSceneDialogueBusy(record.actor) then assign(record) end
    end
    for _,conversation in ipairs(data.conversations) do
        local occupied=0
        for _,record in pairs(slots) do
            if not record.moving and record.slot.conversation==conversation.places then occupied=occupied+1 end
        end
        if occupied>=2 and now>=(conversation.nextAt or 0) then
            local e=emitter("conversation_"..conversation.id,vector(conversation.origin))
            EmitSoundOn(conversation.sound.sound,e);conversation.nextAt=now+conversation.sound.duration+RandomFloat(5,10)
        end
    end
    if valid(player) then
        if flag("music_muted")==0 and now>=musicAt then
            EmitSoundOnClient(data.sounds.music.sound,player);musicAt=now+data.sounds.music.duration;musicPlaying=true
        end
        local p=player:GetAbsOrigin()
        if permission and p.z> -100 and p.x>= -1114 and get("Asylum_Visited")==0 and not argument then AsylumLocationStartArgument() end
    end
    if argument and now>=argument.finish then finishArgument() end
    return .25
end
function AsylumLocationStop()
    vrInteractions.Stop()
    vrPlatform.Stop()
    items.Stop()
    sisters.Stop()
    running=false;story.BindWorld(nil)
    for _,panel in pairs(liftPanels) do if valid(panel) then UTIL_Remove(panel) end end
    liftPanels={}
    for _,record in pairs(records) do
        if valid(record.actor) and not NpcSceneDialogueBusy(record.actor) then
            NpcSceneSourcePose(record.actor,record.actor:GetAbsOrigin(),record.actor:GetAngles().y,nil)
        end
    end
    for name,callback in pairs(liftButtons) do
        local button=Entities:FindByName(nil,name)
        if valid(button) then
            button:DisconnectRedirectedOutput("OnPressed",callback,thisEntity)
            button:DisconnectRedirectedOutput("OnUseLocked","AsylumLocationLiftLocked",thisEntity)
        end
    end
    thisEntity:SetContextThink(OWNER,nil,0)
    if musicPlaying then StopSoundOn(data.sounds.music.sound,Entities:GetLocalPlayer()) end
    for _,cue in pairs(data.sounds) do
        for _,e in pairs(emitters) do if valid(e) then StopSoundOn(cue.sound,e) end end
    end
    for _,e in pairs(emitters) do if valid(e) then UTIL_Remove(e) end end
    for _,place in ipairs(data.places) do
        if valid(place.trigger) then UTIL_Remove(place.trigger) end
        -- Physics may deliver a final queued contact after the hull is removed.
        local scope=thisEntity:GetPrivateScriptScope()
        scope["AsylumSourcePlace"..place.id]=function() end
        scope["AsylumSourcePlaceEnd"..place.id]=function() end
        place.trigger=nil
    end
    records={};slots={};emitters={};scheduled={};departure=nil;argument=nil;musicPlaying=false;liftTravel=nil
end
function AsylumLocationStart(profile)
    if running then AsylumLocationStop() end
    story.Bind(thisEntity)
    if profile or flag("initialized")==0 then
        flag("greeting_done",get("Jeanette_Know")==1 and 1 or 0);flag("jeanette_departing",0);flag("jeanette_riding",0);flag("argument_pending",0);flag("cab_return",0)
    end
    if profile and not profile:match("^first_visit") then set("Asylum_Visited",1) end
    flag("initialized",1)
    running=true;musicAt=Time()+1;liftDeniedAt=0
    vrInteractions.Start(thisEntity)
    items.Start(thisEntity,story,profile~=nil)
    sisters.Start(thisEntity,story,profile~=nil)
    local train=Entities:FindByName(nil,"lift_train")
    vrPlatform.Start(thisEntity,train,profile~=nil)
    if valid(train) then
        for name,callback in pairs(liftButtons) do
            local button=Entities:FindByName(nil,name)
            if valid(button) then
                local position,angles=button:GetAbsOrigin(),button:GetAngles()
                button:SetParent(train,"");button:SetAbsOrigin(position);button:SetAbsAngles(angles.x,angles.y,angles.z)
                -- Save/load and scene reinstall must not accumulate callbacks.
                button:DisconnectRedirectedOutput("OnPressed",callback,thisEntity)
                button:DisconnectRedirectedOutput("OnUseLocked","AsylumLocationLiftLocked",thisEntity)
                button:RedirectOutput("OnPressed",callback,thisEntity)
                button:RedirectOutput("OnUseLocked","AsylumLocationLiftLocked",thisEntity)
                local panelName="asylum_lift_ui_"..name
                local panel=Entities:FindByName(nil,panelName)
                if not valid(panel) then
                    panel=SpawnEntityFromTableSynchronous("point_clientui_world_panel",{
                        targetname=panelName,origin=position+Vector(2,.5,.5),angles=QAngle(0,90,90),
                        dialog_layout_name="file://{resources}/layout/custom_game/vtmbvr_lift.xml",
                        width=6,height=6,panel_dpi=128/6,horizontal_align="1",vertical_align="1",orientation="0",
                        interact_distance=80,enabled=1,ignore_input=0})
                end
                if valid(panel) then
                    local at=panel:GetAbsOrigin();panel:SetParent(train,"");panel:SetAbsOrigin(at)
                    panel:DisconnectRedirectedOutput("CustomOutput0",callback,thisEntity)
                    panel:RedirectOutput("CustomOutput0",callback,thisEntity)
                    if name=="elev_button_down" then panel:AddCSSClasses("LiftDown") end
                    local player=Entities:GetLocalPlayer()
                    if valid(player) and player:GetHMDAvatar() then panel:IgnoreUserInput() else panel:AcceptUserInput() end
                    liftPanels[name]=panel
                end
            end
        end
        syncLiftButtons()
        liftDoors(true,train:GetAbsOrigin().z> -100)
    end
    makePlaces();story.BindWorld(world)
    for _,entry in ipairs(data.actors) do
        local actor=entity(entry.sourceId)
        if valid(actor) then actor:Attribute_SetIntValue("asylum_loc_registered",1);AsylumLocationActorCreated(entry,actor) end
    end
    if flag("jeanette_departing")==1 then
        local actor=entity(187)
        if valid(actor) and valid(train) and flag("jeanette_riding")==1 then
            departure={actor=actor,stage="riding",started=Time()}
            NpcSceneSourceCarrier(actor,train,true)
            if train:GetAbsOrigin().z> -10 then after(3,finishDeparture) else liftRequest(true,true) end
        elseif valid(actor) then beginDeparture(actor) else flag("jeanette_departing",0) end
    elseif flag("lift_pending")>0 then
        liftRequest(flag("lift_pending")==2,true)
    end
    if flag("cab_return")==1 then after(1,returnEmptyCab) end
    if flag("argument_pending")==1 and get("Asylum_Visited")==0 then after(1,AsylumLocationStartArgument) end
    thisEntity:SetContextThink(OWNER,function()
        local ok,result=pcall(think)
        if not ok then log("ERROR "..tostring(result));return 1 end
        return result
    end,.25)
    log("READY places="..#data.places)
end
function AsylumLocationStatus()
    local actors,arrivals,failures,touches=0,0,0,0
    for _,record in pairs(records) do
        actors=actors+1;arrivals=arrivals+(record.arrivals or 0);failures=failures+(record.failures or 0);touches=touches+(record.touches or 0)
    end
    local result={running=running,actors=actors,arrivals=arrivals,failures=failures,touches=touches,
        greeting=flag("greeting_done"),permission=get("Cal_Permission"),visited=get("Asylum_Visited"),
        departure=departure and departure.stage or "none",argument=argument~=nil,
        lift=liftTravel and (liftTravel.upper and "up" or "down") or "idle",liftPending=flag("lift_pending")}
    log("STATUS actors="..actors.." arrivals="..arrivals.." failures="..failures.." touches="..touches.." permission="..result.permission.." visited="..result.visited)
    return result
end
