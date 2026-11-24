"""Exercise fixed world-window projection and controller handle movement."""
import argparse
import json
from pathlib import Path
import sys


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--lua-runtime',type=Path)
    args=parser.parse_args()
    if args.lua_runtime:sys.path.insert(0,str(args.lua_runtime))
    from lupa import LuaRuntime
    lua=LuaRuntime(unpack_returned_tuples=True)
    lua.globals().geometry_file=str(Path(__file__).resolve().parents[1]/'scripts/vscripts/npc_dialog_panel.lua')
    result=lua.execute(r'''
        local v={};v.__index=v
        function Vector(x,y,z) return setmetatable({x=x,y=y,z=z},v) end
        function v.__add(a,b) return Vector(a.x+b.x,a.y+b.y,a.z+b.z) end
        function v.__sub(a,b) return Vector(a.x-b.x,a.y-b.y,a.z-b.z) end
        function v.__mul(a,b) return Vector(a.x*b,a.y*b,a.z*b) end
        function v:Dot(b) return self.x*b.x+self.y*b.y+self.z*b.z end
        function v:Length() return math.sqrt(self:Dot(self)) end
        function v:Normalized() return self*(1/self:Length()) end
        function QAngle(x,y,z) return {x=x,y=y,z=z} end
        local geometry=dofile(geometry_file)
        local panel=geometry.New(Vector(48,0,52),0,16)
        local x,y,t=panel:Hit(Vector(0,0,52),Vector(1,0,0))
        assert(x==512 and y==384 and t==48)
        assert(panel:Angles().y== -90 and panel:Angles().z==90)
        assert(not panel:Hit(Vector(0,0,52),Vector(0,1,0)))
        assert(not panel:Hit(Vector(0,0,200),Vector(1,0,0)))
        assert(not panel:Hit(Vector(-200,0,52),Vector(1,0,0)))
        local bx,by=panel:Hit(Vector(100,0,52),Vector(-1,0,0))
        assert(bx==512 and by==384,'Back-face hit testing must use the same fixed plane')
        local origin=Vector(0,8,48)
        local point=panel.center+panel.right*0+Vector(0,0,(384-736)/16)
        local direction=(point-origin):Normalized()
        x,y,t=panel:Hit(origin,direction)
        assert(panel:Begin(0,direction,x,y,t))
        assert(not panel:Begin(1,direction,x,y,t) and not panel:Move(1,origin,direction))
        local offset=Vector(8,12,6);local before=panel.center
        assert(panel:Move(0,origin+offset,direction))
        assert((panel.center-before-offset):Length()<.001)
        local hx,hy=panel:Hit(origin+offset,direction);assert(math.abs(hx-x)<=1 and math.abs(hy-y)<=1)
        local angle=math.rad(45)
        local rotated=Vector(direction.x*math.cos(angle)-direction.y*math.sin(angle),
            direction.x*math.sin(angle)+direction.y*math.cos(angle),direction.z)
        assert(panel:Move(0,origin+offset,rotated) and math.abs(panel.yaw-45)<.001)
        hx,hy=panel:Hit(origin+offset,rotated);assert(math.abs(hx-x)<=1 and math.abs(hy-y)<=1)
        assert(not panel:End(1) and panel:End(0))
        local fixed=panel.center;assert(not panel:Move(0,origin,direction) and panel.center==fixed)
        assert(not panel:Begin(0,direction,512,500,48),'Answers must not start a window move')
        local scaled=geometry.New(Vector(24,0,52),0,32)
        local sx,sy=scaled:Hit(Vector(0,-4,48),Vector(1,0,0))
        assert(sx==640 and sy==512,'Projection must follow DPI after collision-safe placement')
        return {geometryScenarios=11,nativeVRTested=false}
    ''')
    print(json.dumps(dict(result),indent=2))


if __name__=='__main__':main()
