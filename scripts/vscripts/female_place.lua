-- Outputs still set misc_anim_clip; this callback records the actual touching actor.
function Activate(activationType)
    if activationType==2 then
        -- Redirected Outputs are saved by the engine. Replace their restored
        -- callbacks instead of adding another pair after every load.
        thisEntity:DisconnectRedirectedOutput("OnStartTouch", "FemalePlaceEnter", thisEntity)
        thisEntity:DisconnectRedirectedOutput("OnEndTouch", "FemalePlaceExit", thisEntity)
    end
    thisEntity:RedirectOutput("OnStartTouch", "FemalePlaceEnter", thisEntity)
    thisEntity:RedirectOutput("OnEndTouch", "FemalePlaceExit", thisEntity)
end

local function notify(params, entering)
    local manager = Entities:FindByName(nil, "globe_script_logic")
    if not manager then return end
    local scope = manager:GetPrivateScriptScope()
    if scope and scope.FemaleSceneTouch then
        scope.FemaleSceneTouch(params.activator, thisEntity, entering)
    end
end

function FemalePlaceEnter(params) notify(params, true) end
function FemalePlaceExit(params) notify(params, false) end
