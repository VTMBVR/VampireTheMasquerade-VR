----------------------------------------------------------------------------------------------------
-- Example script for a character's self-control in HL:A Workshop sample content
-- This script makes the character 'therese_dance' move to all dance spots and perform actions.
----------------------------------------------------------------------------------------------------

--=============================
-- Define State Constants
-- These are used to track the NPC's current state.
--=============================
local STATE_IDLE = 0
local STATE_MOVING_TO_SPOT = 1
local STATE_PERFORMING_ACTION = 2

--=============================
-- Variables for the script
--=============================
local currentState = STATE_IDLE -- Current state of the patrol
local danceSpots = {} -- Array to hold all found dance spots
local currentSpotIndex = 1 -- Index of the next spot to go to in the danceSpots table
local targetPosition = nil -- The position we are moving towards

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
    
    -- Start the patrol sequence
    MainThinkFunc()
end

--=============================
-- Callback function for AnimGraph Tag events.
-- This is where you get notified when an AnimTag fires in the AnimGraph.
--=============================
function AnimTagListener( sTagName, nStatus )
    print( "AnimTag: ", sTagName, " Status: ", nStatus )

    -- Check if the 'dance_complete' tag fired
    if sTagName == "dance_complete" and nStatus == 2 then
        -- The dance animation has finished.
        -- Now we can move to the next spot in our patrol sequence.
        MoveToNextSpot()
    end
end

--=============================
-- Think function for the script, called roughly every 0.1 seconds.
-- This function will be called repeatedly by the engine.
--=============================
function MainThinkFunc() 
    -- Determine the current state of the NPC
    local currentState = GetState()

    -- Handle each state
    if currentState == STATE_IDLE then
        -- Start moving to a dance spot
        MoveToNextSpot()
        
    elseif currentState == STATE_MOVING_TO_SPOT then
        -- Check if we have reached the target position
        local dist = (targetPosition - thisEntity:GetAbsOrigin()):Length()
        
        if dist < 10.0 then -- If within 10 units of the spot
            print("Reached spot: " .. danceSpots[currentSpotIndex].GetName())
            
            -- Move to the next state
            SetState(STATE_PERFORMING_ACTION)
            
            -- Perform the action at this spot (e.g., dance, wave)
            PerformAction()
        end
        
    elseif currentState == STATE_PERFORMING_ACTION then
        -- Check if the current action is complete
        -- This is a simplified check. In reality, you'd use an AnimTag listener.
        if actionComplete then
            print("Action at " .. danceSpots[currentSpotIndex].GetName() .. " completed.")
            
            -- Move to the next spot in the sequence
            MoveToNextSpot()
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
        SetState(STATE_IDLE)
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
            
            -- Set the state to moving
            SetState(STATE_MOVING_TO_SPOT)
            
            -- We found a valid spot, so break out of the loop
            return
        end
    end

    -- If we get here, it means all nearby dance spots are already close.
    print("All nearby dance spots are within 10 units. No action needed.")
    
    -- Go back to idle and try again later
    SetState(STATE_IDLE)
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
    actionComplete = false
    timer.Simple(5.0, function() 
        actionComplete = true 
    end)
end

--=============================
-- Function to get the current state of the NPC
--=============================
function GetState()
    return currentState
end

--=============================
-- Function to set the current state of the NPC
--=============================
function SetState(newState)
    currentState = newState
end
