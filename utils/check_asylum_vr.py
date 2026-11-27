"""Exercise player seating, saved anchor restoration and scoped glove settings."""
import argparse,json,sys
from pathlib import Path

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--lua-runtime',type=Path)
    args=parser.parse_args()
    if args.lua_runtime:sys.path.insert(0,str(args.lua_runtime))
    from lupa import LuaRuntime
    root=Path(__file__).resolve().parents[1]
    lua=LuaRuntime(unpack_returned_tuples=True)
    lua.execute('package.path='+json.dumps((root/'scripts/vscripts').as_posix()+'/?.lua;')+'..package.path')
    result=lua.execute(r'''
        local v={};v.__index=v
        function Vector(x,y,z) return setmetatable({x=x,y=y,z=z},v) end
        function v.__add(a,b) return Vector(a.x+b.x,a.y+b.y,a.z+b.z) end
        function v.__sub(a,b) return Vector(a.x-b.x,a.y-b.y,a.z-b.z) end
        function v.__mul(a,b) return Vector(a.x*b,a.y*b,a.z*b) end
        function v.__div(a,b) return Vector(a.x/b,a.y/b,a.z/b) end
        function v:Length() return math.sqrt(self.x*self.x+self.y*self.y+self.z*self.z) end
        function v:Dot(b) return self.x*b.x+self.y*b.y+self.z*b.z end
        function QAngle() return {} end
        local now=0;function Time() return now end
        local noop=function() end;print=noop
        local settings={vr_gg_gesture_pull=1,vr_gg_lockon=1,vr_enable_fake_vr=false}
        Convars={GetInt=function(_,n)return settings[n]end,SetInt=function(_,n,x)settings[n]=x end,GetBool=function(_,n)return settings[n]end}
        local e={};e.__index=e;local entities={};local attrs={};local open=false;local tracked=true;local busy=false
        local function make(name,pos)
            local o=setmetatable({name=name,position=pos,classes={}},e);entities[name]=o;return o
        end
        function e:IsNull() return self.removed or false end
        function e:GetAbsOrigin() return self.position+Vector(0,0,0) end
        function e:SetAbsOrigin(p) self.position=p end
        function e:AddCSSClasses(n) self.classes[n]=true end
        function e:RemoveCSSClasses(n) self.classes[n]=nil end
        function e:IgnoreUserInput() end
        function e:RedirectOutput() end
        function e:GetPrivateScriptScope() return {NpcDialogIsOpen=function()return open end} end
        function e:Attribute_SetIntValue(k,x) attrs[k]=x end
        function e:Attribute_GetIntValue(k,d) return attrs[k] or d end
        function e:SetContextThink(k,fn) self.think=fn end
        function SpawnEntityFromTableSynchronous(c,kv) assert(c=='info_teleport_magnet');return make(kv.targetname,kv.origin) end
        local listeners={};local serial=0
        function ListenToGameEvent(name,fn) serial=serial+1;listeners[serial]=fn;return serial end
        function StopListeningToGameEvent(id) listeners[id]=nil end
        function UTIL_Remove(o) o.removed=true end
        local host=make('host',Vector(0,0,0));local anchor=make('anchor',Vector(-796,489.618988,-279))
        local head=Vector(0,0,60);local floorZ=-279;local player=make('player',Vector(0,0,0))
        function player:GetHMDAvatar() return tracked and self or nil end
        function player:GetHMDAnchor() return anchor end
        function player:EyePosition() return anchor:GetAbsOrigin()+head end
        function player:GetAbsOrigin() return Vector(anchor.position.x,anchor.position.y,floorZ) end
        function player:EyeAngles() return {Forward=function()return Vector(1,0,0)end} end
        function player:GetHealth() return 100 end
        Entities={GetLocalPlayer=function()return player end,
            FindByName=function(_,_,n)local o=entities[n];return o and not o.removed and o end,
            FindAllByClassname=function()return busy and {make('npc',Vector(-771,489.619,-279))} or {} end}
        local m=require('asylum_vr')
        local function tick()now=now+.7;return m.Tick()end
        local function same(a,b)return (a-b):Length()<.002 end
        local initial=anchor:GetAbsOrigin()
        tracked=false;m.Start(host);tick();assert(settings.vr_gg_gesture_pull==1)
        tracked=true;tick();assert(settings.vr_gg_gesture_pull==0 and m.Status().magnet)
        open=true;tick();assert(not m.Use() and settings.vr_gg_lockon==0);open=false;tick();assert(settings.vr_gg_lockon==1)
        busy=true;assert(not m.Use());busy=false
        assert(m.Use());assert(m.Seated());assert(same(player:EyePosition(),Vector(-796,489.618988,-216.4271)))
        assert(not m.Use(),'The same held press must not immediately stand up')
        tick();assert(not m.Interact(initial,Vector(1,0,0),true),'Do not steal the glove trigger')
        assert(m.Stand('console',false));assert(not m.Seated() and same(anchor.position,initial))
        tick();assert(m.Use());tick();head=head+Vector(6,0,0);tick();assert(m.Seated(),'Leaning is not locomotion')
        anchor.position=anchor.position+Vector(10,0,0);local moved=anchor.position.x;tick()
        assert(not m.Seated() and anchor.position.x==moved and math.abs(anchor.position.z-initial.z)<.002)
        head=Vector(0,0,60);anchor.position=initial;tick();assert(m.Use());tick()
        anchor.position=anchor.position+Vector(100,0,200);local teleported=anchor:GetAbsOrigin();tick()
        assert(not m.Seated() and same(anchor.position,teleported),'Do not lower a new teleport floor')
        anchor.position=initial;tick();assert(m.Use());tick()
        tracked=false;tick();assert(m.Seated());tracked=true;tick();assert(m.Seated())
        -- Saved entity attributes and anchor survive Lua scope recreation.
        package.loaded.asylum_vr=nil;m=require('asylum_vr');m.Start(host);tick()
        assert(m.Seated() and settings.vr_gg_gesture_pull==0)
        local count=0;for _,fn in pairs(listeners)do count=count+1 end;assert(count==1,'Save restoration must replace the old teleport callback')
        m.Stop();assert(not m.Seated() and same(anchor.position,initial) and settings.vr_gg_gesture_pull==1 and settings.vr_gg_lockon==1)
        m.Start(host);anchor.position=initial-Vector(45,0,0);tick()
        anchor.position=initial;tick();tick();assert(m.Seated(),'Walking toward the stool must capture it')
        m.Stand('console',false);anchor.position=initial;tick();m.Teleported();tick()
        assert(m.Seated(),'A native teleport onto the magnet must capture it')
        anchor.position=anchor.position+Vector(0,0,200);floorZ=floorZ+200;teleported=anchor:GetAbsOrigin()
        m.Teleported();tick();assert(not m.Seated() and same(anchor.position,teleported),'Never capture the balcony above this stool')
        floorZ=-279
        m.Stop();assert(settings.vr_gg_gesture_pull==1)
        settings.vr_enable_fake_vr=true;m.Start(host);tick();assert(not m.Use() and settings.vr_gg_gesture_pull==1);m.Stop()
        return {scenarios=18,headRotationWrites=0,physicalVRTested=false}
    ''')
    print(json.dumps(dict(result),indent=2))

if __name__=='__main__':main()
