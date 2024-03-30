local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Second Piece", HidePremium = false, SaveConfig = true, ConfigFolder = "Second_Piece"})
local Tab1 = Window:MakeTab({Name = "Main",Icon = nil,PremiumOnly = false})
local SkilTab = Window:MakeTab({Name = "Main",Icon = nil,PremiumOnly = false})
local Tab2 = Window:MakeTab({Name = "Misc",Icon = nil,PremiumOnly = false})
local Weaponlist = {}
_G.Weapon = nil

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    table.insert(Weaponlist,v.Name)
end


local Dropdown = Tab1:AddDropdown({
	Name = "Select Weapon",
	Default = nil,
	Options = Weaponlist,
	Callback = function(bool)
		_G.Weapon = bool
	end    
})

Tab1:AddButton({
	Name = "Refresh Weapon",
	Callback = function()
      		Weaponlist = {}
  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    table.insert(Weaponlist,v.Name)
        end
        Dropdown:Refresh((Weaponlist),true)
        Dropdown:Set(nil)
  	end    
})

Tab1:AddToggle({
	Name = "Auto Equip Select Weapon",
	Default = nil,
	Callback = function(bool)
		_G.AutoEquipTool = bool
	end    
})

Tab1:AddToggle({
	Name = "Auto Attack",
	Default = nil,
	Callback = function(bool)
		_G.AutoAttack = bool
	end    
})

SkilTab:AddToggle({
	Name = "Z",
	Default = nil,
	Callback = function(bool)
		_G.SkillZ = bool
	end    
})


Tab2:AddButton({
	Name = "Destroy Gui",
	Callback = function()
      		OrionLib:Destroy()
  	end    
})

task.spawn(function ()
	while wait() do pcall(function ()
		if  _G.AutoEquipTool and not game.Players.LocalPlayer.Character:FindFirstChild(_G.Weapon) then
			print("Equiping . . .")
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(_G.Weapon))
		elseif _G.AutoAttack and game.Players.LocalPlayer.Character:FindFirstChild(_G.Weapon) then
			game:GetService("VirtualInputManager"):SendMouseButtonEvent(600, 10, 0, true, game, 1)
		elseif _G.SkillZ then
			game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, nil)
			game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, nil)
			
		end
		
	end)
		
	end
	
end)


OrionLib:Init()
