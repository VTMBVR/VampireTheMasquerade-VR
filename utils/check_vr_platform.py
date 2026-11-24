"""Check tracked-anchor transport independently of the player capsule."""
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
    root=Path(__file__).resolve().parents[1]
    lua.globals().platform_file=str(root/'scripts/vscripts/npc_vr_platform.lua')
    result=lua.execute(r'''
        local v={};v.__index=v
        function Vector(x,y,z) return setmetatable({x=x,y=y,z=z},v) end
        function v.__add(a,b) return Vector(a.x+b.x,a.y+b.y,a.z+b.z) end
        function v.__sub(a,b) return Vector(a.x-b.x,a.y-b.y,a.z-b.z) end
        function v:Length() return math.sqrt(self.x*self.x+self.y*self.y+self.z*self.z) end
        local now=0;function Time() return now end
        local train={position=Vector(0,0,0)}
        function train:IsNull() return self.removed or false end
        function train:GetAbsOrigin() return self.position end
        local anchor={position=Vector(0,0,0),writes=0}
        function anchor:IsNull() return false end
        function anchor:GetAbsOrigin() return self.position end
        function anchor:SetAbsOrigin(p) self.position=p;self.writes=self.writes+1 end
        local player={tracked=true,aboard=true}
        function player:IsNull() return false end
        function player:GetHMDAvatar() return self.tracked and self or nil end
        function player:GetHMDAnchor() return anchor end
        function player:GetAbsOrigin() return Vector(0,0,self.badSpawn and 100 or train.position.z+16) end
        function player:EyePosition() return anchor.position+Vector(0,0,60) end
        local host={thinks={}}
        function host:IsNull() return false end
        function host:SetContextThink(name,fn) self.thinks[name]=fn end
        local fake=false;Convars={GetBool=function() return fake end}
        Entities={GetLocalPlayer=function() return player end}
        function TraceLine(q)
            q.hit=true;q.normal=Vector(0,0,1);q.pos=Vector(q.endpos.x,q.endpos.y,0)
            if player.aboard then q.enthit=train else q.enthit=nil end
        end
        local m=dofile(platform_file)
        local function tick(z,automatic)
            now=now+.05
            if automatic then anchor.position=anchor.position+Vector(0,0,z-train.position.z) end
            train.position=Vector(0,0,z);m.Tick()
        end
        m.Start(host,train,false);tick(0);assert(anchor.writes==0)
        for z=1,100 do tick(z) end
        assert(math.abs(anchor.position.z-100)<.001 and m.Status().riding)
        for z=99,0,-1 do tick(z) end
        assert(math.abs(anchor.position.z)<.001)
        local writes=anchor.writes;tick(1,true)
        assert(anchor.position.z==1 and anchor.writes==writes,'Do not double native anchor transport')
        player.aboard=false;tick(2);tick(3);tick(4)
        assert(not m.Status().riding)
        local z=anchor.position.z;tick(5);assert(anchor.position.z==z)
        player.aboard=true;anchor.position=Vector(0,0,5);tick(6)
        assert(anchor.position.z==6,'A later boarding must attach')
        anchor.position=Vector(0,0,200);tick(7)
        assert(anchor.position.z==200 and not m.Status().riding,'Respect explicit teleports')
        fake=true;tick(8);assert(anchor.position.z==200);fake=false
        player.tracked=false;tick(9);assert(anchor.position.z==200);player.tracked=true
        m.Start(host,train,false);anchor.position=Vector(0,0,9);tick(10)
        assert(anchor.position.z==10,'Restored rides must rebind')
        player.badSpawn=true;anchor.position=Vector(0,0,0)
        assert(m.ValidateSpawn(player,Vector(50,60,0)))
        assert(anchor.position.x==50 and anchor.position.y==60 and anchor.position.z==0)
        player.badSpawn=false;train.position=Vector(0,0,0)
        assert(not m.ValidateSpawn(player,Vector(20,30,0)))
        fake=true;player.badSpawn=true;assert(not m.ValidateSpawn(player,Vector(20,30,0)));fake=false
        train.removed=true;m.Tick();assert(not m.Status().riding)
        m.Stop();assert(not host.thinks.AsylumVRPlatform)
        return {scenarios=14,nativeHeadsetTested=false,anchorWrites=anchor.writes}
    ''')
    print(json.dumps(dict(result),indent=2))


if __name__=='__main__':main()
