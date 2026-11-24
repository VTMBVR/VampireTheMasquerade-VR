-- Original dialogue interpreter. Source expressions are data, never Lua/Python.
local catalog=require("npc_dialog_source_data")
local M={pageSize=4}
local host
local cache={}
local worldHandler
local defaults={Patch_Plus=1,Extra_Lines=1}
local clans={"Brujah","Gangrel","Malkavian","Nosferatu","Toreador","Tremere","Ventrue"}
local function key(scope,name) return "vdlg_"..scope.."_"..tostring(name):gsub("[^%w_]","_") end
local function read(scope,name,default)
    local k=key(scope,name)
    if host and host.Attribute_GetIntValue then return host:Attribute_GetIntValue(k,default or 0) end
    local value=cache[k];if value==nil then return default or 0 end;return value
end
local function write(scope,name,value)
    value=math.floor(tonumber(value) or 0)
    cache[key(scope,name)]=value
    if host and host.Attribute_SetIntValue then host:Attribute_SetIntValue(key(scope,name),value) end
    return value
end
local function truth(value) return value~=false and value~=nil and value~=0 and value~="" end
local function ref(scope,name,target) return {scope=scope,name=name,target=target} end
local evaluate

function M.Bind(entity) host=entity end
function M.BindWorld(handler) worldHandler=handler end
function M.Get(scope,name,default) return read(scope,name,default) end
function M.Set(scope,name,value) return write(scope,name,value) end
function M.Character(actor)
    if not actor or actor:IsNull() then return nil end
    local model=actor:GetModelName():lower()
    for index,name in ipairs(catalog.order) do
        if catalog.characters[name].model:lower()==model then return name,index end
    end
end
function M.Configure(values)
    for name,value in pairs(values.globals or {}) do write("g",name,value) end
    for name,value in pairs(values.quests or {}) do write("q",name,value) end
    for name,value in pairs(values.items or {}) do write("i",name,value) end
    for name,value in pairs(values.skills or {}) do write("s",name:gsub("^[FM]_",""),value) end
    for name,value in pairs(values.ammo or {}) do write("ammo",name,value) end
    for name,value in pairs(values.experience or {}) do write("xp",name,value) end
    for name,value in pairs(values.talked or {}) do write("talk",name,value) end
    for name,value in pairs(values.dead or {}) do write("dead",name,(value==true or value==1) and 1 or 0) end
    local player=values.player or values
    if player.clan then for i,name in ipairs(clans) do if name==player.clan then write("p","clan",i) end end end
    if player.male~=nil then write("p","female",player.male and 0 or 1) end
    if player.bloodpool then write("p","bloodpool",math.max(0,math.min(10,player.bloodpool))) end
    if player.humanity then write("s","Humanity",math.max(0,math.min(10,player.humanity))) end
end
function M.Reset()
    for _,name in ipairs(catalog.stateKeys.globals) do write("g",name,defaults[name] or 0) end
    for _,name in ipairs(catalog.stateKeys.quests) do write("q",name,0) end
    for _,name in ipairs(catalog.stateKeys.items) do write("i",name,0) end
    for _,name in ipairs(catalog.stateKeys.dead or {}) do write("dead",name,0) end
    for _,name in ipairs(catalog.stateKeys.skills or {}) do write("s",name:gsub("^[FM]_",""),0) end
    write("s","Humanity",7)
    for _,name in ipairs(catalog.stateKeys.items) do write("ammo",name,0) end
    for _,name in ipairs(catalog.stateKeys.experience or {}) do write("xp",name,0) end
    write("p","clan",1);write("p","female",0);write("p","bloodpool",10)
    for _,name in ipairs(catalog.order) do write("talk",name,0) end
    for name,character in pairs(catalog.characters) do
        write("npc",name.."_hostile",0)
        for attribute,value in pairs(character.attributes) do write("npc",name.."_"..attribute,value) end
    end
end
function M.Snapshot()
    local result={globals={},quests={},items={},talked={},dead={},skills={},ammo={},experience={},
        player={clan=clans[read("p","clan",1)],male=read("p","female",0)==0,bloodpool=read("p","bloodpool",10),humanity=read("s","Humanity",7)}}
    for _,name in ipairs(catalog.stateKeys.globals) do result.globals[name]=read("g",name,defaults[name] or 0) end
    for _,name in ipairs(catalog.stateKeys.quests) do result.quests[name]=read("q",name,0) end
    for _,name in ipairs(catalog.stateKeys.items) do result.items[name]=read("i",name,0) end
    for _,name in ipairs(catalog.stateKeys.dead or {}) do result.dead[name]=read("dead",name,0) end
    for _,name in ipairs(catalog.order) do result.talked[name]=read("talk",name,0) end
    for _,name in ipairs(catalog.stateKeys.skills or {}) do local plain=name:gsub("^[FM]_","");result.skills[plain]=read("s",plain,0) end
    result.skills.Humanity=read("s","Humanity",7)
    for _,name in ipairs(catalog.stateKeys.items) do result.ammo[name]=read("ammo",name,0) end
    for _,name in ipairs(catalog.stateKeys.experience or {}) do result.experience[name]=read("xp",name,0) end
    return result
end

local function intent(session,name,args,target,change)
    local event={name=name,args=args,target=target,change=change}
    session.effects[#session.effects+1]=event
    print("[VTMBVR_DIALOG] WORLD_INTENT character="..session.character.." effect="..name)
    if worldHandler then
        local ok,handled=pcall(worldHandler,session,event)
        if not ok then print("[VTMBVR_DIALOG] WORLD_ERROR "..tostring(handled))
        else event.handled=handled==true end
    end
end
local function skill(name,threshold)
    local gender,pure=name:match("^([FM])_(.+)$")
    local female=read("p","female",0)==1
    if gender and ((gender=="F" and not female) or (gender=="M" and female)) then return false end
    name=pure or name
    local value=read("s",name,name=="Humanity" and 7 or 0)
    return threshold<0 and value< -threshold or threshold>=0 and value>=threshold
end
local function call(session,fn,args,effect)
    local scope,name=fn.scope,fn.name
    if scope=="function" then
        if name=="Skill" then return skill(args[1],args[2]) end
        if name=="IsClan" then return clans[read("p","clan",1)]==args[#args] end
        if name=="IsMale" then return read("p","female",0)==0 end
        if name=="IsDead" then return read("dead",args[1],0)==1 end
        if name=="OneOfSet" then return session.random%args[2]+1==args[1] end
        if name=="FindPlayer" then return ref("pc") end
        if name=="FindEntityByName" then return ref("world",nil,args[1]) end
        if effect and (name=="Whisper" or name=="dialogParticles") then intent(session,name,args);return true end
    elseif scope=="pc" then
        if name=="IsMale" then return read("p","female",0)==0 end
        if name=="HasItem" then return read("i",args[1],0)>0 end
        if name=="GetQuestState" then return read("q",args[1],0) end
        if name=="CalcFeat" then return read("s",args[1],0) end
        if effect then
            if name=="SetQuest" then return write("q",args[1],args[2]) end
            if name=="GiveItem" or name=="RemoveItem" then
                local before=read("i",args[1],0)
                local value=write("i",args[1],math.max(0,before+(name=="GiveItem" and 1 or -1)))
                if before~=value then intent(session,"pc."..name,args,nil,{previous=before,value=value,delta=value-before}) end
                return value
            end
            if name=="Bloodloss" then return write("p","bloodpool",math.max(0,read("p","bloodpool",10)-args[1])) end
            if name=="HumanityAdd" then return write("s","Humanity",math.max(0,math.min(10,read("s","Humanity",7)+args[1]))) end
            if name=="AwardExperience" then
                if read("xp",args[1],0)==0 then write("xp",args[1],1);intent(session,"pc.AwardExperience",args) end
                return true
            end
            if name=="GiveAmmo" then
                local before=read("ammo",args[1],0)
                local value=write("ammo",args[1],math.max(0,before+args[2]))
                if value~=before then intent(session,"pc.GiveAmmo",args,nil,{previous=before,value=value,delta=value-before}) end
                return value
            end
            if name=="SetCamera" then
                -- This selects a speaking persona in the original. Its None
                -- return permits `or npc.SetDisposition(...)` to run next.
                session.persona=args[1];intent(session,"pc.SetCamera",args);return false
            end
        end
    elseif scope=="npc" and name=="SetDisposition" and effect then
        session.disposition=args[1];return true
    end
    if effect then intent(session,(scope or "unknown").."."..tostring(name),args,fn.target);return true end
    print("[VTMBVR_DIALOG] UNSUPPORTED_CONDITION "..tostring(name))
    return false
end

evaluate=function(session,node,effect)
    local kind=node[1]
    if kind=="literal" then return node[2] end
    if kind=="unsupported" then return false end
    if kind=="name" then
        if node[2]=="G" or node[2]=="pc" or node[2]=="npc" then return ref(node[2]) end
        return ref("function",node[2])
    end
    if kind=="get" then
        local object=evaluate(session,node[2]);local name=node[3]
        if object.scope=="G" then return read("g",name,defaults[name] or 0) end
        if object.scope=="npc" and name=="times_talked" then return read("talk",session.character,0) end
        if object.scope=="npc" and (name=="pl_criminal_attack" or name=="pl_investigate") then return read("npc",session.character.."_"..name,session.data.attributes[name] or 0) end
        if object.scope=="pc" and name=="bloodpool" then return read("p","bloodpool",10) end
        if object.scope=="pc" and name=="humanity" then return read("s","Humanity",7) end
        return ref(object.scope,name,object.target or (object.scope=="world" and object.name or nil))
    end
    if kind=="call" then
        local args={};for i,value in ipairs(node[3]) do args[i]=evaluate(session,value) end
        return call(session,evaluate(session,node[2]),args,effect)
    end
    if kind=="list" then local list={};for i,v in ipairs(node[2]) do list[i]=evaluate(session,v) end;return list end
    if kind=="bool" then
        for _,v in ipairs(node[3]) do
            local value=truth(evaluate(session,v,effect))
            if node[2]=="And" and not value then return false end
            if node[2]=="Or" and value then return true end
        end
        return node[2]=="And"
    end
    if kind=="unary" then
        local value=evaluate(session,node[3])
        if node[2]=="Not" then return not truth(value) end
        if node[2]=="USub" then return -value end
        return value
    end
    if kind=="binary" then
        local a,b=evaluate(session,node[3]),evaluate(session,node[4])
        if node[2]=="Add" then return a+b elseif node[2]=="Sub" then return a-b
        elseif node[2]=="Mult" then return a*b elseif node[2]=="Div" then return a/b
        elseif node[2]=="Mod" then return a%b end
    end
    if kind=="compare" then
        local a=evaluate(session,node[2])
        for i,op in ipairs(node[3]) do
            local b=evaluate(session,node[4][i]);local yes=false
            if op=="Eq" then yes=a==b elseif op=="NotEq" then yes=a~=b
            elseif op=="Lt" then yes=a<b elseif op=="LtE" then yes=a<=b
            elseif op=="Gt" then yes=a>b elseif op=="GtE" then yes=a>=b end
            if not yes then return false end;a=b
        end
        return true
    end
    error("Unsupported source expression "..tostring(kind))
end

local function apply(session,ops)
    for _,op in ipairs(ops) do
        if op[1]=="assign" then
            local target=op[2]
            if target[1]~="get" or target[2][1]~="name" then error("Unsupported assignment") end
            if target[2][2]=="G" then write("g",target[3],evaluate(session,op[3]))
            elseif target[2][2]=="npc" and (target[3]=="pl_criminal_attack" or target[3]=="pl_investigate") then
                write("npc",session.character.."_"..target[3],evaluate(session,op[3]))
            else error("Unsupported assignment") end
        else evaluate(session,op[2],true) end
    end
end

local Session={};Session.__index=Session
function Session:Row() return self.data.rows[tostring(self.line)] end
function Session:Enter(id)
    self.line=id;self.page=0;self.generation=self.generation+1
    local row=self:Row()
    if not row or row.kind~="npc" then self.ended=true;return false end
    self.ended=false
    apply(self,row.ops)
    self.answers={};self.auto=nil
    for _,id in ipairs(row.answers) do
        local answer=self.data.rows[tostring(id)]
        if answer and answer.gate and truth(evaluate(self,answer.gate)) then
            if answer.automatic then self.auto=self.auto or answer
            elseif answer.textMale~="(Starting Condition)" then self.answers[#self.answers+1]=answer end
        end
    end
    self.pages=math.max(1,math.ceil(#self.answers/M.pageSize))
    return true
end
function Session:Choice(index)
    local answer=self.answers[self.page*M.pageSize+index]
    if not answer or not truth(evaluate(self,answer.gate)) then return false end
    apply(self,answer.ops);self.lastAnswer=answer.id
    if not answer.next or answer.next<=0 then self.ended=true;return true end
    return self:Enter(answer.next)
end
function Session:Automatic()
    if not self.auto then return false end
    local answer=self.auto;apply(self,answer.ops)
    if not answer.next or answer.next<=0 then self.ended=true;return true end
    return self:Enter(answer.next)
end
function Session:Page()
    self.page=(self.page+1)%self.pages
end
function Session:Visible()
    local values={}
    for i=1,M.pageSize do local answer=self.answers[self.page*M.pageSize+i];values[i]=answer and answer.id or 0 end
    return values
end
function Session:Performance()
    local bank=require("asylum_data/"..self.character)
    local base="line"..self.line
    local preferred=read("p","female",0)==1 and "_col_f" or "_col_e"
    return bank.lines[base..preferred] or bank.lines[base.."_col_e"] or bank.lines[base.."_col_n"],bank
end
function M.Open(character,actor)
    local data=catalog.characters[character]
    if not data then return nil end
    write("talk",character,read("talk",character,0)+1)
    local session=setmetatable({character=character,data=data,effects={},random=math.floor(Time()*1000),
                               actor=actor,generation=0,line=1,page=0,ended=false,disposition="neutral"},Session)
    local start=1
    for _,id in ipairs(data.starts) do
        local row=data.rows[tostring(id)]
        if truth(evaluate(session,row.gate)) then start=row.next;break end
    end
    if character=="doll1" then
        -- The source entity uses vamputil.doll1dlg(), not a DLG start row.
        if clans[read("p","clan",1)]=="Nosferatu" then start=121
        elseif read("g","Doll_Seduce",0)==1 then start=91
        else start=({1,31,61})[session.random%3+1] end
    end
    session:Enter(start)
    return session
end
function M.Identity()
    return read("p","female",0)==1,clans[read("p","clan",1)]=="Malkavian"
end
return M
