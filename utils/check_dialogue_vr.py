"""Exercise real NPC dialogue entry/pointer Lua with controller API fixtures.

This uses the imported Jeanette dialogue and actual interaction think loop.
It does not substitute for testing tracking, rendering or bindings on a HMD.
"""
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
    root=Path(__file__).resolve().parents[1]
    runtime=LuaRuntime(unpack_returned_tuples=True)
    runtime.execute('package.path='+json.dumps((root/'scripts/vscripts').as_posix()+'/?.lua;')+'..package.path')
    runtime.globals().dialogue_file=str(root/'scripts/vscripts/npc_dialog.lua')
    result=runtime.execute(r'''
        local v={};v.__index=v
        function Vector(x,y,z) return setmetatable({x=x,y=y,z=z},v) end
        function v.__add(a,b) return Vector(a.x+b.x,a.y+b.y,a.z+b.z) end
        function v.__sub(a,b) return Vector(a.x-b.x,a.y-b.y,a.z-b.z) end
        function v.__mul(a,b) return Vector(a.x*b,a.y*b,a.z*b) end
        function v.__div(a,b) return Vector(a.x/b,a.y/b,a.z/b) end
        function v:Length() return math.sqrt(self.x*self.x+self.y*self.y+self.z*self.z) end
        function v:Normalized() return self/self:Length() end
        function v:Dot(b) return self.x*b.x+self.y*b.y+self.z*b.z end
        function QAngle(x,y,z) return {x=x,y=y,z=z,Forward=function()
            return Vector(math.cos(math.rad(y))*math.cos(math.rad(x)),math.sin(math.rad(y))*math.cos(math.rad(x)),-math.sin(math.rad(x)))
        end} end
        now=1;function Time() return now end
        local messages={};print=function(s) messages[#messages+1]=s end
        local noop=function() end
        package.loaded.npc_dialog_lipsync={Stop=noop,Start=noop}
        package.loaded.npc_dialog_face_editor={Close=noop,Think=noop,Bind=noop,PointerMove=noop,PointerClick=noop,opened=false}
        local performances=0
        package.loaded.npc_source_performance={Stop=noop,Reset=noop,Start=function() performances=performances+1;return true end}
        local entities={};local native={};local sounds={};local bindCalls=0
        local e={};e.__index=e
        local function make(name,position)
            local o=setmetatable({name=name,position=position or Vector(0,0,0),classes={},attributes={},outputs={},thinks={}},e)
            entities[name]=o;return o
        end
        function e:IsNull() return self.removed or false end
        function e:GetName() return self.name end
        function e:GetEntityIndex() return self.id or 187 end
        function e:GetModelName() return 'models/character/npc/unique/santa_monica/jeanette/jeanette.vmdl' end
        function e:GetAbsOrigin() return self.position end
        function e:SetAbsOrigin(p)
            self.position=p
            for _,child in pairs(entities) do if child.parent==self then child.position=p end end
        end
        function e:SetAbsAngles(x,y,z)
            self.angles=QAngle(x,y,z)
            for _,child in pairs(entities) do if child.parent==self then child.angles=self.angles end end
        end
        function e:SetParent(parent) self.parent=parent end
        function e:SetLocalOrigin(p) self.position=self.parent.position+p end
        function e:SetLocalAngles(x,y,z) self.angles=self.parent.angles end
        function e:EyePosition() return self.position+Vector(0,0,64) end
        function e:EyeAngles() return QAngle(0,0,0) end
        function e:GetHealth() return self.health or 100 end
        function e:Attribute_GetIntValue(k,default) local n=self.attributes[k];return n==nil and default or n end
        function e:Attribute_SetIntValue(k,n) self.attributes[k]=n end
        function e:SetContextThink(name,callback,delay) self.thinks[name]=callback end
        function e:AcceptUserInput() self.nativeInput=true end
        function e:IgnoreUserInput() self.nativeInput=false end
        function e:AddCSSClasses(classes) for c in classes:gmatch('%S+') do self.classes[c]=true end end
        function e:RemoveCSSClasses(classes) for c in classes:gmatch('%S+') do self.classes[c]=nil end end
        function e:RedirectOutput(name,callback,host) self.outputs[name]=callback end
        function e:ScriptLookupAttachment(name) return 1 end
        function e:GetAttachmentOrigin() return self.position end
        function e:GetAttachmentForward() return self.direction end
        function e:GetLiteralHandType() return self.literal end
        local owner=make('scene');thisEntity=owner
        local actor=make('npc_vampire_asylum_187',Vector(80,0,0))
        local player=make('player');local hmd=make('hmd')
        local left,right=make('left',Vector(0,-8,48)),make('right',Vector(0,8,48))
        left.literal=0;right.literal=1 -- deliberately different from 1-id
        local hands={[0]=left,[1]=right};local pulls={[0]=0,[1]=0}
        local digital={[0]=false,[1]=false};local fake=false;local blocked=false
        function player:GetHMDAvatar() return hmd end
        function hmd:GetVRHand(id) return hands[id] end
        function player:GetAnalogActionPositionForHand(literal,action)
            assert(action==1);return Vector(pulls[literal],0,0)
        end
        function player:IsDigitalActionOnForHand(literal,action) assert(action==3);return digital[literal] end
        Entities={GetLocalPlayer=function() return player end,
            FindByName=function(_,_,name) local o=entities[name];return o and not o.removed and o or nil end,
            FindAllByClassname=function(_,class)
                if class=='generic_actor' then return {actor} end
                local a={};for _,o in pairs(entities) do if not o.removed and o.panel then a[#a+1]=o end end;return a
            end}
        function SpawnEntityFromTableSynchronous(class,kv)
            assert(class=='point_clientui_world_panel' or class=='info_target','VR must not spawn a camera or controls')
            local o=make(kv.targetname,kv.origin);o.panel=class=='point_clientui_world_panel';o.kv=kv;o.angles=kv.angles;return o
        end
        function UTIL_Remove(o) o.removed=true end
        function DoEntFireByInstanceHandle(...) native[#native+1]={...} end
        function EmitSoundOn(sound,who) sounds[#sounds+1]=sound end
        function StopSoundOn() end
        function SendToConsole(command) bindCalls=bindCalls+1 end
        function NpcSceneBeginDialogue() return true end
        function NpcSceneEndDialogue() return true end
        function TraceLine(t) t.hit=blocked;t.pos=blocked and t.startpos or t.endpos end
        Convars={GetBool=function(_,name) return name=='vr_enable_fake_vr' and fake end,RegisterCommand=noop}
        local function aim(hand,target) hand.direction=(target-hand.position):Normalized() end
        local function aimActor() for _,hand in pairs(hands) do aim(hand,actor.position+Vector(0,0,48)) end end
        local autoProbe=true;local backgroundOverride=nil
        local function tick()
            now=now+.016;owner.thinks.NpcDialogueInteraction()
            local p=Entities:FindByName(nil,'vtmbvr_dialog_panel')
            if autoProbe and p and p.classes.WindowGrabProbe then
                local function decode(name)
                    local n=0;for b=0,10 do if p.classes['D'..name..b] then n=n+2^b end end;return n-32
                end
                local x,y=decode('WindowProbeX'),decode('WindowProbeY')
                local background=backgroundOverride
                if background==nil then background=x>=230 and x<790 and y>=720 and y<752 end
                _G[p.outputs['CustomOutput'..(background and 8 or 9)]]()
            end
        end
        local function panel() return Entities:FindByName(nil,'vtmbvr_dialog_panel') end
        local function aimPanel(hand,x,y)
            local p=panel();local heading=math.rad(p.angles.y+90)
            local right=Vector(math.sin(heading),-math.cos(heading),0)
            aim(hand,p.position+right*((x-512)/p.kv.panel_dpi)+Vector(0,0,(384-y)/p.kv.panel_dpi))
        end
        local function signal(p,name,bits)
            local n=0;for bit=0,bits-1 do if p.classes['D'..name..bit] then n=n+2^bit end end;return n
        end
        local function output(slot) local p=panel();_G[p.outputs['CustomOutput'..slot]]() end
        dofile(dialogue_file);NpcDialogInstall();aimActor();tick()
        assert(not panel())
        local status=NpcDialogVRStatus()
        assert(status.hmd and not status.fake and not status.open)
        assert(status.hands[0].input.pull==0 and status.hands[0].target==actor.name)
        -- Digital Use stays false (weapon action set), raw trigger still opens
        -- the actual imported Jeanette conversation from the pointed NPC.
        pulls[0]=.8;tick();assert(panel() and performances==1)
        status=NpcDialogVRStatus()
        assert(status.open and status.hands[0].input.pull==.8 and not status.hands[0].input.emulated)
        assert(panel().nativeInput==false and panel().classes.PointerMode)
        assert(panel().kv.orientation=='0' and panel().kv.ignore_depth and panel().kv.render_backface)
        assert(panel().parent and panel().parent.kv.spawnflags=='2')
        assert(panel().kv.dialog_layout_name:find('vtmbvr_dialog_world.xml',1,true))
        local p=panel();local line=signal(p,'SourceLine',11)
        pulls[0]=.65;tick();assert(not p.classes.DClickReady,'Opening pull cannot select a reply')
        pulls[0]=0;tick();pulls[1]=0;tick()
        aimPanel(left,250,500);pulls[0]=.8;tick()
        assert(p.classes.DPressed)
        pulls[0]=.5;tick();assert(p.classes.DPressed,'Hysteresis must hold a partial release')
        pulls[0]=.2;tick();assert(p.classes.DClickReady)
        local sequence=signal(p,'ClickSequence',8)
        output(0);output(6)
        assert(signal(p,'SourceLine',11)~=line and performances==2)
        assert(not p.classes.DClickReady and sequence==1)
        -- Closing while held must not immediately reopen on the next tick.
        pulls[0]=.8;tick();NpcDialogClose();aimActor();tick();assert(not panel())
        pulls[0]=0;tick();pulls[1]=.8;tick();assert(panel(),'Other controller must open too')
        pulls[1]=0;tick();pulls[0]=0;tick()
        -- Tracking loss discards the old click, and a held reconnect is primed.
        aimPanel(right,250,500);pulls[1]=.8;tick()
        hands[1]=nil;tick();hands[1]=right;tick()
        pulls[1]=0;tick();assert(not panel().classes.DClickReady)
        NpcDialogClose();aimActor();blocked=true;pulls[0]=.8;tick();assert(not panel())
        blocked=false;pulls[0]=0;tick();pulls[0]=.8;tick();assert(panel())
        pulls[0]=0;pulls[1]=0;tick()
        aimPanel(left,250,500);aimPanel(right,700,550)
        pulls[0]=.8;tick();local downX=signal(panel(),'PointerX',11)
        pulls[1]=.8;tick();pulls[1]=0;tick()
        assert(not panel().classes.DClickReady,'Second hand cannot release the first hand click')
        pulls[0]=0;tick();assert(panel().classes.DClickReady)
        assert(signal(panel(),'DownX',11)==downX)
        output(6);NpcDialogClose();aimActor()
        -- Grip-bound digital Use must not override an unpressed raw trigger.
        digital[0]=true;tick();assert(not panel());digital[0]=false
        actor.attributes.vtmbvr_talk_enabled=0;pulls[0]=.8;tick();assert(not panel())
        actor.attributes.vtmbvr_talk_enabled=1;pulls[0]=0;tick()
        -- Older/emulated APIs can fall back explicitly without crashing the
        -- whole interaction think loop; FakeVR remains opt-in.
        local analog=player.GetAnalogActionPositionForHand
        player.GetAnalogActionPositionForHand=function() error('API unavailable') end
        digital[0]=true;tick();assert(panel())
        NpcDialogClose();digital[0]=false;tick();player.GetAnalogActionPositionForHand=analog
        -- Across a bar the head can be in range while the controller is farther
        -- away. Hand reach must not shrink the eye-based interaction radius.
        left.position=Vector(-40,-8,48);aimActor();pulls[0]=.8;tick()
        assert(panel(),'A controller behind the head must reach an eligible NPC')
        NpcDialogClose();pulls[0]=0;tick();left.position=Vector(0,-8,48);aimActor()
        NpcDialogResetStory();aimActor();pulls[0]=.8;tick();pulls[0]=0;tick()
        local moved=panel();local before=moved.position;local beforeLine=signal(moved,'SourceLine',11)
        aimPanel(left,512,736);pulls[0]=.8;tick()
        assert(moved.classes.PanelDragging and not moved.classes.DClickReady)
        left.position=left.position+Vector(10,0,8);tick()
        assert((moved.position-before-Vector(10,0,8)):Length()<.01)
        local held=moved.position
        player.position=player.position+Vector(0,20,0);tick()
        assert((moved.position-held):Length()<.01,'Head motion must not move the window')
        pulls[0]=0;tick()
        assert(not moved.classes.PanelDragging and not moved.classes.DClickReady)
        assert(signal(moved,'SourceLine',11)==beforeLine,'Moving must not choose a reply')
        local fixedAngle=moved.angles.y;player.position=player.position+Vector(0,10,0);tick()
        assert(moved.angles.y==fixedAngle and (moved.position-held):Length()<.01)
        aimPanel(left,250,500);pulls[0]=.8;tick();pulls[0]=0;tick()
        assert(moved.classes.DClickReady,'Answer hit test must use the moved window')
        output(0);output(6);assert(signal(moved,'SourceLine',11)~=beforeLine)
        aimPanel(left,512,736);pulls[0]=.8;tick();assert(moved.classes.PanelDragging)
        hands[0]=nil;tick();assert(not moved.classes.PanelDragging,'Tracking loss must release the window')
        hands[0]=left;tick();pulls[0]=0;tick()
        -- Empty editor background moves the same parent without choosing a tool.
        backgroundOverride=true;package.loaded.npc_dialog_face_editor.opened=true
        aimPanel(left,410,180);pulls[0]=.8;tick();assert(moved.classes.PanelDragging)
        pulls[0]=0;tick();assert(not moved.classes.DClickReady)
        package.loaded.npc_dialog_face_editor.opened=false;backgroundOverride=nil
        -- A fast release must wait for client geometry classification.
        autoProbe=false;aimPanel(left,250,500);pulls[0]=.8;tick();pulls[0]=0;tick()
        assert(not moved.classes.DClickReady);output(9)
        assert(moved.classes.DClickReady);output(6)
        aimPanel(left,512,736);pulls[0]=.8;tick();pulls[0]=0;tick();output(8)
        assert(not moved.classes.PanelDragging and not moved.classes.DClickReady)
        autoProbe=true
        NpcDialogClose();player.position=Vector(0,0,0);left.position=Vector(0,-8,48);aimActor()
        fake=true;assert(NpcDialogFakeTrigger(0,true));tick();assert(panel())
        assert(NpcDialogFakeTrigger(0,false));tick();fake=false
        -- Interaction holds do not affect desktop bindings or HMD controls.
        assert(bindCalls==0 and #native==0)
        for _,message in ipairs(messages) do assert(not message:find('ERROR',1,true),message) end
        return {scenarios=22,sourcePerformances=performances,desktopBindingsChanged=bindCalls,
                cameraControlInputs=#native,physicalVRTested=false}
    ''')
    print(json.dumps(dict(result),indent=2))


if __name__=='__main__':main()
