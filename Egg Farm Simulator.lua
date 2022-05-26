local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Egg Farm Simulator") 

local b = w:CreateFolder("Main") 

local Farm    = game:GetService("Workspace").Farms

local pp = w:CreateFolder("Misc")

local PlayerName = game.Players.LocalPlayer.Name

b:Toggle("Auto Normal Lvl",function(bool)
 _G.Autolvl = bool 
 if bool then
     Autolvl()
 end
end)

b:Toggle("Auto Boss Lvl",function(bool)
    _G.AtoBoslvl = bool
    if bool then
        AtoBoslvl()
    end
end)


b:Toggle("Auto Chiken",function(bool)
    _G.AutoChick = bool 
    if bool then
        AutoChick()
    end
end)


b:Toggle("Auto Meat",function(bool)
    _G.AutoMeat = bool
    if bool then
        AutoMeat()
    end
end)


pp:Toggle("AutoDiamondRain",function(bool)
    _G.RainDai = bool
    if bool then
        RainDai()
    end
end)


local drop1;

pp:Dropdown("Select",{"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50"},true,function(bool)
    drop1 = bool;
    end)
    

pp:Toggle("Auto Upgrade Hero Lvl",function(bool)
    _G.AutoUpHero = bool
    if bool and drop1 then
        AutoUpHero(drop1);
    end
end)



function AutoMeat()
    spawn(function()
        while _G.AutoMeat == true do wait(0.5) pcall(function()
           for i,v in pairs(game:GetService("Workspace").Farms:GetChildren()) do
                    if tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                        v.Meat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
end
end)
end
end)
end


function AutoChick()
     spawn(function()
        while _G.AutoChick == true do wait()
            pcall(function()
                for _,v in pairs(Farm:GetChildren()) do
                    if tostring(v.Owner.Value) == tostring(PlayerName) then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Chicken.CFrame
                        wait()
local args = {
    [1] = "self",
    [2] = "219629d5067eddcdce55ed7968e9b53f"
}

game:GetService("ReplicatedStorage").Events.Weapon:FireServer(unpack(args))

                    end
                end
end)
end
end)
end


function Autolvl()
    spawn(function()
        while _G.Autolvl == true do wait()
            pcall(function()
               for i,v in pairs(game:GetService("Workspace").Farms:GetChildren()) do
                    if tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
 print("UpLvl")
  for i,x in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Progress:GetChildren()) do
      if x.Name == "Progress" and x.Text == "10 / 10"  then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Auto.CFrame


wait(0)
keytospam = "E"
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode[keytospam], false, game)
end
end 
end
end
end)
end
end)
end


function RainDai()
    spawn(function()
        while _G.RainDai == true do wait()
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Farms:GetChildren()) do
                    if tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Diamonds.Diamond.CFrame 
                    end
end
            end)
        end
end)
end



function AtoBoslvl()
    spawn(function()
        while _G.AtoBoslvl == true do wait()
            pcall(function()
               for i,v in pairs(game:GetService("Workspace").Farms:GetChildren()) do
                    if tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
 print("UpLvl")
  for i,x in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Progress:GetChildren()) do
      if x.Name == "Progress" and x.Text == "1 / 1"  then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Auto.CFrame


wait(0)
keytospam = "E"
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode[keytospam], false, game)
end
end 
end
end
end)
end
end)
end



function AutoUpHero()
    spawn(function()
        while _G.AutoUpHero == true do wait()
            pcall(function()
                if drop1 == "1" then
local args = {
    [1] = "Train",
    [2] = "1",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "2" then
    local args = {
    [1] = "Train",
    [2] = "2",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "3" then
    local args = {
    [1] = "Train",
    [2] = "3",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "3" then
    local args = {
    [1] = "Train",
    [2] = "3",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "4" then
    local args = {
    [1] = "Train",
    [2] = "4",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "5" then
    local args = {
    [1] = "Train",
    [2] = "5",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "6" then
    local args = {
    [1] = "Train",
    [2] = "6",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "7" then
    local args = {
    [1] = "Train",
    [2] = "7",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "8" then
    local args = {
    [1] = "Train",
    [2] = "8",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "9" then
    local args = {
    [1] = "Train",
    [2] = "9",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "10" then
    local args = {
    [1] = "Train",
    [2] = "10",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "11" then
    local args = {
    [1] = "Train",
    [2] = "11",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "12" then
    local args = {
    [1] = "Train",
    [2] = "12",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "13" then
    local args = {
    [1] = "Train",
    [2] = "13",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "14" then
    local args = {
    [1] = "Train",
    [2] = "14",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "15" then
    local args = {
    [1] = "Train",
    [2] = "15",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "16" then
    local args = {
    [1] = "Train",
    [2] = "16",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "17" then
    local args = {
    [1] = "Train",
    [2] = "17",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "18" then
    local args = {
    [1] = "Train",
    [2] = "18",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "19" then
    local args = {
    [1] = "Train",
    [2] = "19",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "20" then
    local args = {
    [1] = "Train",
    [2] = "20",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "21" then
    local args = {
    [1] = "Train",
    [2] = "21",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "22" then
    local args = {
    [1] = "Train",
    [2] = "22",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "23" then
    local args = {
    [1] = "Train",
    [2] = "23",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "24" then
    local args = {
    [1] = "Train",
    [2] = "24",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "25" then
    local args = {
    [1] = "Train",
    [2] = "25",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "26" then
    local args = {
    [1] = "Train",
    [2] = "26",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "27" then
    local args = {
    [1] = "Train",
    [2] = "27",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "28" then
    local args = {
    [1] = "Train",
    [2] = "28",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "29" then
    local args = {
    [1] = "Train",
    [2] = "29",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "30" then
    local args = {
    [1] = "Train",
    [2] = "30",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "31" then
    local args = {
    [1] = "Train",
    [2] = "31",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "32" then
    local args = {
    [1] = "Train",
    [2] = "32",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "33" then
    local args = {
    [1] = "Train",
    [2] = "33",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "34" then
    local args = {
    [1] = "Train",
    [2] = "34",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "35" then
    local args = {
    [1] = "Train",
    [2] = "35",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "36" then
    local args = {
    [1] = "Train",
    [2] = "36",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "37" then
    local args = {
    [1] = "Train",
    [2] = "37",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "38" then
    local args = {
    [1] = "Train",
    [2] = "38",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "39" then
    local args = {
    [1] = "Train",
    [2] = "39",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "40" then
    local args = {
    [1] = "Train",
    [2] = "40",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "41" then
    local args = {
    [1] = "Train",
    [2] = "41",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "42" then
    local args = {
    [1] = "Train",
    [2] = "42",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "43" then
    local args = {
    [1] = "Train",
    [2] = "43",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "44" then
    local args = {
    [1] = "Train",
    [2] = "44",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "45" then
    local args = {
    [1] = "Train",
    [2] = "45",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "46" then
    local args = {
    [1] = "Train",
    [2] = "46",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "47" then
    local args = {
    [1] = "Train",
    [2] = "47",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "48" then
    local args = {
    [1] = "Train",
    [2] = "48",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "49" then
    local args = {
    [1] = "Train",
    [2] = "49",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
elseif drop1 == "50" then
    local args = {
    [1] = "Train",
    [2] = "50",
    [4] = "MAX"
}

game:GetService("ReplicatedStorage").Events.Heroes:FireServer(unpack(args))
end
end)
end
end)
end
