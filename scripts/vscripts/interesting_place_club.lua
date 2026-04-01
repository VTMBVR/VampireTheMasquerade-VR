----------------------------------------------------------------------------------------------------
-- Super-debug script: logs every variable and condition
----------------------------------------------------------------------------------------------------

function Spawn() end

function Activate()
    thisEntity:RegisterAnimTagListener(AnimTagListener)
    print("[DEBUG] ========== NPC ACTIVATED ==========")
    print("[DEBUG] NPC name: " .. thisEntity:GetName())
    print("[DEBUG] NPC class: " .. thisEntity:GetClassname())
    print("[DEBUG] NPC position: " .. tostring(thisEntity:GetAbsOrigin()))
    
    -- AI status
    if thisEntity.IsAIEnabled then
        print("[DEBUG] AI enabled: " .. tostring(thisEntity:IsAIEnabled()))
    else
        print("[DEBUG] IsAIEnabled method not available.")
    end
    if thisEntity.SetAIEnabled then
        print("[DEBUG] SetAIEnabled method exists.")
    end
    
    -- Movement method dump
    print("[DEBUG] --- Movement method dump ---")
    local foundMethods = {}
    for k, v in pairs(thisEntity) do
        if type(v) == "function" then
            local name = string.lower(k)
            if name:find("move") or name:find("go") or name:find("task") or name:find("position") or name:find("walk") or name:find("run") then
                table.insert(foundMethods, k)
                print("[DEBUG] Found method: " .. k)
            end
        end
    end
    if #foundMethods == 0 then
        print("[DEBUG] No movement-related methods found!")
    end
    
    print("[DEBUG] NpcForceGoPosition exists: " .. tostring(thisEntity.NpcForceGoPosition ~= nil))
    print("[DEBUG] SetGoalPosition exists: " .. tostring(thisEntity.SetGoalPosition ~= nil))
    print("[DEBUG] AddTask exists: " .. tostring(thisEntity.AddTask ~= nil))
    print("[DEBUG] MoveToPosition exists: " .. tostring(thisEntity.MoveToPosition ~= nil))
    print("[DEBUG] --- End method dump ---")
    
    -- NavMesh check
    if NavMesh then
        print("[DEBUG] NavMesh global exists.")
        if NavMesh.IsPointOnNavMesh then
            local onNav = NavMesh.IsPointOnNavMesh(thisEntity:GetAbsOrigin())
            print("[DEBUG] NPC on nav mesh: " .. tostring(onNav))
        else
            print("[DEBUG] NavMesh.IsPointOnNavMesh not available.")
        end
    else
        print("[DEBUG] NavMesh global not available.")
    end
    
    -- Movement type
    if thisEntity.GetMoveType then
        print("[DEBUG] Move type: " .. tostring(thisEntity:GetMoveType()))
    end
    if thisEntity.GetMaxSpeed then
        print("[DEBUG] Max speed: " .. tostring(thisEntity:GetMaxSpeed()))
    end
    if thisEntity.GetVelocity then
        print("[DEBUG] Current velocity: " .. tostring(thisEntity:GetVelocity()))
    end
    
    print("[DEBUG] ========== END ACTIVATE ==========")
end

function AnimTagListener(sTagName, nStatus)
    print("[DEBUG] AnimTagListener: tag=" .. sTagName .. ", status=" .. nStatus)
    if sTagName == "Idle" and nStatus == 1 then
        print("[DEBUG] NPC entered Idle state. Starting patrol...")
        thisEntity:SetContextThink(nil, MoveToNextSpot, 0.1)
    end
end

function MoveToNextSpot()
    print("[DEBUG] ========== MoveToNextSpot called ==========")
    local myPos = thisEntity:GetAbsOrigin()
    print("[DEBUG] myPos = " .. tostring(myPos))
    
    -- Find spots
    local nearbySpots = Entities:FindAllByNameWithin("iplace_*", myPos, 1000)
    print("[DEBUG] #nearbySpots = " .. #nearbySpots)
    for i, spot in ipairs(nearbySpots) do
        print("[DEBUG] Spot " .. i .. ": " .. spot:GetName() .. " at " .. tostring(spot:GetAbsOrigin()))
    end
    
    if #nearbySpots == 0 then
        print("[DEBUG] No spots found, returning 1.0")
        return 1.0
    end

    local npcs = Entities:FindAllByClassname("generic_actor")
    print("[DEBUG] #npcs = " .. #npcs)
    
    for _, spot in ipairs(nearbySpots) do
        local spotPos = spot:GetAbsOrigin()
        local dist = (spotPos - myPos):Length()
        print("[DEBUG] Checking spot " .. spot:GetName() .. ", dist=" .. dist)
        
        if dist > 10.0 then
            print("[DEBUG] Spot is far enough (dist > 10).")
            local occupied = false
            for _, other in ipairs(npcs) do
                if other ~= thisEntity then
                    local otherPos = other:GetAbsOrigin()
                    local otherDist = (spotPos - otherPos):Length()
                    print("[DEBUG]   Other NPC " .. other:GetName() .. " distance to spot: " .. otherDist)
                    if otherDist < 50.0 then
                        occupied = true
                        print("[DEBUG]   -> Spot occupied by " .. other:GetName())
                        break
                    end
                end
            end
            if not occupied then
                print("[DEBUG] Spot is free. Attempting to move to " .. spot:GetName() .. " at " .. tostring(spotPos))
                
                -- Try methods in order
                local success = false
                if thisEntity.MoveToPosition then
                    print("[DEBUG] Trying MoveToPosition")
                    thisEntity:MoveToPosition(spotPos)
                    success = true
                    print("[DEBUG] MoveToPosition called")
                elseif thisEntity.SetGoalPosition then
                    print("[DEBUG] Trying SetGoalPosition")
                    thisEntity:SetGoalPosition(spotPos)
                    success = true
                    print("[DEBUG] SetGoalPosition called")
                elseif thisEntity.AddTask then
                    print("[DEBUG] Trying AddTask")
                    thisEntity:AddTask("MoveTo", { target = spotPos, tolerance = 50.0 })
                    success = true
                    print("[DEBUG] AddTask called")
                elseif thisEntity.NpcForceGoPosition then
                    print("[DEBUG] Trying NpcForceGoPosition")
                    local result = thisEntity:NpcForceGoPosition(spotPos, false, 50.0)
                    print("[DEBUG] NpcForceGoPosition returned: " .. tostring(result))
                    success = true
                end
                
                if not success then
                    print("[ERROR] No movement method worked!")
                    return 1.0
                end
                
                -- Check arrival
                print("[DEBUG] Setting up arrival check")
                thisEntity:SetContextThink("CheckArrival", function()
                    local curPos = thisEntity:GetAbsOrigin()
                    local d = (curPos - spotPos):Length()
                    print("[DEBUG] Arrival check: distance = " .. d)
                    if d <= 50.0 then
                        print("[DEBUG] Arrived at " .. spot:GetName())
                        PerformAction()
                        return nil
                    end
                    return 0.5
                end, 0.5)
                print("[DEBUG] Arrival check scheduled")
                return nil
            else
                print("[DEBUG] Spot occupied, skipping")
            end
        else
            print("[DEBUG] Spot too close (dist <= 10), skipping")
        end
    end
    
    print("[DEBUG] No suitable spot found, returning 1.0")
    return 1.0
end

function PerformAction()
    print("[DEBUG] Dancing...")
    thisEntity:SetGraphParameter("misc_anim_clip", "dance01")
    thisEntity:SetContextThink("FinishAction", function()
        print("[DEBUG] Dance finished.")
        thisEntity:SetContextThink(nil, MoveToNextSpot, 0.1)
        return nil
    end, 5.0)
end
