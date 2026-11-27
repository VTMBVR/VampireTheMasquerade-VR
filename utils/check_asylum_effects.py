"""Run original dialogue-to-item/save scenarios without starting the game.

Engine fixtures exercise the integration contract; they do not certify native
VR pickup physics. Imported mesh/material compilation is checked separately.
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
    result=runtime.execute(r'''
        local messages={};print=function(text) messages[#messages+1]=text end
        local now=1;function Time() return now end
        local vector={};vector.__index=vector
        function Vector(x,y,z) return setmetatable({x=x,y=y,z=z},vector) end
        function vector.__add(a,b) return Vector(a.x+b.x,a.y+b.y,a.z+b.z) end
        function vector.__mul(a,b) return Vector(a.x*b,a.y*b,a.z*b) end
        function QAngle(x,y,z) return {x=x,y=y,z=z} end
        local entity={};entity.__index=entity
        local pool={};local spawned=0;local blocked=false
        local function make(name)
            return setmetatable({name=name,values={},scope={},think={},outputs={},origin=Vector(0,0,0)},entity)
        end
        function entity:IsNull() return self.removed or false end
        function entity:Attribute_GetIntValue(k,default) local v=self.values[k];if v==nil then return default end;return v end
        function entity:Attribute_SetIntValue(k,v) self.values[k]=v end
        function entity:GetPrivateScriptScope() return self.scope end
        function entity:SetContextThink(k,callback,delay) self.think[k]=callback end
        function entity:GetAbsOrigin() return self.origin end
        function entity:GetForwardVector() return Vector(1,0,0) end
        function entity:GetAngles() return QAngle(0,0,0) end
        function entity:GetHMDAvatar() return self.vr~=false and self or nil end
        function entity:RedirectOutput(output,callback,host)
            self.outputs[output]={callback=callback,host=host};self.hookCount=(self.hookCount or 0)+1
        end
        function entity:SetMass(mass) self.mass=mass end
        function entity:GetName() return self.name end
        function entity:GetEntityIndex() return self.id or 218 end
        function entity:GetGraphParameter(name) return self.values[name] or 0 end
        function entity:SetGraphParameterFloat(name,value) self.values[name]=value end
        function entity:SetGraphParameterEnum(name,value) self.values[name]=value end
        function entity:SetParent(parent,attachment) self.parent=parent;self.attachment=attachment end
        function entity:SetLocalOrigin(position) self.localOrigin=position end
        function entity:SetLocalAngles(x,y,z) self.localAngles=QAngle(x,y,z) end
        function entity:ScriptLookupAttachment(name) return name=='muzzle' and 1 or 0 end
        function entity:GetAttachmentOrigin(index) return Vector(13,1.75,2.75) end
        function entity:SetModel(name) self.model=name end
        function UTIL_Remove(e) e.removed=true end
        function TraceHull(trace)
            assert(trace.startpos and trace.endpos and trace.min and trace.max,
                   'Source 2 TraceHull requires min/max bounds')
            trace.hit=blocked;trace.startsolid=blocked
        end
        Entities={player=make('player')}
        function Entities:GetLocalPlayer() return self.player end
        function Entities:FindAllByName(name)
            local found={};for _,e in ipairs(pool) do if e.name==name and not e.removed then found[#found+1]=e end end;return found
        end
        function Entities:FindByName(previous,name) return self:FindAllByName(name)[1] end
        function SpawnEntityFromTableSynchronous(class,kv)
            assert(class~='light_omni2','Alyx uses light_omni for runtime lights')
            local e=make(kv.targetname);e.class=class;e.kv=kv;e.origin=kv.origin
            pool[#pool+1]=e;spawned=spawned+1;return e
        end
        local host=make('host');local actor=make('npc')
        local source=require('npc_dialog_source');local items=require('npc_source_items')
        source.Bind(host);source.Reset();items.Start(host,source,true)
        source.BindWorld(function(session,event) return items.Handle(session,event) end)
        local function firstCopy(name)
            return Entities:FindAllByName('vtmbvr_asylum_item_'..name)[1]
        end
        local function freshItems()
            local module=dofile(package.searchpath('npc_source_items',package.path))
            module.Start(host,source,false);return module
        end
        local function selectId(session,id)
            for i,answer in ipairs(session.answers) do
                if answer.id==id then session.page=math.floor((i-1)/4);return session:Choice((i-1)%4+1) end
            end
            error('Missing original answer '..id)
        end
        -- Jeanette's actual gallery assignment gives a knife and updates its quest.
        local jeanette=source.Open('jeanette',actor);assert(jeanette:Enter(361))
        assert(source.Get('i','item_w_knife',0)==1 and source.Get('q','Slashterpiece',0)==1)
        items.Tick();assert(not firstCopy('item_w_knife'),'Do not cover the open dialogue with a prop')
        items.Flush(jeanette)
        local knife=firstCopy('item_w_knife');assert(knife and knife.class=='prop_physics')
        assert(knife.kv.CanDepositInItemHolder and knife.kv.carrytype_override=='CARRY_TYPE_1H_RIGID')
        local count=spawned;local hooks=knife.hookCount
        items.Flush(jeanette);items.Tick();assert(spawned==count and knife.hookCount==hooks)
        local pickup=knife.outputs.OnPlayerPickup;pickup.host.scope[pickup.callback]()
        assert(knife:Attribute_GetIntValue('vtmbvr_quest_item_picked',0)==1)
        assert(source.Get('i','item_w_knife',0)==1,'Pickup must not grant another logical item')
        -- A save/recreated scope retains the existing physical copy and inventory.
        items=freshItems();items.Tick();assert(spawned==count and firstCopy('item_w_knife')==knife)
        source.BindWorld(function(s,e) return items.Handle(s,e) end)
        -- Blocked spawn remains queued; retry after the obstruction clears.
        local therese=source.Open('therese',actor);therese:Enter(661)
        blocked=true;items.Flush(therese);assert(not firstCopy('item_k_oceanhouse_sewer_key'))
        assert(items.Status().item_k_oceanhouse_sewer_key.pending)
        blocked=false;items.Tick();assert(firstCopy('item_k_oceanhouse_sewer_key'))
        -- Knox hands over the original license, and returning it removes only our copy.
        local knox=source.Open('knox',actor);knox:Enter(266);items.Flush(knox)
        local license=firstCopy('item_g_driver_license_gimble');assert(license)
        local unrelated=make('vtmbvr_asylum_item_item_g_driver_license_gimble');pool[#pool+1]=unrelated
        source.Configure({globals={Knox_Quest=6,Knox_Fess=0,Patch_Plus=1}})
        knox:Enter(491)
        assert(selectId(knox,494))
        assert(source.Get('i','item_g_driver_license_gimble',0)==0 and license.removed and not unrelated.removed)
        -- The original sister reply gives a revolver or six rounds if already owned.
        local sisters=source.Open('tourette',actor);sisters:Enter(651)
        assert(selectId(sisters,652));items.Flush(sisters);assert(firstCopy('item_w_thirtyeight'))
        sisters:Enter(651);assert(selectId(sisters,653));assert(source.Get('ammo','item_w_thirtyeight',0)==6)
        -- Refusing the pendant awards the original experience event once.
        jeanette:Enter(581);jeanette:Enter(581)
        local awards=0;for _,e in ipairs(jeanette.effects) do if e.name=='pc.AwardExperience' then awards=awards+1 end end
        assert(awards==1 and source.Get('xp','Haunted04',0)==1)
        -- Named world targets survive nested FindEntityByName(...).method().
        local chunk=source.Open('chunk',actor);chunk:Enter(231);assert(selectId(chunk,232))
        local targeted
        for _,event in ipairs(chunk.effects) do if event.name=='world.BeginSequence' then targeted=event end end
        assert(targeted and targeted.target=='dementation_sequence')
        source.Configure({clan='Malkavian',male=false,bloodpool=4,skills={Seduction=7,Humanity=9}})
        local snapshot=source.Snapshot();local savedAmmo=snapshot.ammo.item_w_thirtyeight
        local restored=dofile(package.searchpath('npc_dialog_source',package.path));restored.Bind(host)
        assert(restored.Snapshot().ammo.item_w_thirtyeight==savedAmmo and restored.Snapshot().experience.Haunted04==1)
        source.Reset()
        local cleared=source.Snapshot()
        assert(cleared.player.clan=='Brujah' and cleared.player.male and cleared.player.bloodpool==10)
        assert(cleared.skills.Seduction==0 and cleared.skills.Humanity==7)
        assert(cleared.ammo.item_w_thirtyeight==0 and cleared.experience.Haunted04==0)
        source.Configure(snapshot)
        local roundtrip=source.Snapshot()
        assert(roundtrip.player.clan=='Malkavian' and not roundtrip.player.male and roundtrip.player.bloodpool==4)
        assert(roundtrip.ammo.item_w_thirtyeight==6 and roundtrip.skills.Seduction==7 and roundtrip.experience.Haunted04==1)
        -- Resetting a preview/profile clears every relevant player namespace.
        source.Reset();local clean=source.Snapshot();items.Tick()
        assert(clean.player.clan=='Brujah' and clean.player.male and clean.player.bloodpool==10 and clean.player.humanity==7)
        assert(clean.skills.Seduction==0 and clean.ammo.item_w_thirtyeight==0 and clean.experience.Haunted04==0)
        assert(not firstCopy('item_w_knife') and not firstCopy('item_w_thirtyeight'))
        items.Stop()
        local itemSpawned=spawned
        -- Original trigger bounds and native clip duration drive the intro.
        local location=require('npc_source_location_data')
        local sister=make(location.sisters.actor);pool[#pool+1]=sister
        sister.origin=Vector(-906.727,452.287,-13.4556)
        local sequences={};local opened=0
        function NpcSceneSourceSequence(actor,clip)
            if clip then assert(require('asylum_data/tourette').sceneBindings[clip],'Unbound source scene clip: '..clip) end
            sequences[#sequences+1]=clip or 'movement';return true
        end
        function NpcSceneDialogueBusy(actor) return false end
        function NpcDialogIsOpen() return false end
        function NpcDialogOpen(desktop,actor) assert(not desktop and actor==sister);opened=opened+1 end
        for _,name in ipairs({'NpcSceneSourceSequence','NpcSceneDialogueBusy','NpcDialogIsOpen','NpcDialogOpen'}) do
            host.scope[name]=_G[name];_G[name]=nil
        end
        local sisters=require('asylum_sisters');sisters.Start(host,source,true)
        sisters.Tick(Entities.player);assert(not sisters.CanTalk(sister) and opened==0)
        local gun=Entities:FindByName(nil,'vtmbvr_tourette_handgun')
        assert(gun and gun.parent==sister and gun.attachment=='r_hand')
        Entities.player.origin=Vector(-936,688,-14)
        sisters.Tick(Entities.player);assert(sisters.Status().introPending)
        local before=spawned
        sisters=dofile(package.searchpath('asylum_sisters',package.path));sisters.Start(host,source,false)
        sisters.Tick(Entities.player);assert(spawned==before,'Restore must reuse the original gun')
        now=now+location.sisters.durations.Tourette_intro+.01;sisters.Tick(Entities.player)
        assert(opened==1 and sisters.CanTalk(sister) and not sisters.Status().introPending)
        source.BindWorld(function(session,event)
            if event.name=='npc.SetGesture' then return host.scope.NpcSceneSourceSequence(session.actor,event.args[1]) end
            return false
        end)
        local gestures=source.Open('tourette',sister)
        gestures:Enter(901);assert(sequences[#sequences]=='malk_female_idle')
        gestures:Enter(911);assert(sequences[#sequences]=='SM_Huddle')
        -- The actual imported performance carries both secondary sound and
        -- the whitelisted source callback. No Python string is executed.
        local bank=require('asylum_data/tourette');local line=bank.lines.line921_col_e
        assert(#line.timelineEvents==2 and line.sceneDuration>=8.9)
        local emitted,stopped,flashes=0,0,0
        function EmitSoundOn(sound,actor) assert(sound==location.sounds.sistersGunshot.sound);emitted=emitted+1 end
        function StopSoundOn(sound,actor) stopped=stopped+1 end
        local performance=require('npc_source_performance')
        assert(performance.Start(sister,line,bank,'neutral',function(event)
            local handled=sisters.Event(sister,event);assert(handled);flashes=flashes+1
        end))
        local began=now
        now=began+2.94;sister.think.VTMBVRSourcePerformance()
        assert(emitted==1 and flashes==0)
        now=began+3.68;sister.think.VTMBVRSourcePerformance()
        sister.think.VTMBVRSourcePerformance();assert(emitted==1 and flashes==1)
        local flash=Entities:FindByName(nil,'vtmbvr_sisters_flash');assert(flash and flash.kv.range==64)
        flash.think.AsylumMuzzleFlash();assert(flash.removed)
        performance.Stop(sister);assert(stopped==1)
        -- Cancelling before a cue prevents delayed world effects.
        performance.Start(sister,line,bank,'neutral',function() error('Cancelled cue escaped') end)
        performance.Stop(sister);assert(not sister.think.VTMBVRSourcePerformance)
        source.Configure({globals={Jeanette_Dead=1}})
        sisters.DialogueEnd(sister,{character='tourette'});assert(sisters.Keep(218) and not sisters.CanTalk(sister))
        now=now+3.01;sisters.Tick(Entities.player)
        assert(not sisters.Keep(218) and sister.model:find('/therese/',1,true) and gun.removed)
        before=spawned;sisters.Tick(Entities.player);assert(spawned==before,'Resolved scene must not recreate the gun')
        source.Configure({globals={Story_State=10,Tourette_Wins=1,Jeanette_Dead=0}})
        assert(sisters.CanTalk(sister),'A later campaign revisit must remain talkable')
        sisters.Stop()
        local beforeOpened=opened
        Entities.player.vr=false;sisters.Start(host,source,true)
        sisters.Tick(Entities.player);now=now+location.sisters.durations.Tourette_intro+.01;sisters.Tick(Entities.player)
        assert(opened==beforeOpened and sisters.CanTalk(sister),'Desktop keeps its normal E/mouse entry point')
        sisters.Stop()
        return {originalDialogueBranches=7,physicalCopiesSpawned=itemSpawned,saveRestore=true,
                sistersIntro=true,sistersChoreography=true,interruptionCleanup=true,
                duplicatePrevention=true,blockedSpawnRetry=true,reset=true,nativeVRPickup=false}
    ''')
    print(json.dumps(dict(result),indent=2))


if __name__=='__main__':main()
