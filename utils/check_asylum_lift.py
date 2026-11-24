"""Exercise Asylum lift button I/O and trip recovery without launching Alyx.

The fixture models the map's legacy self-locking OnPressed output. It checks
Lua behavior, not native button hitboxes, navigation or VR hand interaction.
"""
import argparse
import json
from pathlib import Path
import sys


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--lua-runtime', type=Path)
    args = parser.parse_args()
    if args.lua_runtime:
        sys.path.insert(0, str(args.lua_runtime))
    from lupa import LuaRuntime
    root = Path(__file__).resolve().parents[1]
    runtime = LuaRuntime(unpack_returned_tuples=True)
    runtime.execute('package.path='+json.dumps((root/'scripts/vscripts').as_posix()+'/?.lua;')+'..package.path')
    runtime.globals().location_file = str(root/'scripts/vscripts/asylum_location.lua')
    result = runtime.execute(r'''
        local now,queue,messages,sounds=0,{},{},{}
        function Time() return now end
        function ListenToGameEvent() return 1 end
        function StopListeningToGameEvent() end
        local vector={};vector.__index=vector
        function Vector(x,y,z) return setmetatable({x=x,y=y,z=z},vector) end
        function vector.__add(a,b) return Vector(a.x+b.x,a.y+b.y,a.z+b.z) end
        function vector.__sub(a,b) return Vector(a.x-b.x,a.y-b.y,a.z-b.z) end
        function vector.__mul(a,b) return Vector(a.x*b,a.y*b,a.z*b) end
        function vector:Length() return math.sqrt(self.x*self.x+self.y*self.y+self.z*self.z) end
        function vector:Dot(b) return self.x*b.x+self.y*b.y+self.z*b.z end
        function QAngle(x,y,z) return {x=x,y=y,z=z} end
        local entity={};entity.__index=entity
        local pool={}
        local function make(name,class,z)
            local e=setmetatable({name=name,class=class or "info_target",origin=Vector(0,0,z or 0),
                attributes={},outputs={},thinks={}},entity)
            pool[name]=e;return e
        end
        function entity:IsNull() return self.removed or false end
        function entity:GetClassname() return self.class end
        function entity:GetAbsOrigin() return Vector(self.origin.x,self.origin.y,self.origin.z) end
        function entity:SetAbsOrigin(v) self.origin=v end
        function entity:GetAngles() return {x=0,y=0,z=0} end
        function entity:SetAbsAngles() end
        function entity:SetParent(parent) self.parent=parent end
        function entity:AcceptUserInput() self.accepts=true end
        function entity:IgnoreUserInput() self.accepts=false end
        function entity:AddCSSClasses() end
        function entity:RemoveCSSClasses() end
        function entity:GetModelName() return "*trigger_hull" end
        function entity:GetPrivateScriptScope() return _G end
        function entity:Attribute_GetIntValue(k,default)
            local v=self.attributes[k];if v==nil then return default end;return v
        end
        function entity:Attribute_SetIntValue(k,v) self.attributes[k]=v end
        function entity:SetContextThink(k,callback,delay)
            self.thinks[k]=callback and {callback=callback,at=now+delay} or nil
        end
        function entity:RedirectOutput(output,callback,host)
            self.outputs[output]=self.outputs[output] or {}
            table.insert(self.outputs[output],{callback=callback,host=host})
        end
        function entity:DisconnectRedirectedOutput(output,callback,host)
            local list=self.outputs[output] or {}
            for i=#list,1,-1 do
                if list[i].callback==callback and list[i].host==host then table.remove(list,i) end
            end
        end
        local host=make("scene");thisEntity=host
        local train=make("lift_train","func_tracktrain",-267.5)
        local bottom=make("path_bottom","path_track",-271.5)
        local top=make("path_top","path_track",-1.5)
        local up=make("elev_button_up","func_button",-238)
        local down=make("elev_button_down","func_button",-240)
        make("iplace_6","trigger_multiple")
        for _,name in ipairs({"door_left","door_right","door_left2","door_right2"}) do make(name,"func_door") end
        local globals={Cal_Permission=0,Asylum_Visited=1}
        package.loaded.npc_dialog_source={
            Get=function(_,key,default) local v=globals[key];if v==nil then return default end;return v end,
            Set=function(_,key,value) globals[key]=value end,
            Bind=function() end,BindWorld=function() end,
        }
        package.loaded.npc_source_navigation={Approach=function(_,goal) return goal end,MaximumApproach=function() return 64 end}
        local noop=function() end
        package.loaded.npc_source_items={Start=noop,Stop=noop}
        package.loaded.npc_vr_platform={Start=noop,Stop=noop}
        package.loaded.asylum_sisters={Start=noop,Stop=noop,Tick=noop}
        package.loaded.npc_source_location_data={actors={},places={},conversations={},sounds={
            music={sound="music",duration=200},denied={sound="denied"},ding={sound="ding"}}}
        Entities={FindByName=function(_,_,name) return pool[name] end,
            FindAllByName=function(_,name) return pool[name] and {pool[name]} or {} end,
            GetLocalPlayer=function() return nil end}
        function SpawnEntityFromTableSynchronous(class,kv)
            local e=make(kv.targetname,class);e.origin=kv.origin;return e
        end
        function UTIL_Remove(e) e.removed=true end
        function EmitSoundOn(name,e) sounds[#sounds+1]=name end
        function StopSoundOn() end
        print=function(message) messages[#messages+1]=message end
        function DoEntFireByInstanceHandle(e,operation,param,delay)
            queue[#queue+1]={e=e,operation=operation,at=now+(delay or 0)}
        end
        local function output(button,name)
            for _,hook in ipairs(button.outputs[name] or {}) do _G[hook.callback]({caller=button}) end
        end
        local function press(button,legacyFirst)
            if button.locked then output(button,"OnUseLocked");return end
            if now<(button.readyAt or 0) then return end
            button.readyAt=now+1 -- authored wait=1, neither button is a toggle
            if legacyFirst then DoEntFireByInstanceHandle(button,"Lock","",0) end
            output(button,"OnPressed")
            if not legacyFirst then DoEntFireByInstanceHandle(button,"Lock","",0) end
        end
        local function advance(duration)
            local finish=now+duration
            while now<finish-.00001 do
                now=math.min(finish,now+.05)
                if train.direction and not train.blocked then
                    local target=train.direction==1 and top.origin.z or bottom.origin.z
                    train.origin.z=train.origin.z+train.direction*45*.05
                    if (train.direction==1 and train.origin.z>=target) or (train.direction==-1 and train.origin.z<=target) then
                        train.origin.z=target;train.direction=nil
                    end
                end
                local ready={}
                for i=#queue,1,-1 do
                    if queue[i].at<=now+.000001 then table.insert(ready,1,table.remove(queue,i)) end
                end
                for _,item in ipairs(ready) do
                    local e,op=item.e,item.operation
                    if op=="Lock" then e.locked=true
                    elseif op=="Unlock" then e.locked=false
                    elseif op=="Open" or op=="Close" then e.open=op=="Open"
                    elseif op=="Stop" then e.direction=nil
                    elseif op=="StartForward" or op=="StartBackward" then
                        e.starts=(e.starts or 0)+1
                        if not e.swallowStart then e.direction=op=="StartForward" and 1 or -1 end
                        e.swallowStart=false
                    else error("Unexpected input "..op) end
                end
                for _,task in pairs(host.thinks) do
                    if now>=task.at then local delay=task.callback();task.at=delay and now+delay or math.huge end
                end
            end
        end
        dofile(location_file);AsylumLocationStart();advance(.5)
        assert(up.parent==train and down.parent==train)
        assert(up.locked and not down.locked)
        press(up);advance(.1);assert(sounds[#sounds]=="denied")
        press(up);advance(.1);assert(#sounds==1,"Throttle held locked use")
        assert(AsylumLocationStatus().lift=="idle")
        -- Native legacy outputs lock even on the current floor. They must
        -- not leave either control permanently dead after an accepted press.
        press(down,false);advance(1.1)
        assert(not down.locked and sounds[#sounds]=="ding")
        press(down,true);advance(1.1);assert(not down.locked)
        globals.Cal_Permission=1;advance(.5);assert(not up.locked)
        -- A path OnPass can swallow the departure command. Restart boundedly.
        train.swallowStart=true;press(up,false);advance(2.5)
        assert(up.locked and down.locked)
        globals.Cal_Permission=0;advance(.5)
        globals.Cal_Permission=1;advance(.5)
        assert(up.locked,"Permission changes must not unlock a moving cab")
        advance(11)
        assert(AsylumLocationStatus().lift=="idle" and math.abs(train.origin.z-top.origin.z)<8)
        assert(not up.locked and not down.locked and pool.door_left2.open and not pool.door_left.open)
        assert(train.starts>=2)
        press(up,true);advance(1.1);assert(not up.locked,"Same-floor up must also reset")
        -- Save/load halfway down restores the persisted destination and
        -- replaces, rather than accumulating, redirected callbacks.
        press(down,false);advance(4)
        assert(AsylumLocationStatus().lift=="down")
        dofile(location_file);AsylumLocationStart();advance(12)
        assert(AsylumLocationStatus().lift=="idle" and not down.locked)
        assert(math.abs(train.origin.z-bottom.origin.z)<8 and pool.door_left.open and not pool.door_left2.open)
        for _,button in ipairs({up,down}) do
            assert(#button.outputs.OnPressed==1 and #button.outputs.OnUseLocked==1)
        end
        -- A blocked train times out safely. Do not open a shaft door when
        -- stranded between floors, and allow the player to retry afterward.
        press(up,false);advance(4);train.blocked=true;advance(26)
        assert(AsylumLocationStatus().lift=="idle" and not up.locked and not down.locked)
        assert(not pool.door_left.open and not pool.door_left2.open)
        assert(not train.direction)
        train.blocked=false;press(down,true);advance(12)
        assert(math.abs(train.origin.z-bottom.origin.z)<8 and pool.door_left.open)
        -- A blocked departure recovers doors when still at a landing.
        train.blocked=true;press(up);advance(27)
        assert(AsylumLocationStatus().lift=="idle" and pool.door_left.open and not down.locked)
        train.blocked=false
        -- Pending NPC rides resume without granting player permission.
        globals.Cal_Permission=0;host.attributes.asylum_loc_lift_pending=2
        AsylumLocationStart();advance(12)
        assert(math.abs(train.origin.z-top.origin.z)<8 and up.locked and not down.locked)
        press(down);advance(12)
        assert(math.abs(train.origin.z-bottom.origin.z)<8)
        AsylumLocationStart();advance(.5)
        assert(#up.outputs.OnPressed==1 and #down.outputs.OnUseLocked==1)
        assert(AsylumLocationLiftUp()==false and AsylumLocationStatus().lift=="idle")
        globals.Cal_Permission=1;advance(.5);press(up);advance(1)
        train.removed=true;advance(.5)
        assert(AsylumLocationStatus().lift=="idle" and AsylumLocationStatus().liftPending==0)
        train.removed=false
        AsylumLocationStop()
        assert(#up.outputs.OnPressed==0 and #down.outputs.OnUseLocked==0)
        for _,message in ipairs(messages) do assert(not message:find("ERROR",1,true),message) end
        return {scenarios=13,messages=#messages,starts=train.starts,gameTested=false,physicalVRTested=false}
    ''')
    print(json.dumps(dict(result), indent=2))


if __name__ == '__main__':
    main()
