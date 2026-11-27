-- Use the standing-human NAV graph for source places. Geometry traces still
-- decide whether the short final approach is physically possible at runtime.
local data=require("npc_source_navigation_data")
local M={}
local goals,goalCount={},0
local byId={}
for _,area in ipairs(data.areas) do byId[area.id]=area end
local function distance(a,b) local x,y=a.x-b.x,a.y-b.y;return math.sqrt(x*x+y*y) end
local function point(p) return Vector(p[1],p[2],p[3]) end
local function closest(p,area)
    local positive,negative=false,false
    local best,minimum=nil,math.huge
    local corners=area.corners
    for index,raw in ipairs(corners) do
        local a,b=point(raw),point(corners[index%#corners+1])
        local dx,dy=b.x-a.x,b.y-a.y
        local cross=dx*(p.y-a.y)-dy*(p.x-a.x)
        positive=positive or cross>1e-5;negative=negative or cross< -1e-5
        local length=dx*dx+dy*dy
        local t=length>0 and math.max(0,math.min(1,((p.x-a.x)*dx+(p.y-a.y)*dy)/length)) or 0
        local candidate=a+(b-a)*t
        local d=distance(p,candidate)
        if d<minimum then best=candidate;minimum=d end
    end
    if not (positive and negative) then
        local a,b,c=point(corners[1]),point(corners[2]),point(corners[3])
        local u,v=b-a,c-a
        local nx,ny,nz=u.y*v.z-u.z*v.y,u.z*v.x-u.x*v.z,u.x*v.y-u.y*v.x
        best=Vector(p.x,p.y,math.abs(nz)>1e-6 and a.z-(nx*(p.x-a.x)+ny*(p.y-a.y))/nz or a.z)
    end
    return best
end
local function nearest(p,component)
    local found,at,minimum=nil,nil,math.huge
    for _,area in ipairs(data.areas) do
        if not component or area.component==component then
            local candidate=closest(p,area)
            local d=distance(p,candidate)
            local score=d+math.abs(candidate.z-p.z)
            if math.abs(candidate.z-p.z)<24 and score<minimum then found=area;at=candidate;minimum=score end
        end
    end
    return found,at,minimum
end
function M.Context(origin)
    local start,_,startDistance=nearest(origin)
    if not start or startDistance>data.maximumApproach then return nil,"start_off_nav" end
    return {component=start.component}
end
function M.Approach(origin,goal,context)
    local start=context or M.Context(origin)
    if not start then return nil,"start_off_nav" end
    local key=start.component..":"..goal.x..":"..goal.y..":"..goal.z
    local result=goals[key]
    if not result then
        local area,at,d=nearest(goal,start.component)
        result={area=area,at=at,d=d};goals[key]=result;goalCount=goalCount+1
        if goalCount>256 then goals={[key]=result};goalCount=1 end
    end
    local area,at,d=result.area,result.at,result.d
    if not area or d>data.maximumApproach then return nil,"disconnected" end
    -- An exact boundary point can be rejected by the engine's path solver.
    -- Nudge inward, without relocating the authored place or trigger.
    if d>1 then
        local center=Vector(0,0,0)
        for _,p in ipairs(area.corners) do center=center+point(p) end
        center=center/#area.corners
        local delta=center-at;local length=delta:Length()
        if length>0 then at=at+delta*(math.min(4,length)/length) end
    end
    return Vector(at.x,at.y,at.z),nil,area.id
end
function M.MaximumApproach() return data.maximumApproach end
local function center(area)
    local p=Vector(0,0,0);for _,v in ipairs(area.corners) do p=p+point(v) end
    return p/#area.corners
end
local function portal(area,link)
    local other=byId[link.area]
    local a,b=point(area.corners[link.edge+1]),point(area.corners[(link.edge+1)%#area.corners+1])
    local c,d=point(other.corners[link.targetEdge+1]),point(other.corners[(link.targetEdge+1)%#other.corners+1])
    local dx,dy=b.x-a.x,b.y-a.y;local length=dx*dx+dy*dy
    if length<.01 then return nil end
    local u=((c.x-a.x)*dx+(c.y-a.y)*dy)/length
    local v=((d.x-a.x)*dx+(d.y-a.y)*dy)/length
    local lo,hi=math.max(0,math.min(u,v)),math.min(1,math.max(u,v))
    if hi<lo then return nil end
    local p=a+(b-a)*((lo+hi)/2)
    local q=closest(p,other)
    if distance(p,q)>12 or math.abs(p.z-q.z)>data.hull.climb+1 then return nil end
    return (p+q)/2
end
function M.Path(origin,goal)
    local first,_,sd=nearest(origin);local last,_,gd=nearest(goal)
    if not first or not last or first.component~=last.component or sd>64 or gd>64 then return nil end
    local pending={[first.id]=true};local costs={[first.id]=0};local previous={};local done={}
    while next(pending) do
        local id,best=nil,math.huge
        for candidate in pairs(pending) do if costs[candidate]<best then id=candidate;best=costs[candidate] end end
        pending[id]=nil;done[id]=true
        if id==last.id then break end
        local area=byId[id]
        for _,link in ipairs(area.connections or {}) do
            if not done[link.area] then
                local p=portal(area,link)
                if p then
                    local cost=best+(center(area)-center(byId[link.area])):Length()
                    if not costs[link.area] or cost<costs[link.area] then
                        costs[link.area]=cost;previous[link.area]={from=id,at=p};pending[link.area]=true
                    end
                end
            end
        end
    end
    if not done[last.id] then return nil end
    local points={goal};local id=last.id
    while id~=first.id do local p=previous[id];if not p then return nil end;table.insert(points,1,p.at);id=p.from end
    local result={};local from=origin;local total=0
    for _,p in ipairs(points) do
        local delta=p-from;local length=delta:Length();total=total+length
        if total>1200 then return nil end
        local count=math.max(1,math.ceil(length/48))
        for step=1,count do result[#result+1]=from+delta*(step/count) end
        from=p
    end
    return result
end
function M.Clearance(actor)
    if actor and actor.GetBoundingMins and actor.GetBoundingMaxs then
        local a,b=actor:GetBoundingMins(),actor:GetBoundingMaxs()
        local radius=math.max(math.abs(a.x),math.abs(a.y),math.abs(b.x),math.abs(b.y))
        local height=b.z-a.z
        if radius>0 and height>0 then return {radius=radius,height=height,step=data.hull.climb,padding=.1} end
    end
    return {radius=data.hull.radius,height=data.hull.height,step=data.hull.climb}
end
function M.Resolve(origin,actor,floorAt)
    local hull=M.Clearance(actor);local half=hull.height/2;local center=half+(hull.padding or 2)
    -- Keep the feet inside the existing 36x36 trigger. A bottle or another
    -- small prop at its centre must not invalidate the entire source place.
    for _,offset in ipairs({{0,0},{0,12},{0,-12},{12,0},{-12,0},{10,10},{10,-10},{-10,10},{-10,-10}}) do
        local at=floorAt(origin+Vector(offset[1],offset[2],0))
        if at and math.abs(at.z-origin.z)<=hull.step then
            local q={startpos=at+Vector(0,0,center),endpos=at+Vector(0,0,center),
                min=Vector(-hull.radius,-hull.radius,-half),max=Vector(hull.radius,hull.radius,half),ignore=actor}
            TraceHull(q)
            if not q.hit and not q.startsolid then return at end
        end
    end
end
return M
