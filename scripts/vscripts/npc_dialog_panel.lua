-- A fixed upright window, moved only while its frame/background is held.
local M={}
local Window={};Window.__index=Window
local atan2=math.atan2 or math.atan
local function yaw(direction) return math.deg(atan2(direction.y,direction.x)) end
function M.New(center,heading,dpi)
    local self=setmetatable({dpi=dpi or 16},Window)
    self:Set(center,heading)
    return self
end
function Window:Set(center,heading)
    self.center=center;self.yaw=heading
    local angle=math.rad(heading)
    self.right=Vector(math.sin(angle),-math.cos(angle),0)
    self.normal=Vector(-math.cos(angle),-math.sin(angle),0)
end
function Window:Angles() return QAngle(0,self.yaw-90,90) end
function Window:Hit(origin,direction)
    local denominator=direction:Dot(self.normal)
    if math.abs(denominator)<.001 then return nil end
    local distance=(self.center-origin):Dot(self.normal)/denominator
    if distance<0 or distance>160 then return nil end
    local delta=origin+direction*distance-self.center
    local x=512+delta:Dot(self.right)*self.dpi
    local y=384-delta.z*self.dpi
    if x<0 or x>1024 or y<0 or y>768 then return nil end
    return math.floor(x),math.floor(y),distance
end
function Window:IsHandle(x,y)
    return x and y and x>=230 and x<=790 and y>=720 and y<=752
end
function Window:Begin(hand,direction,x,y,distance,background)
    if self.grab or (not background and not self:IsHandle(x,y)) or not distance or distance<0 or distance>160 then return false end
    self.grab={hand=hand,distance=distance,x=(x-512)/self.dpi,z=(384-y)/self.dpi,
        yaw=self.yaw,handYaw=yaw(direction)}
    return true
end
function Window:Move(hand,origin,direction)
    local grab=self.grab
    if not grab or grab.hand~=hand then return false end
    local heading=self.yaw
    if direction.x*direction.x+direction.y*direction.y>.001 then
        heading=grab.yaw+(yaw(direction)-grab.handYaw+180)%360-180
    end
    self:Set(self.center,heading)
    self.center=origin+direction*grab.distance-self.right*grab.x-Vector(0,0,grab.z)
    return true
end
function Window:End(hand)
    if not self.grab or (hand~=nil and self.grab.hand~=hand) then return false end
    self.grab=nil;return true
end
return M
