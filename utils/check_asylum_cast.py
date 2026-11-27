"""Check adoption of Hammer NPCs and story transitions without launching Alyx."""
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
    lua=LuaRuntime(unpack_returned_tuples=True)
    lua.globals().scripts=(root/'scripts/vscripts').as_posix()
    result=lua.execute(r'''
        package.path=scripts.."/?.lua;"..package.path
        local state,pool,spawned={},{},0
        local entity={};entity.__index=entity
        function Vector(x,y,z) return {x=x,y=y,z=z} end
        function QAngle(x,y,z) return {x=x,y=y,z=z} end
        function entity:IsNull() return self.removed or false end
        function entity:GetName() return self.name end
        function entity:GetAbsOrigin() return self.position end
        function entity:GetAngles() return self.angles end
        function entity:Attribute_GetIntValue(k,d) local v=self.attrs[k];if v==nil then return d end;return v end
        function entity:Attribute_SetIntValue(k,v) self.attrs[k]=v end
        function entity:SetContextThink(_,callback) self.think=callback end
        function entity:GetPrivateScriptScope() return _G end
        local function make(name,position,yaw)
            local actor=setmetatable({name=name,position=position,angles=QAngle(0,yaw,0),attrs={}},entity)
            pool[#pool+1]=actor;return actor
        end
        local host=make('owner',Vector(0,0,0),0);thisEntity=host
        package.loaded.npc_dialog_source={Snapshot=function() return state end,Bind=function() end,
            Reset=function() state={globals={},quests={},talked={},dead={}} end,
            Configure=function(profile) for k,v in pairs(profile.globals) do state.globals[k]=v end end}
        function SpawnEntityFromTableSynchronous(_,kv)
            spawned=spawned+1
            return make(kv.targetname,kv.origin,kv.angles.y)
        end
        function UTIL_Remove(e) e.removed=true end
        function NpcSceneDialogueBusy() return false end
        function NpcSceneSourcePose(actor,at,yaw)
            if at then actor.position=at end;if yaw then actor.angles.y=yaw end;return true
        end
        Entities={FindAllByClassname=function()
            local result={};for _,e in ipairs(pool) do if e~=host and not e.removed then result[#result+1]=e end end
            return result
        end}
        function AsylumLocationStart() end
        function AsylumLocationStop() end
        -- Exercise the authored path. A new unexpected runtime spawn must be
        -- caught rather than silently floor-adjusted by this fixture.
        function TraceLine() error('Unexpected floor trace for an authored NPC') end
        print=function() end
        local function loadCast() dofile(scripts..'/asylum_cast.lua') end
        loadCast()
        local roster=require('npc_source_cast_data')
        state={globals=roster.profiles.first_visit_quest.globals,quests={},talked={},dead={}}
        local plan=AsylumCastPlan(state);assert(#plan==16)
        local authored={}
        for _,slot in ipairs(plan) do
            local p=slot.position
            if slot.entry.sourceId==362 then p={p[1]+17,p[2],p[3]} end
            local actor=make('npc_vampire_asylum_'..slot.entry.sourceId,Vector(p[1],p[2],p[3]),slot.yaw)
            authored[slot.entry.sourceId]=actor
            thisEntity=actor;dofile(scripts..'/asylum_map_actor.lua');Spawn()
            -- Save restoration must not recapture an ambient walk position.
            local x=actor.attrs.asylum_map_x
            actor.position=Vector(p[1]+99,p[2],p[3]);Activate()
            assert(actor.attrs.asylum_map_x==x)
        end
        thisEntity=host;assert(AsylumCastEnable('first_visit_quest'))
        assert(spawned==0,'Map NPCs must be adopted without replacement')
        assert(authored[362].position.x==-1011,'Hammer placement must survive initialization')
        assert(authored[145].attrs.vtmbvr_talk_enabled==0)
        assert(authored[184].attrs.vtmbvr_talk_enabled==1)
        local jeanette=authored[187]
        assert(math.abs(jeanette.position.x+904.223)<.001)
        -- A later Jeanette visit goes to the imported office, not her map
        -- introduction. Only this non-authored destination needs grounding.
        local vector={};vector.__index=vector
        function Vector(x,y,z) return setmetatable({x=x,y=y,z=z},vector) end
        function vector.__add(a,b) return Vector(a.x+b.x,a.y+b.y,a.z+b.z) end
        function vector.__sub(a,b) return Vector(a.x-b.x,a.y-b.y,a.z-b.z) end
        function TraceLine(q) q.hit=false end
        state.talked.jeanette=1;host.think()
        assert(math.abs(jeanette.position.x+820.077)<.001 and jeanette.position.z>-100)
        assert(spawned==0)
        -- Reinstall Lua after an ambient move: map attributes retain home.
        authored[362].position=Vector(100,200,300)
        loadCast();assert(AsylumCastEnable('first_visit_quest'))
        assert(authored[362].position.x==-1011 and spawned==0)
        -- A conditional NPC is removed, then disable restores the editor's
        -- authored baseline; reenabling adopts it without a second duplicate.
        state.globals.Mercurio_Quest=0;host.think()
        assert(authored[362].removed)
        AsylumCastDisable();assert(spawned==1)
        AsylumCastEnable('first_visit_quest');assert(spawned==1)
        local count=0;for _,actor in ipairs(Entities:FindAllByClassname('generic_actor')) do
            count=count+1
            assert(actor.name:match('^npc_vampire_asylum_%d+$'))
        end
        assert(count==16)
        return {initialActors=count,adoptedWithoutRespawn=true,editorPoseRetained=true,
            jeanetteOfficeTransition=true,saveReinstall=true,disableRestoresCast=true,gameTested=false}
    ''')
    print(json.dumps(dict(result),indent=2))


if __name__=='__main__':main()
