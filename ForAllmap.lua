local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("For All Map") 

local b = w:CreateFolder("1yrsZ4DailryZ") 

local drop1;

b:Slider("WalkSpeed",{
    min = 10; 
    max = 120; 
},function(bool)
    drop1 = bool;
end)


b:Toggle("Toggle",function(bool)
   _G.SpeedAdd = bool
   
  if bool and drop1 then
      SpeedAdd(drop1);
  end
end)


b:Button("ServerHop",function()
    ServerHop()
end)

b:Button("Rejoin Server",function()
    Rejoin()
end)


Plr = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Plr,v.Name) 
end

local redrop = b:Dropdown("Select Player",Plr,true,function(bool)
    PlayerTP = bool
end)


b:Toggle("TogglePlayerTP",function(bool)
    _G.TpAutoPl = bool
    if bool then
        spawn(function()
        while _G.TpAutoPl == true do wait()
            pcall(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
end)
end
end)
end
end)

b:Button("Refresh Players",function()
    Plr = {}
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Plr,v.Name) 

    redrop:Refresh(Plr)
    end
end)


function SpeedAdd()
    spawn(function()
        while _G.SpeedAdd == true do wait()
            pcall(function()
local meta = getrawmetatable(game)
local old = meta.index
setreadonly(meta,false)
meta.index = newcclosure(function(self,f)
if f == "WalkSpeed" then
return 16
else
return old(self,f)
end
end)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = drop1

end)
end
end)
end


function Rejoin()
    spawn(function()
        local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
 
ts:Teleport(game.PlaceId, p)
end)
end



function ServerHop()
    spawn(function()
        local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

end)
end
