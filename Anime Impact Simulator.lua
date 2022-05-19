
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Anime Impact Simulator") 

local b = w:CreateFolder("Frame") 

local mis = w:CreateFolder("Misc")

local ManAA = game:GetService("Players").LocalPlayer.leaderstats.Mana

local tp1 = w:CreateFolder("Teleport")

b:Toggle("Auto Click",function(bool)
    _G.Click = bool
    if bool then
        Click()
    end
end)

local drop1;

b:Dropdown("Select Offer",{"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26"},true,function(bool)
drop1 = bool;

end)


b:Toggle("Auto Exchange",function(bool)
 _G.Exchange = bool
 if bool and drop1 then
     Exchange(drop1);
 end
end)


mis:Toggle("Auto x2 Mana",function(bool)
    _G.x2Mana = bool
    if bool then
        x2Mana()

end
end)

mis:Toggle("Auto Train",function(bool)
  _G.Train = bool
  if bool then
      Train()
  end
end)


function Train()
    spawn(function()
        while _G.Train == true do wait()
            pcall(function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(273.575378, 13.2999983, 2207.49854, 0.348337829, -8.40147596e-09, 0.937369049, -7.2922667e-08, 1, 3.60617847e-08, -0.937369049, -8.09171397e-08, 0.348337829)
        wait()
local args = {
    [1] = "Train",
    [2] = workspace._SYSTEM._INTERACT.Train
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
end)
end
end)
end
    
      
      
function x2Mana()
    spawn(function()
    while _G.x2Mana == true do wait()
        pcall(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(285.804474, 20.573822, 14505.1611, -0.972014725, 1.31662228e-08, -0.234919995, -1.03011411e-09, 1, 6.0307805e-08, 0.234919995, 5.88620672e-08, -0.972014725)
    end)
end
end)
end
 


local drop2;


tp1:Dropdown("Select Area",{"Pirate","Slayer","Soul","Shuriken","Dragon","JuJuTsu","S City","Bizarre"},true,function(bool)
    drop2 = bool;
end)


tp1:Button("Teleport Area",function()
 if drop2 then
     TpArea(drop2);
 end
end)

local drop3;

tp1:Dropdown("Select Tp",{"Shop","x2Mana","Requiem"},true,function(bool)
    drop3 = bool;
end)

tp1:Button("Teleport",function()
    if drop3 then
        Teleport(drop3);
    end
end)

function Teleport()
    spawn(function()
        if drop3 == "Shop" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_SYSTEM"]["_REGION"].SHOP.CFrame
        elseif drop3 == "Requiem" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_SYSTEM"]["_REGION"].REQUIEM.CFrame
        elseif drop3 == "x2Mana" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_SYSTEM"]["_SERVER"].x2ManaHitboxS.CFrame
            
            
        end
    end)
end
    

function Click()
    spawn(function()
        while _G.Click == true do wait()
            pcall(function()
game:GetService("ReplicatedStorage").Remotes.TappingEvent:FireServer()
end)
end
end)
end

function TpArea()
    spawn(function()
        if drop2 == "Pirate" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_SYSTEM"]["_AREAs"].PIRATE.CFrame
        elseif drop2 == "Slayer" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_SYSTEM"]["_AREAs"].SLAYER.CFrame
        elseif drop2 == "Soul" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_SYSTEM"]["_AREAs"].SOUL.CFrame
           elseif drop2 == "Shuriken" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_SYSTEM"]["_AREAs"].SHURIKEN.Character
        elseif drop2 == "Dragon" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_SYSTEM"]["_AREAs"].DRAGON.CFrame
        elseif drop2 == "JuJuTsu" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_SYSTEM"]["_AREAs"].JUJUTSU.CFrame
        elseif drop2 == "S City" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_SYSTEM"]["_AREAs"].S.CFrame
        elseif drop2 == "Bizarre" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_SYSTEM"]["_AREAs"].BIZARRE.CFrame
end
end)
end




function Exchange()
    spawn(function()
while _G.Exchange == true do wait()
    pcall(function()
        if drop1 == "1" and ManAA.Value > 10 then
local args = {
    [1] = "Exchange",
    [2] = 1
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "2" and ManAA.Value > 50 then
    local args = {
    [1] = "Exchange",
    [2] = 2
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "3" and ManAA.Value > 250 then
    local args = {
    [1] = "Exchange",
    [2] = 3
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "4" and ManAA.Value > 1000 then
    local args = {
    [1] = "Exchange",
    [2] = 4
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "5" and ManAA.Value > 2500 then
    local args = {
    [1] = "Exchange",
    [2] = 5
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "6" and ManAA.Value > 6000 then
    local args = {
    [1] = "Exchange",
    [2] = 6
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "7" and ManAA.Value > 12000 then
    local args = {
    [1] = "Exchange",
    [2] = 7
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "8" and ManAA.Value > 35000 then
    local args = {
    [1] = "Exchange",
    [2] = 8
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "9" and ManAA.Value > 95000 then
    local args = {
    [1] = "Exchange",
    [2] = 9
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "10" and ManAA.Value > 185000 then
    local args = {
    [1] = "Exchange",
    [2] = 10
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "11" and ManAA.Value > 300000 then
    local args = {
    [1] = "Exchange",
    [2] = 11
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "12" and ManAA.Value > 500000 then
    local args = {
    [1] = "Exchange",
    [2] = 12
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "13" and ManAA.Value > 2500000 then
    local args = {
    [1] = "Exchange",
    [2] = 13
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "14" and ManAA.Value > 50000000 then
    local args = {
    [1] = "Exchange",
    [2] = 14
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "15" and ManAA.Value > 250000000 then
    local args = {
    [1] = "Exchange",
    [2] = 15
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "16" and ManAA.Value > 1000000000 then
    local args = {
    [1] = "Exchange",
    [2] = 16
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "17" and ManAA.Value > 15000000000 then
    local args = {
    [1] = "Exchange",
    [2] = 17
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "18" and ManAA.Value > 100000000000 then
    local args = {
    [1] = "Exchange",
    [2] = 18
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "19" and ManAA.Value > 750000000000 then
    local args = {
    [1] = "Exchange",
    [2] = 19
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "20" and ManAA.Value > 5000000000000 then
    local args = {                
    [1] = "Exchange",
    [2] = 20
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "21" and ManAA.Value > 25000000000000 then
    local args = {
    [1] = "Exchange",
    [2] = 21
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "22" and ManAA.Value > 100000000000000 then
    local args = {
    [1] = "Exchange",
    [2] = 22
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "23" and ManAA.Value > 3750000000000000 then
    local args = {
    [1] = "Exchange",
    [2] = 23
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "24" and ManAA.Value > 750000000000000 then
    local args = {
    [1] = "Exchange",
    [2] = 24
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "25" and ManAA.Value > 35000000000000000 then
    local args = {
    [1] = "Exchange",
    [2] = 25
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))
elseif drop1 == "26" and ManAA.Value > 100000000000000000 then
    local args = {
    [1] = "Exchange",
    [2] = 26
}

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(unpack(args))


end
end)
end
end)
end


