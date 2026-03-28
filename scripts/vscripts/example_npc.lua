----------------------------------------------------------------------------------------------------
-- Example script for a character's self-control in HL:A Workshop sample content
-- This script makes the character 'therese_dance' move to dance spots when it enters an Idle state.
----------------------------------------------------------------------------------------------------

--=============================
-- Spawn is called by the engine whenever a new instance of an entity is created.  
-- Any setup code specific to this entity can go here
--=============================
function Spawn() 
    -- Registers a function to get called each time the entity updates, or "thinks"
    thisEntity:SetContextThink(nil, MainThinkFunc, 0)
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
        
        -- Start a timer that will call MoveToNextSpot() after 3 seconds.
        -- This gives the AnimGraph time to fully enter the 'Idle' state.
        timer.Simple(3.0, function()
            MoveToNextSpot()
        end)
    end
end

--=============================
-- Think function for the script, called roughly every 0.1 seconds.
-- This function will be called repeatedly by the engine.
-- We only need it to handle movement and action completion.
--=============================
function MainThinkFunc() 
    -- Determine if we are moving towards a target position
    local dist = (targetPosition - thisEntity:GetAbsOrigin()):Length()
    
    -- If we have a target position, check if we've reached it
    if targetPosition then
        if dist < 10.0 then -- If within 10 units of the spot
            print("Reached dance spot: " .. danceSpots[currentSpotIndex].GetName())
            
            -- Perform the action at this spot (e.g., dance, wave)
            PerformAction()
            
            -- Reset target position to prevent moving again
            targetPosition = nil
            
            -- We can also reset the current spot index if needed.
            -- For now, we'll just let it loop back on its own.
        end
    end

    -- Return a time to wait before calling this function again.
    return 0.1
end

--=============================
-- Function to move to the next target spot in the patrol list
--=============================
function MoveToNextSpot()
    -- Find all dance spots within a radius of our current position
    local nearbySpots = Entities:FindAllByNameWithin("dance_spot_*", thisEntity:GetAbsOrigin(), 100.0)
    
    if #nearbySpots == 0 then
        print("No dance spots found within 100 units.")
        
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
            targetPosition = spot:GetAbsOrigin()
            
            -- Move towards the target position using pathfinding
            local bShouldRun = false -- Whether to run or walk
            local flNavGoalTolerance = 250.0 -- How close we need to be to consider it a success
            
            thisEntity:NpcForceGoPosition(targetPosition, bShouldRun, flNavGoalTolerance)
            
            -- We found a valid spot, so break out of the loop
            return
        end
    end

    -- If we get here, it means all nearby dance spots are already close.
    print("All nearby dance spots are within 10 units. No action needed.")
end

--=============================
-- Function to perform an action at the current spot (e.g., dance, wave)
--=============================
function PerformAction()
    -- This is where you would play a specific animation based on the spot's action.
    -- For example:
    thisEntity:SetGraphParameter("misc_anim_clip", "dance01")
    
    -- Set a flag to indicate the action is complete after a short delay.
    -- In a real game, you'd use an AnimTag listener for this.
    timer.Simple(5.0, function() 
        print("Action completed.")
    end)
end
