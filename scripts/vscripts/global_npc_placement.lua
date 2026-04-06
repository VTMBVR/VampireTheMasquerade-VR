----------------------------------------------------------------------------------------------------
-- Global NPC Placement Script
-- This script finds all NPCs and interesting places on the map and forces NPCs to move to their positions.
----------------------------------------------------------------------------------------------------

--=============================
-- Spawn is called by the engine whenever a new instance of an entity is created.  
-- For global scripts, this might be called for the script's own entity or during initialization
--=============================
function Spawn() 
    -- Register a function to run once all entities are activated
    -- This will happen after Activate() on all entities in the map
    print("Global NPC Placement Script initialized.")
    
    -- Schedule our main setup function to run after everything is loaded
    -- Using a small delay to ensure all other entities have been spawned and activated
    timer.Simple(1.0, InitializeNPCPlacement)
end

--=============================
-- Activate is called by the engine after Spawn() and, if Spawn() occurred 
-- during a map's initial load, after all other entities have been spawned too.  
-- Any setup code that requires interacting with other entities should go here
--=============================
function Activate()
    -- For global scripts, we might want to do some initialization here as well
    print("Global NPC Placement Script activated.")
end

--=============================
-- Main function to initialize NPC placement
-- This will be called after all entities have been loaded and activated
--=============================
function InitializeNPCPlacement()
    print("Starting global NPC placement...")
    
    -- Get all NPCs in the map (generic_actor class)
    local npcs = Entities:FindAllByClassname("generic_actor")
    print("Found " .. #npcs .. " NPCs.")
    
    -- Get all interesting places (entities with names starting with "iplace_")
    local interestingPlaces = Entities:FindAllByName("iplace_*")
    print("Found " .. #interestingPlaces .. " interesting places.")
    
    -- If we have both NPCs and interesting places, assign them
    if #npcs > 0 and #interestingPlaces > 0 then
        AssignNPCsToPlaces(npcs, interestingPlaces)
    else
        print("Not enough entities to proceed with NPC placement.")
    end
end

--=============================
-- Function to assign NPCs to interesting places
--=============================
function AssignNPCsToPlaces(npcs, places)
    print("Assigning " .. #npcs .. " NPCs to " .. #places .. " interesting places...")
    
    -- Create a simple assignment system by cycling through the places for each NPC
    local placeIndex = 1
    
    -- Loop through all NPCs and assign them to available places
    for i, npc in ipairs(npcs) do
        -- Skip if this entity is not a valid NPC or already has an interesting place assigned
        if npc:GetClassname() == "generic_actor" then
            
            -- Get the current position of this NPC (we'll use it for reference)
            local npcPos = npc:GetAbsOrigin()
            
            -- Check if we've run out of places to assign - cycle back to beginning
            if placeIndex > #places then
                placeIndex = 1
            end
            
            -- Get the current place to assign
            local targetPlace = places[placeIndex]
            
            -- Check if this place is already occupied by another NPC or player
            -- This is a basic check - you might want to enhance this based on your needs
            local isOccupied = IsPlaceOccupied(targetPlace, npcPos)
            
            if not isOccupied then
                print("Assigning NPC " .. npc:GetName() .. " to place: " .. targetPlace:GetName())
                
                -- Move the NPC to the target place
                MoveNPCToPlace(npc, targetPlace)
                
                -- Increment for next assignment (round-robin style)
                placeIndex = placeIndex + 1
            else
                print("Place " .. targetPlace:GetName() .. " is occupied. Skipping...")
            end
        end
    end
    
    print("NPC placement complete.")
end

--=============================
-- Check if a place is already occupied by another NPC or player
--=============================
function IsPlaceOccupied(place, npcPosition)
    -- Basic check: if there's an NPC within 10 units of the target position,
    -- assume it might be occupying the spot
    
    local nearbyNPCs = Entities:FindAllByClassnameWithin("generic_actor", place:GetAbsOrigin(), 250)
    
    for _, npc in ipairs(nearbyNPCs) do
        local dist = (npc:GetAbsOrigin() - place:GetAbsOrigin()):Length()
        if dist < 10 then -- If within 10 units, consider it occupied
            return true
        end
    end
    
    return false
end

--=============================
-- Move an NPC to a specific place using pathfinding
--=============================
function MoveNPCToPlace(npc, place)
    local targetPosition = place:GetAbsOrigin()
    
    -- Print information about the move
    print("Moving NPC " .. npc:GetName() .. " to position: (" ..
          math.floor(targetPosition.x) .. ", " .. math.floor(targetPosition.y) .. ", " .. math.floor(targetPosition.z) .. ")")
    
    -- Use pathfinding with a reasonable goal tolerance
    local bShouldRun = false -- Whether to run or walk (can be changed as needed)
    local flNavGoalTolerance = 100.0 -- How close we need to be to consider it a success
    
    npc:NpcForceGoPosition(targetPosition, bShouldRun, flNavGoalTolerance)
    
    -- Optionally set the NPC's animation or state
    -- For example:
    -- npc:SetGraphParameter("misc_anim_clip", "idle")
end

--=============================
-- Optional: Function to reassign NPCs if needed (can be called externally)
--=============================
function ReassignNPCs()
    print("Reassigning all NPCs...")
    
    local npcs = Entities:FindAllByClassname("generic_actor")
    local interestingPlaces = Entities:FindAllByName("iplace_*")
    
    if #npcs > 0 and #interestingPlaces > 0 then
        AssignNPCsToPlaces(npcs, interestingPlaces)
    else
        print("Not enough entities to reassign NPCs.")
    end
end

--=============================
-- Optional: Function to list all assigned NPCs and their places
--=============================
function ListNPCAssignments()
    print("Listing NPC assignments...")
    
    local npcs = Entities:FindAllByClassname("generic_actor")
    
    for i, npc in ipairs(npcs) do
        if npc:GetName() then
            print("NPC: " .. npc:GetName())
        end
    end
    
    local places = Entities:FindAllByName("iplace_*")
    
    for i, place in ipairs(places) do
        if place:GetName() then
            print("Place: " .. place:GetName())
        end
    end
end

--=============================
-- Additional initialization function that can be called externally if needed
--=============================
function SetupGlobalNPCPlacement()
    InitializeNPCPlacement()
end

-- Register the global function for external access
_G.GlobalNPCPlacement = {
    AssignNPCsToPlaces = AssignNPCsToPlaces,
    MoveNPCToPlace = MoveNPCToPlace,
    IsPlaceOccupied = IsPlaceOccupied,
    ReassignNPCs = ReassignNPCs,
    ListNPCAssignments = ListNPCAssignments,
    SetupGlobalNPCPlacement = SetupGlobalNPCPlacement
}

print("Global NPC Placement module loaded successfully.")