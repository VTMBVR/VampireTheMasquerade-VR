-- Imported phonemes, expressions and explicitly mapped scene cues.
local tuning = require("npc_dialog_lipsync")
local M = {}
local active = {}
local THINK = "VTMBVRSourcePerformance"

local function valid(actor) return actor and not actor:IsNull() end
local function clamp(value) return math.max(0,math.min(1,value)) end

local function ramp(points,time,length,fade)
    if time<0 or time>length then return 0 end
    if #points==0 then return math.min(1,time/fade,(length-time)/fade) end
    local before,after={0,0},{length,0}
    for _,point in ipairs(points) do
        if point[1]<=time then before=point else after=point;break end
    end
    if after[1]<=before[1] then return clamp(before[2]) end
    local k=clamp((time-before[1])/(after[1]-before[1]))
    return clamp(before[2]+(after[2]-before[2])*k)
end

function M.Stop(actor)
    if not valid(actor) then return end
    local id=actor:GetEntityIndex()
    local state=active[id]
    if not state then return end
    actor:SetContextThink(THINK,nil,0)
    for _,sound in ipairs(state.sounds or {}) do StopSoundOn(sound,actor) end
    for _,parameter in ipairs(state.model.faceParameters) do actor:SetGraphParameterFloat(parameter,0) end
    if state.model.bodyBindings and next(state.model.bodyBindings) then actor:SetGraphParameterEnum("dialogue_body_clip",0) end
    active[id]=nil
end

function M.Reset(actor,model)
    if not valid(actor) then return end
    M.Stop(actor)
    for _,parameter in ipairs(model.faceParameters) do
        if type(actor:GetGraphParameter(parameter))=="number" then actor:SetGraphParameterFloat(parameter,0) end
    end
    if type(actor:GetGraphParameter("dialogue_body_clip"))=="number" then actor:SetGraphParameterEnum("dialogue_body_clip",0) end
end

function M.Start(actor,line,model,disposition,onEvent)
    if not valid(actor) then return false end
    for _,parameter in ipairs(model.faceParameters) do
        if type(actor:GetGraphParameter(parameter))~="number" then return false end
    end
    M.Stop(actor)
    tuning.Stop(actor)
    local aliases={flirt="Flirtatious",flirtatious="Flirtatious",anger="Anger",pissed="Mad",joy="Joy",sad="Sad",apathy="Apathy",neutral="Neutral"}
    local basePose=model.expressionPoses[aliases[tostring(disposition):lower()] or disposition or "Neutral"] or model.neutral
    local state={model=model,started=Time(),updated=Time(),smoothed={},fired={},sounds={}}
    local id=actor:GetEntityIndex()
    for i=1,#model.faceControllers do state.smoothed[i]=0 end
    active[id]=state
    actor:SetContextThink(THINK,function()
        if not valid(actor) or active[id]~=state then active[id]=nil;return nil end
        local now=Time()
        local time=now-state.started
        if time>(line.sceneDuration or line.duration)+.5 then M.Stop(actor);return nil end
        for index,event in ipairs(line.timelineEvents or {}) do
            if time>=event.start and not state.fired[index] then
                state.fired[index]=true
                if event.kind=="sound" then
                    EmitSoundOn(event.sound,actor);state.sounds[#state.sounds+1]=event.sound
                elseif event.kind=="world" and onEvent then
                    local ok,handled=pcall(onEvent,event)
                    if not ok then print("[ASYLUM_SOURCE] CUE_ERROR "..tostring(handled)) end
                end
            end
        end
        local dt=math.min(.1,math.max(0,now-state.updated))
        state.updated=now
        local settings=tuning.GetSettings()
        local config=settings.tuning
        local weights,total={},0
        for i=1,#model.faceControllers do weights[i]=0 end
        for _,event in ipairs(line.phonemes) do
            local first,last,code,intensity=event[1],event[2],event[3],event[4]
            if first-.045>time then break end
            if time<=last+.065 then
                local amount=math.min(1,(time-first+.045)/.045,(last+.065-time)/.065)
                local pose=model.phonemePoses[code]
                total=total+amount
                for i=1,#weights do weights[i]=weights[i]+pose[i]*intensity*amount end
            end
        end
        local emotion={}
        for i=1,#weights do emotion[i]=basePose[i] end
        for _,event in ipairs(line.expressions) do
            local amount=ramp(event.ramp,time-event.start,event.finish-event.start,config.expressionFade)
            if amount>0 then
                local pose=model.expressionPoses[event.pose]
                for i=1,#weights do emotion[i]=emotion[i]+(pose[i]-model.neutral[i])*amount end
            end
        end
        local blinkTime=time%3.2
        local blink=blinkTime>=2.7 and blinkTime<2.92 and math.min(1,(blinkTime-2.7)/.06,(2.92-blinkTime)/.13) or 0
        local fade=math.min(1,time/config.expressionFade)
        if model.bodyBindings and next(model.bodyBindings) then
            local body=0
            if time>=.04 then
                for _,event in ipairs(line.bodyEvents or {}) do
                    if time>=event.start and time<=event["end"] then
                        local clip=event.fields.param and event.fields.param[1]
                        body=model.bodyBindings[clip] or body
                    end
                end
            end
            if body~=state.body then actor:SetGraphParameterEnum("dialogue_body_clip",body);state.body=body end
        end
        for i,name in ipairs(model.faceControllers) do
            local gain=(name:match("^AU26") or name:match("^AU27")) and config.jawGain or config.speechGain
            local target=weights[i]/math.max(1,total)*gain
            local tau=target>state.smoothed[i] and config.smoothAttack or config.smoothRelease
            state.smoothed[i]=state.smoothed[i]+(target-state.smoothed[i])*(1-math.exp(-dt/tau))
            if target==0 and state.smoothed[i]<.0005 then state.smoothed[i]=0 end
            local expression=(emotion[i]*config.expressionGain+(model.blink[i]-model.neutral[i])*blink)*fade
            local value=(expression+state.smoothed[i])*(settings.shapeGains[name] or 1)
            actor:SetGraphParameterFloat(model.faceParameters[i],clamp(value))
        end
        return .02
    end,0)
    return true
end

return M
