----------------------------------------------------------------------------------------------------
-- Example script for a character's self-control in HL:A Workshop sample content
-- This script makes the character 'therese_dance' move to dance spots when it enters an Idle state.
----------------------------------------------------------------------------------------------------

local flRepathTime = 1.0            -- (unused, reserved for future repath logic)

-- The last game time a new path was created
local flLastPathTime = 0.0          -- (unused, reserved for future repath logic)

-- The closest that the entity should get to the target
local flMinPlayerDist = 1

-- The farthest the entity should get to the player
local flMaxPlayerDist = 250         -- (unused, reserved for future use)

-- The maximum distance away from the navigation goal that a path can be considered successful
local flNavGoalTolerance = 250


--=============================
-- Spawn is called by the engine whenever a new instance of an entity is created.
-- Any setup code specific to this entity can go here
--=============================
function Spawn()
    -- We don't need a think function because we're not constantly checking for conditions.
end

--=============================
-- Activate is called by the engine after Spawn() and, if Spawn() occurred
-- during a map's initial load, after all other entities have been spawned too.
-- Any setup code that requires interacting with other entities should go here
--=============================
function Activate()
    -- Register a function to receive callbacks from the AnimGraph of this entity
    -- This is called directly on 'thisEntity' because it inherits from CBaseAnimating.
    thisEntity:RegisterAnimTagListener(AnimTagListener)
end

--=============================
-- Callback function for AnimGraph Tag events.
-- This is where you get notified when an AnimTag fires in the AnimGraph.
-- We are only interested in the "Idle" tag to start our patrol.
--=============================
function AnimTagListener(sTagName, nStatus)
    -- Check if the 'Idle' tag fired
    if sTagName == "Idle" and nStatus == 1 then
        -- The character has entered or is currently in the Idle state.
        -- This is a good time to start our patrol logic after a delay.

        print("Character entered Idle state. Starting patrol sequence...")

        -- Use SetContextThink to call MoveToNextSpot() after 3 seconds.
        -- A negative value for 'delay' means "call this function in X seconds".
        thisEntity:SetContextThink("MoveToNextSpot", MoveToNextSpot, 3.0)
    end
end

--=============================
-- Function to move to the next target spot in the patrol list
--=============================
function MoveToNextSpot()
    -- Find all dance spots within a radius of our current position
    local nearbySpots = Entities:FindAllByNameWithin("iplace_*", thisEntity:GetAbsOrigin(), 1000)

    if #nearbySpots == 0 then
        print("No dance spots found within 1000 units.")

        -- If no spots are near, go back to idle and try again later
        return nil
    end

    -- Loop through the nearby spots to find one that is not already close
    for i, spot in ipairs(nearbySpots) do
        local dist = (spot:GetAbsOrigin() - thisEntity:GetAbsOrigin()):Length()

        -- If we are more than 5 units away from a dance spot, it's a valid target.
        if dist > 5 then
            print("Found nearby dance spot: " .. spot:GetName())

            -- Check if any npc is at this spot
            local npcs = Entities:FindAllByClassname("generic_actor")

            -- FIX: original ran this occupancy loop twice — first loop broke out but set nothing,
            -- second loop re-did the same check. Consolidated into one loop.
            local isOccupied = false
            for _, player in ipairs(npcs) do
                local playerDist = (spot:GetAbsOrigin() - player:GetAbsOrigin()):Length()
                if playerDist < 5 then
                    isOccupied = true
                    break
                end
            end

            -- If the spot is not occupied, proceed with moving to it.
            if not isOccupied then
                print("The spot is clear! Moving to " .. spot:GetName())

                -- Set the target position to this spot
                local targetPosition = spot:GetAbsOrigin()

                -- Find the vector from this entity to the target
                local vVecToTargetNorm = (spot:GetAbsOrigin() - thisEntity:GetAbsOrigin()):Normalized()

                -- Move towards the target position using pathfinding
                local bShouldRun = false -- Whether to run or walk

                local vGoalPos = spot:GetAbsOrigin() - (vVecToTargetNorm * flMinPlayerDist)

                thisEntity:NpcForceGoPosition(vGoalPos, bShouldRun, flNavGoalTolerance)

                -- Perform the action at this spot (e.g., dance, wave)
                --PerformAction()

                -- We found a valid spot, so break out of the loop
                return nil
            end
        end
    end

    -- If we get here, it means all nearby dance spots are either too close or occupied.
    print("All nearby dance spots are within 10 units or occupied. No action needed.")
    return nil
end


--=============================
-- Function to perform an action at the current spot (e.g., dance, wave)
--=============================
function PerformAction()
    -- This is where you would play a specific animation based on the spot's action.
    thisEntity:SetGraphParameter("misc_anim_clip", "dance01")

    -- FIX: timer.Simple() is a Garry's Mod function and does not exist in Source 2 VScript.
    -- Replaced with SetContextThink which is the correct Source 2 equivalent.
    -- NOTE: the original timer.Simple here was breaking the animation trigger entirely,
    -- not just the print — the whole PerformAction was non-functional before this fix.
    thisEntity:SetContextThink("PerformActionComplete", function()
        print("Action completed.")
        return nil
    end, 5.0)
end
