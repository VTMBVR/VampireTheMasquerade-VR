----------------------------------------------------------------------------------------------------
-- Example script for entity control in HL:A Workshop sample content
----------------------------------------------------------------------------------------------------

--=============================
-- Spawn is called by the engine whenever a new instance of an entity is created.  
-- Any setup code specific to this entity can go here
--=============================
function Spawn() 
	-- Registers a function to get called each time the entity updates, or "thinks"
	thisEntity:SetContextThink(nil, MainThinkFunc, 0)
    origin = thisEntity:GetAbsOrigin()
end

--=============================
-- Activate is called by the engine after Spawn() and, if Spawn() occurred 
-- during a map's initial load, after all other entities have been spawned too.  
-- Any setup code that requires interacting with other entities should go here
--=============================
function Activate()
	-- Register a function to receive callbacks from the AnimGraph of this entity
	-- when Status Tags are emitted by the graph.  This must be called in Activate
	-- because the AnimGraph has not been loaded yet when Spawn is called
	thisEntity:RegisterAnimTagListener( AnimTagListener )

	--anim_seq = Entities:FindByName(nil,"dance_spot1")
	--print ("script activated!")
	--print("seq node: ", anim_seq)
	--if anim_seq == nil then
	--	print ("can't find sequence node!")
	--end
end

--=============================
-- Callback function for AnimGraph Tag events.  Only Status tags can be received 
-- by scripts, and the callback function must be registered with the graph before 
-- it will start receiving events.  
-- The first parameter is the string name of the tag, and the second one is its status.  
-- nStatus == 0 == Fired: The tag activated then deactivated during this update
-- nStatus == 1 == Start: The tag became active
-- nStatus == 2 == End: The tag is no longer active
--=============================
function AnimTagListener( sTagName, nStatus )
	print( " AnimTag: ", sTagName, " Status: ", nStatus )
end

--=============================
-- Script configuration parameters
--=============================
-- How long to wait between calls to create a new path. 
-- Creating a path can be expensive because it performs a lot of traces to check 
-- for collisions with other objects and characters.  So this code puts a time 
-- limit on how frequently a new path can be calculated to help prevent spamming 
-- the path system
local flRepathTime = 1.0

-- The last game time a new path was created
local flLastPathTime = 0.0

-- The closest that the entity should get to the player
local flMinPlayerDist = 100

-- The farthest the entity should get to the player
local flMaxPlayerDist = 250

-- The maximum distance away from the navigation goal that a path can be considered successful
local flNavGoalTolerance = 250

-- Whether the player should walk or run when following a path.  
-- This choice affects the target speed that is passed to the AnimGraph,
-- and how much curve the pathing system should use when creating corners.
-- The walk and run speeds of characters are defined in the Movement Settings
-- node on the model in ModelDoc
local bShouldRun = false

local anim_seq = nil

local origin = thisEntity:GetAbsOrigin()




--=============================
-- Think function for the script, called roughly every 0.1 seconds.
--=============================
function MainThinkFunc() 
	FindSequence()
	if anim_seq ~= nil then
		ent = anim_seq[1]
		EntFireByHandle(thisEntity, ent,"BeginSequence")
	-- Return the amount of time to wait before calling this function again.
	return 100
	end
	if anim_seq == nil then
		print ("can't find anim seq node", anim_seq)
		return 1
	end
end


function FindSequence() 
	origin = thisEntity:GetAbsOrigin()
	anim_seq = Entities:FindAllByNameWithin("dance_spot3",origin , 500)
	print("find sequence in radius")
	print(#anim_seq)
	if anim_seq == nil then
	print ("can't find scripted sequence!")
	end
end


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
