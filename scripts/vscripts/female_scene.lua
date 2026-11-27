-- One owner for both genders: movement, facing, graph requests and held props.
-- Female* entry points remain compatible with existing Hammer Outputs and tools.
local catalog = require("female_animation_catalog")
local maleCatalog = require("male_animation_catalog")
local sourceCast=require("npc_dialog_source_data")
for name,character in pairs(sourceCast.characters) do
    local owner=(name=="cal" or name=="chunk" or name=="knox") and maleCatalog or catalog
    owner.models[character.model]=true
end
for _,actor in ipairs(require("npc_source_cast_data").actors) do
    local owner=actor.gender=="male" and maleCatalog or catalog
    owner.models[actor.alyxModel]=true
end
local heldProps = require("npc_held_props")
local actors, places, reservations = {}, {}, {}
local booted = false
local function valid(e) return e and not e:IsNull() end
local function clearCarrier(s)
    if valid(s.carrierPair) then
        DoEntFireByInstanceHandle(s.carrierPair,"EnableCollisions","",0,nil,thisEntity)
        UTIL_Remove(s.carrierPair)
    end
    s.carrierPair=nil;s.sourceCarrier=nil;s.sourceCarrierOffset=nil
    if valid(s.actor) then s.actor:SetParent(nil,"") end
end
local function log(s) print("[FEMALE_SCENE] " .. s) end
local function flatDistance(a,b) local d=a-b return math.sqrt(d.x*d.x+d.y*d.y) end
local function angleDiff(a,b) return (a-b+180)%360-180 end
local function setbool(e,k,v) e:SetGraphParameterBool(k,v) end
local function lookup(e) return valid(e) and actors[e:GetEntityIndex()] or nil end
local function restoreNavigationOrigin(s)
    if s.anchored and s.anchorFrom and valid(s.actor) then
        -- Furniture poses can extend just outside the navigation hull. Return to
        -- the real arrival point before requesting the next path.
        s.actor:SetAbsOrigin(s.anchorFrom)
        s.anchored=false
        log("UNANCHOR actor="..s.actor:GetName())
    end
end

function FemaleWalkTo(actor,position,run,tolerance)
    local s=lookup(actor)
    if s then restoreNavigationOrigin(s) end
    actor:NpcForceGoPosition(position,run or false,tolerance or 6)
end
local function heldType(s)
    local clip=s.catalog.byName[s.action]
    return heldProps.clipProps[s.action] or (clip and heldProps.familyProps[clip.family])
end
local holdClips={phone="cellphone_idle",drink="Drink_Idle",cigarette="Cigarette_Idle",wall="Wall_Lean_idle_01",barstool="sit_barstool_idle"}
local function tailDuration(s)
    local catalog=s.catalog
    local family=catalog.byName[s.action].family
    if family=="cigarette" then return catalog.byName.Cigarette_Inhale.duration end
    if family=="drink" then return catalog.byName.Drink_Take.duration+catalog.byName.Drink_LookAround.duration+catalog.byName.Drink_Outof.duration end
    if family=="phone" then return catalog.byName.cellphone_outof.duration end
    if family=="wall" then return catalog.byName.Wall_Lean_outof.duration end
    if family=="barstool" then return catalog.byName.sit_barstool_outof.duration end
    return 0
end

function Precache(context)
    local sourceItems=require("npc_source_item_data")
    for _,item in pairs(sourceItems.items) do PrecacheModel(item.model,context) end
    if sourceItems.sceneGun then PrecacheModel(sourceItems.sceneGun.model,context) end
    PrecacheResource("soundfile","soundevents/vtmbvr_dialogue.vsndevts",context)
    PrecacheResource("soundfile","soundevents/vtmbvr_asylum.vsndevts",context)
    PrecacheResource("soundfile","soundevents/vtmbvr_asylum_location.vsndevts",context)
    for model in pairs(catalog.models) do PrecacheModel(model,context) end
    for _,m in pairs(heldProps.models) do PrecacheModel(m,context) end
    PrecacheResource("particle",heldProps.smoke.effect,context)
    for model in pairs(maleCatalog.models) do PrecacheModel(model,context) end
end

local function clearProp(s)
    if valid(s.smoke) then s.smoke:Kill() end
    s.smoke=nil
    if valid(s.prop) then s.prop:Kill() end
    s.prop=nil
end

local function attachProp(s)
    clearProp(s)
    local catalog=s.catalog
    local clip=catalog.byName[s.action]
    local kind=heldType(s)
    local model=heldProps.models[kind]
    if not model then return true end
    local grip=heldProps.grips[kind] and heldProps.grips[kind][s.gender] or catalog.grips[kind]
    -- Base-game cigarette/bottle models carry physics propdata. The override class
    -- deliberately permits using them as nonphysical held display props.
    local p=SpawnEntityFromTableSynchronous("prop_dynamic_override", {targetname="female_held_"..s.actor:GetEntityIndex(),model=model,solid="0",DisableBoneFollowers="1"})
    if not valid(p) then log("PROP_FAIL spawn "..model);return false end
    s.prop=p
    p:SetParent(s.actor,"r_hand")
    p:SetLocalOrigin(Vector(grip.origin[1],grip.origin[2],grip.origin[3]))
    p:SetLocalAngles(grip.angles[1],grip.angles[2],grip.angles[3])
    p:SetLocalScale(grip.scale or 1)
    if kind=="cigarette" then
        local smoke=SpawnEntityFromTableSynchronous("info_particle_system",{targetname="npc_cigarette_smoke_"..s.actor:GetEntityIndex(),effect_name=heldProps.smoke.effect,start_active="1"})
        if not valid(smoke) then clearProp(s);log("PROP_FAIL smoke");return false end
        s.smoke=smoke
        smoke:SetParent(p,"")
        local tip=heldProps.smoke.tip
        smoke:SetLocalOrigin(Vector(tip[1],tip[2],tip[3]))
        smoke:SetLocalAngles(0,0,0)
    end
    log("PROP actor="..s.actor:GetName().." family="..clip.family.." kind="..kind.." parent="..tostring(p:GetMoveParent()==s.actor))
    return p:GetMoveParent()==s.actor
end

local function furnitureMotion(s)
    local motion=s.motion
    if not motion then return end
    local curve=motion.curve
    local t=Time()-motion.at
    local a,b=curve[#curve],curve[#curve]
    for i=2,#curve do
        if curve[i][1]>=t then a=curve[i-1];b=curve[i];break end
    end
    local k=b[1]>a[1] and math.max(0,math.min(1,(t-a[1])/(b[1]-a[1]))) or 0
    local x=a[2]+(b[2]-a[2])*k;local y=a[3]+(b[3]-a[3])*k
    local yaw=math.rad(motion.yaw)
    s.actor:SetAbsOrigin(motion.origin+Vector(x*math.cos(yaw)-y*math.sin(yaw),x*math.sin(yaw)+y*math.cos(yaw),0))
    s.actor:SetAbsAngles(0,motion.yaw+a[4]+(b[4]-a[4])*k,0)
end

local function release(s,reason)
    local e=s.actor
    s.lastResult={action=s.action,reason=reason,started=s.started,tags=s.tags,touches=s.touchCount or 0,completed=s.completed,place=s.place and s.place.name,origin=s.actionOrigin,position=valid(e) and e:GetAbsOrigin() or nil}
    if valid(e) then
        e:NpcNavClearGoal()
        if type(e:GetGraphParameter("source_walk"))=="boolean" then setbool(e,"source_walk",false) end
        setbool(e,"action_ready",false);setbool(e,"action_align",false)
        setbool(e,"action_exit",false);setbool(e,"action_sequence",true)
        e:SetGraphParameterEnum("misc_anim_clip",0)
    end
    clearProp(s)
    if s.place then reservations[s.place.name]=nil end
    if s.phase then log("RELEASE actor="..(valid(e) and e:GetName() or "deleted").." reason="..reason) end
    s.previous=s.place and s.place.name or s.previous
    s.place=nil;s.phase="idle";s.nextAt=Time()+1;s.touched=false;s.started=false;s.lastClip=nil;s.motion=nil
end

function FemaleAssign(actor,placeName,action,chain)
    local s=lookup(actor);local p=places[placeName]
    if not s or not p or not s.catalog.byName[action] or not valid(p.entity) then return false end
    if p.seat and AsylumLocationPlayerSeated and AsylumLocationPlayerSeated() then return false end
    local catalog=s.catalog
    if reservations[placeName] and reservations[placeName]~=actor:GetEntityIndex() then return false end
    if s.phase~="idle" then release(s,"new_assignment") end
    restoreNavigationOrigin(s)
    s.place=p;s.action=action;s.chain=chain~=false;s.phase="approach";s.retries=0;s.lastProgress=Time();s.lastPos=actor:GetAbsOrigin();s.anchored=false
    s.goal=p.goal
    if p.seat and action=="sit_barstool_into" then
        -- Each gender has a different authored entry curve; both must arrive at
        -- the same physical seat rather than inheriting the female approach.
        local curve=catalog.motion.sit_barstool_into
        local delta=curve[#curve];local yaw=math.rad(p.yaw)
        s.goal=Vector(p.seat[1]-delta[2]*math.cos(yaw)+delta[3]*math.sin(yaw),p.seat[2]-delta[2]*math.sin(yaw)-delta[3]*math.cos(yaw),p.seat[3])
    end
    if p.seat and action~="sit_barstool_into" then s.goal=Vector(p.seat[1],p.seat[2],p.seat[3]) end
    local precision=catalog.byName[action].family=="barstool" or catalog.byName[action].family=="wall"
    -- Follow Path stops the feet at the goal; the entity origin can differ by
    -- half a stride. Furniture is aligned precisely after the turn below.
    s.navTolerance=precision and 1 or 6;s.arrivalTolerance=12
    s.deadline=Time()+25+flatDistance(actor:GetAbsOrigin(),s.goal)/20
    s.touched=p.entity:IsTouching(actor);s.started=false;s.completed=false;s.completedAt=nil;s.holdStartedAt=nil;s.alignStableAt=nil;s.tags={};reservations[placeName]=actor:GetEntityIndex()
    if s.touched then log("ALREADY_TOUCHING actor="..actor:GetName().." place="..placeName) end
    setbool(actor,"action_sequence",s.chain);setbool(actor,"action_ready",false);setbool(actor,"action_exit",false);setbool(actor,"action_align",false)
    actor:SetGraphParameterEnum("misc_anim_clip",catalog.byName[action].index)
    actor:NpcForceGoPosition(s.goal,false,s.navTolerance)
    log("ASSIGN actor="..actor:GetName().." place="..placeName.." clip="..action.." chain="..tostring(s.chain))
    return true
end

function FemaleSceneTouch(actor,place,entering)
    local s=lookup(actor)
    if not s or not s.place or s.place.name~=place:GetName() then return end
    s.touched=entering
    if entering then
        s.touchCount=(s.touchCount or 0)+1
        log("TOUCH actor="..actor:GetName().." place="..s.place.name.." count="..s.touchCount)
        -- A place output may be a legacy/default choice; the reserved catalog action wins.
        actor:SetGraphParameterEnum("misc_anim_clip",s.catalog.byName[s.action].index)
    else
        log("EXIT_TOUCH actor="..actor:GetName().." place="..s.place.name)
        if s.phase=="acting" or s.phase=="exiting" then release(s,"left_trigger") end
    end
end

local function animTag(s,name,status)
    local catalog=s.catalog
    if (name=="female:complete" or name=="male:complete") and status==1 then
        -- An interrupted outgoing state can finish while the next conversation
        -- gesture is entering. It must not complete the new request.
        if s.dialogueOwner and (not s.started or Time()-(s.clipStarted or Time())<.25) then return end
        s.completed=true;s.completedAt=Time()
        log("GRAPH_COMPLETE actor="..s.actor:GetName().." action="..tostring(s.action))
    elseif name=="Idle" and status==1 and s.started and s.phase=="acting" and not s.chain then
        s.completed=true;s.completedAt=Time()
    elseif name=="place_turn" then
        s.turning=status==1
        log("TURN actor="..s.actor:GetName().." status="..status)
    elseif name:sub(1,7)=="female:" or name:sub(1,5)=="male:" or name=="wave_greeting" then
        local clip=name=="wave_greeting" and name or name:match("^[^:]+:(.*)$")
        if status==1 then
            s.lastClip=clip;s.clipStarted=Time();s.tags[clip]=true
            if clip==s.action then s.started=true end
            if catalog.motion[clip] and s.place and s.place.seat then
                local origin=s.goal
                if clip~="sit_barstool_into" then origin=Vector(s.place.seat[1],s.place.seat[2],s.place.seat[3]) end
                s.motion={curve=catalog.motion[clip],at=Time(),origin=origin,yaw=s.place.yaw}
            end
            local requested=catalog.byName[s.action or ""]
            if s.chain and requested and clip==holdClips[requested.family] and not s.holdStartedAt then s.holdStartedAt=Time() end
        end
        log("TAG actor="..s.actor:GetName().." clip="..clip.." status="..status)
    end
end

-- Register newly spawned actors through the same owner as map-authored NPCs.
-- Each actor keeps the AI components created for its own model.
function NpcSceneRegisterActor(e)
    if not valid(e) then return nil end
    if lookup(e) then return lookup(e) end
    local actorCatalog=catalog.models[e:GetModelName()] and catalog or maleCatalog.models[e:GetModelName()] and maleCatalog
    if not actorCatalog then return nil end
    local s={actor=e,catalog=actorCatalog,gender=actorCatalog==catalog and "female" or "male",phase="idle",nextAt=Time()+3,tags={},touchCount=0}
    local nearest=math.huge
    for _,p in pairs(places) do
        local distance=flatDistance(e:GetAbsOrigin(),p.goal)
        if math.abs(e:GetAbsOrigin().z-p.goal.z)<20 and distance<nearest then nearest=distance;s.region=p.region end
        local anchor=(actorCatalog.places[p.name] or p).anchor
        if anchor and flatDistance(e:GetAbsOrigin(),Vector(anchor[1],anchor[2],anchor[3]))<18 and math.abs(e:GetAbsOrigin().z-p.goal.z)<20 then
            s.anchored=true;s.anchorFrom=p.goal
        end
    end
    actors[e:GetEntityIndex()]=s
    e:RegisterAnimTagListener(function(name,status) animTag(s,name,status) end)
    e:NpcNavClearGoal()
    setbool(e,"action_ready",false);setbool(e,"action_sequence",true);setbool(e,"action_align",false)
    log("ACTOR name="..e:GetName().." gender="..s.gender.." model="..e:GetModelName())
    return s
end

local function initialize()
    log("INITIALIZE begin")
    -- Save restoration restarts assignments. Remove only this system's temporary props.
    -- Alyx normalizes prop_dynamic_override to prop_dynamic after spawning.
    -- Ownership is in our reserved name, independent of that engine alias.
    for _,prop in ipairs(Entities:FindAllByName("female_held_*")) do
        if valid(prop) and prop:GetName():match("^female_held_%d+$") then prop:Kill() end
    end
    for _,smoke in ipairs(Entities:FindAllByName("npc_cigarette_smoke_*")) do
        if valid(smoke) and smoke:GetName():match("^npc_cigarette_smoke_%d+$") then smoke:Kill() end
    end
    log("INITIALIZE props cleaned")
    for name,p in pairs(catalog.places) do
        p.entity=Entities:FindByName(nil,name)
        if valid(p.entity) then p.name=name;p.goal=Vector(p.position[1],p.position[2],p.position[3]);places[name]=p end
    end
    for name,p in pairs(maleCatalog.places) do
        if not places[name] then
            p.entity=Entities:FindByName(nil,name)
            if valid(p.entity) then p.name=name;p.goal=Vector(p.position[1],p.position[2],p.position[3]);places[name]=p end
        end
    end
    for _,p in pairs(places) do
        -- Same elevation does not imply a connected room (office vs bathroom).
        p.region=p.region or (p.goal.z>-100 and "office" or p.goal.z>-260 and "stage" or "club")
    end
    log("INITIALIZE places registered")
    for _,e in ipairs(Entities:FindAllByClassname("generic_actor")) do
        NpcSceneRegisterActor(e)
    end
    booted=true
    log("READY")
    -- Conversation interaction is map-local and uses this same actor owner.
    if NpcDialogClose then NpcDialogClose() end
    DoIncludeScript("npc_dialog",thisEntity:GetPrivateScriptScope())
    NpcDialogInstall()
    local castMode=thisEntity:Attribute_GetIntValue("asylum_cast_enabled",-1)
    local freshAsylum=castMode== -1 and GetMapName and GetMapName()=="sm_asylum_fix_navfix"
    if castMode==1 or freshAsylum then
        DoIncludeScript("asylum_cast",thisEntity:GetPrivateScriptScope())
        AsylumCastEnable(freshAsylum and "first_visit_quest" or nil)
    end
end

local function choose(s)
    local candidates={}
    for name,p in pairs(places) do
        if name~=s.previous and not reservations[name] and p.region==s.region then
            table.insert(candidates,p)
        end
    end
    table.sort(candidates,function(a,b) return a.name<b.name end)
    if #candidates==0 then
        -- A raised stage can have one reachable place. Reuse it using the
        -- trigger's real overlap state instead of trying an unconnected floor.
        for name,p in pairs(places) do
            if not reservations[name] and p.region==s.region then table.insert(candidates,p) end
        end
    end
    if #candidates==0 then return end
    s.choice=(s.choice or 0)+1
    local p=candidates[(s.choice-1)%#candidates+1]
    local action=p.actions[((s.choice-1)%#p.actions)+1]
    FemaleAssign(s.actor,p.name,action,true)
end

local function failSourceRoute(s,move)
    local e=s.actor;s.sourceMove=nil
    if move.path and move.finalGoal then
        local points=move.path(e:GetAbsOrigin(),move.finalGoal)
        if points and #points>0 then
            local index=0
            log("SOURCE_PATH_FALLBACK actor="..e:GetName().." steps="..#points)
            local function advance()
                index=index+1
                if index>#points then
                    NpcSceneSourceRoute(e,move.finalGoal,move.yaw,move.idle,move.callback,move.within,
                        {approach=move.finalGoal,finalApproach=move.finalApproach,clearance=move.clearance})
                    return
                end
                local ok=NpcSceneSourceStep(e,points[index],e:GetAngles().y,nil,function(success)
                    if success then advance() elseif move.callback then move.callback(false,e) end
                end,move.clearance)
                if not ok and move.callback then move.callback(false,e) end
            end
            advance();return
        end
    end
    NpcSceneSourcePose(e,e:GetAbsOrigin(),e:GetAngles().y,nil)
    if move.callback then move.callback(false,e) end
end

local function finishSourceApproach(s,move)
    local e=s.actor
    if not move.finalGoal or flatDistance(e:GetAbsOrigin(),move.finalGoal)>(move.finalApproach or 0) then return false end
    s.sourceMove=nil
    local started=NpcSceneSourceStep(e,move.finalGoal,move.yaw,nil,function(success)
        if success then
            -- Complete facing and wait for actual trigger overlap after the
            -- hull-swept walk, using the same route/turn completion path.
            NpcSceneSourceRoute(e,move.finalGoal,move.yaw,move.idle,move.callback,move.within,
                {approach=move.finalGoal,finalApproach=move.finalApproach,clearance=move.clearance})
        else failSourceRoute(s,move) end
    end,move.clearance)
    if not started then
        failSourceRoute(s,move)
    end
    return true
end

local function update(s)
    local e=s.actor
    local catalog=s.catalog
    if not valid(e) then release(s,"deleted");return end
    if s.dialogueOwner then
        if s.sourceMove and not s.sourceMove.paused then s.sourceMove.paused=Time() end
        if s.sourceStep and not s.sourceStep.paused then s.sourceStep.paused=Time() end
        e:NpcNavClearGoal()
        if valid(s.dialogueTarget) then e:SetGraphLookTarget(s.dialogueTarget:EyePosition()) end
        if s.dialogueUntil and (s.completed or Time() >= s.dialogueUntil) then
            setbool(e,"action_ready",false)
            e:SetGraphParameterEnum("misc_anim_clip",0)
            clearProp(s)
            s.dialogueUntil=nil
            log("DIALOGUE_IDLE actor="..e:GetName())
        end
        return
    end
    if s.sourceMove then
        local move=s.sourceMove
        if move.paused then
            move.deadline=move.deadline+Time()-move.paused
            move.lastProgress=Time();move.lastPos=e:GetAbsOrigin()
            e:NpcForceGoPosition(move.goal,false,6);move.paused=nil
        end
        local touching=move.within and move.within() and flatDistance(e:GetAbsOrigin(),move.goal)<49
        local distance=flatDistance(e:GetAbsOrigin(),move.goal)
        local finalDistance=move.finalGoal and flatDistance(e:GetAbsOrigin(),move.finalGoal)
        local near=distance<(move.finalGoal and 8 or 18) or (not move.finalGoal and touching)
        if flatDistance(e:GetAbsOrigin(),move.lastPos)>2 then move.lastProgress=Time();move.lastPos=e:GetAbsOrigin() end
        if near and math.abs(e:GetAbsOrigin().z-move.goal.z)<20 then
            if move.finalGoal and finalDistance>6 and finishSourceApproach(s,move) then return end
            -- The source crowd assignment is complete only inside its real
            -- trigger, not merely near a projected navigation endpoint.
            if move.finalGoal and move.within and not move.within() then
                if finalDistance>2 and finishSourceApproach(s,move) then return end
                if Time()>move.deadline then
                    s.sourceMove=nil;NpcSceneSourcePose(e,e:GetAbsOrigin(),e:GetAngles().y,nil)
                    if move.callback then move.callback(false,e) end
                end
                return
            end
            e:NpcNavClearGoal()
            setbool(e,"action_align",true)
            local yaw=math.rad(move.yaw)
            e:SetGraphLookTarget(e:GetAbsOrigin()+Vector(math.cos(yaw)*200,math.sin(yaw)*200,60))
            local facing=not s.turning and math.abs(angleDiff(e:GetAngles().y,move.yaw))<8
            if facing then move.stable=move.stable or Time() else move.stable=nil end
            if move.stable and Time()-move.stable>.3 then
                s.sourceMove=nil
                NpcSceneSourcePose(e,e:GetAbsOrigin(),move.yaw,move.idle)
                if move.callback then move.callback(true,e) end
            end
        end
        if s.sourceMove and not near and Time()-move.lastProgress>2 and not e:NpcNavGoalActive() then
            if move.finalGoal and finalDistance<=move.finalApproach and finishSourceApproach(s,move) then return end
            if move.retries<2 then
                move.retries=move.retries+1;move.lastProgress=Time()
                e:NpcForceGoPosition(move.goal,false,6)
            end
        end
        if s.sourceMove and Time()>move.deadline then
            log("SOURCE_ROUTE_BLOCKED actor="..e:GetName().." distance="..flatDistance(e:GetAbsOrigin(),move.goal).." yaw="..angleDiff(e:GetAngles().y,move.yaw).." turning="..tostring(s.turning).." path="..tostring(e:NpcNavGoalActive()).." target="..tostring(move.goal))
            log("SOURCE_ROUTE_FAILED actor="..e:GetName())
            failSourceRoute(s,move)
        end
        return
    end
    if s.sourceStep then
        local move=s.sourceStep;local position=e:GetAbsOrigin();local delta=move.goal-move.position
        local half=move.height/2;local center=half+move.padding;local step=move.step
        local minimum,maximum=Vector(-move.radius,-move.radius,-half),Vector(move.radius,move.radius,half)
        if move.paused then
            move.deadline=move.deadline+Time()-move.paused;move.lastAt=Time();move.paused=nil
            if not NpcSceneSourceSequence(e,"hunt_walk") and type(e:GetGraphParameter("source_walk"))=="boolean" then setbool(e,"source_walk",true) end
        end
        local distance=delta:Length();local dt=math.min(.1,Time()-move.lastAt);move.lastAt=Time()
        if distance<2 then
            s.sourceStep=nil;NpcSceneSourceSequence(e,nil)
            NpcSceneSourcePose(e,position,move.yaw,move.idle)
            if move.callback then move.callback(true,e) end
        else
            local target=move.position+delta*(math.min(45*dt,distance)/distance)
            local ground={startpos=Vector(target.x,target.y,position.z+20),endpos=Vector(target.x,target.y,position.z-24),ignore=e}
            TraceLine(ground)
            if ground.hit then target.z=ground.pos.z+.1 end
            local rise=target.z-position.z
            -- Match ordinary stepping over the small lift sill. Sweep upwards
            -- first, then across at the supported height; never cross a wall
            -- or an unsupported gap to compensate for missing navigation.
            local raised=position+Vector(0,0,math.max(0,rise))
            local up={startpos=position+Vector(0,0,center),endpos=raised+Vector(0,0,center),
                min=minimum,max=maximum,ignore=e}
            TraceHull(up)
            local trace={startpos=raised+Vector(0,0,center),endpos=target+Vector(0,0,center),
                min=minimum,max=maximum,ignore=e}
            TraceHull(trace)
            local supported=ground.hit and ground.normal and ground.normal.z>.7 and math.abs(rise)<=step
            local clear=not up.hit and not trace.hit
            if not clear and supported then
                -- A leading foot can contact a sill before a point trace at
                -- the body centre sees its higher floor. Try a normal 18-unit
                -- step with a full standing hull, including ceiling clearance.
                local high=position+Vector(0,0,center+step)
                local stepUp={startpos=position+Vector(0,0,center),endpos=high,
                    min=minimum,max=maximum,ignore=e}
                TraceHull(stepUp)
                local across={startpos=high,endpos=Vector(target.x,target.y,high.z),
                    min=minimum,max=maximum,ignore=e}
                TraceHull(across)
                local down={startpos=across.endpos,endpos=Vector(target.x,target.y,position.z+half-22),
                    min=minimum,max=maximum,ignore=e}
                TraceHull(down)
                local standing=down.hit and down.normal and down.normal.z>.7
                local stepZ=standing and down.pos.z-half+.1 or position.z
                if not stepUp.hit and not across.hit and standing and math.abs(stepZ-position.z)<=step then
                    target.z=stepZ;clear=true
                end
            end
            if not clear or not supported or Time()>move.deadline then
                s.sourceStep=nil;NpcSceneSourceSequence(e,nil);NpcSceneSourcePose(e,position,e:GetAngles().y,nil)
                log("SOURCE_STEP_BLOCKED actor="..e:GetName().." position="..tostring(position).." rise="..rise.." support="..tostring(supported).." hull="..tostring(trace.hit).." hit="..(valid(trace.enthit) and trace.enthit:GetClassname() or "none"))
                if move.callback then move.callback(false,e) end
            else e:SetAbsOrigin(target);move.position=target end
        end
        return
    end
    if s.sourceCarrier then
        e:NpcNavClearGoal()
        if not valid(s.sourceCarrier) then s.sourceCarrier=nil
        else
            -- Generic actors keep their locomotor after SetParent and can
            -- fall through the cab. Follow its real transform explicitly.
            e:SetVelocity(Vector(0,0,0))
            e:SetAbsOrigin(s.sourceCarrier:GetAbsOrigin()+s.sourceCarrierOffset)
        end
        return
    end
    if s.sourceHome then
        e:NpcNavClearGoal();e:SetAbsOrigin(s.sourceHome)
        local yaw=math.rad(s.sourceYaw or 0)
        e:SetGraphLookTarget(s.sourceHome+Vector(math.cos(yaw)*200,math.sin(yaw)*200,60))
        return
    end
    furnitureMotion(s)
    if s.phase=="idle" then
        if Time()>=s.nextAt then choose(s) end
        return
    end
    if not valid(s.place.entity) then release(s,"place_deleted");return end
    if s.phase=="approach" then
        local pos=e:GetAbsOrigin()
        if s.touched and flatDistance(pos,s.goal)<s.arrivalTolerance and math.abs(pos.z-s.goal.z)<20 then
            e:NpcNavClearGoal()
            s.phase="align";s.deadline=Time()+10
            setbool(e,"action_align",true)
            log("ARRIVED actor="..e:GetName().." distance="..flatDistance(pos,s.goal))
        elseif Time()>s.deadline then release(s,"unreachable");return
        elseif flatDistance(pos,s.lastPos)>5 then s.lastPos=pos;s.lastProgress=Time()
        elseif Time()-s.lastProgress>5 then
            s.retries=s.retries+1;s.lastProgress=Time()
            if s.retries>2 then release(s,"stuck");return end
            e:NpcForceGoPosition(s.goal,false,s.navTolerance)
        end
    elseif s.phase=="align" then
        local yaw=math.rad(s.place.yaw)
        e:SetGraphLookTarget(e:GetAbsOrigin()+Vector(math.cos(yaw)*200,math.sin(yaw)*200,60))
        local facing=not s.turning and math.abs(angleDiff(e:GetAngles().y,s.place.yaw))<6
        if facing then s.alignStableAt=s.alignStableAt or Time() else s.alignStableAt=nil end
        -- Restored graph inputs can schedule a turn one update after arrival.
        -- Observe settled facing before starting an action or attaching props.
        if facing and Time()-s.alignStableAt>=.5 then
            local anchor=(catalog.places[s.place.name] or s.place).anchor
            if anchor and not s.anchored then
                e:NpcNavClearGoal()
                s.anchorFrom=e:GetAbsOrigin();s.anchorTo=Vector(anchor[1],anchor[2],anchor[3])
                s.anchorAt=Time()+.2;s.phase="anchor"
                return
            end
            setbool(e,"action_align",false)
            if catalog.byName[s.action].family=="barstool" then e:SetAbsOrigin(s.goal) end
            if not attachProp(s) then release(s,"prop_attach_failed");return end
            e:SetGraphParameterEnum("misc_anim_clip",catalog.byName[s.action].index)
            setbool(e,"action_sequence",s.chain);setbool(e,"action_ready",true)
            s.actionOrigin=e:GetAbsOrigin();s.phase="acting";s.startedAt=Time()
            local c=catalog.byName[s.action]
            s.deadline=Time()+math.max(18,c.duration+(s.holdSeconds or 8)+tailDuration(s)+10)
            log("ALIGNED actor="..e:GetName().." yaw="..e:GetAngles().y.." target="..s.place.yaw.." position="..tostring(e:GetAbsOrigin()))
        elseif Time()>s.deadline then release(s,"align_timeout") end
    elseif s.phase=="anchor" then
        local t=math.max(0,math.min(1,(Time()-s.anchorAt)/.4))
        e:SetAbsOrigin(s.anchorFrom+(s.anchorTo-s.anchorFrom)*t)
        if t>=1 then s.anchored=true;s.phase="align";s.alignStableAt=nil end
    elseif s.phase=="acting" then
        -- Finished fires as the outgoing clip starts blending away. Let its
        -- remaining root motion settle before resetting the graph or routing.
        if s.completed then
            if Time()-(s.completedAt or Time())>=.35 then release(s,"graph_complete") end
            return
        end
        if not s.started and Time()-s.startedAt>3 then release(s,"graph_did_not_start");return end
        local c=catalog.byName[s.action]
        if heldType(s) and not valid(s.prop) then release(s,"prop_deleted");return end
        local elapsed=Time()-s.startedAt
        local sequence=s.chain and holdClips[c.family]
        local holdFinished=s.holdStartedAt and Time()-s.holdStartedAt>=(s.holdSeconds or 8)
        if s.started and ((sequence and holdFinished) or (not sequence and elapsed>math.max(s.holdSeconds or 8,c.loop and (s.holdSeconds or 8) or c.duration+.5))) then
            if sequence then
                setbool(e,"action_exit",true);s.phase="exiting";s.deadline=Time()+math.max(15,tailDuration(s)+5)
            elseif c.loop or s.chain then release(s,"action_complete") end
        elseif Time()>s.deadline then release(s,"action_timeout") end
    elseif s.phase=="exiting" then
        if s.completed then
            if Time()-(s.completedAt or Time())>=.35 then release(s,"sequence_complete") end
        elseif Time()>s.deadline then release(s,"exit_timeout") end
    end
end

function Spawn()
    log("SPAWN scheduling")
    thisEntity:SetContextThink("FemaleScene",FemaleSceneThink,.25)
end
function UpdateOnRemove()
    if AsylumLocationVRStop then AsylumLocationVRStop() end
end
function Activate(activationType)
    -- Rebuild handles/reservations after save restoration; never trust stale entity indexes.
    actors={};places={};reservations={};booted=false
    log("ACTIVATE type="..tostring(activationType))
    if activationType==2 then
        -- Restored trigger Outputs can run during physics activation, before
        -- the shared registry is rebound below. Ignore these initial contacts;
        -- the location owner installs live handlers as it rebuilds its slots.
        if thisEntity:Attribute_GetIntValue("asylum_cast_enabled",0)==1 then
            local scope=thisEntity:GetPrivateScriptScope()
            for _,place in ipairs(require("npc_source_location_data").places) do
                scope["AsylumSourcePlace"..place.id]=function() end
                -- Compatibility with saves made before IsTouching polling.
                scope["AsylumSourcePlaceEnd"..place.id]=function() end
            end
        end
        -- Saved Lua closures may restore detached copies of their local tables.
        -- Recreate the functions together so Think, Outputs and public controls
        -- all share the same fresh actor registry, then replace the old Think.
        thisEntity:SetContextThink("FemaleSceneRestore",function()
            local scope=thisEntity:GetPrivateScriptScope()
            DoIncludeScript("female_scene",scope)
            thisEntity:SetContextThink("FemaleScene",scope.FemaleSceneThink,.25)
            log("RESTORE_REBOUND")
            return nil
        end,.5)
    end
end
function FemaleSceneThink()
    local ok,err=pcall(function()
        if not booted then initialize() end
        for id,s in pairs(actors) do
            if not valid(s.actor) then release(s,"deleted");clearCarrier(s);actors[id]=nil else update(s) end
        end
    end)
    if not ok then log("ERROR "..tostring(err)) end
    -- Furniture trajectories are sampled from the original 30 fps SMD curves.
    -- Keep their placement smooth while the ordinary state checks share this tick.
    return 1/30
end

function FemaleSceneStatus()
    for _,s in pairs(actors) do log("STATUS actor="..s.actor:GetName().." phase="..s.phase.." clip="..tostring(s.lastClip).." place="..tostring(s.place and s.place.name).." position="..tostring(s.actor:GetAbsOrigin()).." yaw="..s.actor:GetAngles().y) end
end

-- Useful from Hammer Outputs / VConsole without bypassing normal movement and facing.
function FemalePreview(actorName,placeName,clip,sequence,holdSeconds)
    local actor=Entities:FindByName(nil,actorName)
    local s=lookup(actor)
    if not s then return false end
    s.holdSeconds=holdSeconds or 12
    return FemaleAssign(actor,placeName,clip,sequence)
end

-- Gender-neutral controls for new Hammer Outputs; old Female* calls still work.
NpcSceneAssign=FemaleAssign
NpcScenePreview=FemalePreview
NpcSceneStatus=FemaleSceneStatus
MalePreview=FemalePreview

-- Dialogue borrows an actor from this owner; ambient routing never competes
-- with conversation actions, and closing releases the actor back to the scene.
function NpcSceneBeginDialogue(actor,owner,target)
    local s=lookup(actor)
    if not s or (s.dialogueOwner and s.dialogueOwner~=owner) then return false end
    release(s,"dialogue_begin")
    restoreNavigationOrigin(s)
    -- Source VCD body clips replace the movement graph's turn pose. Face the
    -- listener before starting them instead of relying on that graph to turn.
    if valid(target) then
        local delta=target:GetAbsOrigin()-actor:GetAbsOrigin()
        if delta.x*delta.x+delta.y*delta.y>1 then
            actor:SetAbsAngles(0,math.deg(math.atan2(delta.y,delta.x)),0)
        end
    end
    s.dialogueOwner=owner;s.dialogueTarget=target;s.dialogueUntil=nil
    s.phase="dialogue"
    return true
end

function NpcSceneDialogueAction(actor,owner,clip,holdSeconds)
    local s=lookup(actor)
    local c=s and s.catalog.byName[clip]
    -- Furniture needs an authored place/trajectory; conversation gestures use
    -- the ambient catalog and stay at the actor's actual conversation position.
    if not s or s.dialogueOwner~=owner or not c or c.family~="ambient" then return false end
    setbool(actor,"action_ready",false)
    clearProp(s)
    s.action=clip;s.chain=false;s.started=false;s.completed=false;s.completedAt=nil
    s.tags={};s.lastClip=nil;s.startedAt=Time();s.motion=nil
    if not attachProp(s) then return false end
    setbool(actor,"action_align",false);setbool(actor,"action_sequence",false);setbool(actor,"action_exit",false)
    actor:SetGraphParameterEnum("misc_anim_clip",0)
    s.dialogueGeneration=(s.dialogueGeneration or 0)+1
    local generation=s.dialogueGeneration
    thisEntity:SetContextThink("NpcDialogueAction"..actor:GetEntityIndex(),function()
        if not valid(actor) or s.dialogueOwner~=owner or s.dialogueGeneration~=generation then return nil end
        actor:SetGraphParameterEnum("misc_anim_clip",c.index)
        setbool(actor,"action_ready",true)
        return nil
    end,.25)
    s.dialogueUntil=Time()+math.max(c.duration+.5,holdSeconds or 0)
    log("DIALOGUE_ACTION actor="..actor:GetName().." clip="..clip)
    return true
end

function NpcSceneEndDialogue(actor,owner)
    local s=lookup(actor)
    if not s or s.dialogueOwner~=owner then return false end
    s.dialogueOwner=nil;s.dialogueTarget=nil;s.dialogueUntil=nil
    release(s,"dialogue_end")
    if s.sourceHome then
        actor:SetAbsOrigin(s.sourceHome);actor:SetAbsAngles(0,s.sourceYaw,0)
        if s.sourceIdle then
            actor:SetGraphParameterEnum("misc_anim_clip",s.sourceIdle.index)
            setbool(actor,"action_ready",true)
        end
    end
    s.nextAt=Time()+2
    return true
end

-- Optional original-cast placement keeps the authored VMAP unchanged.
function NpcSceneSourcePose(actor,position,yaw,idle)
    local s=lookup(actor) or NpcSceneRegisterActor(actor)
    if not s or s.dialogueOwner then return false end
    release(s,"source_pose")
    s.sourceMove=nil
    s.sourceStep=nil
    if s.sourceCarrier then clearCarrier(s) end
    s.sourceHome=position;s.sourceYaw=yaw;s.sourceIdle=idle and s.catalog.byName[idle] or nil
    if position then
        actor:NpcNavClearGoal();actor:SetAbsOrigin(position);actor:SetAbsAngles(0,yaw,0)
        local nearest=math.huge;s.region=nil
        for _,place in pairs(places) do
            local distance=flatDistance(position,place.goal)
            if math.abs(position.z-place.goal.z)<24 and distance<nearest then nearest=distance;s.region=place.region end
        end
        if s.sourceIdle then
            s.action=s.sourceIdle.name;attachProp(s)
            actor:SetGraphParameterEnum("misc_anim_clip",s.sourceIdle.index);setbool(actor,"action_ready",true)
        end
    end
    return true
end

function NpcSceneDialogueBusy(actor)
    local s=lookup(actor);return s and s.dialogueOwner~=nil
end

function NpcSceneSourceRoute(actor,position,yaw,idle,callback,within,options)
    local s=lookup(actor) or NpcSceneRegisterActor(actor)
    if not s or s.dialogueOwner then return false end
    release(s,"source_route")
    if s.sourceCarrier then clearCarrier(s) end
    if type(actor:GetGraphParameter("source_scene_clip"))=="number" then actor:SetGraphParameterEnum("source_scene_clip",0) end
    s.sourceHome=nil;s.sourceSequence=nil;s.sourceStep=nil
    local goal=options and options.approach or position
    s.sourceMove={goal=goal,finalGoal=options and position,finalApproach=options and options.finalApproach,clearance=options and options.clearance,path=options and options.path,
        yaw=yaw,idle=idle,callback=callback,within=within,retries=0,lastProgress=Time(),lastPos=actor:GetAbsOrigin(),
        deadline=Time()+15+flatDistance(actor:GetAbsOrigin(),position)/35}
    actor:NpcForceGoPosition(goal,false,6)
    return true
end

function NpcSceneSourceCarrier(actor,carrier,resume)
    local s=lookup(actor)
    if not s or s.dialogueOwner or not valid(carrier) then return false end
    release(s,"source_carrier")
    s.sourceMove=nil;s.sourceStep=nil;s.sourceHome=nil;s.sourceCarrier=carrier
    local pairName="npc_source_carrier_"..actor:GetName()
    local pair=Entities:FindByName(nil,pairName)
    if not valid(pair) then
        pair=SpawnEntityFromTableSynchronous("logic_collision_pair",{
            targetname=pairName,attach1=actor:GetName(),attach2=carrier:GetName(),startdisabled=1})
    end
    if not valid(pair) then s.sourceCarrier=nil;return false end
    s.carrierPair=pair
    DoEntFireByInstanceHandle(pair,"DisableCollisions","",.1,nil,thisEntity)
    local offset=actor:GetAbsOrigin()-carrier:GetAbsOrigin()
    if resume and actor:Attribute_GetIntValue("asylum_carrier_saved",0)==1 then
        offset=Vector(actor:Attribute_GetIntValue("asylum_carrier_x",0)/1000,
            actor:Attribute_GetIntValue("asylum_carrier_y",0)/1000,actor:Attribute_GetIntValue("asylum_carrier_z",0)/1000)
    else
        for name,value in pairs({x=offset.x,y=offset.y,z=offset.z}) do actor:Attribute_SetIntValue("asylum_carrier_"..name,math.floor(value*1000)) end
        actor:Attribute_SetIntValue("asylum_carrier_saved",1)
    end
    s.sourceCarrierOffset=offset
    actor:NpcNavClearGoal();actor:SetParent(nil,"");actor:SetVelocity(Vector(0,0,0))
    actor:SetAbsOrigin(carrier:GetAbsOrigin()+offset)
    return true
end

-- A short authored walk can cross a moving platform without a baked nav link.
-- Sweep each step and require supporting floor; a blocked walk reports failure.
function NpcSceneSourceStep(actor,position,yaw,idle,callback,clearance)
    local s=lookup(actor)
    if not s or s.dialogueOwner or (position-actor:GetAbsOrigin()):Length()>128 then return false end
    -- NAV vertices sit above physical floor by the mesh's rasterization pad.
    -- Use the supported feet height, otherwise a 2-unit Z difference can
    -- prevent a waypoint from ever completing even at the correct XY.
    local ground={startpos=position+Vector(0,0,20),endpos=position-Vector(0,0,24),ignore=actor}
    TraceLine(ground)
    if ground.hit and ground.normal and ground.normal.z>.7 and math.abs(ground.pos.z-position.z)<18 then position=Vector(position.x,position.y,ground.pos.z+.1) end
    release(s,"source_step");s.sourceMove=nil;s.sourceHome=nil
    if not NpcSceneSourceSequence(actor,"hunt_walk") then
        if type(actor:GetGraphParameter("source_walk"))~="boolean" then return false end
        setbool(actor,"source_walk",true)
    end
    actor:NpcNavClearGoal()
    local direction=position-actor:GetAbsOrigin()
    if direction.x*direction.x+direction.y*direction.y>1 then actor:SetAbsAngles(0,math.deg(math.atan2(direction.y,direction.x)),0) end
    s.sourceStep={goal=position,position=actor:GetAbsOrigin(),yaw=yaw,idle=idle,callback=callback,lastAt=Time(),
        radius=clearance and clearance.radius or 12,height=clearance and clearance.height or 64,step=clearance and clearance.step or 18,padding=clearance and clearance.padding or 2,
        deadline=Time()+(position-actor:GetAbsOrigin()):Length()/40+5}
    return true
end

function NpcSceneSourceSequence(actor,name)
    local s=lookup(actor)
    if not s or type(actor:GetGraphParameter("source_scene_clip"))~="number" then return false end
    local index
    if name then
        for character,entry in pairs(sourceCast.characters) do
            if actor:GetModelName():lower()==entry.model:lower() then
                index=(require("asylum_data/"..character).sceneBindings or {})[name]
                break
            end
        end
        if index==nil then return false end
    else index=0 end
    s.sourceSequence=name
    actor:SetGraphParameterEnum("source_scene_clip",index)
    return true
end
