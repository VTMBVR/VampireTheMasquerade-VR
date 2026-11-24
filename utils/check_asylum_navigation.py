"""Check real NAV geometry and scene movement contracts without starting Alyx."""
import argparse
import hashlib
import json
from pathlib import Path
import sys

from source2_nav import read_nav, closest_point, components


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--nav-file', type=Path, required=True)
    parser.add_argument('--lua-runtime', type=Path)
    args = parser.parse_args()
    if args.lua_runtime:
        sys.path.insert(0, str(args.lua_runtime))
    from lupa import LuaRuntime
    root = Path(__file__).resolve().parents[1]
    nav = read_nav(args.nav_file)
    audit = json.loads((root/'scripts/dialogue/asylum/navigation.json').read_text(encoding='utf-8'))
    assert audit['navSha256'] == hashlib.sha256(args.nav_file.read_bytes()).hexdigest()
    areas = [a for a in nav['areas'] if a['hull']==audit['hull']['index']]
    assert audit['hull']['height']>=64 and audit['areas']==len(areas)
    groups = components(areas)
    runtime = LuaRuntime(unpack_returned_tuples=True)
    runtime.execute('package.path='+json.dumps((root/'scripts/vscripts').as_posix()+'/?.lua;')+'..package.path')
    runtime.globals().scene_file = str(root/'scripts/vscripts/female_scene.lua')
    runtime.execute(r'''
        math.atan2=math.atan2 or function(y,x) return math.atan(y,x) end
        local v={};v.__index=v
        function Vector(x,y,z) return setmetatable({x=x,y=y,z=z},v) end
        function v.__add(a,b) return Vector(a.x+b.x,a.y+b.y,a.z+b.z) end
        function v.__sub(a,b) return Vector(a.x-b.x,a.y-b.y,a.z-b.z) end
        function v.__mul(a,b) return Vector(a.x*b,a.y*b,a.z*b) end
        function v.__div(a,b) return Vector(a.x/b,a.y/b,a.z/b) end
        function v:Length() return math.sqrt(self.x*self.x+self.y*self.y+self.z*self.z) end
        now=0;function Time() return now end
        messages={};print=function(x) messages[#messages+1]=x end
        function DoIncludeScript() end
        function NpcDialogInstall() end
        local model='models/character/npc/common/dancer/male_1/male_dancer_1.vmdl'
        actor={position=Vector(0,0,0),angles={y=0},parameters={source_walk=false},path=false,thinks={},walkWrites=0}
        function actor:IsNull() return false end
        function actor:GetAbsOrigin() return self.position end
        function actor:SetAbsOrigin(p) self.position=p end
        function actor:GetAngles() return self.angles end
        function actor:SetAbsAngles(x,y,z) self.angles={x=x,y=y,z=z} end
        function actor:GetEntityIndex() return 123 end
        function actor:GetName() return 'npc_vampire_asylum_149' end
        function actor:GetModelName() return model end
        function actor:GetGraphParameter(k) return self.parameters[k] end
        function actor:SetGraphParameterBool(k,x) self.parameters[k]=x;if k=='source_walk' and x then self.walkWrites=self.walkWrites+1 end end
        function actor:SetGraphParameterEnum(k,x) self.parameters[k]=x end
        function actor:RegisterAnimTagListener(callback) end
        function actor:NpcNavClearGoal() self.path=false end
        function actor:NpcNavGoalActive() return self.path end
        function actor:NpcForceGoPosition(p) self.goal=p;self.path=true;self.pathCalls=(self.pathCalls or 0)+1 end
        function actor:SetGraphLookTarget(p)
            local d=p-self.position;self.angles.y=math.deg(math.atan2(d.y,d.x))
        end
        function actor:SetParent() end
        host={}
        function host:GetPrivateScriptScope() return _G end
        function host:Attribute_GetIntValue(_,default) return default end
        thisEntity=host
        Entities={FindByName=function() return nil end,FindAllByName=function() return {} end,
            FindAllByClassname=function(_,class) return class=='generic_actor' and {actor} or {} end}
        function TraceLine(t)
            t.hit=not gapAt or t.startpos.x<gapAt
            t.pos=Vector(t.startpos.x,t.startpos.y,0);t.normal=Vector(0,0,1)
        end
        function TraceHull(t)
            t.hit=wallAt and math.max(t.startpos.x,t.endpos.x)+(t.max and t.max.x or 0)>=wallAt or false
            if ceilingAt and math.max(t.startpos.z,t.endpos.z)+t.max.z>ceilingAt then t.hit=true end
            largestHull=math.max(largestHull or 0,t.max.z-t.min.z)
            t.pos=t.hit and t.startpos or t.endpos;t.normal=Vector(0,0,1)
        end
        dofile(scene_file)
        FemaleSceneThink()
        state=NpcSceneRegisterActor(actor)
        function reset()
            NpcSceneSourcePose(actor,Vector(0,0,0),0,nil)
            wallAt=nil;gapAt=nil;ceilingAt=nil;completed=nil;state.dialogueOwner=nil;actor.parameters.source_walk=false
        end
        function route(x,touch)
            local goal=Vector(x,0,0)
            assert(NpcSceneSourceRoute(actor,goal,90,nil,function(ok) completed=ok end,
                function() return touch~=false and (actor.position-goal):Length()<3 end,
                {approach=Vector(math.max(0,x-35),0,0),finalApproach=64,clearance=navigation.Clearance()}))
        end
        function advance(seconds)
            for i=1,math.ceil(seconds*30) do
                now=now+1/30
                if actor.path and state.sourceMove then
                    local d=actor.goal-actor.position;local length=d:Length()
                    -- Native path reaches its approach or stops short; the
                    -- final walk must use real collision/support checks.
                    if length<=1 then actor.path=false
                    else
                        local next=actor.position+d*(math.min(2,length)/length)
                        if (wallAt and next.x+12>=wallAt) or (gapAt and next.x>=gapAt) then actor.path=false
                        else actor.position=next end
                    end
                end
                FemaleSceneThink()
            end
        end
    ''')
    # Compare the Lua polygon projection with an independently decoded NAV.
    runtime.execute("navigation=require('npc_source_navigation')")
    projection_cases = 0
    for area in areas:
        point = [sum(p[i] for p in area['corners'])/len(area['corners']) for i in range(3)]
        point = closest_point(point, area['corners'])
        runtime.globals().query = runtime.table_from(point)
        assert runtime.execute('local p=Vector(query[1],query[2],query[3]);local a=navigation.Approach(p,p);return a and (a-p):Length()<.01')
        projection_cases += 1
    runtime.execute(r'''
        reset();route(85);advance(8)
        assert(completed==true and math.abs(actor.position.x-85)<3 and actor.parameters.source_walk==false)
        assert(math.abs(actor.angles.y-90)<1 and actor.walkWrites>0)
        reset();wallAt=40;route(85);advance(8)
        assert(completed==false and actor.position.x<40 and actor.parameters.source_walk==false)
        reset();gapAt=40;route(85);advance(8)
        assert(completed==false and actor.position.x<40)
        reset();ceilingAt=72;route(85);advance(8)
        assert(completed==false and largestHull==79,'Do not squeeze a standing NPC through a short hull')
        reset();route(45,false);advance(25)
        assert(completed==false,'Actual trigger overlap is required and wait is bounded')
        reset();route(45);advance(.3)
        state.dialogueOwner='test';advance(25);state.dialogueOwner=nil;advance(8)
        assert(completed==true,'Conversation must pause, not expire, a route')
        reset();assert(NpcSceneSourceStep(actor,Vector(45,0,0),0,nil,function(ok) completed=ok end))
        advance(.2);state.dialogueOwner='test';advance(25)
        state.dialogueOwner=nil;advance(8);assert(completed==true)
        reset();assert(NpcSceneSourceStep(actor,Vector(45,0,2.6),0,nil,function(ok) completed=ok end))
        advance(8);assert(completed==true,'NAV raster height must not strand a completed XY waypoint')
        function actor:GetBoundingMins() return Vector(-11,-11,0) end
        function actor:GetBoundingMaxs() return Vector(11,11,72) end
        local actual=navigation.Clearance(actor);assert(actual.radius==11 and actual.height==72)
        reset();wallAt=40
        local resolved=navigation.Resolve(Vector(32,0,0),actor,function(p) return Vector(p.x,p.y,0) end)
        assert(resolved and resolved.x==20 and math.abs(resolved.x-32)<=12)
        ceilingAt=60
        assert(not navigation.Resolve(Vector(32,0,0),actor,function(p) return Vector(p.x,p.y,0) end))
        for _,message in ipairs(messages) do assert(not message:find('ERROR',1,true),message) end
    ''')
    print(json.dumps({'navAreas':len(areas),'components':len(set(groups.values())),
                      'polygonProjectionCases':projection_cases,'movementScenarios':11,
                      'nativeNavigationTested':False},indent=2))


if __name__ == '__main__':
    main()
