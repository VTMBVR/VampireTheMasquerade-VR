"""Exercise imported dialogue branches and persisted state with a Lua runtime.

This checks logic and source coverage; rendered UI, sound and animation still
need acceptance in Alyx. Lupa is a development dependency, not a mod dependency.
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
    result=runtime.execute('''
        local messages={}
        print=function(message) messages[#messages+1]=message end
        local now=0
        function Time() now=now+.137;return now end
        local host={values={}}
        function host:Attribute_GetIntValue(k,default)
            local value=self.values[k];if value==nil then return default end;return value
        end
        function host:Attribute_SetIntValue(k,value) self.values[k]=value end
        local source=require('npc_dialog_source')
        local data=require('npc_dialog_source_data')
        local presets=require('npc_source_cast_data').profiles
        source.Bind(host)
        source.Reset()
        local first=source.Open('jeanette')
        assert(first.line==1 and not first.ended,'Jeanette first visit must start at line 1')
        assert(source.Snapshot().talked.jeanette==1)
        local second=source.Open('jeanette')
        assert(second.line~=1,'Repeat conversation must use a repeat entry condition')
        source.Configure({globals={Jeanette_Know=1},quests={Hotel=3},items={item_g_ghost_pendant=1}})
        local fresh=dofile(package.searchpath('npc_dialog_source',package.path))
        fresh.Bind(host)
        local saved=fresh.Snapshot()
        assert(saved.globals.Jeanette_Know==1 and saved.quests.Hotel==3 and saved.items.item_g_ghost_pendant==1)
        dofile(package.searchpath('asylum_cast',package.path))
        local function planned(profile)
            source.Reset();source.Configure(presets[profile]);local map={}
            for _,slot in ipairs(AsylumCastPlan(source.Snapshot())) do map[slot.entry.name]=slot end
            return map
        end
        local plus=planned('first_visit')
        assert(plus.plus_raver and not plus.basic_raver and not plus.Knox_plus)
        assert(plus.Jeanette.position[3]<-200 and plus.Therese and not plus.Tourette)
        local basic=planned('first_visit_basic')
        assert(basic.basic_raver and not basic.plus_raver)
        local gallery=planned('gallery')
        assert(gallery.Knox_plus and not gallery.Knox_basic and gallery.Jeanette and not gallery.Therese)
        local sisters=planned('sisters')
        assert(sisters.Tourette and not sisters.Jeanette and not sisters.Therese)
        source.Reset();source.Configure(presets.gallery)
        source.Configure({globals={Chunk_Dominated=2},dead={Knox=true,Chunk=true}})
        local dead=source.Snapshot()
        assert(dead.dead.Knox==1 and dead.dead.Chunk==1)
        for _,slot in ipairs(AsylumCastPlan(dead)) do
            assert(slot.entry.name~='Knox_plus' and slot.entry.name~='Knox_basic' and slot.entry.name~='Chunk')
        end
        source.Reset();assert(source.Snapshot().dead.Knox==0 and source.Snapshot().dead.Chunk==0)
        -- The patch's stray "and or" must not disable the late Knox answer.
        local parent
        for id,row in pairs(data.characters.knox.rows) do
            for _,answer in ipairs(row.answers or {}) do if answer==494 then parent=row.id end end
        end
        assert(parent and #data.sourceRepairs==1 and #data.sourceIssues==0)
        local function hasKnoxAnswer(quest,dead)
            source.Reset();source.Configure({globals={Knox_Quest=quest,Knox_Fess=0,Patch_Plus=1},
                items={item_g_driver_license_gimble=1},dead={AsianVamp=dead}})
            local session=source.Open('knox');session:Enter(parent)
            for _,answer in ipairs(session.answers) do if answer.id==494 then return true end end
            return false
        end
        assert(hasKnoxAnswer(6,false) and hasKnoxAnswer(5,true) and not hasKnoxAnswer(5,false))
        -- The original uses Python's None return to chain camera/persona and
        -- expression effects with `or`. Both must run, without moving the HMD.
        source.Reset()
        local delivered={}
        local actor={}
        source.BindWorld(function(session,event)
            assert(session.actor==actor)
            delivered[#delivered+1]=event.name
            return event.name=='pc.SetCamera'
        end)
        local sisters=source.Open('tourette',actor)
        sisters:Enter(1)
        assert(sisters.persona=='Tourette' and sisters.disposition=='apathy')
        assert(delivered[#delivered]=='pc.SetCamera' and sisters.effects[#sisters.effects].handled)
        source.BindWorld(nil)
        -- Doll1 has a source usescript entry hook outside the DLG file.
        source.Reset();source.Configure({clan='Nosferatu'})
        assert(source.Open('doll1').line==121)
        source.Configure({clan='Toreador',globals={Doll_Seduce=1}})
        assert(source.Open('doll1').line==91)
        source.Configure({globals={Doll_Seduce=0}})
        local doll=source.Open('doll1')
        assert(doll.line==1 or doll.line==31 or doll.line==61)
        local entries,answers,pages,automatic,voices=0,0,0,0,0
        for _,character in ipairs(data.order) do
            for _,clan in ipairs({'Brujah','Gangrel','Malkavian','Nosferatu','Toreador','Tremere','Ventrue'}) do
                for _,male in ipairs({true,false}) do
                    for _,skill in ipairs({0,10}) do
                        for presetName,preset in pairs(presets) do
                            source.Reset();source.Configure(preset)
                            local skills={}
                            for _,key in ipairs(data.stateKeys.skills) do
                                local plain=key:gsub('^[FM]_','');skills[plain]=skill
                            end
                            skills.Humanity=skill
                            source.Configure({clan=clan,male=male,skills=skills})
                            local conversation=source.Open(character)
                            assert(not conversation.ended,character..' invalid entry '..presetName)
                            -- Every authored NPC node is entered, including later quest branches.
                            for id,row in pairs(conversation.data.rows) do
                                if row.kind=='npc' and (row.textMale~='' or row.textFemale~='') then
                                    assert(conversation:Enter(row.id),character..' '..id)
                                    entries=entries+1
                                    local seen={}
                                    for page=1,conversation.pages do
                                        for slot,answerId in ipairs(conversation:Visible()) do
                                            if answerId>0 then
                                                assert(not seen[answerId],'Duplicate pagination answer')
                                                seen[answerId]=true;answers=answers+1
                                            end
                                        end
                                        conversation:Page();pages=pages+1
                                    end
                                    assert(conversation.page==0,'Page cycle did not return to first page')
                                    local line,bank=conversation:Performance()
                                    if line then assert(line.duration>0 and line.sound and bank.character==character);voices=voices+1 end
                                    if conversation.auto then automatic=automatic+1 end
                                    -- Re-enter before each choice because choices intentionally mutate state.
                                    local count=#conversation.answers
                                    for index=1,count do
                                        conversation:Enter(row.id)
                                        conversation.page=math.floor((index-1)/4)
                                        local answer=conversation.answers[index]
                                        if answer then
                                            local ok=conversation:Choice((index-1)%4+1)
                                            assert(ok,character..' rejected visible answer '..answer.id)
                                            assert(conversation.ended or conversation:Row().kind=='npc')
                                        end
                                    end
                                    conversation:Enter(row.id)
                                    if conversation.auto then assert(conversation:Automatic()) end
                                end
                            end
                        end
                    end
                end
            end
        end
        return {entries=entries,answers=answers,pages=pages,automatic=automatic,voices=voices}
    ''')
    print(json.dumps(dict(result),indent=2))


if __name__=='__main__':main()
