-- Hint node routing script for HL:A
--=====================================================================
-- This script gets all entities of class "hint_node" using FindAllByClassname.
-- It iteratively routes the entity to each hint node found, playing a custom animation while on the node.
--=====================================================================

-- Configuration variables
local flRepathTime = 1.0            -- seconds between new path calculations
local flLastPathTime = 0.0          -- last time a path was created
local flNodeDistTol = 200          -- distance tolerance to consider the node reached
local bShouldRun = false           -- walk or run speed flag for the path
local nCurrentHintIdx = 1           -- index of the current hint node in the array

-- Array that will hold all found hint nodes
local hintNodes = nil

--=============================
-- Spawn is called by the engine whenever a new instance of an entity is created.
-- Any setup code specific to this entity can go here.
--=============================
function Spawn() 
    -- Register a function to get called each time the entity updates, or "thinks"
    thisEntity:SetContextThink(nil, NodeRouteThinkFunc, 0)
end

--=============================
-- Main think function for the script, called roughly every 0.1 seconds.
--=============================
function NodeRouteThinkFunc()
    -- Get local player if hintNodes array not yet populated
    if hintNodes == nil then
       h1 = GetAllEntByClassName("ai_hint")
       
       h2 = GetEntByClassName("ai_hint")
       h3 = GetEntByName("dance_spot")
       hintNodes = h1
    end


--[[
    if h1 ~=0 then
        hintNodes = h1
        print ("h1 case")
        print(hintNodes)
    end
    if h2 ~=0 then
        hintNodes = h2
        print ("h2 case")
        print(hintNodes)
    end
    if h3 ~=0 then 
        hintNodes = h3
        print("h3 case")
        print(hintNodes)
    end
]]



    -- If we still have no nodes, nothing to do
    if hintNodes == nil then
        print("no hints found")
        print(hintNodes)
        return 0.1

    end

    -- Get the current hint node handle

    local currHint = hintNodes[nCurrentHintIdx]
   --local currHint = hintNodes.Next(nCurrentHintIdx)
    --local check_first_element = hintNodes.First()
    print ("check: ", currHint)
    --print("second check:", currHint[nCurrentHintIdx])

    print("debug_ai: currHint")
    print("debug_ai: ", currHint)
    --local hint_name = Entity:GetName(currHint)
    --print("model name: ", hint_name)
    --local ctx = currHint.GetContext()
    --print("context: ", ctx)
    -- Set look target on the AnimGraph to be the position of the hint node
    thisEntity:SetGraphLookTarget(currHint:EyePosition())

    -- Calculate distance from entity to current hint node
    local flDistToNode = ( currHint:GetAbsOrigin() - thisEntity:GetAbsOrigin() ):Length()

    -- If the entity is too close to the node and still has an active path, cancel it
    if ( flDistToNode < flNodeDistTol ) and ( thisEntity:NpcNavGoalActive() ) then
        thisEntity:NpcNavClearGoal()
    end

    -- If the entity is too far from the node...
    if ( flDistToNode > flNodeDistTol ) then
        -- If the entity does not already have a path
        if ( not thisEntity:NpcNavGoalActive() ) then
            -- Create a path that ends near the hint node
            CreatePathToHintNode(currHint)
        else
            local vCurrentGoalPos = thisEntity:NpcNavGetGoalPosition()
            local flDistNodeToGoal = ( currHint:GetAbsOrigin() - vCurrentGoalPos ):Length()
            local flTimeSincePath = Time() - flLastPathTime
            -- If the node has moved away from the path goal and we haven't changed the path recently
            if ( flDistNodeToGoal > flNodeDistTol ) and ( flTimeSincePath > flRepathTime ) then
                CreatePathToHintNode(currHint)
            end
        end
    end

    -- Advance index for next tick, wrap around when reaching end of array
nCurrentHintIdx = nCurrentHintIdx % #hintNodes + 1

-- Play animation while on target
-- TODO: this is slop.
thisEntity:SetSequence("dance01")

    return 0.1
end

--=============================
-- Create a path to the current hint node.
--=============================
function CreatePathToHintNode(node)
    -- Find vector from entity to hint node
    local vVecToNode = ( node:GetAbsOrigin() - thisEntity:GetAbsOrigin() ):Normalized()
    -- Position along that vector at flNodeDistTol distance
    local vGoalPos = node:GetAbsOrigin() + ( vVecToNode * flNodeDistTol )
    -- Create a path to that goal; the path gets sent to the AnimGraph, and its up to the graph to make the entity walk along it
    thisEntity:NpcForceGoPosition(vGoalPos, bShouldRun, flRepathTime)
    print("npc go to position: ", vGoalPos)
    flLastPathTime = Time()
end



-- Getters 
function GetAllEntByClassName(classname)
    hintNodes = nil
    if hintNodes == nil then
        hintNodes = Entities:FindAllByClassname(classname)
        print("hint nodes:",hintNodes)
        return hintNodes
    end

    -- If we still have no nodes, nothing to do
    if hintNodes == nil then
        print("no hints by FindAllByClassName")
        return 0
    end
end

function GetEntByClassName(classname)
        h2 = Entities:FindByClassname(nil,classname)
        print ("h2: ", h2)
        return h2
end

function GetEntByName(name)
        h3 = Entities:FindByName(nil,name)
        print ("h3: ", h3)
        return h3
end