-- Audition the imported source library without executing original quest code.
local face = require("npc_source_performance")
local names = {doll1=true,cal=true,chunk=true,danielle=true,jeanette=true,knox=true,therese=true,tourette=true}
local active = {}
local OWNER = "asylum_source"
local function valid(actor) return actor and not actor:IsNull() end
local function library(character)
    if not names[character] then print("[ASYLUM_SOURCE] Unknown character");return nil end
    return require("asylum_data/"..character)
end

function AsylumSourceList(character)
    local data=library(character)
    if not data then return false end
    for _,row in ipairs(data.dialogue.rows) do
        if row.kind=="npc" then
            print("[ASYLUM_SOURCE] "..row.id.." | "..row.textMale.." | "..table.concat(row.performances,","))
        end
    end
    return true
end

function AsylumSourceStop(actorName)
    local actor=Entities:FindByName(nil,actorName)
    if not valid(actor) then return false end
    local id=actor:GetEntityIndex()
    local state=active[id]
    if not state then return false end
    actor:SetContextThink("AsylumSourceFinish",nil,0)
    StopSoundOn(state.sound,actor)
    face.Stop(actor)
    if state.borrowed then NpcSceneEndDialogue(actor,OWNER) end
    active[id]=nil
    return true
end

function AsylumSourcePlay(character,lineId,actorName,variant)
    local data=library(character)
    if not data then return false end
    local actor=Entities:FindByName(nil,actorName)
    if not valid(actor) then print("[ASYLUM_SOURCE] Actor not found: "..tostring(actorName));return false end
    lineId=tonumber(lineId)
    if not lineId or lineId~=math.floor(lineId) then return false end
    local key="line"..lineId..(variant or "_col_e")
    local line=data.lines[key]
    if not line then print("[ASYLUM_SOURCE] No voice variant: "..key);return false end
    AsylumSourceStop(actorName)
    local borrowed=NpcSceneBeginDialogue and NpcSceneBeginDialogue(actor,OWNER,nil) or false
    -- Fail closed when the scene owner is present but another conversation owns
    -- the actor. Never close or steal the user's dialogue as an audition side effect.
    if NpcSceneBeginDialogue and not borrowed then
        print("[ASYLUM_SOURCE] Actor is busy or outside the scene catalog");return false
    end
    local expected=data.sourceModel:lower():gsub("%.mdl$",".vmdl")
    local faceReady=actor:GetModelName():lower()==expected and face.Start(actor,line,data)
    local state={sound=line.sound,borrowed=borrowed}
    active[actor:GetEntityIndex()]=state
    EmitSoundOn(line.sound,actor)
    print("[ASYLUM_SOURCE] PLAY character="..character.." line="..key.." face="..tostring(faceReady).." body=source_cues quest_commands=inert")
    local id=actor:GetEntityIndex()
    actor:SetContextThink("AsylumSourceFinish",function()
        if not valid(actor) then active[id]=nil;return nil end
        if active[id]==state then AsylumSourceStop(actorName) end
        return nil
    end,(line.sceneDuration or line.duration)+.5)
    return true
end
