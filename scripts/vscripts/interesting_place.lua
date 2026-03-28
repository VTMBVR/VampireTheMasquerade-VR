----------------------------------------------------------------------------------------------------
-- Example script for a character's self-control in HL:A Workshop sample content
-- This script makes the character 'therese_dance' move to dance spots when it enters an Idle state.
----------------------------------------------------------------------------------------------------

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
    thisEntity:RegisterAnimTagListener( AnimTagListener )
end

--=============================
-- Callback function for AnimGraph Tag events.
-- This is where you get notified when an AnimTag fires in the AnimGraph.
-- We are only interested in the "Idle" tag to start our patrol.
--=============================
function AnimTagListener( sTagName, nStatus )
    -- Check if the 'Idle' tag fired
    if sTagName == "Idle" and nStatus == 1 then
        -- The character has entered or is currently in the Idle state.
        -- This is a good time to start our patrol logic after a delay.
        
        print("Character entered Idle state. Starting patrol sequence...")
        
        -- Use SetContextThink to call MoveToNextSpot() after 3 seconds.
        -- A negative value for 'delay' means "call this function in X seconds".
        thisEntity:SetContextThink(nil, MoveToNextSpot, 3.0)
    end
end

--=============================
-- Function to move to the next target spot in the patrol list
--=============================
function MoveToNextSpot()
    -- Find all dance spots within a radius of our current position
    local nearbySpots = Entities:FindAllByNameWithin("dance_spot*", thisEntity:GetAbsOrigin(),1000)
    print(nearbySpots)
    
    if #nearbySpots == 0 then
        print("No dance spots found within 1000 units.")
        
        -- If no spots are near, go back to idle and try again later
        return
    end

    -- Loop through the nearby spots to find one that is not already close
    for i, spot in ipairs(nearbySpots) do
        local dist = (spot:GetAbsOrigin() - thisEntity:GetAbsOrigin()):Length()
        
        -- If we are more than 10 units away from a dance spot, it's a valid target.
        if dist > 10.0 then
            print("Found nearby dance spot: " .. spot:GetName())
            
            -- Set the target position to this spot
            local targetPosition = spot:GetAbsOrigin()
            
            -- Move towards the target position using pathfinding
            local bShouldRun = false -- Whether to run or walk
            local flNavGoalTolerance = 250.0 -- How close we need to be to consider it a success
            
            thisEntity:NpcForceGoPosition(targetPosition, bShouldRun, flNavGoalTolerance)
            
            -- Perform the action at this spot (e.g., dance, wave)
            --PerformAction()
            
            -- We found a valid spot, so break out of the loop
            return
        end
    end

    -- If we get here, it means all nearby dance spots are already close.
    print("All nearby dance spots are within 1000 units. No action needed.")
end

--=============================
-- Function to perform an action at the current spot (e.g., dance, wave)
--=============================
function PerformAction()
    -- This is where you would play a specific animation based on the spot's action.
    -- For example:
    thisEntity:SetGraphParameter("misc_anim_clip", "dance01")
    
    -- Set a flag to indicate the action is complete after a short delay.
    timer.Simple(5.0, function() 
        print("Action completed.")
    end)
end
