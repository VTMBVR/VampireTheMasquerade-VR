----------------------------------------------------------------------------------------------------
-- Example script for a character's self-control in HL:A Workshop sample content
-- This script makes the character 'therese_dance' move to the trigger position and then dance.
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
	thisEntity:RegisterAnimTagListener( AnimTagListener )
	MainThinkFunc()
end

--=============================
-- Callback function for AnimGraph Tag events.
--=============================
function AnimTagListener( sTagName, nStatus )
	print( "AnimTag: ", sTagName, " Status: ", nStatus )
end

--=============================
-- Think function for the script, called roughly every 0.1 seconds.
-- This function will be called repeatedly by the engine.
--=============================
function MainThinkFunc() 
	-- Find the trigger entity named 'dance_trigger'
	danceTrigger = Entities:FindByName(nil,"dance_spot4")
	
	if not danceTrigger then
		print("Error: Dance trigger 'dance_spot4' not found.")
		return 0.1 -- Return time to wait before calling again
	end

	-- Get the position of the trigger
	local targetPos = danceTrigger:GetAbsOrigin()
	print("target:",targetPos)
	
	-- Calculate the distance between the character and the trigger
	local dist = ( targetPos - thisEntity:GetAbsOrigin() ):Length()
 --	local dist = thisEntity:GetAbsOrigin():DistTo(targetPos)
	
	-- If the character is far from the trigger, move towards it.
	if dist > 10 then -- Move if more than 10 units away

		local vVecToPlayerNorm = ( targetPos - thisEntity:GetAbsOrigin() ):Normalized()
			-- Find the vector from this entity to the player
	
	print("vector is: ",vVecToPlayerNorm)

	-- Then find the point along that vector that is flMinPlayerDist from the player
	local vGoalPos = targetPos - ( vVecToPlayerNorm * 100 );
	print("goal position: ", vGoalPos)


		-- Get the animation controller for this entity
	--	local animController = thisEntity:GetAnimController()
		
	--	if  animController = nil then
	--		return 0.1 -- Return time to wait before calling again
	--	end

		-- Set the character's movement speed (optional, but good practice)
	--	animController:SetParameter("input_speed", 2.5) -- Adjust as needed
		
		-- Move towards the trigger position.
		-- This is a simplified way; in reality, you'd use pathfinding or a motor system.
		--thisEntity:MoveTo(targetPos)


		-- The maximum distance away from the navigation goal that a path can be considered successful
	local flNavGoalTolerance = 250

-- Whether the player should walk or run when following a path.  
-- This choice affects the target speed that is passed to the AnimGraph,
-- and how much curve the pathing system should use when creating corners.
-- The walk and run speeds of characters are defined in the Movement Settings
-- node on the model in ModelDoc
	local bShouldRun = false

		thisEntity:NpcForceGoPosition( vGoalPos, bShouldRun, flNavGoalTolerance )
		
		print("Moving to dance trigger...")
	else
		-- If we are close enough, stop moving and play the dance animation.
		-- We can also set input_speed to 0 for idle movement.
	--	animController:SetParameter("input_speed", 0.0)
		
		-- Play the dance animation.
	--	animController:SetParameter("misc_anim_clip", "dance01")
		
		print("Dance triggered at trigger position!")
	end

	-- Return a time to wait before calling this function again.
	return 0.1
end
