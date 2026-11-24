-- Original dialogue inventory plus optional physical copies for VR inspection.
-- The inventory change happens once in the dialogue interpreter. Picking up or
-- dropping a copy never grants the item again or blocks a quest prerequisite.
local catalog=require("npc_source_item_data")
local M={}
local host,story
local queued={}
local actors={}
local bound={}
local enabled=false
local PREFIX="vtmbvr_asylum_item_"
local function valid(entity) return entity and not entity:IsNull() end
local function attr(name,value)
    if value~=nil then host:Attribute_SetIntValue("asylum_item_"..name,value) end
    return host:Attribute_GetIntValue("asylum_item_"..name,0)
end
local function copies(name)
    local result={}
    for _,entity in ipairs(Entities:FindAllByName(PREFIX..name)) do
        if valid(entity) and entity:Attribute_GetIntValue("vtmbvr_quest_item",0)>0 then result[#result+1]=entity end
    end
    return result
end
local function remove(name)
    for _,entity in ipairs(copies(name)) do UTIL_Remove(entity) end
end
local function bind(entity,index)
    if bound[index]==entity then return end
    bound[index]=entity
    local callback="AsylumItemPicked"..index
    host:GetPrivateScriptScope()[callback]=function()
        if enabled and valid(entity) then entity:Attribute_SetIntValue("vtmbvr_quest_item_picked",1) end
    end
    entity:RedirectOutput("OnPlayerPickup",callback,host)
end
local function position(actor,item)
    local source=valid(actor) and actor or Entities:GetLocalPlayer()
    if not valid(source) then return nil end
    local origin=source:GetAbsOrigin()
    local forward=source:GetForwardVector()
    local side=Vector(-forward.y,forward.x,0)
    local radius=math.max(2,item.radius)
    for _,distance in ipairs({30,42}) do
        for _,offset in ipairs({0,16,-16}) do
            local point=origin+forward*distance+side*offset+Vector(0,0,44)
            local trace={startpos=point,endpos=point,min=Vector(-radius,-radius,-radius),
                max=Vector(radius,radius,radius),ignore=source}
            TraceHull(trace)
            if not trace.hit and not trace.startsolid then return point,source:GetAngles().y end
        end
    end
    return nil
end
local function spawn(name,index,actor)
    local item=catalog.items[name]
    local existing=copies(name)
    if #existing>0 then return true end
    local origin,yaw=position(actor,item)
    if not origin then return false end
    local entity=SpawnEntityFromTableSynchronous("prop_physics",{
        targetname=PREFIX..name,model=item.model,origin=origin,angles=QAngle(0,yaw,0),
        massScale=1.0,physdamagescale=0.0,health=0,
        carrytype_override="CARRY_TYPE_1H_RIGID",CanDepositInItemHolder=true})
    if not valid(entity) then return false end
    entity:Attribute_SetIntValue("vtmbvr_quest_item",index)
    if entity.SetMass then entity:SetMass(item.mass) end
    bind(entity,index)
    print("[ASYLUM_ITEM] GIVEN item="..name)
    return true
end
function M.Tick()
    if not enabled then return nil end
    for index,name in ipairs(catalog.order) do
        local quantity=story.Get("i",name,0)
        local existing=copies(name)
        if quantity<=0 then
            if #existing>0 then remove(name) end
            queued[name]=nil;actors[name]=nil;attr(name,0)
        else
            -- Save/load or scope recreation can leave an already delivered
            -- copy in the map. Rebind it, never spawn a duplicate.
            for i,entity in ipairs(existing) do
                if i==1 then bind(entity,index) else UTIL_Remove(entity) end
            end
            if queued[name] and attr(name)==1 and spawn(name,index,actors[name]) then
                queued[name]=nil;actors[name]=nil;attr(name,0)
            end
        end
    end
    return .5
end
function M.Handle(session,event)
    if not enabled then return false end
    local name=event.args and event.args[1]
    if not catalog.items[name] then return false end
    if event.name=="pc.GiveItem" then
        attr(name,1);actors[name]=session.actor
        -- Flush after closing the conversation, so an item cannot appear
        -- inside the active world dialogue panel or cover an answer target.
        return true
    elseif event.name=="pc.RemoveItem" then
        if story.Get("i",name,0)<=0 then remove(name);queued[name]=nil;actors[name]=nil;attr(name,0) end
        return true
    elseif event.name=="pc.GiveAmmo" then
        return true -- Ammunition belongs to the imported weapon inventory.
    end
    return false
end
function M.Flush(session)
    if not enabled then return end
    for _,name in ipairs(catalog.order) do
        if attr(name)==1 then queued[name]=true;actors[name]=actors[name] or session and session.actor end
    end
    M.Tick()
end
function M.Start(owner,state,reset)
    host=owner;story=state;enabled=true;queued={};actors={};bound={}
    for _,name in ipairs(catalog.order) do
        if reset then remove(name);attr(name,0)
        elseif attr(name)==1 then queued[name]=true end
    end
    host:SetContextThink("AsylumQuestItems",M.Tick,.5)
end
function M.Stop()
    if not host then return end
    enabled=false;host:SetContextThink("AsylumQuestItems",nil,0)
    for index,name in ipairs(catalog.order) do
        if #copies(name)>0 and story.Get("i",name,0)>0 then attr(name,1) end
        remove(name)
        host:GetPrivateScriptScope()["AsylumItemPicked"..index]=function() end
    end
    queued={};actors={};bound={}
end
function M.Status()
    local result={}
    for _,name in ipairs(catalog.order) do
        result[name]={quantity=story.Get("i",name,0),physical=#copies(name),pending=attr(name)==1}
    end
    return result
end
return M
