--Global Reference Tables
local npc_master_registry = {}
local target_node_map = {}
local active_state_map = {}
local position_tracking_cache = {}

--Optimization Tuning
local BATCH_SIZE = 4                --Number of NPCs to process per tick(VR Stability)
local THINK_INTERVAL = 0.5          --Frequency of logic execution in seconds
local current_cycle_index = 0       --Pointer for staggered iteration

-- Logic Thresholds(Hammer Units)
local ARRIVAL_TOLERANCE_SQ = 2304   -- 48 units squared(Optimized distance check)
local STUCK_VELOCITY_MIN = 0.1      --Minimum speed to be considered 'moving'
local STUCK_TIME_LIMIT = 5.0        --Seconds before forcing a path recalculation
local IDLE_WAIT_LIMIT = 10.0        --Seconds an NPC stays at a spot before cycling

-- [[ HELPER:DEFENSIVE ENTITY VALIDATION ]]
function IsValidNPC(ent)
return ent and not ent:IsNull() and ent : IsAlive() and ent : GetHealth() > 0
end

-- [[ STAGE 1:DYNAMIC ENTITY REGISTRY ]]
function RefreshNPCHandles()
npc_master_registry = {}
local ent = Entities:FindByName(nil, "npc_vampire_*")
while ent do
if IsValidNPC(ent) then
table.insert(npc_master_registry, ent)
end
ent = Entities : FindByName(ent, "npc_vampire_*")
end
end

-- [[ STAGE 2:NODE MAP SYNCHRONIZATION ]]
function RefreshNodeRegistry()
target_node_map = {}
local node = Entities:FindByName(nil, "interesting_place_*")
while node do
table.insert(target_node_map, node)
node = Entities : FindByName(node, "interesting_place_*")
end
end

-- [[ STAGE 3:PATHING & STUCK VALIDATOR ]]
function ValidateNPCMovement(npc, state, idx)
local current_pos = npc:GetAbsOrigin()
local dist_sq = (state.goal_pos - current_pos) : LengthSqr()

--Check for Arrival
if dist_sq < ARRIVAL_TOLERANCE_SQ then
    state.status = "WAITING"
    state.timestamp = Time()
else
--Temporal Stuck Detection(Fix for 'HasPath' hangup)
local velocity = npc:GetVelocity() : Length()
if velocity < STUCK_VELOCITY_MIN then
    if not position_tracking_cache[idx] then
        position_tracking_cache[idx] = { last_pos = current_pos, last_time = Time() }
        elseif(Time() - position_tracking_cache[idx].last_time) > STUCK_TIME_LIMIT then
        -- Re - issue pathing if NPC hasn't moved 5 units in 5 seconds
        if (current_pos - position_tracking_cache[idx].last_pos) : Length() < 5.0 then
            npc : MoveToPosition(state.goal_pos)
            end
            position_tracking_cache[idx] = { last_pos = current_pos, last_time = Time() }
            end
            end
            end
            end

            -- [[ STAGE 4:MASTER LOGIC ENGINE ]]
            function ProcessGlobalBatch()
            local total_count = #npc_master_registry
            if total_count == 0 then return end
                if #target_node_map == 0 then RefreshNodeRegistry() end

                    -- Batch Processing(Staggered frame execution)
                    for i = 1, BATCH_SIZE do
                        current_cycle_index = (current_cycle_index % total_count) + 1
                        local npc = npc_master_registry[current_cycle_index]

                        if IsValidNPC(npc) then
                            local e_idx = npc:GetEntityIndex()

                            --Assignment Handshake(Anti - Overlap)
                            if not active_state_map[e_idx] then
                                for _, node in ipairs(target_node_map) do
                                    if not node.is_occupied then
                                        node.is_occupied = true
                                        active_state_map[e_idx] = {
                                            target = node,
                                            goal_pos = node:GetAbsOrigin(),
                                            status = "MOVING",
                                            timestamp = Time()
                                    }
                                -- NEW: Move the NPC to its target position with run flag and tolerance
                                local bShouldRun = false   -- walk or run? 0=walk, 1=run
                                local flNavGoalTolerance = 250.0
                                npc:NpcForceGoPosition(active_state_map[e_idx].goal_pos, bShouldRun, flNavGoalTolerance)
                                break
                            end
                        end
                        else
                                        --Execute State Logic
                                        local state = active_state_map[e_idx]
                                        if state.status == "MOVING" then
                                            ValidateNPCMovement(npc, state, e_idx)
                                            elseif state.status == "WAITING" then
                                            if (Time() - state.timestamp) > IDLE_WAIT_LIMIT then
                                                state.target.is_occupied = false --Release node
                                                active_state_map[e_idx] = nil
                                                position_tracking_cache[e_idx] = nil
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end

                                                -- [[ STAGE 5:LIFECYCLE MEMORY CLEANUP ]]
                                                function CleanupOrphanHandles()
                                                for i = #npc_master_registry, 1, -1 do
                                                    local unit = npc_master_registry[i]
                                                    if not unit or unit:IsNull() or not unit : IsAlive() then
                                                        local id = unit : GetEntityIndex()
                                                        if active_state_map[id] then
                                                            active_state_map[id].target.is_occupied = false
                                                            active_state_map[id] = nil
                                                            end
                                                            table.remove(npc_master_registry, i)
                                                            end
                                                            end
                                                            end

                                                            -- [[ STAGE 6:ENGINE ENTRY POINT ]]
                                                            function GlobalManagerThink()
                                                            if #npc_master_registry == 0 then RefreshNPCHandles() end

                                                                CleanupOrphanHandles()

                                                                --Protected execution to ensure zero runtime crashes
                                                                local ok, err = pcall(ProcessGlobalBatch)
                                                                if not ok then
                                                                    print(">>> [NPC_MANAGER_CRITICAL] Logic Fault: " ..tostring(err))
                                                                    end

                                                                    return THINK_INTERVAL
                                                                    end

                                                                    -- Hook for Level Transition to purge global heap
                                                                    function OnLevelShutdown()
                                                                    npc_master_registry = {}
                                                                    active_state_map = {}
                                                                    position_tracking_cache = {}
                                                                    print(">>> [SYSTEM] NPC Global Registry successfully purged.")
                                                                    end

                                                                    -- Initialize System
                                                                    print(">>> [NPC MANAGER] Online. Running initial entity scan...")
                                                                    RefreshNPCHandles()
                                                                    RefreshNodeRegistry()
