----------------------------------------------------------------------------------------------------
-- HL:A Lua 5.1 SAFE VERSION
----------------------------------------------------------------------------------------------------

local flMinPlayerDist = 1
local flNavGoalTolerance = 250
local bIsMoving = false


function Spawn()
    print("[Spawn] " .. thisEntity:GetName())
end


function Activate()
    print("[Activate] " .. thisEntity:GetName())
    CheckAINodesForDuplicateIDs()
    thisEntity:RegisterAnimTagListener(AnimTagListener)
end


function CheckAINodesForDuplicateIDs()

    local aNodes = {}
    local classesToCheck = { "ai_basenode", "ai_node", "npc_ai_node", "node" }

    for _, className in ipairs(classesToCheck) do
        local nodes = Entities:FindAllByClassname(className)
        for _, node in ipairs(nodes) do
            table.insert(aNodes, node)
        end
    end

    local namedNodes = Entities:FindAllByName("node_*")
    for _, node in ipairs(namedNodes) do
        table.insert(aNodes, node)
    end

    local nodeIDs = {}

    for _, node in ipairs(aNodes) do

        local nodeID = nil

        if node.GetNodeID then
            nodeID = node:GetNodeID()
        elseif node.m_iNodeID then
            nodeID = node.m_iNodeID
        elseif node.GetGraphNodeID then
            nodeID = node:GetGraphNodeID()
        end

        if nodeID then
            if nodeIDs[nodeID] then
                print("[WARNING] Duplicate nodeID: " .. nodeID)
            else
                nodeIDs[nodeID] = node
            end
        end
    end
end


function AnimTagListener(sTagName, nStatus)

    if sTagName == "Idle" and nStatus == 1 then
        thisEntity:SetContextThink("MoveToNextSpotThink", MoveToNextSpotThink, 3.0)
    end

    if sTagName == "Idle" and nStatus == 0 then
        bIsMoving = false
    end
end


function MoveToNextSpotThink()
    MoveToNextSpot()
    return nil
end


function MoveToNextSpot()

    if bIsMoving then
        return
    end

    local nearbySpots = Entities:FindAllByNameWithin(
        "iplace_*",
        thisEntity:GetAbsOrigin(),
        1000
    )

    if #nearbySpots == 0 then
        thisEntity:SetContextThink("RetryMoveThink", RetryMoveThink, 5.0)
        return
    end

    local selectedSpot = nil

    for _, spot in ipairs(nearbySpots) do

        local spotPos = spot:GetAbsOrigin()
        local distToSpot = (spotPos - thisEntity:GetAbsOrigin()):Length()

        if distToSpot > 5 then

            local allNPCs = Entities:FindAllByClassname("generic_actor")
            local isOccupied = false

            for _, npc in ipairs(allNPCs) do
                if npc ~= thisEntity then
                    local npcPos = npc:GetAbsOrigin()
                    local d = (spotPos - npcPos):Length()
                    if d < 5 then
                        isOccupied = true
                        break
                    end
                end
            end

            if not isOccupied then
                selectedSpot = spot
                break
            end
        end
    end

    if not selectedSpot then
        thisEntity:SetContextThink("RetryMoveThink", RetryMoveThink, 5.0)
        return
    end

    local targetPos = selectedSpot:GetAbsOrigin()
    local dir = (targetPos - thisEntity:GetAbsOrigin()):Normalized()
    local goalPos = targetPos - (dir * flMinPlayerDist)

    bIsMoving = true

    local result = thisEntity:NpcForceGoPosition(goalPos, false, flNavGoalTolerance)

    if result then
        thisEntity:SetContextThink("CheckArrivalThink", CheckArrivalThink, 0.5)
    else
        bIsMoving = false
        thisEntity:SetContextThink("RetryMoveThink", RetryMoveThink, 5.0)
    end
end


function RetryMoveThink()
    MoveToNextSpot()
    return nil
end


function CheckArrivalThink()
    return CheckArrival(CurrentSpot)
end


function CheckArrival(spot)

    if not spot or not spot:IsValid() then
        bIsMoving = false
        return nil
    end

    local dist = (spot:GetAbsOrigin() - thisEntity:GetAbsOrigin()):Length()

    if dist < flMinPlayerDist + 10 then
        PerformAction(spot)
        bIsMoving = false
        return nil
    end

    return 0.5
end


function PerformAction(spot)

    thisEntity:SetGraphParameter("misc_anim_clip", "dance01")

    thisEntity:SetContextThink("FinishActionThink", FinishActionThink, 5.0)
end


function FinishActionThink()
    thisEntity:SetGraphParameter("misc_anim_clip", "")
    return nil
end