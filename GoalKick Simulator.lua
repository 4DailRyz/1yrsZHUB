local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Goal Kick Simulator") 

local b = w:CreateFolder("Farm")

local Ai = w:CreateFolder("Misc")

local wordxx;

b:Dropdown("Select",{"Sky Island","Park","Desert","City","Beach","Rocket Ship"},true,function(bool)
    wordxx = bool;
end)

    

b:Button("Teleport",function()
    
if wordxx then
    Tp(wordxx);
end
end)




b:Toggle("Auto Ball",function(bool)
    _G.Ball = bool
    if bool then
        Ball()
    end
end)


b:Toggle("Auto Buff Area",function(bool)
    _G.Buff = bool
    if bool then
        Buff()
    end
end)

b:Toggle("Auto Rebrith",function(bool)
    _G.Rebrith = bool
    if bool then
        Rebrith()
    end
end
)

local up1;

Ai:Dropdown("Select Upgrade",{"x1","x3","x10","MAX"},true,function(bool)
    up1 = bool;
  end)

Ai:Toggle("Auto Strength",function(bool)
    _G.UpBall = bool
    if bool and up1 then
        UpBall(up1);
end
end)

local up2;

Ai:Dropdown("Select Upgrade",{"x1","x3","x10","MAX"},true,function(bool)
    up2 = bool;
end)

Ai:Toggle("Auto Accuracy",function(bool)
    _G.Accuracy = bool
    if bool and up2 then
        upAccuracy(up2);
    end
end)

local up3;

Ai:Dropdown("Select Upgrade",{"x1","x3","x10","MAX"},true,function(bool)
    up3 = bool;
end)

Ai:Toggle("Auto Speed",function(bool)
    _G.SpeedUp = bool
    if bool and up3 then
        SpeedUp(up3);
    end
end)


function SpeedUp()
    spawn(function()
        while _G.SpeedUp == true do wait()
            pcall(function()
                if up3 == "x1" then
                    local args = {
    [1] = "UpgradeStats",
    [2] = "Speed",
    [3] = 1
}

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
elseif up3 == "x3" then
    local args = {
    [1] = "UpgradeStats",
    [2] = "Speed",
    [3] = 3
}

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
elseif up3 == "x10" then
    local args = {
    [1] = "UpgradeStats",
    [2] = "Speed",
    [3] = 10
}

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
elseif up3 == "MAX" then
    local args = {
    [1] = "UpgradeStats",
    [2] = "Speed",
    [3] = math.huge
}

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))

end
end)
end
end)
end

function upAccuracy()
    spawn(function()
       while  _G.Accuracy == true do wait()
           pcall(function()
               if up2 == "x1" then
local args = {
    [1] = "UpgradeStats",
    [2] = "KickAccuracy",
    [3] = 1
}

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
elseif up2 == "x3" then
    local args = {
    [1] = "UpgradeStats",
    [2] = "KickAccuracy",
    [3] = 3
}

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
elseif
    up2 == "x10" then
        local args = {
    [1] = "UpgradeStats",
    [2] = "KickAccuracy",
    [3] = 10
}

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
elseif up2 == "MAX" then
local args = {
    [1] = "UpgradeStats",
    [2] = "KickAccuracy",
    [3] = math.huge
}

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))

    
end
end)
end
end)
end
        


function UpBall()
    spawn(function()
        while _G.UpBall == true do wait()
            pcall(function()
                if up1 == "x1" then
local args = {
    [1] = "UpgradeStats",
    [2] = "KickPower",
    [3] = 1
}

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
elseif up1 == "x3" then
local args = {
    [1] = "UpgradeStats",
    [2] = "KickPower",
    [3] = 3
}

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
elseif up1 == "x10" then
local args = {
    [1] = "UpgradeStats",
    [2] = "KickPower",
    [3] = 10
}

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
elseif up1 == "MAX" then
local args = {
    [1] = "UpgradeStats",
    [2] = "KickPower",
    [3] = math.huge
}

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))


end
end)
end
end)
end


function Rebrith()
    spawn(function()
        while _G.Rebrith == true do wait()
            pcall(function()
                
local args = {
    [1] = "Rebirth"
}

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))

end)
end
end)
end








function Tp()
    spawn(function()
        if wordxx == "Park" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(272.836853, 714.745972, -100.253151, -0.110315681, 3.04767909e-08, -0.993896604, 6.87302171e-09, 1, 2.99010843e-08, 0.993896604, -3.5325145e-09, -0.110315681)
        elseif wordxx == "Desert" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(109.260315, 714.7453, -90.4366684, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        elseif wordxx == "Sky Island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(567.144653, 714.745972, -90.9010239, 0.00758206006, 1.86851493e-10, -0.999971271, 7.80635077e-08, 1, 7.7875606e-10, 0.999971271, -7.80671741e-08, 0.00758206006)
        elseif wordxx == "Beach" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-576.040039, 714.486084, -88.1419678, 0.0024398563, 2.41965523e-08, -0.99999702, 5.34741584e-09, 1, 2.42096725e-08, 0.99999702, -5.40646772e-09, 0.0024398563)
        elseif wordxx == "City" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-412.910889, 757.556519, -90.6645966, -0.0215070825, 1.67831971e-08, -0.999768674, 8.90140139e-09, 1, 1.65955925e-08, 0.999768674, -8.5424201e-09, -0.0215070825)
        elseif wordxx == "Rocket Ship" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-861.700989, 715.323425, -90.2060699, -0.0265322793, 0, -0.999647975, 0, 1, 0, 0.999647975, 0, -0.0265322793)
            
        
        end
    end)
end




function Buff()
    spawn(function()
        while _G.Buff == true do wait()
            pcall(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignore.BuffArea.Part.CFrame
end)
end
end)
end

function Ball()
    spawn(function()
        while _G.Ball do wait()
            pcall(function()
                local args = {
    [1] = "Throw",
    [2] = 100000
}

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
end)
end
end)
end
