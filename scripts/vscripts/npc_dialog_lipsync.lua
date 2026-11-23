-- Original Bloodlines phoneme poses, blended independently of body gestures.
local data = require("npc_dialog_lipsync_data")
local M = {}
local active = {}
local THINK = "VTMBVRDialogueLipSync"
local ATTACK, RELEASE = .045, .065
local tuning = data.tuning
local shapeGains = data.shapeGains or {}
local validShapes = {}
for _, name in ipairs(data.faceControllers) do validShapes[name] = true end

local function copy(values)
    local result = {}
    for key,value in pairs(values) do result[key]=value end
    return result
end

function M.GetSettings()
    return {tuning=copy(tuning),shapeGains=copy(shapeGains)}
end

function M.SetTuning(name,value)
    local range=data.tuningLimits[name]
    if not range or type(value)~="number" or value~=value or value<range[1] or value>range[2] then return false end
    tuning[name]=value
    return true
end

function M.SetShapeGain(name,value)
    if not validShapes[name] or type(value)~="number" or value~=value or value<0 or value>1 then return false end
    shapeGains[name]=value~=1 and value or nil
    return true
end

function M.ApplySettings(settings)
    for key,value in pairs(settings.tuning) do M.SetTuning(key,value) end
    for key in pairs(shapeGains) do shapeGains[key]=nil end
    for key,value in pairs(settings.shapeGains) do M.SetShapeGain(key,value) end
end

local function exists(actor)
    return actor ~= nil and not actor:IsNull()
end

local function reset(actor, state)
    if not exists(actor) then return end
    for _, name in ipairs(data.faceParameters) do
        actor:SetGraphParameterFloat(name, 0)
    end
end

function M.Stop(actor)
    if not exists(actor) then return end
    local key = actor:GetEntityIndex()
    local state = active[key]
    actor:SetContextThink(THINK, nil, 0)
    if state and state.actor == actor then
        reset(actor, state)
        active[key] = nil
    else
        -- A saved actor can retain facial weights while the Lua module state
        -- is rebuilt. Restore the neutral speech channels in that case too.
        for _, name in ipairs(data.faceParameters) do
            actor:SetGraphParameterFloat(name, 0)
        end
    end
end

function M.Start(actor, node)
    if not exists(actor) then return false end
    M.Stop(actor)
    local events = data.lines[node]
    if not events or #events == 0 then return false end
    local indices = {}
    local lookup = {}
    for slot, name in ipairs(data.faceControllers) do
        local parameter = data.faceParameters[slot]
        if not parameter or type(actor:GetGraphParameter(parameter)) ~= "number" then
            print("[VTMBVR_DIALOG] LIP_UNAVAILABLE parameter=" .. tostring(parameter))
            return false
        end
        indices[#indices + 1] = slot
        lookup[name] = #indices
    end
    local speechSlots = {}
    for _, name in ipairs(data.controllers) do speechSlots[#speechSlots+1] = lookup[name] end
    local expression = data.expressions[node]
    local key = actor:GetEntityIndex()
    local jawChannels, smoothed = {}, {}
    for i,name in ipairs(data.controllers) do
        local jaw = name:match("^AU26") or name:match("^AU27")
        jawChannels[i] = not not jaw
        smoothed[i] = 0
    end
    local state = {actor=actor, node=node, indices=indices, started=Time(), cursor=1,
                   updated=Time(), blinkAt=Time()+2.5+(key%5)*.19, blinkCount=0}
    active[key] = state
    actor:SetContextThink(THINK, function()
        if not exists(actor) or active[key] ~= state then return nil end
        local elapsed = Time() - state.started
        local dt = math.min(.1, math.max(0, Time()-state.updated))
        state.updated = Time()
        if elapsed > events[#events][2] + RELEASE and not state.finished then
            state.finished = true
            print("[VTMBVR_DIALOG] LIP_DONE node=" .. node)
        end
        while state.cursor < #events and events[state.cursor][2] + RELEASE < elapsed do
            state.cursor = state.cursor + 1
        end
        local weights, total = {}, 0
        for i=1,#speechSlots do weights[i]=0 end
        for i=state.cursor,(state.finished and 0 or #events) do
            local event = events[i]
            if event[1] - ATTACK > elapsed then break end
            if elapsed <= event[2] + RELEASE then
                local amount = 1
                if elapsed < event[1] then
                    amount = math.max(0, (elapsed-event[1]+ATTACK)/ATTACK)
                elseif elapsed > event[2] then
                    amount = math.max(0, (event[2]+RELEASE-elapsed)/RELEASE)
                end
                total = total + amount
                for j=1,#speechSlots do weights[j]=weights[j]+event[3][j]*amount end
            end
        end
        -- Overlapping phonemes cross-fade; do not double the jaw displacement.
        local divisor = math.max(1, total)
        local blink = 0
        local sinceBlink = Time()-state.blinkAt
        if sinceBlink >= 0 and sinceBlink < .22 then
            -- Fast closure, brief contact, slower reopening.
            blink = math.min(1, sinceBlink/.06, (.22-sinceBlink)/.13)
        elseif sinceBlink >= .22 then
            state.blinkCount=state.blinkCount+1
            state.blinkAt=Time()+2.7+((key+state.blinkCount*7)%11)*.16
        end
        local fade=math.min(1,elapsed/tuning.expressionFade)
        local face={}
        for i=1,#indices do
            -- Soften authored emotion while retaining a complete eyelid closure.
            face[i]=(expression.open[i]*tuning.expressionGain
                +(expression.blink[i]-expression.open[i])*blink)*fade
        end
        for i,slot in ipairs(speechSlots) do
            local gain=jawChannels[i] and tuning.jawGain or tuning.speechGain
            local target = weights[i]/divisor*gain
            local tau = target > smoothed[i] and tuning.smoothAttack or tuning.smoothRelease
            smoothed[i] = smoothed[i]+(target-smoothed[i])*(1-math.exp(-dt/tau))
            if target == 0 and smoothed[i] < .0005 then smoothed[i] = 0 end
            face[slot]=face[slot]+smoothed[i]
        end
        for i,name in ipairs(data.faceParameters) do
            local gain=shapeGains[data.faceControllers[i]] or 1
            actor:SetGraphParameterFloat(name, math.min(1,face[i]*gain))
        end
        return .02
    end, 0)
    print("[VTMBVR_DIALOG] LIP_START node=" .. node .. " controllers=" .. #speechSlots .. " face=" .. #indices .. " phonemes=" .. #events)
    return true
end

return M
