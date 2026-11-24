-- The default TriggerPull action remains active when the weapon/interact
-- action sets change. Digital Use alone is not a raw trigger button.
local M={}
local hands={}
local PRESS,RELEASE=.72,.28
function M.Read(player,hand,id,fake)
    local old=hands[id]
    local first=not old or old.hand~=hand
    local state=not first and old or {hand=hand,down=false}
    local wasDown=state.down
    local literal=1-id
    if hand.GetLiteralHandType then
        local ok,value=pcall(hand.GetLiteralHandType,hand)
        if ok and (value==0 or value==1) then literal=value end
    end
    local pull,source
    if player.GetAnalogActionPositionForHand then
        local ok,value=pcall(player.GetAnalogActionPositionForHand,player,literal,1)
        if ok and value~=nil then
            if type(value)=="number" then pull=value
            elseif type(value)=="table" or type(value)=="userdata" then pull=value.x end
            if type(pull)~="number" or pull~=pull or pull==math.huge or pull== -math.huge then pull=nil end
        end
    end
    if pull~=nil then
        state.down=pull>=(state.down and RELEASE or PRESS)
        source="trigger_pull"
    else
        local ok,down=pcall(player.IsDigitalActionOnForHand,player,literal,3)
        state.down=ok and down==true;source="digital_use"
    end
    if fake~=nil then state.down=state.down or fake==true end
    state.literal=literal;state.pull=pull;state.source=source;state.emulated=fake==true
    hands[id]=state
    return state.down,first,source,literal,not first and state.down and not wasDown,not first and not state.down and wasDown
end
function M.Status(id)
    local state=hands[id]
    if not state then return nil end
    return {literal=state.literal,pull=state.pull,source=state.source,
            down=state.down,emulated=state.emulated}
end
function M.Forget(id) hands[id]=nil end
function M.Reset() hands={} end
return M
