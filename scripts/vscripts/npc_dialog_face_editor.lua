-- Live facial performance controls, shared by desktop and VR pointer input.
local specs=require("npc_dialog_catalog").faceEditor
local lips=require("npc_dialog_lipsync")
local M={opened=false,loop=false}
local panel,number,replay,duration,session
local page,shapes,status=0,false,0
local wasDown,drag=false,nil
local pending,pendingSettings,pendingRevision,nextReplay
local revision=0
local saved=lips.GetSettings()

local function flag(name,value)
    if not panel or panel:IsNull() then return end
    if value then panel:AddCSSClasses(name) else panel:RemoveCSSClasses(name) end
end

local function rows()
    local result={}
    if shapes then
        for i=1,specs.layout.rows do
            local name=specs.channels[page*specs.layout.rows+i]
            if name then result[i]={key=name,min=0,max=1,step=.01,shape=true} end
        end
    else result=specs.controls end
    return result
end

function M.Publish()
    if not panel or panel:IsNull() or not number then return end
    flag("FaceEditorOpen",M.opened);flag("FaceEditorShapes",shapes);flag("FaceEditorLoop",M.loop)
    if not M.opened then return end
    number("FacePage",page,4);number("FaceStatus",status,3)
    local values=lips.GetSettings()
    for i,row in ipairs(rows()) do
        local value=row.shape and (values.shapeGains[row.key] or 1) or values.tuning[row.key]
        number("FaceRow"..i,math.floor((value-row.min)/(row.max-row.min)*1000+.5),10)
    end
end

function M.Bind(entity,writer,play,seconds,currentSession)
    panel,number,replay,duration,session=entity,writer,play,seconds,currentSession
    M.opened=false;M.loop=false;page=0;shapes=false;wasDown=false;drag=nil;pending=nil
    M.Publish()
end

function M.Close()
    M.opened=false;M.loop=false;drag=nil;wasDown=false;panel=nil;pending=nil
end

function M.Toggle()
    M.opened=not M.opened;drag=nil;wasDown=false
    if not M.opened then M.loop=false end
    M.Publish()
end

local function rowAt(x,y)
    local layout=specs.layout
    if x<layout.left or x>layout.right then return nil end
    local index=math.floor((y-layout.top)/layout.rowHeight)+1
    local top=layout.top+(index-1)*layout.rowHeight+layout.trackTop
    if rows()[index] and y>=top-5 and y<=top+layout.trackHeight+5 then return index end
end

local function change(index,x)
    local row=rows()[index]
    if not row then return end
    local l=specs.layout
    local value=row.min+math.max(0,math.min(1,(x-l.left)/(l.right-l.left)))*(row.max-row.min)
    value=math.max(row.min,math.min(row.max,math.floor(value/row.step+.5)*row.step))
    if row.shape then lips.SetShapeGain(row.key,value) else lips.SetTuning(row.key,value) end
    revision=revision+1;status=0;M.Publish()
end

function M.PointerMove(x,y,down,focused)
    if not M.opened then return end
    if not focused then drag=nil;wasDown=false;return end
    if down and not wasDown then drag=rowAt(x,y) end
    if down and drag then change(drag,x) end
    if not down and wasDown and drag then change(drag,x) end
    if not down then drag=nil end
    wasDown=down
end

function M.PointerClick(downX,downY,upX,upY)
    if not M.opened then return end
    local row=rowAt(downX,downY)
    if row and row==rowAt(upX,upY) then change(row,upX) end
end

function M.Action(slot)
    if slot==0 and shapes then page=math.max(0,page-1)
    elseif slot==1 and shapes then page=math.min(math.ceil(#specs.channels/specs.layout.rows)-1,page+1)
    elseif slot==2 then shapes=not shapes;page=0
    elseif slot==3 then lips.ApplySettings(saved);revision=revision+1;status=4
    elseif slot==8 then
        M.loop=not M.loop
        if M.loop then replay();nextReplay=Time()+duration()+.5 end
    elseif slot==9 and not pending then
        pending=math.floor(Time()*1000)%2147483647
        pendingSettings=lips.GetSettings();pendingRevision=revision;status=1
        local function object(values)
            local fields={}
            for key,value in pairs(values) do fields[#fields+1]='"'..key..'":'..string.format("%.6f",value) end
            return "{"..table.concat(fields,",").."}"
        end
        print('[VTMBVR_DIALOG] FACE_SAVE {"request":'..pending..',"session":'..session()..
            ',"tuning":'..object(pendingSettings.tuning)..',"shapeGains":'..object(pendingSettings.shapeGains)..'}')
    end
    drag=nil;M.Publish()
end

function M.Saved(request,ok)
    if request~=pending then return end
    if ok then saved=pendingSettings;status=revision==pendingRevision and 2 or 0 else status=3 end
    pending=nil;pendingSettings=nil;M.Publish()
end

function M.Think()
    if M.opened and M.loop and nextReplay and Time()>=nextReplay then
        replay();nextReplay=Time()+duration()+.5
    end
end

return M
