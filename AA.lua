task.wait(2)
repeat  task.wait() until game:IsLoaded()
if game.PlaceId == 8304191830 then
    repeat task.wait() until game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name)
    repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("collection"):FindFirstChild("grid"):FindFirstChild("List"):FindFirstChild("Outer"):FindFirstChild("UnitFrames")
else
    repeat task.wait() until game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name)
    game:GetService("ReplicatedStorage").endpoints.client_to_server.vote_start:InvokeServer()
    repeat task.wait() until game:GetService("Workspace")["_waves_started"].Value == true
end

local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local mouse = game.Players.LocalPlayer:GetMouse()
local UserInputService = game:GetService("UserInputService")

makefolder("SkidHUB")
getgenv().savefilename = "SkidHUB\\".."AnimeAdventures_SkidCode_Uitable"..game.Players.LocalPlayer.Name..".json"

function sex()
    -- reads jsonfile
    local jsonData = readfile(savefilename)
    local data = HttpService:JSONDecode(jsonData)

    -- global values
    getgenv().disableatuofarm = false

    getgenv().sellatwave = data.sellatwave 
    getgenv().autosell = data.autosell
    getgenv().AutoFarm = data.autofarm
    getgenv().weburl = data.webhook
    getgenv().Underneath1 = data.underneath1
    getgenv().Underneath2 = data.underneath2
    getgenv().Underneath3 = data.underneath3
    getgenv().Underneath4 = data.underneath4 
    getgenv().Underneath5 = data.underneath5 
    getgenv().Underneath6 = data.underneath6
    getgenv().DisctandUnder = data.disctandunder
    getgenv().PlaceUnderneath1 = data.placeunderneath1
    getgenv().PlaceUnderneath2 = data.placeunderneath2
    getgenv().PlaceUnderneath3 = data.placeunderneath3
    getgenv().PlaceUnderneath4 = data.placeunderneath4
    getgenv().PlaceUnderneath5 = data.placeunderneath5
    getgenv().PlaceUnderneath6 = data.placeunderneath6
    getgenv().HostName = data.hostname
    getgenv().PlayerNameForPlay = data.playenameforplay
    getgenv().AutoStartCoop = data.autostartcoop
    getgenv().levelcoop = data.levelcoop
    getgenv().autojoinhost = data.autojoinhost
    getgenv().hopserverifnotfindhost = data.hopserverifnotfindhost
    getgenv().hopserverifnotfindplayer = data.hopserverifnotfindplayer
    getgenv().Idserver = data.idserver
    
    -- getgenv().unitname = data.unitname
    -- getgenv().unitid = data.unitid
    getgenv().autostart = data.autostart
    getgenv().autoupgrade = data.autoupgrade
    getgenv().difficulty = data.difficulty
    getgenv().world = data.world
    getgenv().worldcoop = data.worldcoop
    getgenv().level = data.level
    getgenv().door = data.door
    getgenv().doorcoop = data.doorcoop

    getgenv().SpawnUnitPos = data.xspawnUnitPos
    getgenv().SelectedUnits = data.xselectedUnits
    getgenv().difficultycoop = data.difficultycoop

    ---// updates the json file
    function updatejson()

        local xdata = {
            -- unitname = getgenv().unitname,
            -- unitid = getgenv().unitid,
            idserver = getgenv().Idserver,
            sellatwave = getgenv().sellatwave,
            autosell = getgenv().autosell,
            webhook = getgenv().weburl,
            autofarm = getgenv().AutoFarm,
            placeunderneath1 = getgenv().PlaceUnderneath1,
            placeunderneath2 = getgenv().PlaceUnderneath2,
            placeunderneath3 = getgenv().PlaceUnderneath3,
            placeunderneath4 = getgenv().PlaceUnderneath4,
            placeunderneath5 = getgenv().PlaceUnderneath5,
            placeunderneath6 = getgenv().PlaceUnderneath6,
            autostart = getgenv().autostart,
            autoupgrade = getgenv().autoupgrade,
            difficulty = getgenv().difficulty,
            world = getgenv().world,
            level = getgenv().level,
            doorcoop = getgenv().doorcoop,
            door = getgenv().door,
            worldcoop = getgenv().worldcoop,
            xspawnUnitPos = getgenv().SpawnUnitPos,
            xselectedUnits = getgenv().SelectedUnits,
            underneath1 = getgenv().Underneath1,
            underneath2 = getgenv().Underneath2,
            underneath3 = getgenv().Underneath3,
            underneath4 = getgenv().Underneath4,
            underneath5 = getgenv().Underneath5,
            underneath6 = getgenv().Underneath6,
            disctandunder = getgenv().DisctandUnder,
            hostname = getgenv().HostName,
            playenameforplay = getgenv().PlayerNameForPlay,
            autostartcoop = getgenv().AutoStartCoop,
            levelcoop = getgenv().levelcoop,
            difficultycoop = getgenv().difficultycoop,
            autojoinhost = getgenv().autojoinhost,
            hopserverifnotfindhost = getgenv().hopserverifnotfindhost,
            hopserverifnotfindplayer = getgenv().hopserverifnotfindplayer
        }

        local json = HttpService:JSONEncode(xdata)
        writefile(savefilename, json)

    end
    
local function AntiAFk()
game:GetService("Players").LocalPlayer.Idled:connect(function()
          game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
          wait()
          game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

end)
      
end

task.spawn(AntiAFk)--afk

    --Webhook sender
    function webhook()
        pcall(function()
            gems = tostring(game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Holder.GoldGemXP.GemReward.Main.Amount.Text)
            cwaves = game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Holder.Middle.WavesCompleted.Text
            ctime = game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Holder.Middle.Timer.Text
            waves = cwaves:split(": ")
            ttime = ctime:split(": ")

            local url = tostring(getgenv().weburl) --webhook
            print(debug.traceback())
            local data = {
                ["content"] = "",
                ["username"] = "Anime Adventures",
                ["avatar_url"] = "https://tr.rbxcdn.com/11e5ffea9edfa2e4195a76c82def0268/150/150/Image/Jpeg",
                ["embeds"] = {
                    {
                        ["author"] = {
                            ["name"] = "Anime Adventures | Result ✔",
                            ["icon_url"] = "https://cdn.discordapp.com/emojis/997123585476927558.webp?size=96&quality=lossless"
                        },
                        ["description"] = "🎮 **"..game:GetService("Players").LocalPlayer.Name.."** 🎮",
                        ["color"] = 110335,

                        ["thumbnail"] = {
                            ['url'] = "https://www.roblox.com/headshot-thumbnail/image?userId=" ..
                                game.Players.LocalPlayer.userId ..
                                "&width=420&height=420&format=png"
                        },

                        ["fields"] = {
                            {
                                ["name"] = "Total Waves:",
                                ["value"] = tostring(waves[2]) ..
                                    " <:wave:997136622363627530>",
                                ["inline"] = true
                            }, {
                                ["name"] = "Recieved Gems:",
                                ["value"] = gems .." <:gem:997123585476927558>".. " / "..game:GetService("Players")[game.Players.LocalPlayer.Name]["_stats"]["gem_amount"].Value .." <:gem:997123585476927558>",
                                ["inline"] = true
                            }, {
                                ["name"] = "Total Time:",
                                ["value"] = tostring(ttime[2]) .. " ⏳",
                                ["inline"] = true
                            }
                        }
                    }
                }
            }

            local porn = game:GetService("HttpService"):JSONEncode(data)

            local headers = {["content-type"] = "application/json"}
            request = http_request or request or HttpPost or syn.request or http.request
            local sex = {Url = url, Body = porn, Method = "POST", Headers = headers}
            warn("Sending webhook notification...")
            request(sex)
        end)

    end

_G.ColorMethod = Color3.fromRGB(120, 85, 250)

local UiLib =  game:GetService("CoreGui").RobloxGui.Modules:FindFirstChild("Skidtest") 
if UiLib then 
    UiLib:Destroy()
end

	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	local LocalPlayer = game:GetService("Players").LocalPlayer
	local Mouse = LocalPlayer:GetMouse()
	local tween = game:GetService("TweenService")
	local Red = {RainbowColorValue = 0, HueSelectionPosition = 0}
	local PresetColor = Color3.fromRGB(0, 155, 0)


	coroutine.wrap(
		function()
			while wait() do
				Red.RainbowColorValue = Red.RainbowColorValue + 1 / 255
				Red.HueSelectionPosition = Red.HueSelectionPosition + 1

				if Red.RainbowColorValue >= 1 then
					Red.RainbowColorValue = 0
				end

				if Red.HueSelectionPosition == 160 then
					Red.HueSelectionPosition = 0
				end
			end
		end
	)()

	local Reduisceen = Instance.new("ScreenGui")
	Reduisceen.Parent = game:GetService("CoreGui").RobloxGui.Modules
	Reduisceen.Name = "Skidtest"
	Reduisceen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local function MakeDraggable(topbarobject, object)
		local Dragging = nil
		local DragInput = nil
		local DragStart = nil
		local StartPosition = nil

		local function Update(input)
			local Delta = input.Position - DragStart
			local pos =
				UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
			local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
			Tween:Play()
		end

		topbarobject.InputBegan:Connect(
			function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					Dragging = true
					DragStart = input.Position
					StartPosition = object.Position

					input.Changed:Connect(
						function()
							if input.UserInputState == Enum.UserInputState.End then
								Dragging = false
							end
						end
					)
				end
			end
		)

		topbarobject.InputChanged:Connect(
			function(input)
				if
					input.UserInputType == Enum.UserInputType.MouseMovement or
						input.UserInputType == Enum.UserInputType.Touch
				then
					DragInput = input
				end
			end
		)

		UserInputService.InputChanged:Connect(
			function(input)
				if input == DragInput and Dragging then
					Update(input)
				end
			end
		)
	end

	local function Tween(instance, properties,style,wa)
		if style == nil or "" then
			return Back
		end
		tween:Create(instance,TweenInfo.new(wa,Enum.EasingStyle[style]),{properties}):Play()
	end

	local create = {}
	function create.win()
	    if logoid == nil or logoid == "" then
	        logoid = "10292532467"
	    end
		local fs = false

		local MainSceen = Instance.new("Frame")
		MainSceen.Name = "MainSceen"
		MainSceen.Parent = Reduisceen
		MainSceen.AnchorPoint = Vector2.new(0.5, 0.5)
		MainSceen.BackgroundColor3 = Color3.fromRGB(20,20,20)
		MainSceen.BorderSizePixel = 0
		MainSceen.Position = UDim2.new(0.5, 0, 0.5, 0)
		MainSceen.Size = UDim2.new(0, 0, 0, 0)
		MainSceen.ClipsDescendants = true
		
		local Main_UiConner  = Instance.new("UICorner")

		Main_UiConner.CornerRadius = UDim.new(0, 4)
		Main_UiConner.Name = "Main_UiConner"
		Main_UiConner.Parent = MainSceen

		local ClickFrame = Instance.new("Frame")
		ClickFrame.Name = "ClickFrame"
		ClickFrame.Parent = MainSceen
		ClickFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		ClickFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
		ClickFrame.BorderSizePixel = 0
		ClickFrame.Position = UDim2.new(0.5, 0, 0.036, 0)
		ClickFrame.Size = UDim2.new(0, 534-20, 0, 30)
		ClickFrame.ClipsDescendants = true
		ClickFrame.BackgroundTransparency = 1

		MakeDraggable(ClickFrame,MainSceen)
		tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 610)}):Play()

	local ToggleFrameUi = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local ToggleImgUi = Instance.new("ImageLabel")
	local Uitoggle = Instance.new("TextLabel")
	local Yedhee = Instance.new("TextLabel")
	local SearchStroke = Instance.new("UIStroke")

local TextButton7 = Instance.new("TextButton")
    TextButton7.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton7.ClipsDescendants = true
    TextButton7.Position = UDim2.new(0.94, 0, 0.3, 0)
    TextButton7.BorderSizePixel = 0
    TextButton7.BackgroundColor3 = _G.ColorMethod
    TextButton7.AutoButtonColor = false
    TextButton7.FontSize = Enum.FontSize.Size11
    TextButton7.TextSize = 11
    TextButton7.TextColor3 = _G.ColorMethod
    TextButton7.Text = ""
    TextButton7.Font = Enum.Font.GothamSemibold
    TextButton7.TextXAlignment = Enum.TextXAlignment.Left
    TextButton7.Parent = Reduisceen

    
    local TextButton7_UiConner = Instance.new("UICorner")
	
	TextButton7_UiConner.CornerRadius = UDim.new(0, 4)
	TextButton7_UiConner.Parent = TextButton7


local TextButton77 = Instance.new("TextButton")
    TextButton77.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton77.ClipsDescendants = true
    TextButton77.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextButton77.BorderSizePixel = 0
    TextButton77.BackgroundColor3 = _G.ColorMethod
    TextButton77.AutoButtonColor = false
    TextButton77.FontSize = Enum.FontSize.Size11
    TextButton77.TextSize = 11
    TextButton77.TextColor3 = _G.ColorMethod
    TextButton77.Text = ""
    TextButton77.Font = Enum.Font.GothamSemibold
    TextButton77.TextXAlignment = Enum.TextXAlignment.Left
    TextButton77.Parent = TextButton7
    
    local TextButton77_UiConner = Instance.new("UICorner")
	
	TextButton77_UiConner.CornerRadius = UDim.new(0, 4)
	TextButton77_UiConner.Parent = TextButton77
	
    local TextButton8 = Instance.new("TextButton")
    TextButton8.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton8.Size = UDim2.new(0, 207, 0, 48)--UDim2.new(0, 198, 0, 48)
    TextButton8.ClipsDescendants = true
    TextButton8.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextButton8.BorderSizePixel = 0
    TextButton8.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    TextButton8.AutoButtonColor = false
    TextButton8.FontSize = Enum.FontSize.Size11
    TextButton8.TextSize = 11
    TextButton8.TextColor3 = Color3.fromRGB(45, 45, 45)
    TextButton8.Text = ""
    TextButton8.Font = Enum.Font.GothamSemibold
    TextButton8.Parent = TextButton7

    local TextButton8_UiConner = Instance.new("UICorner")
	
	TextButton8_UiConner.CornerRadius = UDim.new(0, 4)
	TextButton8_UiConner.Parent = TextButton8
	
	ToggleImgUi.Name = "ToggleImgUi"
	ToggleImgUi.Parent = TextButton8
	ToggleImgUi.BackgroundColor3 = _G.ColorMethod
	ToggleImgUi.BackgroundTransparency = 1.000
	ToggleImgUi.Position = UDim2.new(0.0454545468, 0, 0.125000313, 0)
	ToggleImgUi.Size = UDim2.new(0, 35, 0, 35)
	ToggleImgUi.Image = "https://www.roblox.com/asset-thumbnail/image?assetId=10303462098&width=0&height=0&format=png"
	
	Uitoggle.Name = "Uitoggle"
	Uitoggle.Parent = TextButton8
	Uitoggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Uitoggle.BackgroundTransparency = 1.000
	Uitoggle.Position = UDim2.new(0.25757575, 0, 0, 0)
	Uitoggle.Size = UDim2.new(0, 137, 0, 25)
	Uitoggle.Font = Enum.Font.GothamSemibold
	Uitoggle.Text = "Ui Toggle :"
	Uitoggle.TextColor3 = _G.ColorMethod
	Uitoggle.TextSize = 13.000
	
	Yedhee.Name = "Yedhee"
	Yedhee.Parent = TextButton8
	Yedhee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Yedhee.BackgroundTransparency = 1.000
	Yedhee.Position = UDim2.new(0.25757575, 0, 0.479166657, 0)
	Yedhee.Size = UDim2.new(0, 137, 0, 25)
	Yedhee.Font = Enum.Font.GothamSemibold
	Yedhee.Text = "RightControl"
	Yedhee.TextColor3 = _G.ColorMethod
	Yedhee.TextSize = 13.000

    
   --[[ local TextButton7 = Instance.new("TextButton")
    TextButton7.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton7.ClipsDescendants = true
    TextButton7.Position = UDim2.new(0.94, 0, 0.3, 0)
    TextButton7.BorderSizePixel = 0
    TextButton7.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
    TextButton7.AutoButtonColor = false
    TextButton7.FontSize = Enum.FontSize.Size11
    TextButton7.TextSize = 11
    TextButton7.TextColor3 = Color3.fromRGB(109, 109, 109)
    TextButton7.Text = ""
    TextButton7.Font = Enum.Font.GothamSemibold
    TextButton7.TextXAlignment = Enum.TextXAlignment.Left
    TextButton7.Parent = Reduisceen
    
    local TextButton7_UiConner = Instance.new("UICorner")

    TextButton7_UiConner.CornerRadius = UDim.new(0, 9)
    TextButton7_UiConner.Name = "Main_UiConner"
    TextButton7_UiConner.Parent = TextButton7

    local TextButton8 = Instance.new("TextButton")
    TextButton8.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton8.Size = UDim2.new(0, 198, 0, 48)
    TextButton8.ClipsDescendants = true
    TextButton8.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextButton8.BorderSizePixel = 0
    TextButton8.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    TextButton8.AutoButtonColor = false
    TextButton8.FontSize = Enum.FontSize.Size11
    TextButton8.TextSize = 11
    TextButton8.TextColor3 = Color3.fromRGB(45, 45, 45)
    TextButton8.Text = ""
    TextButton8.Font = Enum.Font.GothamSemibold
    TextButton8.Parent = TextButton7

    local TextButton8_UiConner = Instance.new("UICorner")

    TextButton8_UiConner.CornerRadius = UDim.new(0, 9)
    TextButton8_UiConner.Name = "Main_UiConner"
    TextButton8_UiConner.Parent = TextButton8

    local TextLabel13 = Instance.new("TextLabel")
    TextLabel13.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel13.Size = UDim2.new(0, 198, 0, 50)
    TextLabel13.ClipsDescendants = true
    TextLabel13.BackgroundTransparency = 1
    TextLabel13.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextLabel13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel13.TextSize = 13
    TextLabel13.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel13.Text = "Ui Toggle : \nRightControl"
    TextLabel13.TextWrap = true
    TextLabel13.Font = Enum.Font.GothamSemibold
    TextLabel13.TextWrapped = true
    TextLabel13.Parent = TextButton8]]--

	
    --[[KeyButton.MouseButton1Click:Connect(function()
        KeyButton.Text = "..."
        local inputwait = UserInputService.InputBegan:wait()
        if inputwait.KeyCode.Name ~= "Unknown" then
            getgenv().Settings.Key = inputwait.KeyCode
            KeyButton.Text = "[ " .. inputwait.KeyCode.Name .. " ]"
            TextLabel13.Text = "Ui Toggle : " .. inputwait.KeyCode.Name

            Key = inputwait.KeyCode.Name
        end
    end)]]--


    local library = {toggledui = false;}
    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.RightControl then
            if library.toggledui == false then
                library.toggledui = true
                tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
                wait(0.2)
                TweenService:Create(
                    TextButton7,
                    TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 220, 0, 50)}
                ):Play()
                TweenService:Create(
                    TextButton77,
                    TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 217, 0, 47)}
                ):Play()
                --[[wait(9000)
                wait(.51)
                if TextButton7.Size.Y.Offset == UDim2.new(0, 0, 0, 0) then
                    Reduisceen.Enabled = false
                end]]--
            else
                Reduisceen.Enabled = true
                TweenService:Create(
                    TextButton7,
                    TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                    {Size = UDim2.new(0, 0, 0, 0)}
                ):Play()
                TweenService:Create(
                    TextButton77,
                    TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                    {Size = UDim2.new(0, 0, 0, 0)}
                ):Play()
                tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 610)}):Play()
                repeat wait() until MainSceen.Size == UDim2.new(0, 550, 0, 610)
                library.toggledui = false
                if MainSceen.Size == UDim2.new(0, 550, 0, 610) then
                    Reduisceen.Enabled = true
                end
            end
        end
    end)
    function UISetToggle(Set)
        if not Set then
            library.toggledui = true
            TweenService:Create(
                MainSceen,
                TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                {Size = UDim2.new(0, 0, 0, 0)}
            ):Play()
            wait(0.2)
            TweenService:Create(
                TextButton7,
                TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 220, 0, 50)}
            ):Play()
                TweenService:Create(
                    TextButton77,
                    TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                    {Size = UDim2.new(0, 210, 0, 50)}
                ):Play()
            wait(2)
            TweenService:Create(
                TextButton7,
                TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                {Size = UDim2.new(0, 0, 0, 0)}
            ):Play()
                TweenService:Create(
                    TextButton77,
                    TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                    {Size = UDim2.new(0, 0, 0, 0)}
                ):Play()
            wait(.5)
            Reduisceen.Enabled = false
        else
            Reduisceen.Enabled = true
            tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 610)}):Play()
            repeat wait() until MainSceen.Size == UDim2.new(0, 553, 0, 466)
            library.toggledui = true
            Reduisceen.Enabled = true
        end
    end
    
    if Config and Config.HideUI then
        UISetToggle(false)
    end
    
		--[[local library = {toggledui = false;}
		game:GetService("UserInputService").InputBegan:Connect(function(input)
			pcall(function()
				if input.KeyCode == Enum.KeyCode.RightControl then
					if library.toggledui == false then
						library.toggledui = true
						tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
						wait(.3)
						Reduisceen.Enabled = false
					else
						library.toggledui = false
						tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 610)}):Play()
						Reduisceen.Enabled = true
					end
				end
			end)
		end)]]--

	local SearchStroke2 = Instance.new("UIStroke")
	
	SearchStroke2.Thickness = 1
	SearchStroke2.Name = ""
	SearchStroke2.Parent = MainSceen
	SearchStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	SearchStroke2.LineJoinMode = Enum.LineJoinMode.Round
	SearchStroke2.Color = Color3.fromRGB(255,255,255)
	SearchStroke2.Transparency = 0
	
		local MainSceen22 = Instance.new("Frame")
		MainSceen22.Name = "MainSceen22"
		MainSceen22.Parent = MainSceen
		MainSceen22.AnchorPoint = Vector2.new(0.5, 0.5)
		MainSceen22.BackgroundColor3 = Color3.fromRGB(20,20,20)
		MainSceen22.BorderSizePixel = 0
		MainSceen22.Position = UDim2.new(0.5, 0, 0.05, 88)
		MainSceen22.Size = UDim2.new(0, 528, 0, 130)
		MainSceen22.ClipsDescendants = true

		local MainSceen222 = Instance.new("Frame")
		MainSceen222.Name = "MainSceen222"
		MainSceen222.Parent = MainSceen
		MainSceen222.AnchorPoint = Vector2.new(0.5, 0.5)
		MainSceen222.BackgroundColor3 = _G.ColorMethod
		MainSceen222.BorderSizePixel = 0
		MainSceen222.Position = UDim2.new(0.1, 0, 0.05, 72)
		MainSceen222.Size = UDim2.new(0, 6, 0, 70)
		MainSceen222.ClipsDescendants = true

		local Main_UiXConner  = Instance.new("UICorner")

		Main_UiXConner.CornerRadius = UDim.new(0, 4)
		Main_UiXConner.Name = "Main_UiXConner"
		Main_UiXConner.Parent = MainSceen222
		
		local Main_UiXConner  = Instance.new("UICorner")

		Main_UiXConner.CornerRadius = UDim.new(0, 4)
		Main_UiXConner.Name = "Main_UiXConner"
		Main_UiXConner.Parent = MainSceen22

	local SearchStroke = Instance.new("UIStroke")
	
	SearchStroke.Thickness = 1.5
	SearchStroke.Name = ""
	SearchStroke.Parent = MainSceen22
	SearchStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	SearchStroke.LineJoinMode = Enum.LineJoinMode.Round
	SearchStroke.Color = Color3.fromRGB(255,255,255)
	SearchStroke.Transparency = 0

		local NameReal2 = Instance.new("TextLabel")

		NameReal2.Parent = MainSceen22
		NameReal2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NameReal2.BackgroundTransparency = 1
		NameReal2.BorderSizePixel = 0
		NameReal2.Position = UDim2.new(0.2, 0, 0.05, 19)
		NameReal2.AnchorPoint = Vector2.new(0.5, 0.5)
		NameReal2.Size = UDim2.new(0, 1, 0, 0)
		NameReal2.Font = Enum.Font.GothamBold
		NameReal2.Text = "Welcome to"
		NameReal2.TextColor3 = Color3.fromRGB(255,255,255)
		NameReal2.TextSize = 15.000

		local JoinButton = Instance.new("TextLabel")

		JoinButton.Parent = MainSceen22
		JoinButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		JoinButton.BackgroundTransparency = 1
		JoinButton.BorderSizePixel = 0
		JoinButton.Position = UDim2.new(0.25, 0, 0.05, 76)
		JoinButton.AnchorPoint = Vector2.new(0.5, 0.5)
		JoinButton.Size = UDim2.new(0, 140, 0.01, 25)
		JoinButton.Font = Enum.Font.GothamBold
		JoinButton.Text = "Anime Adventures"
		JoinButton.TextColor3 = Color3.fromRGB(255,255,255)
		JoinButton.TextSize = 15.000

    
		local Main_UiXConner  = Instance.new("UICorner")

		Main_UiXConner.CornerRadius = UDim.new(0, 8)
		Main_UiXConner.Name = "Main_UiXConner"
		Main_UiXConner.Parent = JoinButton
		
local IMGNAME = Instance.new("ImageLabel")
	IMGNAME.Name = "IMGDATA"
	IMGNAME.Parent = MainSceen22
	IMGNAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	IMGNAME.BackgroundTransparency = 1.000
	IMGNAME.Position = UDim2.new(0, 400, 0, 6)
	IMGNAME.Size = UDim2.new(0, 100, 0, 100)
	IMGNAME.Image = "https://www.roblox.com/asset-thumbnail/image?assetId=10303462098&width=0&height=0&format=png"
	
	local SearchStroke = Instance.new("UIStroke")
	
	SearchStroke.Thickness = 1.4
	SearchStroke.Name = ""
	SearchStroke.Parent = JoinButton
	SearchStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	SearchStroke.LineJoinMode = Enum.LineJoinMode.Round
	SearchStroke.Color = _G.ColorMethod
	SearchStroke.Transparency = 0		
		local NameReal2 = Instance.new("TextLabel")

		NameReal2.Parent = MainSceen22
		NameReal2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NameReal2.BackgroundTransparency = 1
		NameReal2.BorderSizePixel = 0
		NameReal2.Position = UDim2.new(0.2, 0, 0.05, 40)
		NameReal2.AnchorPoint = Vector2.new(0.5, 0.5)
		NameReal2.Size = UDim2.new(0, 136, 0, 34)
		NameReal2.Font = Enum.Font.GothamBold
		NameReal2.Text = "SkidHUB"
		NameReal2.TextColor3 = _G.ColorMethod
		NameReal2.TextSize = 25.000

function create.bar(text)
    Infomation = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId);
    NameGames = Infomation.Name
    local barre = {}
    
	local Label = Instance.new("TextLabel")

    Label.Parent = MainSceen
    Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Label.BackgroundTransparency = 1
    Label.BorderSizePixel = 0
    Label.Position = UDim2.new(0.25, 0, 0.05, 570)
    Label.AnchorPoint = Vector2.new(0.5, 0.5)
    Label.Size = UDim2.new(0, 136, 0, 34)
    Label.Font = Enum.Font.GothamBold
    Label.Text = tostring(""..NameGames..""..text)
    Label.TextColor3 = Color3.fromRGB(255,255,255)
    Label.TextSize = 14.000
    
    function barre:loadbar()
        Label.Text = os.date("%H")..":"..os.date("%M")..":"..os.date("%S")
    end
    
    return barre
end

		local NameReal2 = Instance.new("TextLabel")
		
		NameReal2.Parent = MainSceen22
		NameReal2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NameReal2.BackgroundTransparency = 1
		NameReal2.BorderSizePixel = 0
		NameReal2.Position = UDim2.new(0.3, 0, 0.05, 40)
		NameReal2.AnchorPoint = Vector2.new(0.5, 0.5)
		NameReal2.Size = UDim2.new(0, 136, 0, 34)
		NameReal2.Font = Enum.Font.GothamBold
		NameReal2.Text = ""
		NameReal2.TextColor3 = Color3.fromRGB(255,255,255)
		NameReal2.TextSize = 25.000
		
local IMGNAME = Instance.new("ImageLabel")
	IMGNAME.Name = "IMGDATA"
	IMGNAME.Parent = MainSceen
	IMGNAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	IMGNAME.BackgroundTransparency = 1.000
	IMGNAME.Position = UDim2.new(0, 10, 0, 6)
	IMGNAME.Size = UDim2.new(0, 34, 0, 34)
	IMGNAME.Image = "https://www.roblox.com/asset-thumbnail/image?assetId=10303462098&width=0&height=0&format=png"
		
		
		local NameReal = Instance.new("TextLabel")

		NameReal.Parent = MainSceen
		NameReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NameReal.BackgroundTransparency = 1
		NameReal.BorderSizePixel = 0
		NameReal.Position = UDim2.new(0.2, 0, 0.04, 0)
		NameReal.AnchorPoint = Vector2.new(0.5, 0.5)
		NameReal.Size = UDim2.new(0, 136, 0, 34)
		NameReal.Font = Enum.Font.GothamBold
		NameReal.Text = "Skid"                                                                                                
		NameReal.TextColor3 = _G.ColorMethod
		NameReal.TextSize = 23.000
		
		local NameReal = Instance.new("TextLabel")

		NameReal.Parent = MainSceen
		NameReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NameReal.BackgroundTransparency = 1
		NameReal.BorderSizePixel = 0
		NameReal.Position = UDim2.new(0.30, -5, 0.04, 0)
		NameReal.AnchorPoint = Vector2.new(0.5, 0.5)
		NameReal.Size = UDim2.new(0, 136, 0, 34)
		NameReal.Font = Enum.Font.GothamBold
		NameReal.Text = "HUB"
		NameReal.TextColor3 = Color3.fromRGB(255,255,255)
		NameReal.TextSize = 23.000
	

		local MainSceen2 = Instance.new("Frame")
		MainSceen2.Name = "MainSceen2"
		MainSceen2.Parent = MainSceen
		MainSceen2.AnchorPoint = Vector2.new(0.5, 0.5)
		MainSceen2.BackgroundColor3 = Color3.fromRGB(15,15,15)--Color3.fromRGB(18,18,18)
		MainSceen2.BorderSizePixel = 0
		MainSceen2.Position = UDim2.new(0.5, 0, 0.5, 0)
		MainSceen2.Size = UDim2.new(0, 0, 0, 0)
		MainSceen2.ClipsDescendants = true

		local Main_UiConner2  = Instance.new("UICorner")

		Main_UiConner2.CornerRadius = UDim.new(0, 4)
		Main_UiConner2.Name = "Main_UiConner"
		Main_UiConner2.Parent = MainSceen

		MainSceen2:TweenSizeAndPosition(UDim2.new(0, 550-20, 0,390), UDim2.new(0.5, 0, 0.53, 70), "Out", "Back", 0.5, true)


		local ScolTapBarFrame = Instance.new("Frame")
		ScolTapBarFrame.Name = "MainSceen2"
		ScolTapBarFrame.Parent = MainSceen2
		ScolTapBarFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		ScolTapBarFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
		ScolTapBarFrame.BorderSizePixel = 0
		ScolTapBarFrame.BackgroundTransparency = 1
		ScolTapBarFrame.Position = UDim2.new(0.5, 0, 0.07, 0)
		ScolTapBarFrame.Size = UDim2.new(0, 500, 0, 35)
		ScolTapBarFrame.ClipsDescendants = true

		local ScrollingFrame_Menubar = Instance.new("ScrollingFrame")

		ScrollingFrame_Menubar.Parent = ScolTapBarFrame
		ScrollingFrame_Menubar.Active = true
		ScrollingFrame_Menubar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ScrollingFrame_Menubar.BackgroundTransparency = 1
		ScrollingFrame_Menubar.BorderSizePixel = 0
		ScrollingFrame_Menubar.Size = UDim2.new(0, 500, 0, 30)
		ScrollingFrame_Menubar.CanvasSize = UDim2.new(2, 0, 0, 0)
		ScrollingFrame_Menubar.ScrollBarImageColor3 = _G.ColorMethod
		ScrollingFrame_Menubar.ScrollBarThickness = 3


		local UIListLayout_Menubar = Instance.new("UIListLayout")

		UIListLayout_Menubar.Parent = ScrollingFrame_Menubar
		UIListLayout_Menubar.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_Menubar.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_Menubar.Padding = UDim.new(0, 10)

		local UIPadding_Menubar = Instance.new("UIPadding")

		UIPadding_Menubar.Parent = ScrollingFrame_Menubar
		UIPadding_Menubar.PaddingTop = UDim.new(0, 2)


		local PageOrders = -1

		local Container_Page = Instance.new('Frame',MainSceen2)
		Container_Page.Size = UDim2.new(0, 518, 0, 268)
		Container_Page.Position = UDim2.new(0.5, 0, 0.45, 0)
		Container_Page.BackgroundTransparency = 1
		Container_Page.Name = "Page "
		Container_Page.AnchorPoint = Vector2.new(0.5, 0.5)

		local pagesFolder = Instance.new("Folder")

		pagesFolder.Name = "pagesFolder"
		pagesFolder.Parent = Container_Page


		local UIPage = Instance.new('UIPageLayout',pagesFolder)
		UIPage.SortOrder = Enum.SortOrder.LayoutOrder
		UIPage.EasingDirection = Enum.EasingDirection.InOut
		UIPage.EasingStyle = Enum.EasingStyle.Quad
		UIPage.Padding = UDim.new(0, 10)
		UIPage.TweenTime = 0.500

		local top = {}

		local NotiFrame = Instance.new("Frame")
		NotiFrame.Name = "NotiFrame"
		NotiFrame.Parent = Reduisceen
		NotiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		NotiFrame.BackgroundColor3 = Color3.fromRGB(18,18,18)
		NotiFrame.BorderSizePixel = 0
		NotiFrame.Position =  UDim2.new(1, -210, 1, -500)
		NotiFrame.Size = UDim2.new(0, 400, 0, 500)
		NotiFrame.ClipsDescendants = true
		NotiFrame.BackgroundTransparency = 1


		local Notilistlayout = Instance.new("UIListLayout")
		Notilistlayout.Parent = NotiFrame
		Notilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
		Notilistlayout.Padding = UDim.new(0, 5)


		function create:Notifile(titel,text,delays)
			local TitleFrame = Instance.new("Frame")
			TitleFrame.Name = "TitleFrame"
			TitleFrame.Parent = NotiFrame
			TitleFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			TitleFrame.BackgroundColor3 = Color3.fromRGB(18,18,18)
			TitleFrame.BorderSizePixel = 0
			TitleFrame.Position =  UDim2.new(0.5, 0, 0.5,0)
			TitleFrame.Size = UDim2.new(0, 0, 0, 0)
			TitleFrame.ClipsDescendants = true
			TitleFrame.BackgroundTransparency = 0

			local ConnerTitile = Instance.new("UICorner")

			ConnerTitile.CornerRadius = UDim.new(0, 4)
			ConnerTitile.Name = ""
			ConnerTitile.Parent = TitleFrame

			TitleFrame:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 70),  UDim2.new(0.5, 0, 0.5,0), "Out", "Quad", 0.3, true)

			local imagenoti = Instance.new("ImageLabel")

			imagenoti.Parent = TitleFrame
			imagenoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			imagenoti.BackgroundTransparency = 1.000
			imagenoti.AnchorPoint = Vector2.new(0.5, 0.5)
			imagenoti.Position = UDim2.new(0.9, 0, 0.5, 0)
			imagenoti.Size = UDim2.new(0, 50, 0, 50)
		    imagenoti.Image = "https://www.roblox.com/asset-thumbnail/image?assetId=10303462098&width=0&height=0&format=png"

			local txdlid = Instance.new("TextLabel")

			txdlid.Parent = TitleFrame
			txdlid.Name = "TextLabel_Tap"
			txdlid.BackgroundColor3 = _G.ColorMethod
			txdlid.Size =UDim2.new(0, 160, 0,25 )
			txdlid.Font = Enum.Font.GothamBold
			txdlid.Text = titel
			txdlid.TextColor3 = _G.ColorMethod
			txdlid.TextSize = 13.000
			txdlid.AnchorPoint = Vector2.new(0.5, 0.5)
			txdlid.Position = UDim2.new(0.23, 0, 0.3, 0)
			-- txdlid.TextYAlignment = Enum.TextYAlignment.Top
			txdlid.TextXAlignment = Enum.TextXAlignment.Left
			txdlid.BackgroundTransparency = 1

			local LableFrame = Instance.new("Frame")
			LableFrame.Name = "LableFrame"
			LableFrame.Parent = TitleFrame
			LableFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			LableFrame.BackgroundColor3 = _G.ColorMethod
			LableFrame.BorderSizePixel = 0
			LableFrame.Position =  UDim2.new(0.36, 0, 0.67,0)
			LableFrame.Size = UDim2.new(0, 260, 0,25 )
			LableFrame.ClipsDescendants = true
			LableFrame.BackgroundTransparency = 1

			local TextNoti = Instance.new("TextLabel")

			TextNoti.Parent = LableFrame
			TextNoti.Name = "TextLabel_Tap"
			TextNoti.BackgroundColor3 = _G.ColorMethod
			TextNoti.Size =UDim2.new(0, 260, 0,25 )
			TextNoti.Font = Enum.Font.GothamBold
			TextNoti.Text = text
			TextNoti.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextNoti.TextSize = 13.000
			TextNoti.AnchorPoint = Vector2.new(0.5, 0.5)
			TextNoti.Position = UDim2.new(0.5, 0, 0.5, 0)
			-- TextNoti.TextYAlignment = Enum.TextYAlignment.Top
			TextNoti.TextXAlignment = Enum.TextXAlignment.Left
			TextNoti.BackgroundTransparency = 1

			repeat wait() until TitleFrame.Size == UDim2.new(0, 400-10, 0, 70)

			local Time = Instance.new("Frame")
			Time.Name = "Time"
			Time.Parent = TitleFrame
	--Time.AnchorPoint = Vector2.new(0.5, 0.5)
			Time.BackgroundColor3 =  _G.ColorMethod
			Time.BorderSizePixel = 0
			Time.Position =  UDim2.new(0, 0, 0.,0)
			Time.Size = UDim2.new(0, 0,0,0)
			Time.ClipsDescendants = false
			Time.BackgroundTransparency = 0

			local ConnerTitile_Time = Instance.new("UICorner")

			ConnerTitile_Time.CornerRadius = UDim.new(0, 4)
			ConnerTitile_Time.Name = ""
			ConnerTitile_Time.Parent = Time


			Time:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 3),  UDim2.new(0., 0, 0.,0), "Out", "Quad", 0.3, true)
			repeat wait() until Time.Size == UDim2.new(0, 400-10, 0, 3)

			TweenService:Create(
				Time,
				TweenInfo.new(tonumber(delays), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
				{Size = UDim2.new(0, 0, 0, 3)} -- UDim2.new(0, 128, 0, 25)
			):Play()
			delay(tonumber(delays),function()
				TweenService:Create(
					TitleFrame,
					TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
					{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				wait(0.3)
				TitleFrame:Destroy()
			end
		)
		end


		function top:Taps(text)
			PageOrders = PageOrders + 1
			local name = tostring(text) or tostring(math.random(1,5000))

			local Frame_Tap = Instance.new("Frame")
			Frame_Tap.Parent = ScrollingFrame_Menubar
			Frame_Tap.Name = text.."Server"
			Frame_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame_Tap.BackgroundTransparency = 1
			Frame_Tap.Position = UDim2.new(0.0, 0, 0.0, 0)
			Frame_Tap.Size = UDim2.new(0, 100, 0, 25)
			Frame_Tap.Visible = true

			local TextLabel_Tap = Instance.new("TextLabel")

			TextLabel_Tap.Parent = Frame_Tap
			TextLabel_Tap.Name = "TextLabel_Tap"
			TextLabel_Tap.BackgroundColor3 = _G.ColorMethod
			TextLabel_Tap.Position = UDim2.new(0.5, 0, 0.8, 0)
			TextLabel_Tap.Size = UDim2.new(0, 0, 0, 0)
			TextLabel_Tap.Font = Enum.Font.SourceSans
			TextLabel_Tap.Text = " "
			TextLabel_Tap.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel_Tap.TextSize = 14.000
			TextLabel_Tap.AnchorPoint = Vector2.new(0.5, 0.5)

			local TextButton_Tap = Instance.new("TextButton")

			TextButton_Tap.Parent = Frame_Tap
			TextButton_Tap.Name = "TextButton_Tap"
			TextButton_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton_Tap.BackgroundTransparency = 1.000
			TextButton_Tap.Position = UDim2.new(0.114491031, 0, -0.0216345787, 0)
			TextButton_Tap.Size = UDim2.new(0, 80, 0, 20)
			TextButton_Tap.Font = Enum.Font.GothamSemibold
			TextButton_Tap.TextColor3 = Color3.fromRGB(155, 155, 155)
			TextButton_Tap.TextSize = 13.000
			TextButton_Tap.Text = tostring(text)

			local MainPage = Instance.new("Frame")

			MainPage.Name = name.."_MainPage"
			MainPage.Parent = pagesFolder
			MainPage.BackgroundColor3 = Color3.fromRGB(255,255, 255)
			MainPage.BorderSizePixel = 0
			MainPage.Position = UDim2.new(0.5, 0, 0.5, 0) -- UDim2.new(0.0149812736, 0, 0.13, 0)
			MainPage.Size = UDim2.new(0, 518, 0, 375)
			MainPage.BackgroundTransparency = 1
			MainPage.ClipsDescendants = true
			MainPage.Visible = true
			MainPage.LayoutOrder = PageOrders




			TextButton_Tap.MouseButton1Click:connect(function()
				if MainPage.Name == text.."_MainPage" then
					UIPage:JumpToIndex(MainPage.LayoutOrder)

				end
				for i ,v in next , ScrollingFrame_Menubar:GetChildren() do
					if v:IsA("Frame") then
						TweenService:Create(
							v.TextButton_Tap,
							TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextColor3 = Color3.fromRGB(155, 155, 155)}
						):Play()
					end

					TweenService:Create(
						TextButton_Tap,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = _G.ColorMethod}
					):Play()
				end
			end)

			if fs == false then
				-- TweenService:Create(
				--     TextLabel_Tap,
				--     TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				--     {Size = UDim2.new(0, 70, 0, 2)}
				-- ):Play()
				TweenService:Create(
					TextButton_Tap,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = _G.ColorMethod}
				):Play()

				MainPage.Visible = true
				Frame_Tap.Name  = text .. "Server"
				fs  = true
			end
			local ScrollingFrame_Pagefrist = Instance.new("ScrollingFrame")

			ScrollingFrame_Pagefrist.Parent = MainPage
			ScrollingFrame_Pagefrist.Active = true
			ScrollingFrame_Pagefrist.BackgroundColor3 = Color3.fromRGB(23, 23, 23) -- 249, 53, 139
			ScrollingFrame_Pagefrist.BorderSizePixel = 0
			ScrollingFrame_Pagefrist.Size = UDim2.new(0, 518, 0, 375)
			ScrollingFrame_Pagefrist.ScrollBarThickness = 4
			ScrollingFrame_Pagefrist.ScrollBarImageColor3 = _G.ColorMethod -- 249, 53, 139

			local UIGridLayout_Pagefrist = Instance.new("UIGridLayout")
			local UIPadding_Pagefrist = Instance.new("UIPadding")

			UIGridLayout_Pagefrist.Archivable = false
			UIGridLayout_Pagefrist.Parent = ScrollingFrame_Pagefrist
			UIGridLayout_Pagefrist.SortOrder = Enum.SortOrder.LayoutOrder
			UIGridLayout_Pagefrist.CellPadding = UDim2.new(0, 13, 0, 15)
			UIGridLayout_Pagefrist.CellSize = UDim2.new(0, 240, 0, 370)

			UIPadding_Pagefrist.Parent = ScrollingFrame_Pagefrist
			UIPadding_Pagefrist.PaddingLeft = UDim.new(0, 10)
			UIPadding_Pagefrist.PaddingTop = UDim.new(0, 20)

			local page = {}

			function page:newpage()

				local Pageframe = Instance.new("Frame")


				Pageframe.Parent = ScrollingFrame_Pagefrist
				Pageframe.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				Pageframe.BorderSizePixel = 0
				Pageframe.Position = UDim2.new(0.028957529, 0, 0.0496277921, 0)
				Pageframe.Size = UDim2.new(0, 240, 0, 379)


				local ScrollingFrame_Pageframe = Instance.new("ScrollingFrame")


				ScrollingFrame_Pageframe.Parent = Pageframe
				ScrollingFrame_Pageframe.Active = true
				ScrollingFrame_Pageframe.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				ScrollingFrame_Pageframe.BorderSizePixel = 0
				ScrollingFrame_Pageframe.Position = UDim2.new(0, 0, -0.0101253344, 0)
				ScrollingFrame_Pageframe.Size = UDim2.new(0, 240, 0, 379)
				ScrollingFrame_Pageframe.ScrollBarThickness = 4
				ScrollingFrame_Pageframe.ScrollBarImageColor3 = Color3.fromRGB(222, 222, 222)



				local UIPadding_Pageframe = Instance.new("UIPadding")
				local UIListLayout_Pageframe = Instance.new("UIListLayout")


				UIPadding_Pageframe.Parent = ScrollingFrame_Pageframe
				UIPadding_Pageframe.PaddingLeft = UDim.new(0, 15)
				UIPadding_Pageframe.PaddingTop = UDim.new(0, 10)


				UIListLayout_Pageframe.Parent = ScrollingFrame_Pageframe
				UIListLayout_Pageframe.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout_Pageframe.Padding = UDim.new(0, 7)

				UIListLayout_Pageframe:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
					ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y + 120 )
				end)

				UIGridLayout_Pagefrist:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
					ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 50 )
				end)

				game:GetService("RunService").Stepped:Connect(function ()
					pcall(function ()
						ScrollingFrame_Menubar.CanvasSize = UDim2.new(0,  UIListLayout_Menubar.AbsoluteContentSize.X, 0,0)
						ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y +20 )
						ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 40)
					end)
				end)
			local items = {}

			function items:Toggle(text,config,callback)
				local Toggle = Instance.new("Frame")

				Toggle.Parent = ScrollingFrame_Pageframe
				Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Toggle.BorderSizePixel = 0
				Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
				Toggle.Size = UDim2.new(0, 213, 0, 35)
				Toggle.BackgroundTransparency = 1
				Toggle.AnchorPoint = Vector2.new(0.5, 0.5)

				local TextButton_Toggle = Instance.new("TextButton")

				TextButton_Toggle.Parent = Toggle
				TextButton_Toggle.BackgroundTransparency =1
				TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				TextButton_Toggle.BorderSizePixel = 0
				TextButton_Toggle.Size = UDim2.new(0, 213, 0, 35)
				TextButton_Toggle.AutoButtonColor = false
				TextButton_Toggle.Font = Enum.Font.SourceSans
				TextButton_Toggle.Text = " "
				TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_Toggle.TextSize = 12.000

				local TextButton_2_Toggle = Instance.new("TextButton")

				TextButton_2_Toggle.Parent = TextButton_Toggle
				TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
		--        TextButton_2_Toggle.BorderColor3 = _G.ColorMethod
				TextButton_2_Toggle.BorderSizePixel = 0
				TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_2_Toggle.Position = UDim2.new(0.9, 0, 0.5, 0)
				TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
				TextButton_2_Toggle.Font = Enum.Font.SourceSans
				TextButton_2_Toggle.Text = " "
				TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_2_Toggle.TextSize = 12.000
				TextButton_2_Toggle.AutoButtonColor = false

				local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
				TextButton_Pageframe_Uiconner.Name = ""
				TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

				local TextButton_3_Toggle = Instance.new("TextButton")

				TextButton_3_Toggle.Parent = TextButton_2_Toggle
				TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
		--        TextButton_3_Toggle.BorderColor3 = _G.ColorMethod
				TextButton_3_Toggle.BorderSizePixel = 0
				TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)
				TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
				TextButton_3_Toggle.Font = Enum.Font.SourceSans
				TextButton_3_Toggle.Text = " "
				TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_3_Toggle.TextSize = 12.000
				TextButton_3_Toggle.AutoButtonColor = false

				local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
				TextButton_Pageframe_Uiconner2.Name = ""
				TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

				local TextButton_4_Toggle = Instance.new("TextButton")

				TextButton_4_Toggle.Parent = TextButton_3_Toggle
				TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
		--        TextButton_3_Toggle.BorderColor3 = _G.ColorMethod
				TextButton_4_Toggle.BorderSizePixel = 0
				TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
				TextButton_4_Toggle.Font = Enum.Font.SourceSans
				TextButton_4_Toggle.Text = " "
				TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_4_Toggle.TextSize = 12.000
				TextButton_4_Toggle.AutoButtonColor = false
				TextButton_4_Toggle.BackgroundTransparency = 1
				TextButton_4_Toggle.Visible = true

				local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
				TextButton_Pageframe_Uiconner4.Name = ""
				TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle

				local TextLabel_Toggle = Instance.new("TextLabel")

				TextLabel_Toggle.Parent = Toggle
				TextLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel_Toggle.BackgroundTransparency = 1
				TextLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel_Toggle.Position = UDim2.new(0.4, 0, 0.5, 0)
				TextLabel_Toggle.BorderSizePixel = 0
				TextLabel_Toggle.Size = UDim2.new(0, 130, 0, 25)
				TextLabel_Toggle.Font = Enum.Font.GothamSemibold
				TextLabel_Toggle.Text = text
				TextLabel_Toggle.TextColor3 = Color3.fromRGB(200, 200, 200)
				TextLabel_Toggle.TextSize = 13.000
				TextLabel_Toggle.ClipsDescendants = true
				TextLabel_Toggle.TextWrapped = true
				TextLabel_Toggle.TextXAlignment = Enum.TextXAlignment.Left

				local TextButton_Toggle2 = Instance.new("TextButton")

				TextButton_Toggle2.Parent = TextButton_Toggle
				TextButton_Toggle2.BackgroundTransparency =1
				TextButton_Toggle2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				TextButton_Toggle2.BorderSizePixel = 0
				TextButton_Toggle2.Size = UDim2.new(0, 213, 0, 35)
				TextButton_Toggle2.AutoButtonColor = false
				TextButton_Toggle2.Font = Enum.Font.SourceSans
				TextButton_Toggle2.Text = " "
				TextButton_Toggle2.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_Toggle2.TextSize = 12.000

				TextButton_Toggle2.MouseEnter:Connect(function()
					TweenService:Create(
						TextButton_4_Toggle,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextLabel_Toggle,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)

			TextButton_Toggle2.MouseLeave:Connect(function()
					TweenService:Create(
						TextButton_4_Toggle,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextLabel_Toggle,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(200, 200, 200)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)

			local check = {toogle = false ; loacker = true ; togfunction = {

			};
		}
		TextButton_Toggle2.MouseButton1Click:Connect(function()
				if check.toogle == false and check.loacker == true  then
					TweenService:Create(
						TextButton_4_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_3_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(255,255,255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
				elseif  check.loacker ==  true then
					TweenService:Create(
						TextButton_4_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_3_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
				end
				if  check.loacker == true  then
				check.toogle = not check.toogle
				callback(check.toogle)
				end
			end
		)

			if config == true then
				TweenService:Create(
					TextButton_4_Toggle,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 =  Color3.fromRGB(0,190,255)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					TextButton_3_Toggle,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 =  Color3.fromRGB(0,190,255)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					TextButton_2_Toggle,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
				check.toogle = true
				callback(check.toogle)
			end

			local lockerframe = Instance.new("Frame")

			lockerframe.Name = "lockerframe"
			lockerframe.Parent = Toggle
			lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			lockerframe.BackgroundTransparency = 1
			lockerframe.Size = UDim2.new(0, 320, 0, 35)
			lockerframe.Position = UDim2.new(0.5, 0, 0.5, 0)
			lockerframe.AnchorPoint = Vector2.new(0.5, 0.5)

			local LockerImageLabel = Instance.new("ImageLabel")
			LockerImageLabel.Parent = lockerframe
			LockerImageLabel.BackgroundTransparency = 1.000
			LockerImageLabel.BorderSizePixel = 0
			LockerImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
			LockerImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
			LockerImageLabel.Size = UDim2.new(0, 0, 0, 0)
			LockerImageLabel.Image = ""


			function check.togfunction:lock()
				TweenService:Create(
					lockerframe,
					TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
					{BackgroundTransparency = 0.7}
				):Play()
				TweenService:Create(
					LockerImageLabel,
					TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
					{Size = UDim2.new(0, 30, 0, 30)}
				):Play()

				check.loacker  = false
			--    pcall(callback,locker)
			end
			function check.togfunction:unlock()
				TweenService:Create(
					lockerframe,
					TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
					{BackgroundTransparency = 1}
				):Play()
				TweenService:Create(
					LockerImageLabel,
					TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
					{Size = UDim2.new(0, 0, 0, 0)}
				):Play()
				check.loacker  = true
			--   pcall(callback,locker)
			end

				return  check.togfunction
			end

			function items:Button(text,callback)

				local ButtonFrame = Instance.new("Frame")

				ButtonFrame.Name = "ButtonFrame"
				ButtonFrame.Parent = ScrollingFrame_Pageframe
				ButtonFrame.BackgroundColor3 = _G.ColorMethod
				ButtonFrame.BorderSizePixel = 0
				ButtonFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				ButtonFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				ButtonFrame.Size = UDim2.new(0, 213, 0, 25) -- UDim2.new(0, 213, 0, 35)
				ButtonFrame.BackgroundTransparency  = 1
				ButtonFrame.ClipsDescendants = true



				local MheeFrameStroke = Instance.new("UIStroke")

				MheeFrameStroke.Thickness = 0
				MheeFrameStroke.Name = ""
				MheeFrameStroke.Parent = ButtonFrame
				MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
				MheeFrameStroke.Color = _G.ColorMethod
				MheeFrameStroke.Transparency = 0.7

				local Button = Instance.new("TextButton")

				Button.Parent = ButtonFrame
				Button.Name = "Button"
				Button.BackgroundColor3 = _G.ColorMethod
				Button.Size = UDim2.new(0,150, 0, 25)
				Button.Font = Enum.Font.SourceSansSemibold
				Button.Text = tostring(text)
				Button.TextColor3 = Color3.fromRGB(155, 155, 155)
				Button.TextSize = 13.000
				Button.AnchorPoint = Vector2.new(0.5, 0.5)
				Button.Position = UDim2.new(0.5, 0, 0.5, 0)
				Button.TextXAlignment = Enum.TextXAlignment.Center
				Button.BackgroundTransparency = 0.6
				Button.TextWrapped = true
				Button.AutoButtonColor = false
				Button.ClipsDescendants = true

				local ConnerPageMhee = Instance.new("UICorner")

				ConnerPageMhee.CornerRadius = UDim.new(0, 4)
				ConnerPageMhee.Name = ""
				ConnerPageMhee.Parent = Button

				Button.MouseEnter:Connect(function()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size =  UDim2.new(0, 213, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)
				Button.MouseLeave:Connect(function()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size =  UDim2.new(0, 150, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)

			Button.MouseButton1Click:Connect(function()
			--    Ripple(Button)
				callback()
				TweenService:Create(
					Button,
					TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
					{TextSize =  16} -- UDim2.new(0, 128, 0, 25)
				):Play()
				wait(0.1)
				TweenService:Create(
					Button,
					TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
					{TextSize =  13} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end
		)

			end

			function items:Slider(text,check,floor,min,max,de,lol,tog,callback)

			if check then

				local SliderFrame = Instance.new("Frame")

				SliderFrame.Name = "SliderFrame"
				SliderFrame.Parent = ScrollingFrame_Pageframe
				SliderFrame.BackgroundColor3 =  Color3.fromRGB(28, 28, 28)-- _G.ColorMethod
				SliderFrame.BorderSizePixel = 0
				SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderFrame.Size = UDim2.new(0, 213, 0, 75) -- UDim2.new(0, 213, 0, 35)
				SliderFrame.BackgroundTransparency  = 0
				SliderFrame.ClipsDescendants = true

				local SliderFrameConner = Instance.new("UICorner")

				SliderFrameConner.CornerRadius = UDim.new(0, 4)
				SliderFrameConner.Name = ""
				SliderFrameConner.Parent = SliderFrame

				local SliderFrameStroke = Instance.new("UIStroke")

				SliderFrameStroke.Thickness = 1
				SliderFrameStroke.Name = ""
				SliderFrameStroke.Parent = SliderFrame
				SliderFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
				SliderFrameStroke.Color = _G.ColorMethod
				SliderFrameStroke.Transparency = 0.7


				SliderFrame.MouseEnter:Connect(function()
					TweenService:Create(
						SliderFrameStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)

				SliderFrame.MouseLeave:Connect(function()
					TweenService:Create(
						SliderFrameStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)


				local LabelNameSliderxd = Instance.new("TextLabel")

				LabelNameSliderxd.Parent = SliderFrame
				LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSliderxd.BackgroundTransparency = 1
				LabelNameSliderxd.BorderSizePixel = 0
				LabelNameSliderxd.Position = UDim2.new(0.35, 0, 0.2, 0)
				LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelNameSliderxd.Size = UDim2.new(0, 120, 0, 20)
				LabelNameSliderxd.Font = Enum.Font.GothamBold
				LabelNameSliderxd.Text = tostring(text)
				LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSliderxd.TextSize = 11.000
				LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Left


				local ShowValueFarm = Instance.new("Frame")

				ShowValueFarm.Name = "ShowValueFarm"
				ShowValueFarm.Parent = SliderFrame
				ShowValueFarm.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				ShowValueFarm.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
				ShowValueFarm.Size = UDim2.new(0, 75, 0, 15)
				ShowValueFarm.BackgroundTransparency = 0
				ShowValueFarm.BorderSizePixel = 0
				ShowValueFarm.AnchorPoint = Vector2.new(0.5, 0.5)
				ShowValueFarm.Position = UDim2.new(0.8, 0, 0.2, 0)
				ShowValueFarm.ClipsDescendants = false

				local CustomValue = Instance.new("TextBox")

				CustomValue.Parent = ShowValueFarm
				CustomValue.BackgroundColor3 = Color3.fromRGB(45,45, 45)
				CustomValue.BorderSizePixel = 0
				CustomValue.ClipsDescendants = true
				CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
				CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
				CustomValue.Size = UDim2.new(0, 158, 0, 26)
				CustomValue.Font = Enum.Font.GothamSemibold
				CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
				CustomValue.PlaceholderText =  ""
				if floor == true then
					CustomValue.Text =  tostring(de and string.format("%.1f",(de / max) * (max - min) + min) or 0)
				else
					CustomValue.Text =  tostring(de and math.floor( (de / max) * (max - min) + min) or 0)
				end
				CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
				CustomValue.TextSize = 8.000
				CustomValue.BackgroundTransparency = 1

				local ValueFrame = Instance.new("Frame")

				ValueFrame.Name = "ValueFrame"
				ValueFrame.Parent = SliderFrame
				ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				ValueFrame.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
				ValueFrame.Size = UDim2.new(0, 140, 0, 5)
				ValueFrame.BackgroundTransparency = 0
				ValueFrame.BorderSizePixel = 0
				ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				ValueFrame.Position = UDim2.new(0.4, 0, 0.8, 0)
				ValueFrame.ClipsDescendants = false


				local PartValue = Instance.new("Frame")

				PartValue.Name = "PartValue"
				PartValue.Parent = ValueFrame
				PartValue.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
				PartValue.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
				PartValue.Size = UDim2.new(0, 140, 0, 5)
				PartValue.BackgroundTransparency = 1
				PartValue.BorderSizePixel = 0
				PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
				PartValue.Position = UDim2.new(0.5, 0, 0.5, 0)
				PartValue.ClipsDescendants = false

				local MainValue = Instance.new("Frame")

				MainValue.Name = "MainValue"
				MainValue.Parent = PartValue
				MainValue.BackgroundColor3 = _G.ColorMethod
				MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
				MainValue.BackgroundTransparency = 0
				MainValue.BorderSizePixel = 0
				-- MainValue.AnchorPoint = Vector2.new(0.5, 0.5)
				MainValue.Position = UDim2.new(0., 0, 0.0, 0)
				MainValue.ClipsDescendants = false

				local Conner_S1 = Instance.new("UICorner")

				Conner_S1.CornerRadius = UDim.new(0, 8)
				Conner_S1.Name = ""
				Conner_S1.Parent = MainValue

				local Conner_S2 = Instance.new("UICorner")

				Conner_S2.CornerRadius = UDim.new(0, 8)
				Conner_S2.Name = ""
				Conner_S2.Parent = ValueFrame

				local ConneValue = Instance.new("Frame")

				ConneValue.Name = "ConneValue"
				ConneValue.Parent = PartValue
				ConneValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ConneValue.Size = UDim2.new(0, 13, 0,13)
				ConneValue.BackgroundTransparency = 0
				ConneValue.BorderSizePixel = 0
				ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
				ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.3,0.5, 0)
				ConneValue.ClipsDescendants = false


				local Conner_Conne = Instance.new("UICorner")

				Conner_Conne.CornerRadius = UDim.new(0, 300)
				Conner_Conne.Name = ""
				Conner_Conne.Parent = ConneValue

				local Addvalue = Instance.new("ImageButton")

				Addvalue.Name = "Imatog"
				Addvalue.Parent = SliderFrame
				Addvalue.BackgroundTransparency = 1.000
				Addvalue.BorderSizePixel = 0
				Addvalue.Position = UDim2.new(0.85, 0, 0.35, 0)
				Addvalue.Size = UDim2.new(0, 15, 0, 15)
				Addvalue.Image = ""
				Addvalue.ImageColor3 =  _G.ColorMethod

				local Deletevalue = Instance.new("ImageButton")

				Deletevalue.Name = "Imatog"
				Deletevalue.Parent = SliderFrame
				Deletevalue.BackgroundTransparency = 1.000
				Deletevalue.BorderSizePixel = 0
				Deletevalue.Position = UDim2.new(0.7, 0, 0.35, 0)
				Deletevalue.Size = UDim2.new(0, 15, 0, 15)
				Deletevalue.Image = ""
				Deletevalue.ImageColor3 =  _G.ColorMethod


				local TextButton_2_Toggle = Instance.new("TextButton")

				TextButton_2_Toggle.Parent = ValueFrame
				TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
		--        TextButton_2_Toggle.BorderColor3 = _G.ColorMethod
				TextButton_2_Toggle.BorderSizePixel = 0
				TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_2_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)
				TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
				TextButton_2_Toggle.Font = Enum.Font.SourceSans
				TextButton_2_Toggle.Text = " "
				TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_2_Toggle.TextSize = 12.000
				TextButton_2_Toggle.AutoButtonColor = false

				local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
				TextButton_Pageframe_Uiconner.Name = ""
				TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

				local TextButton_3_Toggle = Instance.new("TextButton")

				TextButton_3_Toggle.Parent = TextButton_2_Toggle
				TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
		--        TextButton_3_Toggle.BorderColor3 = _G.ColorMethod
				TextButton_3_Toggle.BorderSizePixel = 0
				TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)
				TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
				TextButton_3_Toggle.Font = Enum.Font.SourceSans
				TextButton_3_Toggle.Text = " "
				TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_3_Toggle.TextSize = 12.000
				TextButton_3_Toggle.AutoButtonColor = false

				local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
				TextButton_Pageframe_Uiconner2.Name = ""
				TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

				local TextButton_4_Toggle = Instance.new("TextButton")

				TextButton_4_Toggle.Parent = TextButton_3_Toggle
				TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
		--        TextButton_3_Toggle.BorderColor3 = _G.ColorMethod
				TextButton_4_Toggle.BorderSizePixel = 0
				TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
				TextButton_4_Toggle.Font = Enum.Font.SourceSans
				TextButton_4_Toggle.Text = " "
				TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_4_Toggle.TextSize = 12.000
				TextButton_4_Toggle.AutoButtonColor = false
				TextButton_4_Toggle.BackgroundTransparency = 1
				TextButton_4_Toggle.Visible = true

				local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
				TextButton_Pageframe_Uiconner4.Name = ""
				TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle


				local TextButton_Toggle = Instance.new("TextButton")

				TextButton_Toggle.Parent = ValueFrame
				TextButton_Toggle.BackgroundTransparency =1
				TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextButton_Toggle.BorderSizePixel = 0
				TextButton_Toggle.Size = UDim2.new(0, 50, 0, 20)
				TextButton_Toggle.AutoButtonColor = false
				TextButton_Toggle.Font = Enum.Font.SourceSans
				TextButton_Toggle.Text = " "
				TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_Toggle.TextSize = 12.000
				TextButton_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)



			-- local value = de
			local check2 = {toogle2 = false;}
				local function move(input)
					local pos =
						UDim2.new(
							math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
							0,
							0.3,
							0
						)
					local pos1 =
						UDim2.new(
							math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
							0,
							0,
							5
						)

						MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)

						ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
						if floor == true then
							local value = string.format("%.1f",((pos.X.Scale * max) / max) * (max - min) + min)
							CustomValue.Text = tostring(value)
						--   callback[2] = value
						callback({
							["s"] = value;
							["t"] = check2.toogle2
						})
						--callback({value,check2.toogle2})
							--callback(value)
						else
							local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
							CustomValue.Text = tostring(value)
							callback({
								["s"] = value;
								["t"] = check2.toogle2
							})
					--       callback({value,check2.toogle2})

						end



					end

					local dragging = false
					ConneValue.InputBegan:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = true

							end
						end
					)
					ConneValue.InputEnded:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = false

							end
						end
					)
					SliderFrame.InputBegan:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = true

							end
						end
					)
					SliderFrame.InputEnded:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = false

							end
						end
					)


					ValueFrame.InputBegan:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = true

							end
						end
					)
					ValueFrame.InputEnded:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = false

							end
						end
					)

					game:GetService("UserInputService").InputChanged:Connect(
						function(input)
							if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
								move(input)
							end
						end
						)

						CustomValue.FocusLost:Connect(function()
							if CustomValue.Text == "" then
								CustomValue.Text  = de
							end
							if  tonumber(CustomValue.Text) > max then
								CustomValue.Text  = max
							end
							if  tonumber(CustomValue.Text) <= min then
								CustomValue.Text  = min
							end
							MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
							ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0, 0) , "Out", "Sine", 0.2, true)
							if floor == true then
								CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
							else
								CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
							end
							callback({
								["s"] =  CustomValue.Text;
								["t"] = check2.toogle2;
							})
					--       callback({ tonumber(CustomValue.Text),check2.toogle2})
					--  pcall(callback, CustomValue.Text)
						end)


						Addvalue.MouseButton1Click:Connect(function ()
							if CustomValue.Text == "" then
								CustomValue.Text  = de
							end
							pcall(function()
								CustomValue.Text  = CustomValue.Text  - tonumber(lol)
							end)
							if  tonumber(CustomValue.Text) > max then
								CustomValue.Text  = max
							end
							if  tonumber(CustomValue.Text) < min then
								CustomValue.Text  = min
							end
							MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
							ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
							if floor == true then
								CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
							else
								CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
							end
							callback({
								["s"] =  CustomValue.Text;
								["t"] = check2.toogle2
							})
						--   callback({ tonumber(CustomValue.Text),check2.toogle2})
						--  pcall(callback, CustomValue.Text)
						end)

						Deletevalue.MouseButton1Click:Connect(function ()
							if CustomValue.Text == "" then
								CustomValue.Text  = de
							end
							pcall(function()
								CustomValue.Text  = CustomValue.Text  + tonumber(lol)
							end)
							if  tonumber(CustomValue.Text) > max then
								CustomValue.Text  = max
							end
							if  tonumber(CustomValue.Text) < min then
								CustomValue.Text  = min
							end
							MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
							ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
							if floor == true then
								CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
							else
								CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
							end
							callback({
								["s"] =  CustomValue.Text;
								["t"] = check2.toogle2;
							})
				--callback({ tonumber(CustomValue.Text),check2.toogle2})
						--  pcall(callback, CustomValue.Text)
						end)




				---
						TextButton_Toggle.MouseEnter:Connect(function()
							TweenService:Create(
								TextButton_4_Toggle,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
							):Play()
						end
					)

					TextButton_Toggle.MouseLeave:Connect(function()
							TweenService:Create(
								TextButton_4_Toggle,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
							):Play()
						end
					)



				TextButton_Toggle.MouseButton1Click:Connect(function()
					if check2.toogle2 == false   then
						TweenService:Create(
							TextButton_4_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextButton_3_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextButton_2_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(153, 0, 102)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
					else
						TweenService:Create(
							TextButton_4_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextButton_3_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextButton_2_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
					end
						check2.toogle2 = not check2.toogle2
						callback({
							["t"] = check2.toogle2;

						})
					--   callback({value,check2.toogle2})
						--callback(check2.toogle2)
				end
			)

				if tog == true then
					TweenService:Create(
						TextButton_4_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_3_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(153, 0, 102)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
					check2.toogle2 = true
					callback({
						["t"] = check2.toogle2;
					})
			--        callback({value,check2.toogle2})
				--  callback(check2.toogle2)
				end


			else
				tog = nil
				local SliderFrame = Instance.new("Frame")

				SliderFrame.Name = "SliderFrame"
				SliderFrame.Parent = ScrollingFrame_Pageframe
				SliderFrame.BackgroundColor3 =  Color3.fromRGB(28, 28, 28)-- _G.ColorMethod
				SliderFrame.BorderSizePixel = 0
				SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderFrame.Size = UDim2.new(0, 213, 0, 75) -- UDim2.new(0, 213, 0, 35)
				SliderFrame.BackgroundTransparency  = 0
				SliderFrame.ClipsDescendants = true

				local SliderFrameConner = Instance.new("UICorner")

				SliderFrameConner.CornerRadius = UDim.new(0, 4)
				SliderFrameConner.Name = ""
				SliderFrameConner.Parent = SliderFrame

				local SliderFrameStroke = Instance.new("UIStroke")

				SliderFrameStroke.Thickness = 1
				SliderFrameStroke.Name = ""
				SliderFrameStroke.Parent = SliderFrame
				SliderFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
				SliderFrameStroke.Color = _G.ColorMethod
				SliderFrameStroke.Transparency = 0.7



				SliderFrame.MouseEnter:Connect(function()
					TweenService:Create(
						SliderFrameStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)

				SliderFrame.MouseLeave:Connect(function()
					TweenService:Create(
						SliderFrameStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)

				local LabelNameSliderxd = Instance.new("TextLabel")

				LabelNameSliderxd.Parent = SliderFrame
				LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSliderxd.BackgroundTransparency = 1
				LabelNameSliderxd.BorderSizePixel = 0
				LabelNameSliderxd.Position = UDim2.new(0.35, 0, 0.2, 0)
				LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelNameSliderxd.Size = UDim2.new(0, 120, 0, 20)
				LabelNameSliderxd.Font = Enum.Font.GothamBold
				LabelNameSliderxd.Text = tostring(text)
				LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSliderxd.TextSize = 11.000
				LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Left


				local ShowValueFarm = Instance.new("Frame")

				ShowValueFarm.Name = "ShowValueFarm"
				ShowValueFarm.Parent = SliderFrame
				ShowValueFarm.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				ShowValueFarm.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
				ShowValueFarm.Size = UDim2.new(0, 75, 0, 15)
				ShowValueFarm.BackgroundTransparency = 0
				ShowValueFarm.BorderSizePixel = 0
				ShowValueFarm.AnchorPoint = Vector2.new(0.5, 0.5)
				ShowValueFarm.Position = UDim2.new(0.8, 0, 0.2, 0)
				ShowValueFarm.ClipsDescendants = false

				local CustomValue = Instance.new("TextBox")

				CustomValue.Parent = ShowValueFarm
				CustomValue.BackgroundColor3 = Color3.fromRGB(45,45, 45)
				CustomValue.BorderSizePixel = 0
				CustomValue.ClipsDescendants = true
				CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
				CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
				CustomValue.Size = UDim2.new(0, 158, 0, 26)
				CustomValue.Font = Enum.Font.GothamSemibold
				CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
				CustomValue.PlaceholderText =  ""
				if floor == true then
					CustomValue.Text =  tostring(de and string.format("%.1f",(de / max) * (max - min) + min) or 0)
				else
					CustomValue.Text =  tostring(de and math.floor( (de / max) * (max - min) + min) or 0)
				end
				CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
				CustomValue.TextSize = 8.000
				CustomValue.BackgroundTransparency = 1

				local ValueFrame = Instance.new("Frame")

				ValueFrame.Name = "ValueFrame"
				ValueFrame.Parent = SliderFrame
				ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				ValueFrame.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
				ValueFrame.Size = UDim2.new(0, 190, 0, 5)
				ValueFrame.BackgroundTransparency = 0
				ValueFrame.BorderSizePixel = 0
				ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				ValueFrame.Position = UDim2.new(0.5, 0, 0.8, 0)
				ValueFrame.ClipsDescendants = false


				local PartValue = Instance.new("Frame")

				PartValue.Name = "PartValue"
				PartValue.Parent = ValueFrame
				PartValue.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
				PartValue.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
				PartValue.Size = UDim2.new(0, 190, 0, 5)
				PartValue.BackgroundTransparency = 1
				PartValue.BorderSizePixel = 0
				PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
				PartValue.Position = UDim2.new(0.5, 0, 0.5, 0)
				PartValue.ClipsDescendants = false

				local MainValue = Instance.new("Frame")

				MainValue.Name = "MainValue"
				MainValue.Parent = PartValue
				MainValue.BackgroundColor3 = _G.ColorMethod
				MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
				MainValue.BackgroundTransparency = 0
				MainValue.BorderSizePixel = 0
				-- MainValue.AnchorPoint = Vector2.new(0.5, 0.5)
				MainValue.Position = UDim2.new(0., 0, 0.0, 0)
				MainValue.ClipsDescendants = false

				local Conner_S1 = Instance.new("UICorner")

				Conner_S1.CornerRadius = UDim.new(0, 8)
				Conner_S1.Name = ""
				Conner_S1.Parent = MainValue

				local Conner_S2 = Instance.new("UICorner")

				Conner_S2.CornerRadius = UDim.new(0, 8)
				Conner_S2.Name = ""
				Conner_S2.Parent = ValueFrame

				local ConneValue = Instance.new("Frame")

				ConneValue.Name = "ConneValue"
				ConneValue.Parent = PartValue
				ConneValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ConneValue.Size = UDim2.new(0, 13, 0,13)
				ConneValue.BackgroundTransparency = 0
				ConneValue.BorderSizePixel = 0
				ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
				ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.3,0.5, 0)
				ConneValue.ClipsDescendants = false


				local Conner_Conne = Instance.new("UICorner")

				Conner_Conne.CornerRadius = UDim.new(0, 300)
				Conner_Conne.Name = ""
				Conner_Conne.Parent = ConneValue

				local Addvalue = Instance.new("ImageButton")

				Addvalue.Name = "Imatog"
				Addvalue.Parent = SliderFrame
				Addvalue.BackgroundTransparency = 1.000
				Addvalue.BorderSizePixel = 0
				Addvalue.Position = UDim2.new(0.85, 0, 0.35, 0)
				Addvalue.Size = UDim2.new(0, 15, 0, 15)
				Addvalue.Image = ""
				Addvalue.ImageColor3 =  _G.ColorMethod

				local Deletevalue = Instance.new("ImageButton")

				Deletevalue.Name = "Imatog"
				Deletevalue.Parent = SliderFrame
				Deletevalue.BackgroundTransparency = 1.000
				Deletevalue.BorderSizePixel = 0
				Deletevalue.Position = UDim2.new(0.7, 0, 0.35, 0)
				Deletevalue.Size = UDim2.new(0, 15, 0, 15)
				Deletevalue.Image = ""
				Deletevalue.ImageColor3 =  _G.ColorMethod

				local function move(input)
					local pos =
						UDim2.new(
							math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
							0,
							0.3,
							0
						)
					local pos1 =
						UDim2.new(
							math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
							0,
							0,
							5
						)

						MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)

						ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
						if floor == true then
							local value = string.format("%.1f",((pos.X.Scale * max) / max) * (max - min) + min)
							CustomValue.Text = tostring(value)
							callback(value)
						else
							local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
							CustomValue.Text = tostring(value)
							callback(value)
						end



					end

					local dragging = false
					ConneValue.InputBegan:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = true

							end
						end
					)
					ConneValue.InputEnded:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = false

							end
						end
					)
					SliderFrame.InputBegan:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = true

							end
						end
					)
					SliderFrame.InputEnded:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = false

							end
						end
					)


					ValueFrame.InputBegan:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = true

							end
						end
					)
					ValueFrame.InputEnded:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = false

							end
						end
					)

					game:GetService("UserInputService").InputChanged:Connect(
						function(input)
							if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
								move(input)
							end
						end
						)

						CustomValue.FocusLost:Connect(function()
							if CustomValue.Text == "" then
								CustomValue.Text  = de
							end
							if  tonumber(CustomValue.Text) > max then
								CustomValue.Text  = max
							end
							MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
							ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0, 0) , "Out", "Sine", 0.2, true)
							if floor == true then
								CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
							else
								CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
							end
							pcall(callback, CustomValue.Text)
						end)


				Addvalue.MouseButton1Click:Connect(function ()
					if CustomValue.Text == "" then
						CustomValue.Text  = de
					end
					CustomValue.Text  = CustomValue.Text  - tonumber(lol)
					if  tonumber(CustomValue.Text) > max then
						CustomValue.Text  = max
					end
					if  tonumber(CustomValue.Text) < min then
						CustomValue.Text  = min
					end
					MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
					ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
					if floor == true then
						CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
					else
						CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
					end
					pcall(callback, CustomValue.Text)
				end)

				Deletevalue.MouseButton1Click:Connect(function ()
					if CustomValue.Text == "" then
						CustomValue.Text  = de
					end
					CustomValue.Text  = CustomValue.Text  + tonumber(lol)
					if  tonumber(CustomValue.Text) > max then
						CustomValue.Text  = max
					end
					if  tonumber(CustomValue.Text) < min then
						CustomValue.Text  = min
					end
					MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
					ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
					if floor == true then
						CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
					else
						CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
					end
					pcall(callback, CustomValue.Text)
				end)

			end

			end

			function items:Drop(text,use,option,callback)

			if use == false then
				local DropFrame = Instance.new("Frame")

				DropFrame.Name = "DropFrame"
				DropFrame.Parent = ScrollingFrame_Pageframe
				DropFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)-- _G.ColorMethod
				DropFrame.BorderSizePixel = 0
				DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				DropFrame.Size = UDim2.new(0, 213, 0, 30) -- UDim2.new(0, 213, 0, 35)
				DropFrame.BackgroundTransparency  = 0
				DropFrame.ClipsDescendants = true

				local ConnerDropFrame = Instance.new("UICorner")

				ConnerDropFrame.CornerRadius = UDim.new(0, 4)
				ConnerDropFrame.Name = ""
				ConnerDropFrame.Parent = DropFrame

				local DropFrameStroke = Instance.new("UIStroke")

				DropFrameStroke.Thickness = 1
				DropFrameStroke.Name = ""
				DropFrameStroke.Parent = DropFrame
				DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
				DropFrameStroke.Color = _G.ColorMethod
				DropFrameStroke.Transparency = 0.7





				local LabelFrameDrop = Instance.new("TextLabel")

				LabelFrameDrop.Parent = DropFrame
				LabelFrameDrop.Name = "LabelFrameDrop"
				LabelFrameDrop.BackgroundColor3 = _G.ColorMethod
				LabelFrameDrop.Position = UDim2.new(0., 0, 0., 0)
				LabelFrameDrop.Size =    UDim2.new(0, 213, 0, 30)
				LabelFrameDrop.Font = Enum.Font.SourceSansSemibold
				LabelFrameDrop.Text = ""
				LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
				LabelFrameDrop.TextSize = 8
			--   LabelFrameDrop.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelFrameDrop.BackgroundTransparency = 1
				LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left


				local TextLabel_TapDrop = Instance.new("TextLabel")

				TextLabel_TapDrop.Parent = LabelFrameDrop
				TextLabel_TapDrop.Name = "TextLabel_TapDrop"
				TextLabel_TapDrop.BackgroundColor3 = _G.ColorMethod
				TextLabel_TapDrop.Position = UDim2.new(0.04, 0, 0.14, 0)
				TextLabel_TapDrop.Size =    UDim2.new(0, 140, 0, 20)
				TextLabel_TapDrop.Font = Enum.Font.SourceSansSemibold
				TextLabel_TapDrop.Text = tostring(text).." :"
				TextLabel_TapDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
				TextLabel_TapDrop.TextSize = 8
		--     TextLabel_TapDrop.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel_TapDrop.BackgroundTransparency = 1
				TextLabel_TapDrop.TextXAlignment = Enum.TextXAlignment.Left


				local DropArbt_listimage = Instance.new("ImageButton")

				DropArbt_listimage.Parent = LabelFrameDrop
				DropArbt_listimage.BackgroundTransparency = 1.000
				DropArbt_listimage.AnchorPoint = Vector2.new(0.5, 0.5)
				DropArbt_listimage.Position = UDim2.new(0.9, 0, 0.5, 0)
				DropArbt_listimage.BorderSizePixel = 0
				DropArbt_listimage.Size = UDim2.new(0, 25, 0, 25)
				DropArbt_listimage.Image = ""
				DropArbt_listimage.ImageColor3 = Color3.fromRGB(155, 155, 155)

				local ScolDown = Instance.new("ScrollingFrame")

				ScolDown.Name = "ScolDown"
				ScolDown.Position = UDim2.new(0.02, 0, 1., 0)
				ScolDown.Parent = LabelFrameDrop
				ScolDown.Active = true
				ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ScolDown.BorderSizePixel = 0
				ScolDown.Size = UDim2.new(0, 205, 0, 115)
				ScolDown.ScrollBarThickness = 3
				ScolDown.ClipsDescendants = true
				ScolDown.BackgroundTransparency = 1
				ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)

				local UIListLayoutlist = Instance.new("UIListLayout")
				local UIPaddinglist = Instance.new("UIPadding")

				UIListLayoutlist.Name = "UIListLayoutlist"
				UIListLayoutlist.Parent = ScolDown
				UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayoutlist.Padding = UDim.new(0, 5)

				UIPaddinglist.Name = "UIPaddinglist"
				UIPaddinglist.Parent = ScolDown
				UIPaddinglist.PaddingTop = UDim.new(0, 5)
				UIPaddinglist.PaddingLeft = UDim.new(0, 12)

				local ButtonDrop = Instance.new("TextButton")

				ButtonDrop.Parent = DropFrame
				ButtonDrop.Name = "ButtonDrop"
				ButtonDrop.BackgroundColor3 = _G.ColorMethod
				ButtonDrop.Size = UDim2.new(0, 213, 0, 30)
				ButtonDrop.Font = Enum.Font.SourceSansSemibold
				ButtonDrop.Text = ""
				ButtonDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
				ButtonDrop.TextSize = 8
			--   ButtonDrop.AnchorPoint = Vector2.new(0.5, 0.5)
				ButtonDrop.Position = UDim2.new(0., 0, 0., 0)
				ButtonDrop.TextXAlignment = Enum.TextXAlignment.Center
				ButtonDrop.BackgroundTransparency = 1
				ButtonDrop.TextWrapped = true
				ButtonDrop.AutoButtonColor = false
				ButtonDrop.ClipsDescendants = true

				local dog = false

				local FrameSize = 75
				local cout = 0
				for i , v in pairs(option) do
					cout =cout + 1
					if cout == 1 then
						FrameSize = 75
					elseif cout == 2 then
						FrameSize = 110
					elseif cout >= 3 then
						FrameSize = 150
					end

					local ListFrame = Instance.new("Frame")

					ListFrame.Name = "ListFrame"
					ListFrame.Parent = ScolDown
					ListFrame.BackgroundColor3 =  Color3.fromRGB(22553, 23, 23)-- _G.ColorMethod
					ListFrame.BorderSizePixel = 0
					ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
					ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
					ListFrame.Size = UDim2.new(0, 180, 0, 30) -- UDim2.new(0, 213, 0, 35)
					ListFrame.BackgroundTransparency  = 1
					ListFrame.ClipsDescendants = true

					local TextLabel_TapDro2p = Instance.new("TextLabel")

					TextLabel_TapDro2p.Parent = ListFrame
					TextLabel_TapDro2p.Name =  tostring(v).."Dropdown"
					TextLabel_TapDro2p.BackgroundColor3 = _G.ColorMethod
					TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)
					TextLabel_TapDro2p.Size =  UDim2.new(0, 180, 0, 30)
					TextLabel_TapDro2p.Font = Enum.Font.SourceSansSemibold
					TextLabel_TapDro2p.Text = tostring(v)
					TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
					TextLabel_TapDro2p.TextSize = 8
					TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
					TextLabel_TapDro2p.BackgroundTransparency = 1
					TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Center

					local ButtonDrop2 = Instance.new("TextButton")

					ButtonDrop2.Parent = ListFrame
					ButtonDrop2.Name = "ButtonDrop2"
					ButtonDrop2.BackgroundColor3 = _G.ColorMethod
					ButtonDrop2.Size = UDim2.new(0, 213, 0, 30)
					ButtonDrop2.Font = Enum.Font.SourceSansSemibold
					ButtonDrop2.Text = ""
					ButtonDrop2.TextColor3 = Color3.fromRGB(155, 155, 155)
					ButtonDrop2.TextSize = 8
				--   ButtonDrop2.AnchorPoint = Vector2.new(0.5, 0.5)
					ButtonDrop2.Position = UDim2.new(0., 0, 0., 0)
					ButtonDrop2.TextXAlignment = Enum.TextXAlignment.Center
					ButtonDrop2.BackgroundTransparency = 1
					ButtonDrop2.TextWrapped = true
					ButtonDrop2.AutoButtonColor = false
					ButtonDrop2.ClipsDescendants = true

					ButtonDrop2.MouseEnter:Connect(function ()
						TweenService:Create(
							TextLabel_TapDro2p,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end)

					ButtonDrop2.MouseLeave:Connect(function ()
						TweenService:Create(
							TextLabel_TapDro2p,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end)

					ButtonDrop2.MouseButton1Click:Connect(function()
						TweenService:Create(
							DropFrame,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							DropArbt_listimage,
							TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
							{Rotation = 0}
						):Play()
						TextLabel_TapDrop.Text =  text.." : "..tostring(v)
						callback(v)
						dog = not dog
					end
				)


					ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
				end


				DropFrame.MouseEnter:Connect(function()
					TweenService:Create(
						DropFrameStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextLabel_TapDrop,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						DropArbt_listimage,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)

			DropFrame.MouseLeave:Connect(function()
					TweenService:Create(
						DropFrameStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextLabel_TapDrop,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						DropArbt_listimage,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ImageColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)


			ButtonDrop.MouseButton1Click:Connect(function()
				if dog == false then
					TweenService:Create(
						DropFrame,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 213, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						DropArbt_listimage,
						TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
						{Rotation = -180}
					):Play()
					ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
				else
					TweenService:Create(
						DropFrame,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						DropArbt_listimage,
						TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
						{Rotation = 0}
					):Play()
					ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
				end
				dog = not dog
			end
		)
		ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

			local dropfunc = {}

			function dropfunc:Clear()
				TextLabel_TapDrop.Text = tostring(text).." :"
				for i, v in next, ScolDown:GetChildren() do
					if v:IsA("Frame") then
						v:Destroy()
					end
				end
				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
			end

			function dropfunc:Add(t)
				local ListFrame = Instance.new("Frame")

				ListFrame.Name = "ListFrame"
				ListFrame.Parent = ScolDown
				ListFrame.BackgroundColor3 =  Color3.fromRGB(22553, 23, 23)-- _G.ColorMethod
				ListFrame.BorderSizePixel = 0
				ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				ListFrame.Size = UDim2.new(0, 180, 0, 30) -- UDim2.new(0, 213, 0, 35)
				ListFrame.BackgroundTransparency  = 1
				ListFrame.ClipsDescendants = true

				local TextLabel_TapDro2p = Instance.new("TextLabel")

				TextLabel_TapDro2p.Parent = ListFrame
				TextLabel_TapDro2p.Name =  tostring(t).."Dropdown"
				TextLabel_TapDro2p.BackgroundColor3 = _G.ColorMethod
				TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextLabel_TapDro2p.Size =  UDim2.new(0, 180, 0, 30)
				TextLabel_TapDro2p.Font = Enum.Font.SourceSansSemibold
				TextLabel_TapDro2p.Text = tostring(t)
				TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
				TextLabel_TapDro2p.TextSize = 8
				TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel_TapDro2p.BackgroundTransparency = 1
				TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Center

				local ButtonDrop2 = Instance.new("TextButton")

				ButtonDrop2.Parent = ListFrame
				ButtonDrop2.Name = "ButtonDrop2"
				ButtonDrop2.BackgroundColor3 = _G.ColorMethod
				ButtonDrop2.Size = UDim2.new(0, 213, 0, 30)
				ButtonDrop2.Font = Enum.Font.SourceSansSemibold
				ButtonDrop2.Text = ""
				ButtonDrop2.TextColor3 = Color3.fromRGB(155, 155, 155)
				ButtonDrop2.TextSize = 8
			--   ButtonDrop2.AnchorPoint = Vector2.new(0.5, 0.5)
				ButtonDrop2.Position = UDim2.new(0., 0, 0., 0)
				ButtonDrop2.TextXAlignment = Enum.TextXAlignment.Center
				ButtonDrop2.BackgroundTransparency = 1
				ButtonDrop2.TextWrapped = true
				ButtonDrop2.AutoButtonColor = false
				ButtonDrop2.ClipsDescendants = true

				ButtonDrop2.MouseEnter:Connect(function ()
					TweenService:Create(
						TextLabel_TapDro2p,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				ButtonDrop2.MouseLeave:Connect(function ()
					TweenService:Create(
						TextLabel_TapDro2p,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				ButtonDrop2.MouseButton1Click:Connect(function()
					TweenService:Create(
						DropFrame,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						DropArbt_listimage,
						TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
						{Rotation = 0}
					):Play()
					TextLabel_TapDrop.Text =  text.." : "..tostring(t)
					callback(t)
					dog = not dog
				end
			)

				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
			end
			return dropfunc

		else

			local location = option.location or self.flags
			local flag = not use and option.flag or ""
			local callback = callback or function() end
			local list = option.list or {}
			local default = list.default or list[1].Name

			if not use then
				location[flag] = default
			end


			local DropFrame = Instance.new("Frame")

			DropFrame.Name = "DropFrame"
			DropFrame.Parent = ScrollingFrame_Pageframe
			DropFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)-- _G.ColorMethod
			DropFrame.BorderSizePixel = 0
			DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			DropFrame.Size = UDim2.new(0, 213, 0, 30) -- UDim2.new(0, 213, 0, 35)
			DropFrame.BackgroundTransparency  = 0
			DropFrame.ClipsDescendants = true

			local ConnerDropFrame = Instance.new("UICorner")

			ConnerDropFrame.CornerRadius = UDim.new(0, 4)
			ConnerDropFrame.Name = ""
			ConnerDropFrame.Parent = DropFrame

			local DropFrameStroke = Instance.new("UIStroke")

			DropFrameStroke.Thickness = 1
			DropFrameStroke.Name = ""
			DropFrameStroke.Parent = DropFrame
			DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
			DropFrameStroke.Color = _G.ColorMethod
			DropFrameStroke.Transparency = 0.7





			local LabelFrameDrop = Instance.new("TextLabel")

			LabelFrameDrop.Parent = DropFrame
			LabelFrameDrop.Name = "LabelFrameDrop"
			LabelFrameDrop.BackgroundColor3 = _G.ColorMethod
			LabelFrameDrop.Position = UDim2.new(0., 0, 0., 0)
			LabelFrameDrop.Size =    UDim2.new(0, 213, 0, 30)
			LabelFrameDrop.Font = Enum.Font.SourceSansSemibold
			LabelFrameDrop.Text = ""
			LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
			LabelFrameDrop.TextSize = 8
		--   LabelFrameDrop.AnchorPoint = Vector2.new(0.5, 0.5)
			LabelFrameDrop.BackgroundTransparency = 1
			LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left


			local TextLabel_TapDrop = Instance.new("TextLabel")

			TextLabel_TapDrop.Parent = LabelFrameDrop
			TextLabel_TapDrop.Name = "TextLabel_TapDrop"
			TextLabel_TapDrop.BackgroundColor3 = _G.ColorMethod
			TextLabel_TapDrop.Position = UDim2.new(0.04, 0, 0.14, 0)
			TextLabel_TapDrop.Size =    UDim2.new(0, 140, 0, 20)
			TextLabel_TapDrop.Font = Enum.Font.SourceSansSemibold
			TextLabel_TapDrop.Text = tostring(text).." :"
			TextLabel_TapDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
			TextLabel_TapDrop.TextSize = 8
	--     TextLabel_TapDrop.AnchorPoint = Vector2.new(0.5, 0.5)
			TextLabel_TapDrop.BackgroundTransparency = 1
			TextLabel_TapDrop.TextXAlignment = Enum.TextXAlignment.Left


			local DropArbt_listimage = Instance.new("ImageButton")

			DropArbt_listimage.Parent = LabelFrameDrop
			DropArbt_listimage.BackgroundTransparency = 1.000
			DropArbt_listimage.AnchorPoint = Vector2.new(0.5, 0.5)
			DropArbt_listimage.Position = UDim2.new(0.9, 0, 0.5, 0)
			DropArbt_listimage.BorderSizePixel = 0
			DropArbt_listimage.Size = UDim2.new(0, 25, 0, 25)
			DropArbt_listimage.Image = ""
			DropArbt_listimage.ImageColor3 = Color3.fromRGB(155, 155, 155)

			local ScolDown = Instance.new("ScrollingFrame")

			ScolDown.Name = "ScolDown"
			ScolDown.Position = UDim2.new(0.02, 0, 1., 0)
			ScolDown.Parent = LabelFrameDrop
			ScolDown.Active = true
			ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ScolDown.BorderSizePixel = 0
			ScolDown.Size = UDim2.new(0, 205, 0, 115)
			ScolDown.ScrollBarThickness = 3
			ScolDown.ClipsDescendants = true
			ScolDown.BackgroundTransparency = 1
			ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)

			local UIListLayoutlist = Instance.new("UIListLayout")
			local UIPaddinglist = Instance.new("UIPadding")

			UIListLayoutlist.Name = "UIListLayoutlist"
			UIListLayoutlist.Parent = ScolDown
			UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayoutlist.Padding = UDim.new(0, 5)

			UIPaddinglist.Name = "UIPaddinglist"
			UIPaddinglist.Parent = ScolDown
			UIPaddinglist.PaddingTop = UDim.new(0, 5)
			UIPaddinglist.PaddingLeft = UDim.new(0, 12)

			local ButtonDrop = Instance.new("TextButton")

			ButtonDrop.Parent = DropFrame
			ButtonDrop.Name = "ButtonDrop"
			ButtonDrop.BackgroundColor3 = _G.ColorMethod
			ButtonDrop.Size = UDim2.new(0, 213, 0, 30)
			ButtonDrop.Font = Enum.Font.SourceSansSemibold
			ButtonDrop.Text = ""
			ButtonDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
			ButtonDrop.TextSize = 8
		--   ButtonDrop.AnchorPoint = Vector2.new(0.5, 0.5)
			ButtonDrop.Position = UDim2.new(0., 0, 0., 0)
			ButtonDrop.TextXAlignment = Enum.TextXAlignment.Center
			ButtonDrop.BackgroundTransparency = 1
			ButtonDrop.TextWrapped = true
			ButtonDrop.AutoButtonColor = false
			ButtonDrop.ClipsDescendants = true

			local dog = false

			local FrameSize = 75
			local cout = 0
			for i , v in pairs(list) do
				cout =cout + 1
				if cout == 1 then
					FrameSize = 75
				elseif cout == 2 then
					FrameSize = 110
				elseif cout >= 3 then
					FrameSize = 150
				end

				local listtog = Instance.new("Frame")

				listtog.Name = "listtog"
				listtog.Parent = ScolDown
				listtog.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				listtog.BackgroundTransparency =1
				listtog.BorderSizePixel = 0
				listtog.ClipsDescendants = true
				listtog.AnchorPoint = Vector2.new(0.5, 0.5)
				listtog.Position = UDim2.new(0.5, 0, 0.5, 0)
				listtog.Size = UDim2.new(0, 210, 0, 33)


				local listtextbutton = Instance.new("TextButton")

				listtextbutton.Parent = listtog
				listtextbutton.BackgroundTransparency =1
				listtextbutton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				listtextbutton.BorderSizePixel = 0
				listtextbutton.Size =  UDim2.new(0, 210, 0, 33)
				listtextbutton.AutoButtonColor = false
				listtextbutton.Font = Enum.Font.SourceSans
				listtextbutton.Text = " "
				listtextbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
				listtextbutton.TextSize = 8

				local farmtoglist = Instance.new("TextButton")

				farmtoglist.Parent = listtextbutton
				farmtoglist.BackgroundColor3 = _G.ColorMethod
				farmtoglist.BorderColor3 = _G.ColorMethod
				farmtoglist.BorderSizePixel = 0
				farmtoglist.AnchorPoint = Vector2.new(0.5, 0.5)
				farmtoglist.Position = UDim2.new(0.1, 0, 0.5, 0)
				farmtoglist.Size = UDim2.new(0, 23, 0, 23)
				farmtoglist.Font = Enum.Font.SourceSans
				farmtoglist.Text = " "
				farmtoglist.TextColor3 = Color3.fromRGB(0, 0, 0)
				farmtoglist.TextSize = 8
				farmtoglist.AutoButtonColor = false


				local farmtoglist2 = Instance.new("TextButton")

				farmtoglist2.Parent = farmtoglist
				farmtoglist2.BackgroundColor3 = Color3.fromRGB(32, 32,32)
				farmtoglist2.BorderColor3 = _G.ColorMethod
				farmtoglist2.BorderSizePixel = 0
				farmtoglist2.AnchorPoint = Vector2.new(0.5, 0.5)
				farmtoglist2.Position = UDim2.new(0.5, 0, 0.5, 0)
				farmtoglist2.Size = UDim2.new(0, 21, 0, 21)
				farmtoglist2.Font = Enum.Font.SourceSans
				farmtoglist2.Text = " "
				farmtoglist2.TextColor3 = Color3.fromRGB(0, 0, 0)
				farmtoglist2.TextSize = 8
				farmtoglist2.AutoButtonColor = false


				local listimage = Instance.new("ImageButton")

				listimage.Parent = farmtoglist2
				listimage.BackgroundTransparency = 1.000
				listimage.AnchorPoint = Vector2.new(0.5, 0.5)
				listimage.Position = UDim2.new(0.5, 0, 0.5, 0)
				listimage.BorderSizePixel = 0
				listimage.Size = UDim2.new(0, 0, 0, 0)
				listimage.Image = ""


				local textlist = Instance.new("TextLabel")


				textlist.Parent = listtextbutton
				textlist.Name = "textlist"
				textlist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				textlist.BackgroundTransparency = 1.000
				textlist.AnchorPoint = Vector2.new(0.5, 0.5)
				textlist.Position = UDim2.new(0.5, 0, 0.5, 0)
				textlist.BorderSizePixel = 0
				textlist.Size = UDim2.new(0, 91, 0, 25)
				textlist.Font = Enum.Font.GothamSemibold
				textlist.Text = tostring(v.Name)
				textlist.TextColor3 = Color3.fromRGB(255, 255, 255)
				textlist.TextSize = 8



				local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 5)
				TextButton_Pageframe_Uiconner2.Name = ""
				TextButton_Pageframe_Uiconner2.Parent = farmtoglist

				local TextButton_Pageframe_Uiconner22 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner22.CornerRadius = UDim.new(0, 5)
				TextButton_Pageframe_Uiconner22.Name = ""
				TextButton_Pageframe_Uiconner22.Parent = farmtoglist2



				listtextbutton.MouseButton1Click:Connect(function()
					if not  location[v.flag] then
						listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
						wait(0.1)
						listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
					else
						listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
						wait(0.1)
						listimage:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
					end
					location[v.flag] = not location[v.flag]
					callback(location[v.flag])
				end
			)

			if  location[v.flag] then
				listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
				wait(0.1)
				listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)

				callback(location[v.flag])
			end

				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
			end


			DropFrame.MouseEnter:Connect(function()
				TweenService:Create(
					DropFrameStroke,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					TextLabel_TapDrop,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					DropArbt_listimage,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end
		)

		DropFrame.MouseLeave:Connect(function()
				TweenService:Create(
					DropFrameStroke,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					TextLabel_TapDrop,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					DropArbt_listimage,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ImageColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end
		)


		ButtonDrop.MouseButton1Click:Connect(function()
			if dog == false then
				TweenService:Create(
					DropFrame,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, 213, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					DropArbt_listimage,
					TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
					{Rotation = -180}
				):Play()
				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
			else
				TweenService:Create(
					DropFrame,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					DropArbt_listimage,
					TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
					{Rotation = 0}
				):Play()
				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
			end
			dog = not dog
		end
	)
	ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )



			end



			end

			function items:TextBox(text,text2,callback)
				local TextFrame = Instance.new("Frame")

				TextFrame.Name = "TextFrame"
				TextFrame.Parent = ScrollingFrame_Pageframe
				TextFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
				TextFrame.BorderSizePixel = 0
				TextFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				TextFrame.Size = UDim2.new(0, 213, 0, 70)
				TextFrame.BackgroundTransparency  = 1
				TextFrame.ClipsDescendants = true

				local LabelNameSliderxd = Instance.new("TextLabel")

				LabelNameSliderxd.Parent = TextFrame
				LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSliderxd.BackgroundTransparency = 1
				LabelNameSliderxd.BorderSizePixel = 0
				LabelNameSliderxd.Position = UDim2.new(0.5, 0, 0.2, 0)
				LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelNameSliderxd.Size = UDim2.new(0, 150, 0, 20)
				LabelNameSliderxd.Font = Enum.Font.GothamBold
				LabelNameSliderxd.Text = tostring(text)
				LabelNameSliderxd.TextColor3 = Color3.fromRGB(155, 155, 155)
				LabelNameSliderxd.TextSize = 15
				LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Center

				local ConerTextBox = Instance.new("UICorner")

				ConerTextBox.CornerRadius = UDim.new(0, 4)
				ConerTextBox.Name = ""
				ConerTextBox.Parent = TextFrame

				local FrameBox = Instance.new("Frame")

				FrameBox.Name = "TextFrame"
				FrameBox.Parent = TextFrame
				FrameBox.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
				FrameBox.BorderSizePixel = 0
				FrameBox.Position = UDim2.new(0.5, 0, 0.65, 0)
				FrameBox.AnchorPoint = Vector2.new(0.5, 0.5)
				FrameBox.Size = UDim2.new(0, 158, 0, 30)
				FrameBox.BackgroundTransparency  = 0.2
				FrameBox.ClipsDescendants = true
				FrameBox.AnchorPoint = Vector2.new(0.5, 0.5)

				local TextFrame2 = Instance.new("TextBox")

				TextFrame2.Parent = FrameBox
				TextFrame2.BackgroundColor3 = _G.ColorMethod
				TextFrame2.BorderSizePixel = 0
				TextFrame2.ClipsDescendants = true
				TextFrame2.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextFrame2.AnchorPoint = Vector2.new(0.5, 0.5)
				TextFrame2.Size = UDim2.new(0, 158, 0, 35)
				TextFrame2.Font = Enum.Font.GothamSemibold
				TextFrame2.PlaceholderColor3 = Color3.fromRGB(155, 155, 155)
				TextFrame2.PlaceholderText = text2
				TextFrame2.Text = ""
				TextFrame2.TextColor3 = Color3.fromRGB(155, 155, 155)
				TextFrame2.TextSize = 12.000
				TextFrame2.BackgroundTransparency = 1

				local ConerTextBox2 = Instance.new("UICorner")

				ConerTextBox2.CornerRadius = UDim.new(0, 4)
				ConerTextBox2.Name = ""
				ConerTextBox2.Parent = FrameBox

				local TextBoxStroke = Instance.new("UIStroke")

				TextBoxStroke.Thickness = 1
				TextBoxStroke.Name = ""
				TextBoxStroke.Parent = FrameBox
				TextBoxStroke.LineJoinMode = Enum.LineJoinMode.Round
				TextBoxStroke.Color = _G.ColorMethod
				TextBoxStroke.Transparency = 0.7


				TextFrame.MouseEnter:Connect(function()
					TweenService:Create(
						FrameBox,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						FrameBox,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextFrame2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{PlaceholderColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextFrame2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelNameSliderxd,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextBoxStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Thickness = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)

			TextFrame.MouseLeave:Connect(function()
				TweenService:Create(
					FrameBox,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, 158, 0, 30)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					FrameBox,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 = Color3.fromRGB(23, 23, 23)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					TextFrame2,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{PlaceholderColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					TextBoxStroke,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Thickness = 1} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					LabelNameSliderxd,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					TextFrame2,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end
			)
				TextFrame2.FocusLost:Connect(function ()
					if #TextFrame2.Text > 0 then
						pcall(callback,TextFrame2.Text)
					end
				end)
			end

			function items:Bind(text,bi,callback)
				local BindFrame = Instance.new("Frame")

				BindFrame.Name = "BindFrame"
				BindFrame.Parent = ScrollingFrame_Pageframe
				BindFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
				BindFrame.BorderSizePixel = 0
				BindFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				BindFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				BindFrame.Size = UDim2.new(0, 213, 0, 35)
				BindFrame.BackgroundTransparency  = 0
				BindFrame.ClipsDescendants = true

				local BindConner = Instance.new("UICorner")

				BindConner.CornerRadius = UDim.new(0, 4)
				BindConner.Name = ""
				BindConner.Parent = BindFrame

				local BindStroke = Instance.new("UIStroke")

				BindStroke.Thickness = 1
				BindStroke.Name = ""
				BindStroke.Parent = BindFrame
				BindStroke.LineJoinMode = Enum.LineJoinMode.Round
				BindStroke.Color = _G.ColorMethod
				BindStroke.Transparency = 0.7

				local LabelBind = Instance.new("TextLabel")

				LabelBind.Parent = BindFrame
				LabelBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelBind.BackgroundTransparency = 1
				LabelBind.BorderSizePixel = 0
				LabelBind.Position = UDim2.new(0.4, 0, 0.5, 0)
				LabelBind.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelBind.Size = UDim2.new(0, 140, 0, 35)
				LabelBind.Font = Enum.Font.GothamBold
				LabelBind.Text = tostring(text)
				LabelBind.TextColor3 = Color3.fromRGB(155, 155, 155)
				LabelBind.TextSize = 11.000
				LabelBind.TextXAlignment = Enum.TextXAlignment.Left

				local key = bi.Name
				local LabelBind2 = Instance.new("TextButton")

				LabelBind2.Parent = BindFrame
				LabelBind2.Name = "LabelBind2"
				LabelBind2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelBind2.Size = UDim2.new(0, 100, 0, 19)
				LabelBind2.Font = Enum.Font.GothamBold
				LabelBind2.Text =  "KEY : "..key
				LabelBind2.TextColor3 = Color3.fromRGB(155, 155, 155)
				LabelBind2.TextSize = 11.000
				LabelBind2.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelBind2.Position = UDim2.new(0.75, 0, 0.5, 0)
				LabelBind2.TextXAlignment = Enum.TextXAlignment.Center
				LabelBind2.BackgroundTransparency = 1
				LabelBind2.TextWrapped = true

				local LabelBind22 = Instance.new("TextButton")

				LabelBind22.Parent = BindFrame
				LabelBind22.Name = "LabelBind22"
				LabelBind22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelBind22.Size = UDim2.new(0, 213, 0, 35)
				LabelBind22.Font = Enum.Font.GothamBold
				LabelBind22.Text =  ""
				LabelBind22.TextColor3 = Color3.fromRGB(155, 155, 155)
				LabelBind22.TextSize = 11.000
				LabelBind22.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelBind22.Position = UDim2.new(0.5, 0, 0.5, 0)
				LabelBind22.TextXAlignment = Enum.TextXAlignment.Center
				LabelBind22.BackgroundTransparency = 1
				LabelBind22.TextWrapped = true

				BindFrame.MouseEnter:Connect(function()
					TweenService:Create(
						BindStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind22,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)
				BindFrame.MouseLeave:Connect(function()
					TweenService:Create(
						BindStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind22,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)

				LabelBind22.MouseButton1Click:Connect(function ()


					LabelBind2.Text = "KEY : ".."..."
					local inputwait = game:GetService("UserInputService").InputBegan:wait()
					local fuckulop = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode

					if
					fuckulop.Name ~= "Focus" and fuckulop.Name ~= "MouseMovement" and fuckulop.Name ~= "Focus"
					then
						LabelBind2.Text =  "KEY : "..fuckulop.Name
						key = fuckulop.Name
					end
					-- if fuckulop.Name ~= "Unknown" then
					--     LabelBind2.Text = fuckulop.Name
					--     key = fuckulop.Name
					-- end

				end)


				game:GetService("UserInputService").InputBegan:connect(
					function(current)
						local fuckulop2 = current.KeyCode == Enum.KeyCode.Unknown and current.UserInputType or current.KeyCode

							if fuckulop2.Name ==  key then
								pcall(callback)

						end
					end
					)

			end

			function items:Line()
				local LineFrame = Instance.new("Frame")

				LineFrame.Name = "LineFrame"
				LineFrame.Parent = ScrollingFrame_Pageframe
				LineFrame.BackgroundColor3 =  _G.ColorMethod
				LineFrame.BorderSizePixel = 0
				LineFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				LineFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				LineFrame.Size = UDim2.new(0, 213, 0, 1)
				LineFrame.BackgroundTransparency  = 0
				LineFrame.ClipsDescendants = true

				local LineFrame_BindConner = Instance.new("UICorner")

				LineFrame_BindConner.CornerRadius = UDim.new(0, 30)
				LineFrame_BindConner.Name = ""
				LineFrame_BindConner.Parent = LineFrame

			end

			function items:Color(text,preset,callback)
				local Pixker = Instance.new("Frame")

				Pixker.Name = "Pixker"
				Pixker.Parent = ScrollingFrame_Pageframe
				Pixker.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				Pixker.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
				Pixker.Size = UDim2.new(0, 213, 0, 33)
				Pixker.BackgroundTransparency = 0
				Pixker.BorderSizePixel = 0
				Pixker.AnchorPoint = Vector2.new(0.5, 0.5)
				Pixker.Position = UDim2.new(0.5, 0, 0.5, 0)
				Pixker.ClipsDescendants = true


				local BoxColorCorner2 = Instance.new("UICorner")

				BoxColorCorner2.CornerRadius = UDim.new(0, 4)
				BoxColorCorner2.Name = "BoxColorCorner"
				BoxColorCorner2.Parent = Pixker

				local MheeFrameStroke = Instance.new("UIStroke")

				MheeFrameStroke.Thickness = 1
				MheeFrameStroke.Name = ""
				MheeFrameStroke.Parent = Pixker
				MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
				MheeFrameStroke.Color = _G.ColorMethod
				MheeFrameStroke.Transparency = 0.7


				local TextFrameColor = Instance.new("TextLabel")

				TextFrameColor.Parent = Pixker
				TextFrameColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextFrameColor.BorderSizePixel = 0
				TextFrameColor.Size = UDim2.new(0, 200, 0, 34)
				TextFrameColor.Font = Enum.Font.SourceSans
				TextFrameColor.Text = "  "
				TextFrameColor.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextFrameColor.TextSize = 14.000
				TextFrameColor.BackgroundTransparency = 1
				TextFrameColor.Position = UDim2.new(0., 0, 0., 0)

				local TextReal = Instance.new("TextLabel")

				TextReal.Parent = TextFrameColor
				TextReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextReal.BorderSizePixel = 0
				TextReal.Size = UDim2.new(0, 140, 0, 34)
				TextReal.Font = Enum.Font.GothamSemibold
				TextReal.Text = text
				TextReal.TextColor3 = Color3.fromRGB(155,155, 155)
				TextReal.TextSize = 12.000
				TextReal.BackgroundTransparency = 1
				TextReal.Position = UDim2.new(0.05, 0, 0., 0)
				TextReal.TextXAlignment = Enum.TextXAlignment.Left

				local BoxColor = Instance.new("Frame")

				BoxColor.Name = "BoxColor"
				BoxColor.Parent = TextFrameColor
				BoxColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				BoxColor.Position = UDim2.new(0.85, 0, 0.5, 0)
				BoxColor.Size = UDim2.new(0, 35, 0, 19)
				BoxColor.AnchorPoint = Vector2.new(0.5, 0.5)

				local BoxColorCorner = Instance.new("UICorner")

				BoxColorCorner.CornerRadius = UDim.new(0, 4)
				BoxColorCorner.Name = "BoxColorCorner"
				BoxColorCorner.Parent = BoxColor

				local TextButton_Dropdown = Instance.new("TextButton")


				TextButton_Dropdown.Parent = TextFrameColor
				TextButton_Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				TextButton_Dropdown.BorderSizePixel = 0
				TextButton_Dropdown.Position = UDim2.new(0., 0, 0.14705883, 0)
				TextButton_Dropdown.Size = UDim2.new(0, 200, 0, 33)
				TextButton_Dropdown.Font = Enum.Font.SourceSans
				TextButton_Dropdown.Text = "  "
				TextButton_Dropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_Dropdown.TextSize = 14.000
				TextButton_Dropdown.AutoButtonColor = false
				--TextButton_Dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_Dropdown.Position = UDim2.new(0, 0, 0, 0)
				TextButton_Dropdown.BackgroundTransparency = 1



				Pixker.MouseEnter:Connect(function()
					TweenService:Create(
						MheeFrameStroke,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.}
					):Play()
					TweenService:Create(
						TextReal,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255,255, 255)}
					):Play()

				end)
				Pixker.MouseLeave:Connect(function()
					TweenService:Create(
						MheeFrameStroke,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.7}
					):Play()
					TweenService:Create(
						TextReal,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155,155, 155)}
					):Play()
				end)
			-- Rainbow Toggle


			local TextButton_2_Toggle = Instance.new("TextButton")

			TextButton_2_Toggle.Parent = TextFrameColor
			TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
	--        TextButton_2_Toggle.BorderColor3 = _G.ColorMethod
			TextButton_2_Toggle.BorderSizePixel = 0
			TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton_2_Toggle.Position = UDim2.new(0.2, 0, 1.87, 0)
			TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
			TextButton_2_Toggle.Font = Enum.Font.SourceSans
			TextButton_2_Toggle.Text = " "
			TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_2_Toggle.TextSize = 12.000
			TextButton_2_Toggle.AutoButtonColor = false

			local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

			TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
			TextButton_Pageframe_Uiconner.Name = ""
			TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

			local TextButton_3_Toggle = Instance.new("TextButton")

			TextButton_3_Toggle.Parent = TextButton_2_Toggle
			TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
	--        TextButton_3_Toggle.BorderColor3 = _G.ColorMethod
			TextButton_3_Toggle.BorderSizePixel = 0
			TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)
			TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
			TextButton_3_Toggle.Font = Enum.Font.SourceSans
			TextButton_3_Toggle.Text = " "
			TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_3_Toggle.TextSize = 12.000
			TextButton_3_Toggle.AutoButtonColor = false

			local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

			TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
			TextButton_Pageframe_Uiconner2.Name = ""
			TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

			local TextButton_4_Toggle = Instance.new("TextButton")

			TextButton_4_Toggle.Parent = TextButton_3_Toggle
			TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
	--        TextButton_3_Toggle.BorderColor3 = _G.ColorMethod
			TextButton_4_Toggle.BorderSizePixel = 0
			TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
			TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
			TextButton_4_Toggle.Font = Enum.Font.SourceSans
			TextButton_4_Toggle.Text = " "
			TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_4_Toggle.TextSize = 12.000
			TextButton_4_Toggle.AutoButtonColor = false
			TextButton_4_Toggle.BackgroundTransparency = 1
			TextButton_4_Toggle.Visible = true

			local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

			TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
			TextButton_Pageframe_Uiconner4.Name = ""
			TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle


			local TextButton_Toggle = Instance.new("TextButton")

			TextButton_Toggle.Parent = ValueFrame
			TextButton_Toggle.BackgroundTransparency =1
			TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton_Toggle.BorderSizePixel = 0
			TextButton_Toggle.Size = UDim2.new(0, 50, 0, 20)
			TextButton_Toggle.AutoButtonColor = false
			TextButton_Toggle.Font = Enum.Font.SourceSans
			TextButton_Toggle.Text = " "
			TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_Toggle.TextSize = 12.000
			TextButton_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)

			local TextButton_3_Toggle2 = Instance.new("TextLabel")

			TextButton_3_Toggle2.Parent = TextButton_2_Toggle
			TextButton_3_Toggle2.BackgroundColor3 = Color3.fromRGB(32, 32,32)
			TextButton_3_Toggle2.BorderColor3 = _G.ColorMethod
			TextButton_3_Toggle2.BorderSizePixel = 0
			TextButton_3_Toggle2.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton_3_Toggle2.Position = UDim2.new(1.9, 0, 0.5, 0)
			TextButton_3_Toggle2.Size = UDim2.new(0, 500, 0, 21)
			TextButton_3_Toggle2.Font = Enum.Font.SourceSansBold
			TextButton_3_Toggle2.Text = "Rainbow"
			TextButton_3_Toggle2.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextButton_3_Toggle2.TextSize = 13.000
			TextButton_3_Toggle2.BackgroundTransparency = 1

			local OMF = Instance.new("TextButton")

			OMF.Parent = TextButton_2_Toggle
			OMF.BackgroundTransparency =1
			OMF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			OMF.BorderSizePixel = 0
			OMF.Size = UDim2.new(0, 100, 0, 20)
			OMF.AutoButtonColor = false
			OMF.Font = Enum.Font.SourceSans
			OMF.Text = " "
			OMF.TextColor3 = Color3.fromRGB(0, 0, 0)
			OMF.TextSize = 12.000
			OMF.AnchorPoint = Vector2.new(0.5, 0.5)
			OMF.Position = UDim2.new(1.3, 0, 0.5, 0)

			local Color =  Instance.new("ImageLabel")

			Color.Name = "Color"
			Color.Parent = TextFrameColor
			Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
			Color.Position = UDim2.new(0.05,0,4,0)
			Color.Size = UDim2.new(0, 195, 0, 40)
			Color.ZIndex = 0
			Color.BorderSizePixel = 0
			Color.Image = "rbxassetid://4155801252"

			local ColorFucj = Instance.new("UICorner")

			ColorFucj.CornerRadius = UDim.new(0, 4)
			ColorFucj.Name = ""
			ColorFucj.Parent = Color

			local ColorSelection =  Instance.new("ImageLabel")

			ColorSelection.Name = "ColorSelection"
			ColorSelection.Parent = Color
			ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
			ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ColorSelection.BackgroundTransparency = 1.000
			ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
			ColorSelection.Size = UDim2.new(0, 18, 0, 18)
			ColorSelection.Image = ""
			ColorSelection.ScaleType = Enum.ScaleType.Fit
			ColorSelection.Visible = true

			local Hue =  Instance.new("ImageLabel")

			Hue.Name = "Hue2"
			Hue.Parent = TextFrameColor
			Hue.Position = UDim2.new(0.14,0,3,0)
			Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Hue.Size = UDim2.new(0, 160, 0, 25)
			Hue.ZIndex = 0
			Hue.BorderSizePixel = 0

			local ColorFucj2 = Instance.new("UICorner")

			ColorFucj2.CornerRadius = UDim.new(0, 4)
			ColorFucj2.Name = ""
			ColorFucj2.Parent = Hue

			local HueGradient = Instance.new("UIGradient")

			HueGradient.Color = ColorSequence.new {
				ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
				ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
				ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
				ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
				ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
				ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
				ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
			}
			HueGradient.Rotation = 0
			HueGradient.Name = "HueGradient"
			HueGradient.Parent = Hue

			local HueSelection =  Instance.new("ImageLabel")

			HueSelection.Name = "HueSelection"
			HueSelection.Parent = Hue
			HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
			HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			HueSelection.BackgroundTransparency = 1.000
			HueSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
			HueSelection.Size = UDim2.new(0, 18, 0, 18)
			HueSelection.Image = ""
			HueSelection.ScaleType = Enum.ScaleType.Fit
			HueSelection.Visible = true


			local BTN_XD = Instance.new("TextButton")

			BTN_XD.Parent = TextFrameColor
			BTN_XD.BackgroundColor3 = _G.ColorMethod
			BTN_XD.BorderColor3 = _G.ColorMethod
			BTN_XD.BorderSizePixel = 0
			BTN_XD.AnchorPoint = Vector2.new(0.5, 0.5)
			BTN_XD.Position = UDim2.new(0.8, 0, 1.9, 0)
			BTN_XD.Size = UDim2.new(0, 50, 0, 25)
			BTN_XD.Font = Enum.Font.GothamSemibold
			BTN_XD.Text = "Confirm"
			BTN_XD.TextColor3 = Color3.fromRGB(255, 255, 255)
			BTN_XD.TextSize = 11.000
			BTN_XD.AutoButtonColor = false

			local BTN_XD_COnner = Instance.new("UICorner")

			BTN_XD_COnner.CornerRadius = UDim.new(0, 4)
			BTN_XD_COnner.Name = ""
			BTN_XD_COnner.Parent = BTN_XD



			local MheeFrameStroke = Instance.new("UIStroke")

			MheeFrameStroke.Thickness = 1
			MheeFrameStroke.Name = ""
			MheeFrameStroke.Parent = BTN_XD
			MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
			MheeFrameStroke.Color = _G.ColorMethod
			MheeFrameStroke.Transparency = 0.7


			local UwU = false


			OMF.MouseButton1Click:Connect(function()
				if       UwU == false  then
					TweenService:Create(
						TextButton_4_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_3_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(153, 0, 102)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
				else
					TweenService:Create(
						TextButton_4_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_3_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
				end
				UwU = not UwU
			end
		)


		OMF.MouseEnter:Connect(function()
				TweenService:Create(
					TextButton_4_Toggle,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end
		)

		OMF.MouseLeave:Connect(function()
				TweenService:Create(
					TextButton_4_Toggle,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end
		)

		OMF.MouseButton1Down:Connect(
				function()
					RainbowColorPicker = not RainbowColorPicker

					if ColorInput then
						ColorInput:Disconnect()
					end

					if HueInput then
						HueInput:Disconnect()
					end

					if RainbowColorPicker then


						OldToggleColor = BoxColor.BackgroundColor3
						OldColor = Color.BackgroundColor3
						OldColorSelectionPosition = ColorSelection.Position
						OldHueSelectionPosition = HueSelection.Position

						while RainbowColorPicker do
							BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
							Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

							ColorSelection.Position = UDim2.new(1, 0, 0, 0)
							HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.5,0)

							pcall(callback, BoxColor.BackgroundColor3)
							wait()
						end
					elseif not RainbowColorPicker then

						BoxColor.BackgroundColor3 = OldToggleColor
						Color.BackgroundColor3 = OldColor

						ColorSelection.Position = OldColorSelectionPosition
						HueSelection.Position = OldHueSelectionPosition

						pcall(callback, BoxColor.BackgroundColor3)
					end
				end
			)
			TextButton_3_Toggle.MouseButton1Down:Connect(
				function()
					RainbowColorPicker = not RainbowColorPicker

					if ColorInput then
						ColorInput:Disconnect()
					end

					if HueInput then
						HueInput:Disconnect()
					end

					if RainbowColorPicker then


						OldToggleColor = BoxColor.BackgroundColor3
						OldColor = Color.BackgroundColor3
						OldColorSelectionPosition = ColorSelection.Position
						OldHueSelectionPosition = HueSelection.Position

						while RainbowColorPicker do
							BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
							Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

							ColorSelection.Position = UDim2.new(1, 0, 0, 0)
							HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.5,0)

							pcall(callback, BoxColor.BackgroundColor3)
							wait()
						end
					elseif not RainbowColorPicker then

						BoxColor.BackgroundColor3 = OldToggleColor
						Color.BackgroundColor3 = OldColor

						ColorSelection.Position = OldColorSelectionPosition
						HueSelection.Position = OldHueSelectionPosition

						pcall(callback, BoxColor.BackgroundColor3)
					end
				end
			)


			local function UpdateColorPicker(nope)
				BoxColor.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
				Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)

				pcall(callback, BoxColor.BackgroundColor3)
			end
			ColorH =
			1 -
			(math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
				Hue.AbsoluteSize.Y)
			ColorS =
				(math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
					Color.AbsoluteSize.X)
			ColorV =
				1 -
				(math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
					Color.AbsoluteSize.Y)

			BoxColor.BackgroundColor3 = preset
			Color.BackgroundColor3 = preset
			pcall(callback, BoxColor.BackgroundColor3)

			local RainbowColorPicker = false

			Color.InputBegan:Connect(
				function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if RainbowColorPicker then
							return
						end

						if ColorInput then
							ColorInput:Disconnect()
						end

						ColorInput =
							RunService.RenderStepped:Connect(
								function()
								local ColorX =
									(math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
										Color.AbsoluteSize.X)
								local ColorY =
									(math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
										Color.AbsoluteSize.Y)

								ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
								ColorS = ColorX
								ColorV = 1 - ColorY

								UpdateColorPicker(true)
							end
							)
					end
				end
			)


				Color.InputEnded:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if ColorInput then
								ColorInput:Disconnect()
							end
						end
					end
				)

				Hue.InputBegan:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if RainbowColorPicker then
								return
							end

							if HueInput then
								HueInput:Disconnect()
							end

							HueInput =
								RunService.RenderStepped:Connect(
									function()
									local HueY =
										(math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
											Hue.AbsoluteSize.Y)
									local HueX =
										(math.clamp(Mouse.X- Hue.AbsolutePosition.X, 0, Hue.AbsoluteSize.X) /
											Hue.AbsoluteSize.X)

									HueSelection.Position = UDim2.new(HueX, 0, HueY, 0)
									ColorH = 1 - HueY

									UpdateColorPicker(true)
								end
								)
						end
					end
				)

				Hue.InputEnded:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if HueInput then
								HueInput:Disconnect()
							end
						end
					end
				)
				local sk = false
				TextButton_Dropdown.MouseButton1Click:Connect(function()
					if sk == false then
					TweenService:Create(
						Pixker,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 213, 0, 180)}
					):Play()
				else
					TweenService:Create(
						Pixker,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 213, 0, 33)}
					):Play()
				end
				sk = not sk
				end
			)
				BTN_XD.MouseButton1Click:Connect(
					function()
						TweenService:Create(
							Pixker,
							TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 213, 0, 33)}
						):Play()
						sk = not sk
					end
				)


			end
			function items:Label(text,image)
				if image == nil then
					image = "https://www.roblox.com/asset-thumbnail/image?assetId=10303462098&width=0&height=0&format=png"
				end
				local labaelchange = {}
				local LabelFrame = Instance.new("Frame")


				LabelFrame.Name = "Mainframenoti"
				LabelFrame.Parent = ScrollingFrame_Pageframe
				LabelFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				LabelFrame.BackgroundTransparency = 0
				LabelFrame.BorderSizePixel = 0
				LabelFrame.ClipsDescendants = false
				LabelFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelFrame.Position = UDim2.new(0.498, 0, 0.5, 0)
				LabelFrame.Size = UDim2.new(0, 213, 0, 28)

				local LabelFarm2 = Instance.new("TextLabel")

				LabelFarm2.Parent = LabelFrame
				LabelFarm2.Name = "TextLabel_Tap"
				LabelFarm2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				LabelFarm2.Size =UDim2.new(0, 130, 0,24 )
				LabelFarm2.Font = Enum.Font.SourceSansSemibold
				LabelFarm2.Text = text
				LabelFarm2.TextColor3 = Color3.fromRGB(255, 255, 255)
				LabelFarm2.TextSize = 12.000
				LabelFarm2.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelFarm2.Position = UDim2.new(0.5, 0, 0.5, 0)
				LabelFarm2.TextXAlignment = Enum.TextXAlignment.Center
				LabelFarm2.BackgroundTransparency = 1
				LabelFarm2.TextWrapped = true

				local ImageLabel_gx = Instance.new("ImageLabel")

				ImageLabel_gx.Parent = LabelFrame
				ImageLabel_gx.BackgroundTransparency = 1.000
				ImageLabel_gx.BorderSizePixel = 0
				ImageLabel_gx.Size = UDim2.new(0,15, 0, 15)
				ImageLabel_gx.AnchorPoint = Vector2.new(0.5, 0.5)
				ImageLabel_gx.Position = UDim2.new(0.1, 0, 0.50, 0)
				ImageLabel_gx.Image = ""
				ImageLabel_gx.BackgroundTransparency = 1

				local noticore55 = Instance.new("UICorner")

				noticore55.CornerRadius = UDim.new(0, 4)
				noticore55.Name = ""
				noticore55.Parent = LabelFarm2

				local noticore2777 = Instance.new("UICorner")

				noticore2777.CornerRadius = UDim.new(0, 4)
				noticore2777.Name = ""
				noticore2777.Parent = LabelFrame

				local LabelStroke = Instance.new("UIStroke")

				LabelStroke.Thickness = 1
				LabelStroke.Name = ""
				LabelStroke.Parent = LabelFrame
				LabelStroke.LineJoinMode = Enum.LineJoinMode.Round
				LabelStroke.Color = _G.ColorMethod
				LabelStroke.Transparency = 0.7

				LabelFrame.MouseEnter:Connect(function()
					TweenService:Create(
						LabelStroke,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency =0}
					):Play()
				end
			)
				LabelFrame.MouseLeave:Connect(function()
					TweenService:Create(
						LabelStroke,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency =0.7}
					):Play()
				end
			)
				function labaelchange:Change(text2)
					LabelFarm2.Text = text2
				end
				return  labaelchange
			end
			return  items
			end
		return  page
		end
	return top
	end



local Window = create.win()
local UiLibToDestroy =  game:GetService("CoreGui").RobloxGui.Modules:FindFirstChild("Skidtest") 

if game.PlaceId == 8304191830 then
        local main23 = Window:Taps("Main")
        local page1main23 = main23:newpage()
        local page2main23 = main23:newpage()

        local Coopplay = Window:Taps("CO-OP")
        local page1Coopplay = Coopplay:newpage()
        local page2Coopplay = Coopplay:newpage()
        
        local unitselecttab = Window:Taps("Select Units")
        page1unitselecttab = unitselecttab:newpage()
        page2unitselecttab = unitselecttab:newpage()
        
        local autofarmtab = Window:Taps("Auto Farm")
        page1autofarmtab = autofarmtab:newpage()
        page2autofarmtab = autofarmtab:newpage()
        
        local misc = Window:Taps("Misc")
        page1misc = misc:newpage()
        page2misc = misc:newpage()
        
        page1misc:Toggle("Auto Summon {Tickets}", getgenv().autosummontickets, function(bool)
            getgenv().autosummontickets = bool
            while getgenv().autosummontickets do
                task.wait()
                local args = {
                    [1] = "dbz_fighter",
                    [2] = "ticket"
                }
                game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_random_fighter:InvokeServer(unpack(
                    args))
            end
            updatejson()
        end)

        page1misc:Toggle("Auto Summon {Gems - 1}", getgenv().autosummongem, function(bool)
            getgenv().autosummongem = bool
            while getgenv().autosummongem do
                task.wait()
                local args = {
                    [1] = "dbz_fighter",
                    [2] = "gems"
                }

                game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_random_fighter:InvokeServer(unpack(
                    args))
            end
            updatejson()
        end)

        page1misc:Toggle("Auto Summon {Gems - 10}", getgenv().autosummongem10, function(bool)
            getgenv().autosummongem10 = bool
            while getgenv().autosummongem10 do
                task.wait()
                local args = {
                    [1] = "dbz_fighter",
                    [2] = "gems10"
                }

                game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_random_fighter:InvokeServer(unpack(
                    args))

            end
            updatejson()
        end)
        
        page2misc:Button("Destroy Gui",function()
            UiLibToDestroy:Destroy()
        end)
        
        
        local Units = {}

        function loadUnit()
            repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("collection"):FindFirstChild("grid"):FindFirstChild("List"):FindFirstChild("Outer"):FindFirstChild("UnitFrames")
            task.wait(2)
            table.clear(Units)
            for i, v in pairs(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.collection.grid.List.Outer.UnitFrames:GetChildren()) do
                if v.Name == "CollectionUnitFrame" then
                    repeat task.wait() until v:FindFirstChild("_uuid")
                    table.insert(Units, v.name.Text .. " #" .. v._uuid.Value)
                end
            end
        end

        loadUnit()

        function Equip()
            game:GetService("ReplicatedStorage").endpoints.client_to_server.unequip_all:InvokeServer()
            for i = 1, 6 do
                local unitinfo = getgenv().SelectedUnits["U" .. i]
                warn(unitinfo)
                if unitinfo ~= nil then
                    local unitinfo_ = unitinfo:split(" #")
                    task.wait(0.3)
                    game:GetService("ReplicatedStorage").endpoints.client_to_server.equip_unit:InvokeServer(unitinfo_[2])
                end
            end
            updatejson()
        end
         
         
         
        local drop = page1unitselecttab:Drop("Unit 1",false, Units, function(bool)
            getgenv().SelectedUnits["U1"] = bool
            --print("U1", bool, getgenv().SelectedUnits["U1"])
            Equip()
        end) -- select unit dropdown end

        local drop2 = page1unitselecttab:Drop("Unit 2", false,Units, function(bool)
            getgenv().SelectedUnits["U2"] = bool
            --print("U2", bool, getgenv().SelectedUnits["U2"])
            Equip()
        end)

        local drop3 = page1unitselecttab:Drop("Unit 3", false,Units, function(bool)
            getgenv().SelectedUnits["U3"] = bool
            --print("U3", bool, getgenv().SelectedUnits["U3"])
            Equip()
        end)

        local drop4 = page2unitselecttab:Drop("Unit 4", false,Units, function(bool)
            getgenv().SelectedUnits["U4"] = bool
            --print("U4", bool, getgenv().SelectedUnits["U4"])
            Equip()
        end)
        local drop5 = page2unitselecttab:Drop("Unit 5",false, Units, function(bool)
            getgenv().SelectedUnits["U5"] = bool
            --print("U5", bool, getgenv().SelectedUnits["U5"])
            Equip()
        end)
        local drop6 = page2unitselecttab:Drop("Unit 6",false, Units, function(bool)
            getgenv().SelectedUnits["U6"] = bool
            --print("U6", bool, getgenv().SelectedUnits["U6"])
            Equip()
        end)
        --------------// Refresh Unit List \\-------------

        page1unitselecttab:Button("Refresh Unit List", function()
            drop:Clear() -- clears list
            drop2:Clear()
            drop3:Clear()
            drop4:Clear()
            drop5:Clear()
            drop6:Clear()
            loadUnit()
            game:GetService("ReplicatedStorage").endpoints.client_to_server.unequip_all:InvokeServer()
            for i, v in ipairs(Units) do
                drop:Add(v)
                drop2:Add(v)
                drop3:Add(v)
                drop4:Add(v)
                drop5:Add(v)
                drop6:Add(v)
            end
            getgenv().SelectedUnits = {
                U1 = nil,
                U2 = nil,
                U3 = nil,
                U4 = nil,
                U5 = nil,
                U6 = nil
            }
        end) -- refresh list end
        
        page2unitselecttab:Button("Refresh Unit List", function()
            drop:Clear() -- clears list
            drop2:Clear()
            drop3:Clear()
            drop4:Clear()
            drop5:Clear()
            drop6:Clear()
            loadUnit()
            game:GetService("ReplicatedStorage").endpoints.client_to_server.unequip_all:InvokeServer()
            for i, v in ipairs(Units) do
                drop:Add(v)
                drop2:Add(v)
                drop3:Add(v)
                drop4:Add(v)
                drop5:Add(v)
                drop6:Add(v)
            end
            getgenv().SelectedUnits = {
                U1 = nil,
                U2 = nil,
                U3 = nil,
                U4 = nil,
                U5 = nil,
                U6 = nil
            }
        end) -- refresh list end
        
        page1main23:TextBox("Underneath 1","", function(bool)
        getgenv().Underneath1 = bool
        updatejson()
        end)
        
        page1main23:TextBox("Underneath 2","", function(bool)
        getgenv().Underneath2 = bool
        updatejson()
        end)
        
        page1main23:TextBox("Underneath 3","", function(bool)
        getgenv().Underneath3 = bool
        updatejson()
        end)
        
        page1main23:TextBox("Underneath 4","", function(bool)
        getgenv().Underneath4 = bool
        updatejson()
        end)
        
        page1main23:TextBox("Underneath 5","", function(bool)
        getgenv().Underneath5 = bool
        updatejson()
        end)
        
        page1main23:TextBox("Underneath 6","", function(bool)
        getgenv().Underneath6 = bool
        updatejson()
        end)
        
        page2main23:Label("Auto Place Underneath Unit 1-6")
        
        page2main23:Toggle("Auto Place Underneath Unit 1", getgenv().PlaceUnderneath1, function(bool)
            getgenv().PlaceUnderneath1 = bool
            updatejson()
        end)
        
         page2main23:Toggle("Auto Place Underneath Unit 2", getgenv().PlaceUnderneath2, function(bool)
            getgenv().PlaceUnderneath2 = bool
            updatejson()
         end)
    
         page2main23:Toggle("Auto Place Underneath Unit 3", getgenv().PlaceUnderneath3, function(bool)
            getgenv().PlaceUnderneath3 = bool
            updatejson()
         end) 
         
          page2main23:Toggle("Auto Place Underneath Unit 4", getgenv().PlaceUnderneath4, function(bool)
            getgenv().PlaceUnderneath4 = bool
            updatejson()
          end)
        
         page2main23:Toggle("Auto Place Underneath Unit 5", getgenv().PlaceUnderneath5, function(bool)
            getgenv().PlaceUnderneath5 = bool
            updatejson()
        end) 
        
         page2main23:Toggle("Auto Place Underneath Unit 6", getgenv().PlaceUnderneath6, function(bool)
            getgenv().PlaceUnderneath6 = bool
            updatejson()
         end)
        
        page2main23:TextBox("Distance","",function(bool)
        getgenv().DisctandUnder = bool
        updatejson()
        end)
        
                --------------------------------------------------
        ------------------ Coop Tab -----------------
        --------------------------------------------------
        page1Coopplay:TextBox("Host Name To Join","Insert Host Name",function(bool)
            getgenv().HostName = bool
            updatejson()
        end)
        
        page1Coopplay:TextBox("Player Name For Play","Insert Player",function(bool)
            getgenv().PlayerNameForPlay = bool
            updatejson()
        end)
        
        getgenv().levelscoop = {"nill"}
        
        page1Coopplay:Toggle("Auto Start CO-OP",getgenv().AutoStartCoop,function(bool)
            getgenv().AutoStartCoop = bool
            updatejson()
            if getgenv().AutoStartCoop then
game:GetService("Workspace"):WaitForChild(getgenv().PlayerNameForPlay)
game:GetService("Workspace")[getgenv().PlayerNameForPlay]:WaitForChild("HumanoidRootPart")
for i, v in pairs(game:GetService("Workspace")["_LOBBIES"].Story:GetDescendants()) do
                    if v.Name == "Value" and tostring(v.Value) == getgenv().PlayerNameForPlay then
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(v.Parent.Parent.Name)
                end
                    
                    if v.Name == "Owner" and tostring(v.Value) == game.Players.LocalPlayer.Name then 
                        return;
                    elseif v.Name == "Owner" and v.Value == nil then
                        getgenv().doorcoop = v.Parent.Name
                        break
                    end
                end

                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_join_lobby:InvokeServer(getgenv().doorcoop)
                
                local args = {
                    [1] = getgenv().doorcoop, -- Lobby 
                    [2] = getgenv().levelcoop, -- World
                    [3] = true, -- Friends Only or not
                    [4] = getgenv().difficultycoop
                }
                 game:GetService("ReplicatedStorage").endpoints.client_to_server.request_lock_level:InvokeServer(unpack(args))
                 
end
        end)
        
        page1Coopplay:Toggle("Auto Join Host",getgenv().autojoinhost,function(bool)
            getgenv().autojoinhost = bool
            updatejson()
        end)
        
        
        
        
        page1Coopplay:Drop("Select World", false,{"Plannet Namak", "Shiganshinu District", "Snowy Town","Hidden Sand Village","Marine's Ford"}, function(world)
            getgenv().worldcoop = world
            updatejson()
            if world == "Plannet Namak" then
                getgenv().leveldropcoop:Clear()
                table.clear(levelscoop)
                getgenv().levelscoop = {"namek_infinite", "namek_level_1", "namek_level_2", "namek_level_3",
                                    "namek_level_4", "namek_level_5", "namek_level_6"}
                for i, v in ipairs(levelscoop) do
                    getgenv().leveldropcoop:Add(v)
                end
            elseif world == "Shiganshinu District" then
                getgenv().leveldropcoop:Clear()
                table.clear(levelscoop)
                getgenv().levelscoop = {"aot_infinite", "aot_level_1", "aot_level_2", "aot_level_3", "aot_level_4",
                                    "aot_level_5", "aot_level_6"}
                for i, v in ipairs(levelscoop) do
                    getgenv().leveldropcoop:Add(v)
                end
            elseif world == "Snowy Town" then
                getgenv().leveldropcoop:Clear()
                table.clear(levelscoop)
                getgenv().levelscoop = {"demonslayer_infinite", "demonslayer_level_1", "demonslayer_level_2",
                                    "demonslayer_level_3", "demonslayer_level_4", "demonslayer_level_5",
                                    "demonslayer_level_6"}
                for i, v in ipairs(levelscoop) do
                    getgenv().leveldropcoop:Add(v)
                end
            elseif world == "Hidden Sand Village" then
                getgenv().leveldropcoop:Clear()
                table.clear(levelscoop)
                getgenv().levelscoop = {"naruto_infinite", "naruto_level_1", "naruto_level_2", "naruto_level_3",
                                    "naruto_level_4", "naruto_level_5", "naruto_level_6"}
                for i, v in ipairs(levelscoop) do
                    getgenv().leveldropcoop:Add(v)
                end
            elseif world == "Marine's Ford" then
                getgenv().leveldropcoop:Clear()
                table.clear(levelscoop)
                getgenv().levelscoop = {"marineford_infinite", "marineford_level_1", "marineford_level_2", "marineford_level_3",
                                    "marineford_level_4", "marineford_level_5", "marineford_level_6"}
                for i, v in ipairs(levelscoop) do
                    getgenv().leveldropcoop:Add(v)
                end
            end
        end)
        
        

        getgenv().leveldropcoop = page1Coopplay:Drop("Select Level", false,getgenv().levelscoop, function(level)
            getgenv().levelcoop = level
            updatejson()
        end)

        getgenv().diffcoop = page1Coopplay:Drop("Select Difficulty", false,{"Normal", "Hard"}, function(diff)
            getgenv().difficultycoop = diff
            updatejson()
        end)
        
        page2Coopplay:TextBox("ID Server To Hop","Insert ID Server",function(bool)
            getgenv().Idserver = bool
            updatejson()
        end)
        
        page2Coopplay:Label("Hop Server If Not Find Host Name")
    
        page2Coopplay:Toggle("Auto Hop Server",getgenv().hopserverifnotfindhost,function(bool)
            getgenv().hopserverifnotfindhost = bool
            updatejson()
        end)
        
        page2Coopplay:Label("Hop Server If Not Find Player Name")
        
        page2Coopplay:Toggle("Auto Hop Server",getgenv().hopserverifnotfindplayer, function(bool)
            getgenv().hopserverifnotfindplayer = bool
            updatejson()
        end)
        page2Coopplay:Button("Copy ID Server",function()
            setclipboard(game.JobId)
        end)        
         
         page1autofarmtab:TextBox("Webhook URL {Press Enter}", "", function(web_url)
            getgenv().weburl = web_url
            updatejson()
        end)
        
        
        page1autofarmtab:Toggle("Auto Farm", getgenv().AutoFarm, function(bool)
            getgenv().AutoFarm = bool
            updatejson()
        end)

        getgenv().levels = {"nill"}

        page1autofarmtab:Toggle("Auto Start", getgenv().autostart, function(bool)
            getgenv().autostart = bool
            updatejson()

            if getgenv().autostart and getgenv().AutoFarm then

                for i, v in pairs(game:GetService("Workspace")["_LOBBIES"].Story:GetDescendants()) do
                    if v.Name == "Owner" and v.Value == nil then
                        getgenv().door = v.Parent.Name
                        break
                    end
                end

                task.wait(0.1)

                local args = {
                    [1] = getgenv().door
                }
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_join_lobby:InvokeServer(unpack(
                    args))

                    task.wait(0.1)

                local args = {
                    [1] = getgenv().door, -- Lobby 
                    [2] = getgenv().level, -- World
                    [3] = true, -- Friends Only or not
                    [4] = getgenv().difficulty
                }
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_lock_level:InvokeServer(unpack(
                    args))

                    task.wait(0.1)

                local args = {
                    [1] = getgenv().door
                }
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(unpack(
                    args))
            end

        end)
        
        page1autofarmtab:Toggle("Auto Upgrade Units", getgenv().autoupgrade, function(bool)
            getgenv().autoupgrade = bool
            updatejson()
        end)


        page2autofarmtab:TextBox("Select Wave Number", "", function(t)
            getgenv().sellatwave = tonumber(t)
            updatejson()
        end)

        page2autofarmtab:Toggle("Auto Sell At X Wave", getgenv().autosell, function(x)
            getgenv().autosell = x
            updatejson()
            if getgenv().autosell == false then
                getgenv().disableatuofarm = false
            end
        end)
        

            page2autofarmtab:Drop("Select World", false,{"Plannet Namak", "Shiganshinu District", "Snowy Town","Hidden Sand Village","Marine's Ford"}, function(world)
            getgenv().world = world
            updatejson()
            if world == "Plannet Namak" then
                getgenv().leveldrop:Clear()
                table.clear(levels)
                getgenv().levels = {"namek_infinite", "namek_level_1", "namek_level_2", "namek_level_3",
                                    "namek_level_4", "namek_level_5", "namek_level_6"}
                for i, v in ipairs(levels) do
                    getgenv().leveldrop:Add(v)
                end
            elseif world == "Shiganshinu District" then
                getgenv().leveldrop:Clear()
                table.clear(levels)
                getgenv().levels = {"aot_infinite", "aot_level_1", "aot_level_2", "aot_level_3", "aot_level_4",
                                    "aot_level_5", "aot_level_6"}
                for i, v in ipairs(levels) do
                    getgenv().leveldrop:Add(v)
                end
            elseif world == "Snowy Town" then
                getgenv().leveldrop:Clear()
                table.clear(levels)
                getgenv().levels = {"demonslayer_infinite", "demonslayer_level_1", "demonslayer_level_2",
                                    "demonslayer_level_3", "demonslayer_level_4", "demonslayer_level_5",
                                    "demonslayer_level_6"}
                for i, v in ipairs(levels) do
                    getgenv().leveldrop:Add(v)
                end
            elseif world == "Hidden Sand Village" then
                getgenv().leveldrop:Clear()
                table.clear(levels)
                getgenv().levels = {"naruto_infinite", "naruto_level_1", "naruto_level_2", "naruto_level_3",
                                    "naruto_level_4", "naruto_level_5", "naruto_level_6"}
                for i, v in ipairs(levels) do
                    getgenv().leveldrop:Add(v)
                end
            elseif world == "Marine's Ford" then
                getgenv().leveldrop:Clear()
                table.clear(levels)
                getgenv().levels = {"marineford_infinite", "marineford_level_1", "marineford_level_2", "marineford_level_3",
                                    "marineford_level_4", "marineford_level_5", "marineford_level_6"}
                for i, v in ipairs(levels) do
                    getgenv().leveldrop:Add(v)
                end
            end
        end)

        getgenv().leveldrop = page2autofarmtab:Drop("Select Level",false, getgenv().levels, function(level)
            getgenv().level = level
            updatejson()
        end)

        getgenv().diff = page2autofarmtab:Drop("Select Difficulty",false, {"Normal", "Hard"}, function(diff)
            getgenv().difficulty = diff
            updatejson()
        end)
end    -- end PlaceId 1   

if game.PlaceId ~= 8304191830 then 
        local main23 = Window:Taps("Main")
        local page1main23 = main23:newpage()
        local page2main23 = main23:newpage()
        
        local Coopplay = Window:Taps("CO-OP")
        page1Coopplay = Coopplay:newpage()
        page2Coopplay = Coopplay:newpage()        
        
        local autofarmtab = Window:Taps("Auto Farm")
        page1autofarmtab = autofarmtab:newpage()
        page2autofarmtab = autofarmtab:newpage()
        
        local autoseltab = Window:Taps("Auto Sell")
        page1autoseltab = autoseltab:newpage()
        page2autoseltab = autoseltab:newpage()
        
        local ConfigTab = Window:Taps("Misc / Save Config")
        page1ConfigTab = ConfigTab:newpage()
        page2ConfigTab = ConfigTab:newpage()
        
        game.Players.LocalPlayer.PlayerGui.MessageGui.Enabled = false
        game:GetService("ReplicatedStorage").packages.assets["ui_sfx"].error.Volume = 0
        game:GetService("ReplicatedStorage").packages.assets["ui_sfx"].error_old.Volume = 0
        
       page1main23:TextBox("Underneath 1","", function(bool)
        getgenv().Underneath1 = bool
        updatejson()
        end)
        
        page1main23:TextBox("Underneath 2","", function(bool)
        getgenv().Underneath2 = bool
        updatejson()
        end)
        
        page1main23:TextBox("Underneath 3","", function(bool)
        getgenv().Underneath3 = bool
        updatejson()
        end)
        
        page1main23:TextBox("Underneath 4", "", function(bool)
        getgenv().Underneath4 = bool
        updatejson()
        end)
        
        page1main23:TextBox("Underneath 5","", function(bool)
        getgenv().Underneath5 = bool
        updatejson()
        end)
        
        page1main23:TextBox("Underneath 6","", function(bool)
        getgenv().Underneath6 = bool
        updatejson()
        end)

        page2main23:Label("Auto Place Underneath Unit 1 - 6")
        
        page2main23:Toggle("Auto Place Underneath Unit 1", getgenv().PlaceUnderneath1, function(bool)
            getgenv().PlaceUnderneath1 = bool
            updatejson()
        end)
        
         page2main23:Toggle("Auto Place Underneath Unit 2", getgenv().PlaceUnderneath2, function(bool)
            getgenv().PlaceUnderneath2 = bool
            updatejson()
         end)
    
         page2main23:Toggle("Auto Place Underneath Unit 3", getgenv().PlaceUnderneath3, function(bool)
            getgenv().PlaceUnderneath3 = bool
            updatejson()
         end) 
         
          page2main23:Toggle("Auto Place Underneath Unit 4", getgenv().PlaceUnderneath4, function(bool)
            getgenv().PlaceUnderneath4 = bool
            updatejson()
          end)
        
         page2main23:Toggle("Auto Place Underneath Unit 5", getgenv().PlaceUnderneath5, function(bool)
            getgenv().PlaceUnderneath5 = bool
            updatejson()
        end) 
        
         page2main23:Toggle("Auto Place Underneath Unit 6", getgenv().PlaceUnderneath6, function(bool)
            getgenv().PlaceUnderneath6 = bool
            updatejson()
         end)
    
    
        page2main23:TextBox("DisctandUnder","Insert Disctan",false,function(bool)
        getgenv().DisctandUnder = bool
        updatejson()
        end) 
        
        page2main23:Button("Units Name",function()
        for i,v in pairs(game:GetService("Workspace")["_UNITS"]:GetChildren()) do
        if v.Name == "aot_generic" then 
            v:Destroy()
        elseif tostring(v["_stats"].player.Value) == game.Players.LocalPlayer.Name then
        create:Notifile("Units Name",v.Name,10)
end
end
end)
        page1Coopplay:TextBox("Host Name To Join","Insert Host Name",false,function(bool)
            getgenv().HostName = bool
            updatejson()
        end)
        
        page1Coopplay:TextBox("Player Name For Play","Insert Player",false,function(bool)
            getgenv().PlayerNameForPlay = bool
            updatejson()
        end)
        
        page1Coopplay:Toggle("Auto Start CO-OP",getgenv().AutoStartCoop,function(bool)
            getgenv().AutoStartCoop = bool
            updatejson()
        end)
        
        page1Coopplay:Toggle("Auto Join Host",getgenv().autojoinhost,function(bool)
            getgenv().autojoinhost = bool
            updatejson()
        end)
        
        page2Coopplay:TextBox("ID Server To Hop","Insert ID Server",function(bool)
            getgenv().Idserver = bool
            updatejson()
        end)
        
        page2Coopplay:Label("Auto Hop Server If Not Find Host Name")
        
        page2Coopplay:Toggle("Auto Hop Server If Not Find Host Name",getgenv().hopserverifnotfindhost,function(bool)
            getgenv().hopserverifnotfindhost = bool
            updatejson()
        end)
        
        page2Coopplay:Label("Auto Hop Server If Not Find Player")
        
        page2Coopplay:Toggle("Auto Hop Server If Not Find Player",getgenv().hopserverifnotfindplayer, function(bool)
            getgenv().hopserverifnotfindplayer = bool
            updatejson()
        end)
        
        page2Coopplay:Button("Copy ID Server",function()
            setclipboard(game.JobId)
        end)
        
        page1autofarmtab:TextBox("Webhook URL {Press Enter}", "", function(web_url)
            getgenv().weburl = web_url
            updatejson()
        end)
        page1autofarmtab:Button("Test Webhook", function()
            webhook()
        end)
        
        page1autofarmtab:Toggle("Auto Farm", getgenv().AutoFarm, function(bool)
            getgenv().AutoFarm = bool
            updatejson()
        end)
        page1autofarmtab:Toggle("Auto Start", getgenv().autostart, function(bool)
            getgenv().autostart = bool
            updatejson()
        end)

        page2autoseltab:Toggle("Auto Sell At X Wave", getgenv().autosell, function(x)
            getgenv().autosell = x
            updatejson()
            if getgenv().autosell == false then
                getgenv().disableatuofarm = false
            end

        end)

        page1autoseltab:TextBox("Select Wave Number", "", function(t)
            getgenv().sellatwave = tonumber(t)
            updatejson()
        end)

        page1autofarmtab:Toggle("Auto Upgrade Units", getgenv().autoupgrade, function(bool)
            getgenv().autoupgrade = bool
            updatejson()
        end)

        function MouseClick(UnitPos)
            local connection
            connection = UserInputService.InputBegan:Connect(
                function(input, gameProcessed)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        connection:Disconnect()
                        local a = Instance.new("Part", game.Workspace)
                        a.Size = Vector3.new(1, 1, 1)
                        a.Material = Enum.Material.Neon
                        a.Position = mouse.hit.p
                        task.wait()
                        a.Anchored = true
                        a.CanCollide = false
                        for i = 0, 1, 0.1 do
                            a.Transparency = i
                            task.wait()
                        end
                        a:Destroy()
                        SpawnUnitPos[UnitPos]["x"] = a.Position.X
                        SpawnUnitPos[UnitPos]["y"] = a.Position.Y
                        SpawnUnitPos[UnitPos]["z"] = a.Position.Z
                        updatejson()
                    end
                end)
        end

        -- // Set Position
        page2autofarmtab:Button("Set Unit 1 Postion", function()
            MouseClick("UP1")
        end)

        page2autofarmtab:Button("Set Unit 2 Postion", function()
            MouseClick("UP2")
        end)
        page2autofarmtab:Button("Set Unit 3 Postion", function()
            MouseClick("UP3")
        end)
        page2autofarmtab:Button("Set Unit 4 Postion", function()
            MouseClick("UP4")
        end)
        page2autofarmtab:Button("Set Unit 5 Postion", function()
            MouseClick("UP5")
        end)
        page2autofarmtab:Button("Set Unit 6 Postion", function()
            MouseClick("UP6")
        end)

        page1ConfigTab:Button("Destroy Gui",function()
            UiLibToDestroy:Destroy()
        end)
        
        page1ConfigTab:Label("--- Saved Config ---")
        page1ConfigTab:Label("Auto Sell at Wave: " .. tostring(getgenv().sellatwave))
        page1ConfigTab:Label("Webhook: " .. tostring(getgenv().weburl))
        page1ConfigTab:Label("ID Server Hop: " ..tostring(getgenv().Idserver))
        page1ConfigTab:Label("Host Name: " .. tostring(getgenv().HostName))
        page1ConfigTab:Label("Player Name: " ..tostring(getgenv().PlayerNameForPlay))
        page1ConfigTab:Label("Auto Start CO-OP: " .. tostring(getgenv().AutoStartCoop))
        page1ConfigTab:Label("Auto Join Host: " ..tostring(getgenv().autojoinhost))
        page1ConfigTab:Label("Auto Hop Server If Not Find Host: " .. tostring(getgenv().hopserverifnotfindhost))
        page1ConfigTab:Label("Auto Hop Server If Not Find Player: " ..tostring(getgenv().hopserverifnotfindplayer))
        page1ConfigTab:Label("Select level CO-OP: " .. tostring(getgenv().levelcoop))
        page1ConfigTab:Label("Difficulty CO-OP: " .. tostring(getgenv().difficultycoop))
        page1ConfigTab:Label("Underneath1: " .. tostring(getgenv().Underneath1))
        page1ConfigTab:Label("Underneath2: " .. tostring(getgenv().Underneath2))
        page1ConfigTab:Label("Underneath3: " .. tostring(getgenv().Underneath3))
        page1ConfigTab:Label("Underneath4: " .. tostring(getgenv().Underneath4))
        page1ConfigTab:Label("Underneath5: " .. tostring(getgenv().Underneath5))
        page1ConfigTab:Label("Underneath6: " .. tostring(getgenv().Underneath6))
        page1ConfigTab:Label("DisctandUnder: " .. tostring(getgenv().DisctandUnder))
        
        page2ConfigTab:Button("Destroy Gui",function()
            UiLibToDestroy:Destroy()
        end)
        page2ConfigTab:Label("--- Saved Config ---")
        page2ConfigTab:Label("Auto Place Underneath Unit 1: " .. tostring(getgenv().PlaceUnderneath1))
        page2ConfigTab:Label("Auto Place Underneath Unit 2: " .. tostring(getgenv().PlaceUnderneath2))
        page2ConfigTab:Label("Auto Place Underneath Unit 3: " .. tostring(getgenv().PlaceUnderneath3))
        page2ConfigTab:Label("Auto Place Underneath Unit 4: " .. tostring(getgenv().PlaceUnderneath4))
        page2ConfigTab:Label("Auto Place Underneath Unit 5: " .. tostring(getgenv().PlaceUnderneath5))
        page2ConfigTab:Label("Auto Place Underneath Unit 6: " .. tostring(getgenv().PlaceUnderneath6))
        page2ConfigTab:Label("Auto Farm: " .. tostring(getgenv().AutoFarm))
        page2ConfigTab:Label("Auto Start: " .. tostring(getgenv().autostart))
        page2ConfigTab:Label("Auto Sell: " .. tostring(getgenv().autosell))
        page2ConfigTab:Label("Auto Upgrade: " .. tostring(getgenv().autoupgrade))
        page2ConfigTab:Label("Difficulty: " .. tostring(getgenv().difficulty))
        page2ConfigTab:Label("Selected World: " .. tostring(getgenv().world))
        page2ConfigTab:Label("Selected Level: " .. tostring(getgenv().level))
    
    
    end -- end PlaceId 2 
    
    
    
    

end -- sex() function end

if isfile(savefilename) then -- checks if file exist or not
    sex()
else
    local xdata = {
        -- unitname = "name",
        -- unitid = "id",
        webhook = "",
        underneath1 = "",
        underneath2 = "",
        underneath3 = "",
        underneath4 = "",
        underneath5 = "",
        underneath6 = "",
        disctandunder = "",
        idserver = "",
        hostname = "",
        difficultycoop = "",
        playenameforplay = "",
        levelcoop = "",
        sellatwave = 0,
        hopserverifnotfindplayer = false,
        hopserverifnotfindhost = false,
        autojoinhost = false,
        autosell = false,
        autostartcoop = false,
        placeunderneath1 = false,
        placeunderneath2 = false,
        placeunderneath3 = false,
        placeunderneath4 = false,
        placeunderneath5 = false,
        placeunderneath6 = false,
        autofarm = false,
        autostart = false,
        autoupgrade = false,
        difficulty = "Normal",
        world = "nil",
        level = "nil",
        door = "nil",
        xspawnUnitPos = {
            UP1 = {
                x = -2952.81689453125,
                y = 91.80620574951172,
                z = -707.9673461914062
            },

            UP2 = {
                x = -2952.81689453125,
                y = 91.80620574951172,
                z = -707.9673461914062
            },

            UP3 = {
                x = -2952.81689453125,
                y = 91.80620574951172,
                z = -707.9673461914062
            },

            UP4 = {
                x = -2952.81689453125,
                y = 91.80620574951172,
                z = -707.9673461914062
            },
            UP5 = {
                x = -2952.81689453125,
                y = 91.80620574951172,
                z = -707.9673461914062
            },
            UP6 = {
                x = -2952.81689453125,
                y = 91.80620574951172,
                z = -707.9673461914062
            }
        },
        xselectedUnits = {
            U1 = nil,
            U2 = nil,
            U3 = nil,
            U4 = nil,
            U5 = nil,
            U6 = nil
        }

    }
    local json = HttpService:JSONEncode(xdata)
    writefile(savefilename, json)
    sex()
end


------// Auto Farm \\------
coroutine.resume(coroutine.create(function()
    while wait() do
        local _wave = game:GetService("Workspace"):WaitForChild("_wave_num")
        
        if getgenv().AutoFarm and not getgenv().disableatuofarm then
            if game.PlaceId ~= 8304191830 then

                for i = 1, 6 do
                    local unitinfo = getgenv().SelectedUnits["U" .. i]
                    if unitinfo ~= nil then

                        local unitinfo_ = unitinfo:split(" #")
                        local pos = getgenv().SpawnUnitPos["UP" .. i]
                        local args = {
                            [1] = unitinfo_[2],
                            [2] = CFrame.new(Vector3.new(pos["x"], pos["y"], pos["z"]), Vector3.new(0, 0, -1))
                        }

                        game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args))

                    end
                end
            end
        end
    end
end))

------// Auto Place Underneath 1\\------
coroutine.resume(coroutine.create(function()
    while task.wait(0.2) do
        local _wave = game:GetService("Workspace"):WaitForChild("_wave_num")
        if getgenv().PlaceUnderneath1 and not getgenv().disableatuofarm then
            if game.PlaceId ~= 8304191830 then
                for _,v in pairs(game:GetService("Workspace")["_UNITS"]:GetChildren()) do
                for i = 1, 6 do
                    local unitinfo = getgenv().SelectedUnits["U1"]
                    if unitinfo ~= nil then
                    local unitinfo_ = unitinfo:split(" #")
                    game:GetService("Workspace")["_UNITS"]:WaitForChild(Underneath1)
                    if v.Name == Underneath1 and v["_stats"].player.Value == game.Players.LocalPlayer
                    then
                        game:GetService("Workspace")["_UNITS"]:WaitForChild(Underneath1)
                        local args = {
                            [1] = unitinfo_[2],
                            [2] = v.HumanoidRootPart.CFrame * CFrame.new(0,-DisctandUnder,0)
                        }

                        game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args))
                    end 
                    
                end
            end
        end
    end
end
end
end))

------// Auto Place Underneath 2\\------
coroutine.resume(coroutine.create(function()
    while task.wait(0.2) do
        local _wave = game:GetService("Workspace"):WaitForChild("_wave_num")
        if getgenv().PlaceUnderneath2 and not getgenv().disableatuofarm then
            for _,v in pairs(game:GetService("Workspace")["_UNITS"]:GetChildren()) do
            if game.PlaceId ~= 8304191830 then
                for i = 1, 6 do
                    local unitinfo = getgenv().SelectedUnits["U2"]
                    if unitinfo ~= nil then
                    local unitinfo_ = unitinfo:split(" #")
                    game:GetService("Workspace")["_UNITS"]:WaitForChild(Underneath2)
                    if v.Name == Underneath2 and v["_stats"].player.Value == game.Players.LocalPlayer
                    then
                        game:GetService("Workspace")["_UNITS"]:WaitForChild(Underneath2)
                        local args = {
                            [1] = unitinfo_[2],
                            [2] = v.HumanoidRootPart.CFrame * CFrame.new(0,-DisctandUnder,0)
                        }

                        game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args))
                    end 
                    
                end
            end
        end
    end
end
end
end))

------// Auto Place Underneath 3\\------
coroutine.resume(coroutine.create(function()
    while task.wait(0.2) do
        local _wave = game:GetService("Workspace"):WaitForChild("_wave_num")
        if getgenv().PlaceUnderneath3 and not getgenv().disableatuofarm then
            for _,v in pairs(game:GetService("Workspace")["_UNITS"]:GetChildren()) do
            if game.PlaceId ~= 8304191830 then
                for i = 1, 6 do
                    local unitinfo = getgenv().SelectedUnits["U3"]
                    if unitinfo ~= nil then
                    local unitinfo_ = unitinfo:split(" #")
                    game:GetService("Workspace")["_UNITS"]:WaitForChild(Underneath3)
                    if v.Name == Underneath3 and v["_stats"].player.Value == game.Players.LocalPlayer
                    then
                        game:GetService("Workspace")["_UNITS"]:WaitForChild(Underneath3)
                        local args = {
                            [1] = unitinfo_[2],
                            [2] = v.HumanoidRootPart.CFrame * CFrame.new(0,-DisctandUnder,0)
                        }

                        game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args))
                    end 
                    
                end
            end
        end
    end
end
end
end))

------// Auto Place Underneath 4\\------
coroutine.resume(coroutine.create(function()
    while task.wait(0.2) do
        local _wave = game:GetService("Workspace"):WaitForChild("_wave_num")
        if getgenv().PlaceUnderneath4 and not getgenv().disableatuofarm then
            for _,v in pairs(game:GetService("Workspace")["_UNITS"]:GetChildren()) do
            if game.PlaceId ~= 8304191830 then
                for i = 1, 6 do
                    local unitinfo = getgenv().SelectedUnits["U4"]
                    if unitinfo ~= nil then
                    local unitinfo_ = unitinfo:split(" #")
                    game:GetService("Workspace")["_UNITS"]:WaitForChild(Underneath4)
                    if v.Name == Underneath4 and v["_stats"].player.Value == game.Players.LocalPlayer
                    then
                        game:GetService("Workspace")["_UNITS"]:WaitForChild(Underneath4)
                        local args = {
                            [1] = unitinfo_[2],
                            [2] = v.HumanoidRootPart.CFrame * CFrame.new(0,-DisctandUnder,0)
                        }

                        game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args))
                    end 
                    
                end
            end
        end
    end
end
end
end))

------// Auto Place Underneath 5\\------
coroutine.resume(coroutine.create(function()
    while task.wait(0.2) do
        local _wave = game:GetService("Workspace"):WaitForChild("_wave_num")
        if getgenv().PlaceUnderneath5 and not getgenv().disableatuofarm then
            for _,v in pairs(game:GetService("Workspace")["_UNITS"]:GetChildren()) do
            if game.PlaceId ~= 8304191830 then
                for i = 1, 6 do
                    local unitinfo = getgenv().SelectedUnits["U5"]
                    if unitinfo ~= nil then
                    local unitinfo_ = unitinfo:split(" #")
                    game:GetService("Workspace")["_UNITS"]:WaitForChild(Underneath5)
                    if v.Name == Underneath5 and v["_stats"].player.Value == game.Players.LocalPlayer
                    then
                        game:GetService("Workspace")["_UNITS"]:WaitForChild(Underneath5)
                        local args = {
                            [1] = unitinfo_[2],
                            [2] = v.HumanoidRootPart.CFrame * CFrame.new(0,-DisctandUnder,0)
                        }

                        game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args))
                    end 
                    
                end
            end
        end
    end
end
end
end))

------// Auto Place Underneath 6\\------
coroutine.resume(coroutine.create(function()
    while task.wait(0.2) do
        local _wave = game:GetService("Workspace"):WaitForChild("_wave_num")
        if getgenv().PlaceUnderneath6 and not getgenv().disableatuofarm then
            for _,v in pairs(game:GetService("Workspace")["_UNITS"]:GetChildren()) do
            if game.PlaceId ~= 8304191830 then
                for i = 1, 6 do
                    local unitinfo = getgenv().SelectedUnits["U6"]
                    if unitinfo ~= nil then
                    local unitinfo_ = unitinfo:split(" #")
                    game:GetService("Workspace")["_UNITS"]:WaitForChild(Underneath6)
                    if v.Name == Underneath6 and v["_stats"].player.Value == game.Players.LocalPlayer
                    then
                        game:GetService("Workspace")["_UNITS"]:WaitForChild(Underneath6)
                        local args = {
                            [1] = unitinfo_[2],
                            [2] = v.HumanoidRootPart.CFrame * CFrame.new(0,-DisctandUnder,0)
                        }

                        game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args))
                    end 
                    
                end
            end
        end
    end
end
end
end))

------// Auto Leave \\------
coroutine.resume(coroutine.create(function()
    while task.wait(2) do
        if getgenv().AutoFarm then
            if  game.PlaceId ~= 8304191830 then

                function afc()
                    game.Players.LocalPlayer.PlayerGui.ResultsUI.Enabled = false
                    task.wait(1.5)

                    local VirtualInputManager = game:GetService("VirtualInputManager")
                    local X, Y = 0, 0
                    VirtualInputManager:SendMouseButtonEvent(X, Y, 0, true, game, 1)
                    VirtualInputManager:SendMouseButtonEvent(X, Y, 0, false, game, 1)
                    

                    if game:GetService("Workspace")["_DATA"].GameFinished.Value == true then
                        webhook()
                        task.wait(2)
                    warn("Teleporting Back To Lobby....")
                    game:GetService("ReplicatedStorage").endpoints.client_to_server.teleport_back_to_lobby:InvokeServer()
                    task.wait(15)
                    end
                end

                function clicknext()
                    if game.Players.LocalPlayer.PlayerGui.ResultsUI.Enabled == true then
                        for i,v in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.ResultsUI.Holder.Buttons.Next.Activated)) do
                            v:Fire()
                        end
                    end
                end


                if game.Players.LocalPlayer.PlayerGui.ResultsUI.Enabled == true then
                    spawn(function()
                        clicknext()
                    end)
                    spawn(function()
                        afc()
                    end)
                end
            end
        end
    end
end))

------// Auto Upgrade \\------
coroutine.resume(coroutine.create(function()
    while wait() do
        if getgenv().autoupgrade then
            if game.PlaceId ~= 8304191830 then
                local max = 10
                repeat task.wait() until game:GetService("Workspace"):FindFirstChild("_UNITS")
                for i, v in ipairs(game:GetService("Workspace")["_UNITS"]:GetChildren()) do
                    repeat task.wait() until v:FindFirstChild("_stats")
                    if tostring(v["_stats"].player.Value) == game.Players.LocalPlayer.Name then
                        repeat task.wait() until v:FindFirstChild("_stats"):FindFirstChild("upgrade")

                        if v["_stats"].upgrade.Value == 0 or v["_stats"].upgrade.Value <= max then
                            game:GetService("ReplicatedStorage").endpoints.client_to_server.upgrade_unit_ingame:InvokeServer(
                                v)
                            --print(max, v["_stats"].upgrade.Value)
                        end
                    end
                end
            end
        end
    end
end))


------// Auto Sell \\------
coroutine.resume(coroutine.create(function()
    while task.wait() do
        local _wave = game:GetService("Workspace"):WaitForChild("_wave_num")
        if getgenv().autosell and tonumber(getgenv().sellatwave) <= _wave.Value then
            getgenv().disableatuofarm = true
            if game.PlaceId ~= 8304191830 then
                repeat task.wait() until game:GetService("Workspace"):FindFirstChild("_UNITS")
                for i, v in ipairs(game:GetService("Workspace")["_UNITS"]:GetChildren()) do
                    repeat
                        task.wait()
                    until v:FindFirstChild("_stats")
                    if tostring(v["_stats"].player.Value) == game.Players.LocalPlayer.Name then
                        repeat
                            task.wait()
                        until v:FindFirstChild("_stats"):FindFirstChild("upgrade")
            
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.sell_unit_ingame:InvokeServer(v)
                    end
                end
            end
        end
    end
end))

------// Auto Start \\------
coroutine.resume(coroutine.create(function()
    while task.wait() do
        if getgenv().autostart and getgenv().AutoFarm then
            if game.PlaceId == 8304191830 then
                for i, v in pairs(game:GetService("Workspace")["_LOBBIES"].Story:GetDescendants()) do
                    if v.Name == "Owner" and v.Value == nil then
                        getgenv().door = v.Parent.Name
                        break
                    end
                end

                task.wait(0.1)

                local args = {
                    [1] = getgenv().door
                }
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_join_lobby:InvokeServer(unpack(
                    args))

                    task.wait(0.1)

                local args = {
                    [1] = getgenv().door, -- Lobby 
                    [2] = getgenv().level, -- World
                    [3] = true, -- Friends Only or not
                    [4] = getgenv().difficulty
                }
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_lock_level:InvokeServer(unpack(
                    args))

                    task.wait(0.1)

                local args = {
                    [1] = getgenv().door
                }

                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(unpack(
                    args))

            end
        end
    end
end))


 ------// Auto Start CO-OP \\------
coroutine.resume(coroutine.create(function()
    while task.wait() do
   if getgenv().AutoStartCoop then
      if game.PlaceId == 8304191830 then
game:GetService("Workspace"):WaitForChild(getgenv().PlayerNameForPlay)
game:GetService("Workspace")[getgenv().PlayerNameForPlay]:WaitForChild("HumanoidRootPart")
for i, v in pairs(game:GetService("Workspace")["_LOBBIES"].Story:GetDescendants()) do
                    if v.Name == "Value" and tostring(v.Value) == getgenv().PlayerNameForPlay then
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(v.Parent.Parent.Name)
                end
                    
                    if v.Name == "Owner" and tostring(v.Value) == game.Players.LocalPlayer.Name then 
                        return;
                    elseif v.Name == "Owner" and v.Value == nil then
                        getgenv().doorcoop = v.Parent.Name
                        break
                    end
                end

                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_join_lobby:InvokeServer(getgenv().doorcoop)
                
                local args = {
                    [1] = getgenv().doorcoop, -- Lobby 
                    [2] = getgenv().levelcoop, -- World
                    [3] = true, -- Friends Only or not
                    [4] = getgenv().difficultycoop
                }
                 game:GetService("ReplicatedStorage").endpoints.client_to_server.request_lock_level:InvokeServer(unpack(args))
                 
end
   end 
        
    end
end))

 ------// Auto Start 2 \\------
 coroutine.resume(coroutine.create(function()
while task.wait() do
   if getgenv().autostart then
      if game.PlaceId == 8304191830 then
for i, v in pairs(game:GetService("Workspace")["_LOBBIES"].Story:GetDescendants()) do
                    if v.Name == "Owner" and tostring(v.Value) == game.Players.LocalPlayer.Name then
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(v.Parent.Name)
                    end
end 
end
end
end
end))

 ------// Auto Start CO-OP 2 \\------
 coroutine.resume(coroutine.create(function()
while task.wait() do
   if getgenv().AutoStartCoop then
      if game.PlaceId == 8304191830 then
for i, v in pairs(game:GetService("Workspace")["_LOBBIES"].Story:GetDescendants()) do
                    if v.Name == "Value" and tostring(v.Value) == getgenv().PlayerNameForPlay then
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(v.Parent.Parent.Name)
                    end
end 
end
end
end
end))


 ------// Auto Join Host \\------
 coroutine.resume(coroutine.create(function()
while task.wait() do
    if getgenv().autojoinhost then 
        if game.PlaceId == 8304191830 then
for _,Join in pairs(game:GetService("Workspace")["_LOBBIES"].Story:GetDescendants()) do
    if Join.Name == "Owner" and tostring(Join.Value) == getgenv().HostName then
game:GetService("ReplicatedStorage").endpoints.client_to_server.request_join_lobby:InvokeServer(Join.Parent.Name)
end 
end
end 
end
end 
end))

 ------// Hop Join Host \\------
 coroutine.resume(coroutine.create(function()
     while wait(0.25) do
     if getgenv().hopserverifnotfindhost then 
game:GetService("Workspace"):WaitForChild(game.Players.LocalPlayer.Name):WaitForChild("HumanoidRootPart")
repeat wait() until not game:GetService("Workspace"):FindFirstChild(getgenv().HostName)
if game.JobId ~= getgenv().Idserver and not game:GetService("Workspace"):FindFirstChild(getgenv().HostName) then
    repeat wait()
        game:GetService("TeleportService"):TeleportToPlaceInstance(8304191830,getgenv().Idserver)
        until game:GetService("Workspace"):FindFirstChild(getgenv().HostName)
     end 
 end
     end 
end ))


------// Hop Join Player \\------
 coroutine.resume(coroutine.create(function()
     while wait(0.25) do
     if getgenv().hopserverifnotfindplayer then 
game:GetService("Workspace"):WaitForChild(game.Players.LocalPlayer.Name):WaitForChild("HumanoidRootPart")
repeat wait() until not game:GetService("Workspace"):FindFirstChild(getgenv().PlayerNameForPlay)
if game.JobId ~= getgenv().Idserver and not game:GetService("Workspace"):FindFirstChild(getgenv().PlayerNameForPlay) then
    repeat wait()
        game:GetService("TeleportService"):TeleportToPlaceInstance(8304191830,getgenv().Idserver)
        until game:GetService("Workspace"):FindFirstChild(getgenv().PlayerNameForPlay)
     end 
 end
     end 
end ))
