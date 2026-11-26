-- Preserve Hammer placement before ambient movement or a restored dialogue.
-- Attributes survive save/load; Activate must not capture a walking NPC again.
function Activate()
    if thisEntity:Attribute_GetIntValue("asylum_map_actor",0)==1 then return end
    local at=thisEntity:GetAbsOrigin()
    for key,value in pairs({x=at.x,y=at.y,z=at.z,yaw=thisEntity:GetAngles().y}) do
        thisEntity:Attribute_SetIntValue("asylum_map_"..key,math.floor(value*1000+.5))
    end
    thisEntity:Attribute_SetIntValue("asylum_map_actor",1)
end
function Spawn() Activate() end
