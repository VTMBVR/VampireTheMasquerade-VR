----------------------------------------------------------------------------------------------------
-- Global NPC Manager - vscript_globe.lua
-- Manages NPC placement and movement to interesting_place_* nodes
----------------------------------------------------------------------------------------------------

-- Global Reference Tables
local npc_master_registry = {}
local target_node_map = {}
local active_state_map = {}
local position_tracking_cache = {}

-- Optimization Tuning
local BATCH_SIZE = 4                -- Number of NPCs to process per tick (VR Stability)
local THINK_INTERVAL = 0.5          -- Frequency of logic execution in seconds
local current_cycle_index = 0       -- Pointer for staggered iteration

-- Logic Thresholds (Hammer Units)
local ARRIVAL_TOLERANCE_SQ = 2304   -- 48 units squared (optimized distance check)
local ARRIVAL_TOLERANCE = 48        -- 48 units (used for NpcForceGoPosition tolerance param)
local STUCK_VELOCITY_MIN = 0.1      -- Minimum speed to be considered 'moving'
local STUCK_TIME_LIMIT = 5.0        -- Seconds before forcing a path recalculation
local IDLE_WAIT_LIMIT = 10.0        -- Seconds an NPC stays at a spot before cycling


-- [[ ENGINE ENTRY: Spawn ]]
-- Registers the think function with the engine so GlobalManagerThink actually runs.
-- Without this, the script loads but never ticks.
function Spawn()
    print(">>> [NPC MANAGER] Registering think function...")
    thisEntity:SetContextThink("GlobalManagerThink", GlobalManagerThink, THINK_INTERVAL)
end


-- [[ HELPER: DEFENSIVE ENTITY VALIDATION ]]
function IsValidNPC(ent)
    if not ent then return false end
    if ent:IsNull() then return false end
    if not ent:IsAlive() then return false end
    if ent:GetHealth() <= 0 then return false end
    return true
end


-- [[ STAGE 1: DYNAMIC ENTITY REGISTRY ]]
function RefreshNPCHandles()
    npc_master_registry = {}
    local ent = Entities:FindByName(nil, "npc_vampire_*")
    while ent do
        if IsValidNPC(ent) then
            table.insert(npc_master_registry, ent)
        end
        ent = Entities:FindByName(ent, "npc_vampire_*")
    end
    print(">>> [NPC MANAGER] Found " .. #npc_master_registry .. " NPCs.")
end


-- [[ STAGE 2: NODE MAP SYNCHRONIZATION ]]
function RefreshNodeRegistry()
    target_node_map = {}
    local node = Entities:FindByName(nil, "interesting_place_*")
    while node do
        table.insert(target_node_map, node)
        node = Entities:FindByName(node, "interesting_place_*")
    end
    print(">>> [NPC MANAGER] Found " .. #target_node_map .. " interesting place nodes.")
end


-- [[ STAGE 3: PATHING & STUCK VALIDATOR ]]
function ValidateNPCMovement(npc, state, idx)
    local current_pos = npc:GetAbsOrigin()
    local dist_sq = (state.goal_pos - current_pos):LengthSqr()

    -- Check for Arrival
    if dist_sq < ARRIVAL_TOLERANCE_SQ then
        state.status = "WAITING"
        state.timestamp = Time()
        return
    end

    -- Temporal Stuck Detection
    local velocity = npc:GetVelocity():Length()
    if velocity < STUCK_VELOCITY_MIN then
        if not position_tracking_cache[idx] then
            -- First time we notice the NPC is slow - record position and time
            position_tracking_cache[idx] = { last_pos = current_pos, last_time = Time() }
        elseif (Time() - position_tracking_cache[idx].last_time) > STUCK_TIME_LIMIT then
            -- NPC has been slow for too long - check if it actually moved
            if (current_pos - position_tracking_cache[idx].last_pos):Length() < 5.0 then
                -- NPC is genuinely stuck - re-issue the path command
                -- FIX: was npc:MoveToPosition() which does not exist in Source 2 VScript
                npc:NpcForceGoPosition(state.goal_pos, false, ARRIVAL_TOLERANCE)
            end
            -- Reset the tracking cache regardless
            position_tracking_cache[idx] = { last_pos = current_pos, last_time = Time() }
        end
    end
end


-- [[ STAGE 4: MASTER LOGIC ENGINE ]]
function ProcessGlobalBatch()
    local total_count = #npc_master_registry
    if total_count == 0 then return end
    if #target_node_map == 0 then RefreshNodeRegistry() end

    -- Batch Processing (staggered frame execution)
    for i = 1, BATCH_SIZE do
        current_cycle_index = (current_cycle_index % total_count) + 1
        local npc = npc_master_registry[current_cycle_index]

        if IsValidNPC(npc) then
            local e_idx = npc:GetEntityIndex()

            -- Assignment Handshake (Anti-Overlap)
            if not active_state_map[e_idx] then
                -- NPC has no assignment - find a free node
                for _, node in ipairs(target_node_map) do
                    if not node.is_occupied then
                        node.is_occupied = true
                        active_state_map[e_idx] = {
                            target = node,
                            goal_pos = node:GetAbsOrigin(),
                            status = "MOVING",
                            timestamp = Time()
                        }
                        -- FIX: was npc:MoveToPosition() which does not exist in Source 2 VScript
                        npc:NpcForceGoPosition(active_state_map[e_idx].goal_pos, false, ARRIVAL_TOLERANCE)
                        break
                    end
                end
            else
                -- NPC already has an assignment - execute state logic
                local state = active_state_map[e_idx]
                if state.status == "MOVING" then
                    ValidateNPCMovement(npc, state, e_idx)
                elseif state.status == "WAITING" then
                    if (Time() - state.timestamp) > IDLE_WAIT_LIMIT then
                        -- Release node so another NPC can use it
                        state.target.is_occupied = false
                        active_state_map[e_idx] = nil
                        position_tracking_cache[e_idx] = nil
                    end
                end
            end
        end
    end
end


-- [[ STAGE 5: LIFECYCLE MEMORY CLEANUP ]]
function CleanupOrphanHandles()
    for i = #npc_master_registry, 1, -1 do
        local unit = npc_master_registry[i]

        -- FIX: check IsNull() first in a separate condition before calling any other methods.
        -- Calling :GetEntityIndex() or :IsAlive() on a null entity will crash.
        if not unit or unit:IsNull() then
            table.remove(npc_master_registry, i)
        elseif not unit:IsAlive() then
            local id = unit:GetEntityIndex()
            if active_state_map[id] then
                active_state_map[id].target.is_occupied = false
                active_state_map[id] = nil
            end
            position_tracking_cache[id] = nil
            table.remove(npc_master_registry, i)
        end
    end
end


-- [[ STAGE 6: ENGINE THINK CALLBACK ]]
-- Called every THINK_INTERVAL seconds by the engine (registered in Spawn).
-- Must return the next think interval to keep ticking.
function GlobalManagerThink()
    if #npc_master_registry == 0 then RefreshNPCHandles() end

    CleanupOrphanHandles()

    -- Protected execution to catch any runtime errors without crashing the map
    local ok, err = pcall(ProcessGlobalBatch)
    if not ok then
        print(">>> [NPC_MANAGER_CRITICAL] Logic Fault: " .. tostring(err))
    end

    return THINK_INTERVAL
end


-- [[ LEVEL SHUTDOWN HOOK ]]
-- Purges all global state on map unload / level transition
function OnLevelShutdown()
    npc_master_registry = {}
    active_state_map = {}
    position_tracking_cache = {}
    print(">>> [SYSTEM] NPC Global Registry successfully purged.")
end


-- Initialize on script load
print(">>> [NPC MANAGER] Online. Running initial entity scan...")
RefreshNPCHandles()
RefreshNodeRegistry()