local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Iliankytb/Iliankytb/main/Zentrix"))()
local V = "V.0.52"
local selectedTheme = "Default"

library:CreateWindow({
	Title = "Bite by night by Iliankytb",-- Title of the script
	Theme = selectedTheme,--View more theme in my discord server!
	Icon = 0,-- 0 = no icon or add number
	Intro = false,-- Intro or no
	IntroTitle = "BBN by Iliankytb",--the intro title
	KeyPC = Enum.KeyCode.K,--the key for pc to Open/close the frame
	CustomSize = UDim2.new(0, 600, 0, 500), -- You can custom size but only for pc(for the moment lol!)
	Data = {
		EnableSavingData = true,--Enabling data saver or no
		DisableNotifyingLoadedData = false,--set it to true for disable the notify when loaded data
		FolderName = "SaverBBN",--Folder Name,you can change it
		FileName = "Iliankytb",-- File name for the data saver,you can change it
	},
	Discord = {
		Enabled = true,--enable to copy the discord
		DiscordLink = "https://discord.gg/E2TqYRsRP4",-- put the entire Link of discord
		RememberJoin = true,-- Set this to false to make them copy the link every time they load the script
		Duration = 10,-- 5 is the default you can change the number only for remember join
	},
	Notifications = {
		NoSound = false, -- only booleen
	CustomSound = false,-- only booleen true or false, false = the default true = the CustomSoundId
		CustomSoundId = "rbxassetid://106553517979212",	--Only Roblox Sound public
	},
	KeySystem = false,--Key System or no
	KeySettings = {
		Title = "Zentrix Library Testing Key System",--Title of the key or script
		Note = "the key is Zentrix",-- The method for obtaining
		FileName = "Key",-- File name or no for saving the key
		SaveKey = true,-- saving the key or no
		GrabKeyFromSite = false,--is in early access and it may not work
		Key = {"Zentrix"},-- the name you can add many name, Exemple "Key","Key2" or you can add a function to add key but i don't really know
		Url = "",-- the url idk
		AddGetKeyButton = false,
		AddDiscordButton = true,
		DiscordLink = "NoInviteLink",
		GetKeyLink = "NoKeyLink",
	},
}, function(window)
local InfoTab = window:CreateTab("Info",0)-- Tabs , 0 = no icon or add number
local MainTab = window:CreateTab("Main",0)-- Tabs , 0 = no icon or add number
local PlayerTab = window:CreateTab("Player",0)-- Tabs , 0 = no icon or add number
local EspTab = window:CreateTab("Esp",0)-- Tabs , 0 = no icon or add number
local DiscordTab = window:CreateTab("Discord",0)-- Tabs , 0 = no icon or add number
local SettingsTab = window:CreateTab("Settings",0)-- Tabs , 0 = no icon or add number
local ParagraphInfoServer = InfoTab:AddParagraph({Title = "",Content = "Loading",Name = "Paragraph1"})
local MarketplaceService = game:GetService("MarketplaceService")
local infoGameName = MarketplaceService:GetProductInfo(game.PlaceId)
local ActiveNoCooldownPrompt,ActiveDistanceEsp,ActiveBigPrompt,DisableLimitRangerEsp = false,false,false,false
local LimitRangerEsp = 100
local ValueRunSpeed = 24
local ActiveSpeedBoost = false
local ValueWalkSpeed = 15
local ActiveSpeedBoost2 = false
local ActiveEspKillers = false
local ActiveEspSurvivors = false
local ActiveEspGen = false
local AutoEscape = false
local AutoGen = false
local ActiveEspFuseBoxes = false
local FighterAutoParry = false
local ActiveEspBattery = false
local AutoBarricade = false
local AutoSafeSpot = false
local HitboxExpender = false
local ValueHE = 15
local ActiveEspBattery = false
local ActiveEspTraps = false
local ActiveEspWireEyes = false
local AutoShakeWireEyes = false
local ActiveInfiniteStamina = false
local CanShake = true
local NoBlindness = false
local CanGenerator = true
local ShakeTime = 0.5
local SizeBoxBarricade = 0.3
local InvisibilityKiller = false
local ActiveNoclip = false
local ActivateFly = false
local AutoFarm = false
local CanGo = true
local UserInputService = game:GetService("UserInputService")
local ActivateJumping = false
local JumpPowerValue = 50
local State = "Idle" 
local TimeForGenerator = 1.25
local AutoHighlightKillerCamera = false
local AutoPhase = false

local Version = InfoTab:AddText({
        Text = "Version:"..V,
        Name = "VersionScript"
    })
    --notif--
	local Notif = window:Notify({
		Title = "Script Version",
		Message = V,
		Duration = 7.5,
		UseSound = true,
	})

local IYMouse = game.Players.LocalPlayer:GetMouse()
local FLYING = false
local QEfly = true
local iyflyspeed = 1
local vehicleflyspeed = 1

local function sFLY(vfly)
	repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat wait() until IYMouse
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.CFrame = T.CFrame
		BV.Velocity = Vector3.new(0, 0, 0)
		BV.MaxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat wait()
				if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.Velocity = Vector3.new(0, 0, 0)
				end
				BG.CFrame = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = IYMouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = IYMouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
end

local function NOFLY()
	FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

local velocityHandlerName = "BodyVelocity"
local gyroHandlerName = "BodyGyro"
local mfly1
local mfly2

local function UnMobileFly()
	pcall(function()
		FLYING = false
		local root = Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
		root:FindFirstChild(velocityHandlerName):Destroy()
		root:FindFirstChild(gyroHandlerName):Destroy()
		Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = false
		mfly1:Disconnect()
		mfly2:Disconnect()
	end)
end

local function MobileFly()
	UnMobileFly()
	FLYING = true

	local root = Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
	local camera = workspace.CurrentCamera
	local v3none = Vector3.new()
	local v3zero = Vector3.new(0, 0, 0)
	local v3inf = Vector3.new(9e9, 9e9, 9e9)

	local controlModule = require(Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
	local bv = Instance.new("BodyVelocity")
	bv.Name = velocityHandlerName
	bv.Parent = root
	bv.MaxForce = v3zero
	bv.Velocity = v3zero

	local bg = Instance.new("BodyGyro")
	bg.Name = gyroHandlerName
	bg.Parent = root
	bg.MaxTorque = v3inf
	bg.P = 1000
	bg.D = 50

	mfly1 = Players.LocalPlayer.CharacterAdded:Connect(function()
		local bv = Instance.new("BodyVelocity")
		bv.Name = velocityHandlerName
		bv.Parent = root
		bv.MaxForce = v3zero
		bv.Velocity = v3zero

		local bg = Instance.new("BodyGyro")
		bg.Name = gyroHandlerName
		bg.Parent = root
		bg.MaxTorque = v3inf
		bg.P = 1000
		bg.D = 50
	end)

	mfly2 = RunService.RenderStepped:Connect(function()
		root = Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
		camera = workspace.CurrentCamera
		if Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") and root and root:FindFirstChild(velocityHandlerName) and root:FindFirstChild(gyroHandlerName) then
			local humanoid = Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
			local VelocityHandler = root:FindFirstChild(velocityHandlerName)
			local GyroHandler = root:FindFirstChild(gyroHandlerName)

			VelocityHandler.MaxForce = v3inf
			GyroHandler.MaxTorque = v3inf
			humanoid.PlatformStand = true
			GyroHandler.CFrame = camera.CoordinateFrame
			VelocityHandler.Velocity = v3none

			local direction = controlModule:GetMoveVector()
			if direction.X > 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector * (direction.X * ((iyflyspeed) * 50))
			end
			if direction.X < 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector * (direction.X * ((iyflyspeed) * 50))
			end
			if direction.Z > 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector * (direction.Z * ((iyflyspeed) * 50))
			end
			if direction.Z < 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector * (direction.Z * ((iyflyspeed) * 50))
			end
		end
	end)
end

local function doShake(wireyesUI)
    task.spawn(function()
        local wireyesClient = wireyesUI:WaitForChild("WireyesClient")
        if  wireyesClient then
        local remote = wireyesClient:WaitForChild("WireyesEvent")
      if remote then
CanShake = false
task.spawn(function() 
task.wait(ShakeTime)
CanShake = true
end)
        pcall(function() remote:FireServer("Shaking") end)
        task.wait(0.05)
        pcall(function() remote:FireServer("TakeOff", workspace:GetServerTimeNow()) end)
end
end
    end)
end

local function getCheckParts(maskClient)
    local module = maskClient:FindFirstChild("CheckParts")
    if not module then return nil end
    local ok, result = pcall(require, module)
    if not ok or type(result) ~= "table" then return nil end
    return result
end

local function getPhaseables(checkParts)
    local other = workspace.MAPS
        and workspace.MAPS:FindFirstChild("GAME MAP")
        and workspace.MAPS["GAME MAP"]:FindFirstChild("Other")
    if not other then return nil end

    local hrp =  game.Players.LocalPlayer.Character and    game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return nil end

    local nearest, nearestDist = nil, math.huge
    for _, part in next, other:GetDescendants() do
        if part:IsA("BasePart") then
            local lower = part.Name:lower()
            for _, v in next, checkParts do
                if type(v) == "string" and lower:find(v:lower(), nil, true) then
                    local dist = (part.Position - hrp.Position).Magnitude
                    if dist < nearestDist then
                        nearestDist = dist
                        nearest = part
                    end
                    break
                end
            end
        end
    end
    return nearest, nearestDist
end

local function getLungeFunc(maskClient)
    local activeLunge = maskClient:FindFirstChild("ActiveLunge")
    if not activeLunge then return nil end
    for _, conn in next, getconnections(activeLunge.OnClientEvent) do
        return conn.Function
    end
end

local function getServerInfo()
    local Players = game:GetService("Players")
    local playerCount = #Players:GetPlayers()
local maxPlayers = game:GetService("Players").MaxPlayers
local isStudio = game:GetService("RunService"):IsStudio()

    return {
        PlaceId = game.PlaceId,
        JobId = game.JobId,
        IsStudio = isStudio,
        CurrentPlayers = playerCount,
MaxPlayers =maxPlayers
    }
end
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local ESPs = {}
local Camera = nil
local LineESPEnabled = false 
local SavedCFrame = nil

task.spawn(function()
Camera = workspace.CurrentCamera
end)
local Teleported = false

local function getNewestDot()
    local newest = nil
    local newestTime = -math.huge
    for _, child in ipairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
        if child.Name == "Dot" then
            newest = child
        end
    end
    return newest
end

local function CreateEsp(Char, Color, Text, Parent)
    if not Char or not Parent then return end
    if Char:FindFirstChild("ESP") and Char:FindFirstChildOfClass("Highlight") then return end

    
    local highlight = Char:FindFirstChildOfClass("Highlight") or Instance.new("Highlight")
    highlight.Name = "ESP_Highlight"
    highlight.Adornee = Char
    highlight.FillColor = Color
    highlight.FillTransparency = 1
    highlight.OutlineColor = Color
    highlight.OutlineTransparency = 0
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Enabled = false
    highlight.Parent = Char

    
    local billboard = Char:FindFirstChild("ESP") or Instance.new("BillboardGui")
    billboard.Name = "ESP"
    billboard.Size = UDim2.new(10, 0, 2.5, 0)
    billboard.AlwaysOnTop = true
    billboard.StudsOffset = Vector3.new(0, -2, 0)
    billboard.Adornee = Parent
    billboard.Enabled = false
    billboard.Parent = Parent

    local label = billboard:FindFirstChildOfClass("TextLabel") or Instance.new("TextLabel")
    label.Size = UDim2.new(1, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = Text
    label.TextColor3 = Color
    label.TextScaled = true
    label.Parent = billboard

    local line = Drawing.new("Line")
    line.Visible = false
    line.Color = Color
    line.Thickness = 1.5
    line.Transparency = 1

    table.insert(ESPs, {
        Char = Char,
        Highlight = highlight,
        Billboard = billboard,
        Label = label,
        Part = Parent,
        Line = line,
        Text = Text,
        Color = Color
    })
end
local LastAction = 0
local Cooldown = 0.5
local TweenService = game:GetService("TweenService")

local SPEED = 30
local CanPhase = true

local function TweenTo(character, cf)
    local root = character:FindFirstChild("HumanoidRootPart") or character.PrimaryPart
    if not root then return end

    local distance = (root.Position - cf.Position).Magnitude
    local time = distance / SPEED

    local tween = TweenService:Create(
        root,
        TweenInfo.new(time, Enum.EasingStyle.Linear),
        {CFrame = cf}
    )

    tween:Play()
    tween.Completed:Wait()
end

RunService.RenderStepped:Connect(function()
task.spawn(function()
    local updatedInfo = getServerInfo()
    local updatedContent = string.format(
        "🎮 Game: %s\n📌 PlaceId: %s\n🔑 JobId: %s\n🧪 IsStudio: %s\n👥 Players: %d/%d",
infoGameName.Name,      
updatedInfo.PlaceId,
        updatedInfo.JobId,
        
        tostring(updatedInfo.IsStudio),
        updatedInfo.CurrentPlayers,
updatedInfo.MaxPlayers
    )

    ParagraphInfoServer:Set({
        Title = "Info",
        Content = updatedContent
    })
end)

task.spawn(function()
if Camera then
    local cameraPosition = Camera.CFrame.Position
    local screenCenter = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
    for _, esp in ipairs(ESPs) do
local char = esp.Char
        local part = esp.Part
        local highlight = esp.Highlight
        local billboard = esp.Billboard
        local label = esp.Label
        local line = esp.Line
if not part or not highlight or not billboard or not label or not line then return end
        if part and part.Parent and highlight and billboard then
            local distance = (cameraPosition - part.Position).Magnitude
            local screenPos, onScreen = Camera:WorldToViewportPoint(part.Position)
            local withinRange = DisableLimitRangerEsp or distance <= LimitRangerEsp

            highlight.Enabled = withinRange and onScreen
            billboard.Enabled = withinRange and onScreen

            if ActiveDistanceEsp then
                label.Text = esp.Text .. " (" .. math.floor(distance + 0.5) .. " m)"
            else
                label.Text = esp.Text
            end
if char:FindFirstChildOfClass("Humanoid") then
  label.Text =  label.Text.."|" .. math.floor(char:FindFirstChildOfClass("Humanoid").Health).."/"..char:FindFirstChildOfClass("Humanoid").MaxHealth.." HP"
end
            if LineESPEnabled then
                if onScreen and withinRange then
                    line.Visible = true
                    line.From = screenCenter
                    line.To = Vector2.new(screenPos.X, screenPos.Y)
                else
                    line.Visible = false
                end
            else
                line.Visible = false
            end
        else
            if line then line.Visible = false end
        end
    end
else
task.spawn(function()
if workspace:FindFirstChild("CurrentCamera") then
Camera = workspace.CurrentCamera
end
end)
end
end)
 if game.Players.LocalPlayer.Character then
     if AutoBarricade then
     local dot = getNewestDot()
    if  dot then 
    local container = dot:FindFirstChild("Container")
    if  container then
    local frame = container:FindFirstChild("Frame")
    local box = container:FindFirstChild("Box")
    if frame and  box then 

    local boxAbs = box.AbsolutePosition
    local boxSize = box.AbsoluteSize
    local conAbs = container.AbsolutePosition

    frame.Position = UDim2.new(
        0, (boxAbs.X + boxSize.X * 0.5) - conAbs.X,
        0, (boxAbs.Y + boxSize.Y * 0.5) - conAbs.Y
    )
box.Size = UDim2.new(SizeBoxBarricade,0,SizeBoxBarricade,0)
end
end
end
     end
if ActiveInfiniteStamina then
 local mx = game.Players.LocalPlayer.Character:GetAttribute("MaxStamina") or 100
        if (game.Players.LocalPlayer.Character:GetAttribute("Stamina") or mx) < mx then
            game.Players.LocalPlayer.Character:SetAttribute("Stamina", mx)
        end
end
if AutoShakeWireEyes and CanShake then
local existing = game.Players.LocalPlayer.PlayerGui:FindFirstChild("WireyesUI")
if existing then
    doShake(existing)
end
end
if NoBlindness then
if game:GetService("ReplicatedStorage").Modules.BlindnessModule:FindFirstChildOfClass("Atmosphere")  then
  game:GetService("ReplicatedStorage").Modules.BlindnessModule:FindFirstChildOfClass("Atmosphere"):Destroy()
end
end
if AutoFarm then
    task.spawn(function()
        local Character = game.Players.LocalPlayer.Character
      if tick() - LastAction >= Cooldown then
if Character and Character.PrimaryPart and Character.Parent == workspace.PLAYERS.ALIVE then
        if CanGo then
if not LocalPlayer.PlayerGui:FindFirstChild("Gen") then
            if not Character:FindFirstChild("Battery")  then
                for _, child in pairs(workspace.IGNORE:GetChildren()) do
                    if child.Name == "Battery" and child:IsA("BasePart") then
                        
                        local attachment = child:FindFirstChild("Attachment")
                        local prompt = attachment and attachment:FindFirstChildOfClass("ProximityPrompt")

                        if prompt then
                            CanGo = false
                            State = "Battery"
                            LastAction = tick()

                          TweenTo(Character, child.CFrame)

                           
                                task.wait(0.1)
                                fireproximityprompt(prompt)
 task.spawn(function()
                                task.wait(prompt.HoldDuration + 0.25)
                                CanGo = true
                                State = "Idle"
                            end)

                            break
                        end
                    end
                end
else
            if CanGo then
                local map = workspace.MAPS:FindFirstChild("GAME MAP")
                if map and not LocalPlayer.PlayerGui:FindFirstChild("Gen") then
                    local fuseFolder = map:FindFirstChild("FuseBoxes")
                    if fuseFolder then
                        for _, fuse in pairs(fuseFolder:GetChildren()) do
                            if fuse:IsA("Model") then
                                
                                local root = fuse:FindFirstChild("HumanoidRootPart")
                                local pos = fuse:FindFirstChild("Position")

                                if root and pos then
                                    local attachment = root:FindFirstChildOfClass("Attachment")
                                    local prompt = attachment and attachment:FindFirstChildOfClass("ProximityPrompt")

                                    if prompt and prompt.Enabled then
                                        CanGo = false
                                        State = "Fuse"
                                        LastAction = tick()

                                      TweenTo(Character, pos.CFrame + Vector3.new(0,2.5,0))

                                           task.wait(0.5)
                                            fireproximityprompt(prompt)
   task.spawn(function()
                                        
                                            task.wait(prompt.HoldDuration + 0.25)
                                            CanGo = true
                                            State = "Idle"
                                        end)

                                        break
                                    end
                                end
                            end
                        end
                    end
                end
            end
            end
end
            if CanGo and workspace.GAME.Tasks.Gens.Enabled.Value then
                local gens = workspace.MAPS["GAME MAP"]:FindFirstChild("Generators")
                if gens and not LocalPlayer.PlayerGui:FindFirstChild("Gen") then
                    for _, gen in pairs(gens:GetChildren()) do
                        if gen.Name == "Generator" and gen:GetAttribute("Progress") < 100 then
                            local root = gen:FindFirstChild("RootPart")
                            if root then
                                for _, atch in ipairs(root:GetChildren()) do
                                    if atch:IsA("Attachment") then
                                        
                                        local prompt = atch:FindFirstChildOfClass("ProximityPrompt")
                                        if prompt and prompt.Enabled then
                                            
                                            local point = gen:FindFirstChild(atch.Name)
                                            if point then
                                                CanGo = false
                                                State = "Gen"
                                                LastAction = tick()

                                               TweenTo(Character, point.CFrame)

                                               task.wait(1)
                                                    fireproximityprompt(prompt)
    task.spawn(function()
                                                 
                                                    task.wait(prompt.HoldDuration + 0.75)
                                                    CanGo = true
                                                    State = "Idle"
                                                end)

                                                break
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        if not CanGo then break end
                    end
                end
            end

            if CanGo and workspace.GAME.CAN_ESCAPE.Value then
                local escapes = workspace.MAPS["GAME MAP"]:FindFirstChild("Escapes")
                if escapes then
                    for _, part in pairs(escapes:GetChildren()) do
                        if part:IsA("BasePart") and part:GetAttribute("Enabled") then
                            
                            CanGo = false
                            State = "Escape"
                            LastAction = tick()

                         TweenTo(Character, part.CFrame)

                            task.spawn(function()
                                task.wait(1)
                                CanGo = true
                                State = "Idle"
                            end)

                            break
                        end
                    end
                end
            end
        end
        end
        end
    end)
end
if ActivateJumping then
local Character = game:GetService("Players").LocalPlayer.Character
if Character and Character:FindFirstChildOfClass("Humanoid") then
local HUMM =  Character:FindFirstChildOfClass("Humanoid")
if HUMM then
HUMM.UseJumpPower = ActivateJumping
HUMM.JumpPower = JumpPowerValue
end
end
end
if AutoPhase and CanPhase then
local maskClient =  game.Players.LocalPlayer.Character:FindFirstChild("MaskClient")
if maskClient then
            local lungeFunc =  getLungeFunc(maskClient)
            local checkParts = getCheckParts(maskClient)

            if lungeFunc and checkParts then
                local nearest, nearestDist = getPhaseables(checkParts)

             
                if nearest and nearestDist <= 10 then
CanPhase = false
                    lungeFunc()
task.wait(0.3)
CanPhase = true
                end
end
            end
end
     if AutoSafeSpot and not AutoFarm then
          if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health > 35 then
         SavedCFrame = game.Players.LocalPlayer.Character.PrimaryPart.CFrame
          end
     if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health <= 35 then
     game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(0,500,0)
     end
     end
    if ActiveSpeedBoost then
    game.Players.LocalPlayer.Character:SetAttribute("RunSpeed",ValueRunSpeed)
    end
     if ActiveSpeedBoost2 then
    game.Players.LocalPlayer.Character:SetAttribute("WalkSpeed",ValueWalkSpeed)
    end
    if AutoEscape and not Teleported and workspace.GAME.CAN_ESCAPE.Value == true and not AutoFarm then
        if workspace.MAPS:FindFirstChild("GAME MAP") then
            if game.Players.LocalPlayer.Character.Parent == workspace.PLAYERS.ALIVE then
         for _, Part in pairs(workspace.MAPS:FindFirstChild("GAME MAP"):FindFirstChild("Escapes"):GetChildren()) do
             if Part and Part:IsA("BasePart") and Part:GetAttribute("Enabled") and Part:FindFirstChildOfClass("Highlight") and Part:FindFirstChildOfClass("Highlight").Enabled then
          if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
           Teleported = true
           game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Anchored = true
               game.Players.LocalPlayer.Character.PrimaryPart.CFrame = Part.CFrame
               task.spawn(function()
          wait(0.15)
          game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Anchored = false
          end)
           wait(10)
            Teleported = false
             end
             end
            end
        end
    end
 end
 end
end)

local TimeAutoHighlight = 0.1

LocalPlayer.PlayerGui.ChildAdded:Connect(function(child)
if child.Name == "Camera" then
if AutoHighlightKillerCamera then
  local main = child:WaitForChild("Main")
if main then
local locateRemote = main:WaitForChild("Locate")
if locateRemote then
task.wait(TimeAutoHighlight)
        local killerFolder = workspace:WaitForChild("PLAYERS"):WaitForChild("KILLER")
        local killer = killerFolder:FindFirstChildOfClass("Model")

        if killer then
            local root = killer:FindFirstChild("HumanoidRootPart")
            if root then
                locateRemote:FireServer(killer)
            end
        end
end
end
end
end
    if  child.Name == "Gen" then
if AutoGen and not AutoFarm  then
task.wait(TimeForGenerator)
if child and child:FindFirstChild("GeneratorMain") then
   child.GeneratorMain.Event:FireServer({
        Wires = true,
        Switches = true,
        Lever = true
    })
end
     end
if AutoFarm then
task.wait(TimeForGenerator)
  if child and child:FindFirstChild("GeneratorMain") then
   child.GeneratorMain.Event:FireServer({
        Wires = true,
        Switches = true,
        Lever = true
    })
end
end
    end
end)

local CollectionService = game:GetService("CollectionService")
local Players = game:GetService("Players")
local AntiConfusion = false

CollectionService:GetInstanceAddedSignal("Confusion"):Connect(function(instance)
if AntiConfusion then
local character = LocalPlayer.Character
    if instance == character then
        CollectionService:RemoveTag(character, "Confusion")
    end
end
end)
local function KeepEsp(Char, Parent)
    if not Char or not Char:FindFirstChildOfClass("Highlight") then return end
    if not Parent or not Parent:FindFirstChildOfClass("BillboardGui") then return end

    for i = #ESPs, 1, -1 do 
        local esp = ESPs[i]
        if esp.Char == Char then 
            if esp.Highlight then esp.Highlight:Destroy() end
            if esp.Billboard then esp.Billboard:Destroy() end
            if esp.Line then esp.Line:Destroy() end

            table.remove(ESPs, i) 
        end
    end
end
local function SetupCharacter(child,Map,Part)
	if not child:IsA("Model") then return end
	child.AncestryChanged:Connect(function(_, newParent)
			if not child:IsDescendantOf(Map) then
				KeepEsp(child, Part)
			end
	end)
end
local function copyToClipboard(text)
    if setclipboard then
        setclipboard(text)
    else
        warn("setclipboard is not supported in this environment.")
    end
end

local EspSurvivorsToggle = EspTab:AddToggle({
 Text = "Esp Survivors",
Name = "EspSurvivorsToggle",
   CurrentValue = false,
   Flag = "EspSurvivors", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  ActiveEspSurvivors = Value 
if ActiveEspSurvivors then 
for _,Players2 in pairs(game.Workspace.PLAYERS.ALIVE:GetChildren()) do 
if Players2:IsA("Model") and Players2.PrimaryPart and not Players2.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
if Players2:FindFirstChildOfClass("Highlight") then
    Players2:FindFirstChildOfClass("Highlight"):Destroy()
end

	SetupCharacter(Players2,workspace.PLAYERS.ALIVE,Players2.PrimaryPart)
CreateEsp(Players2,Color3.fromRGB(0,255,0),Players2.Name.." "..Players2:GetAttribute("Character"),Players2.PrimaryPart,2)
end
end
else 
for _,Players2 in pairs(game.Workspace.PLAYERS.ALIVE:GetChildren()) do 
if Players2:IsA("Model") and Players2.PrimaryPart and Players2:FindFirstChildOfClass("Highlight") and Players2.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
KeepEsp(Players2,Players2.PrimaryPart)
end
end 
end
end,
})

local EspKillersToggle = EspTab:AddToggle({
 Text = "Esp Killers", 
Name = "EspKillers",
   CurrentValue = false,
   Flag = "EspKiller", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  ActiveEspKillers = Value 
if ActiveEspKillers then
    for _,Players2 in pairs(game.Workspace.PLAYERS.KILLER:GetChildren()) do 
if  Players2:IsA("Model") and (Players2:FindFirstChild("RootPart") or Players2:FindFirstChild("HumanoidRootPart")) then
	if Players2:FindFirstChildOfClass("Highlight") then
    Players2:FindFirstChildOfClass("Highlight"):Destroy()
end
   local PART = Players2:FindFirstChild("RootPart") or nil
    if Players2:GetAttribute("Character") == "Ennard" then
    PART = Players2:FindFirstChild("HumanoidRootPart")
    end
    if not PART:FindFirstChildOfClass("BillboardGui") then
    SetupCharacter(Players2,workspace.PLAYERS.KILLER,PART)
CreateEsp(Players2,Color3.fromRGB(255,0,0),Players2.Name.." "..Players2:GetAttribute("Character"),PART,2)
end
end
end
else
 for _,Players2 in pairs(game.Workspace.PLAYERS.KILLER:GetChildren()) do 
if Players2:IsA("Model") and (Players2:FindFirstChild("RootPart") or Players2:FindFirstChild("HumanoidRootPart")) and Players2:FindFirstChildOfClass("Highlight") then
  local PART = Players2:FindFirstChild("RootPart") or nil
    if Players2:GetAttribute("Character") == "Ennard" then
    PART = Players2:FindFirstChild("HumanoidRootPart")
    end
    if PART:FindFirstChildOfClass("BillboardGui") then
KeepEsp(Players2,PART)
    end
end
end 
end
end,
})

local EspGenToggle = EspTab:AddToggle({
 Text = "Esp Generators", 
Name = "EspGens",
   CurrentValue = false,
   Flag = "EspGens", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  ActiveEspGen = Value 
if ActiveEspGen then
 if workspace.MAPS:FindFirstChild("GAME MAP") then
for _,Players2 in pairs(game.Workspace.MAPS["GAME MAP"].Generators:GetChildren()) do 
if  Players2:IsA("Model") and Players2.PrimaryPart and not Players2:FindFirstChildOfClass("Highlight") and not Players2.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
CreateEsp(Players2,Color3.fromRGB(255,255,0),"Generators",Players2.PrimaryPart,2)
end
end
end
else
if workspace.MAPS:FindFirstChild("GAME MAP") then
 for _,Players2 in pairs(game.Workspace.MAPS["GAME MAP"].Generators:GetChildren()) do 
if Players2:IsA("Model") and Players2.PrimaryPart and Players2:FindFirstChildOfClass("Highlight") and Players2.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
KeepEsp(Players2,Players2.PrimaryPart)
end
end
end 
end
end,
})
local EspFuseBoxesToggle = EspTab:AddToggle({
 Text = "Esp Fuse Boxes", 
Name = "EspFuseBoxes",
   CurrentValue = false,
   Flag = "EspFuseBoxes", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  ActiveEspFuseBoxes = Value 
if ActiveEspFuseBoxes then
 if workspace.MAPS:FindFirstChild("GAME MAP") and game.Workspace.MAPS["GAME MAP"]:FindFirstChild("FuseBoxes") then
for _,Players2 in pairs(game.Workspace.MAPS["GAME MAP"].FuseBoxes:GetChildren()) do 
if  Players2:IsA("Model") and Players2.PrimaryPart and not Players2.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
if  Players2:FindFirstChildOfClass("Highlight") then
    Players2:FindFirstChildOfClass("Highlight"):Destroy()
end
CreateEsp(Players2,Color3.fromRGB(0,0,255),"Fuse Boxe",Players2.PrimaryPart,2)
end
end
end
else
if workspace.MAPS:FindFirstChild("GAME MAP") and game.Workspace.MAPS["GAME MAP"]:FindFirstChild("FuseBoxes") then
 for _,Players2 in pairs(game.Workspace.MAPS["GAME MAP"].FuseBoxes:GetChildren()) do 
if Players2:IsA("Model") and Players2.PrimaryPart and Players2:FindFirstChildOfClass("Highlight") and Players2.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
KeepEsp(Players2,Players2.PrimaryPart)
end
end
end 
end
end,
})
local EspBatteryToggle = EspTab:AddToggle({
 Text = "Esp Battery", 
Name = "EspBatteryToggle",
   CurrentValue = false,
   Flag = "EspBatteryToggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  ActiveEspBattery = Value 
if ActiveEspBattery then
 for _,Players2 in pairs(game.Workspace.IGNORE:GetChildren()) do 
if  Players2:IsA("BasePart") and Players2.Name == "Battery" and not Players2:FindFirstChildOfClass("BillboardGui") then
if  Players2:FindFirstChildOfClass("Highlight") then
    Players2:FindFirstChildOfClass("Highlight"):Destroy()
end
CreateEsp(Players2,Color3.fromRGB(0,0,255),"Battery",Players2,2)
end
end
else
 for _,Players2 in pairs(game.Workspace.IGNORE:GetChildren()) do 
if Players2:IsA("BasePart") and Players2.Name == "Battery" and Players2 and Players2:FindFirstChildOfClass("Highlight") and Players2:FindFirstChildOfClass("BillboardGui") then
KeepEsp(Players2,Players2)
end
end 
end
end,
})
local EspTrapToggle = EspTab:AddToggle({
 Text = "Esp Traps", 
Name = "EspTrapToggle",
   CurrentValue = false,
   Flag = "EspTrapToggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  ActiveEspTraps = Value 
if ActiveEspTraps then
 for _,Players2 in pairs(game.Workspace.IGNORE:GetChildren()) do 
if  Players2:IsA("Model") and Players2.Name == "Trap" and not Players2.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
if  Players2:FindFirstChildOfClass("Highlight") then
    Players2:FindFirstChildOfClass("Highlight"):Destroy()
end
CreateEsp(Players2,Color3.fromRGB(255,0,0),"Trap",Players2.PrimaryPart,2)
end
end
else
 for _,Players2 in pairs(game.Workspace.IGNORE:GetChildren()) do 
if Players2:IsA("Model") and Players2.Name == "Trap" and Players2 and Players2:FindFirstChildOfClass("Highlight") and Players2.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
KeepEsp(Players2,Players2.PrimaryPart)
end
end 
end
end,
})
local EspWireEyesToggle = EspTab:AddToggle({
 Text = "Esp Wire Eyes", 
Name = "EspWireEyesToggle",
   CurrentValue = false,
   Flag = "EspWireEyesToggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  ActiveEspWireEyes = Value 
if ActiveEspWireEyes then
 for _,Players2 in pairs(game.Workspace.IGNORE:GetChildren()) do 
if  Players2:IsA("Model") and Players2.Name == "Minion" and not Players2.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
if  Players2:FindFirstChildOfClass("Highlight") then
    Players2:FindFirstChildOfClass("Highlight"):Destroy()
end
SetupCharacter(Players2,game.Workspace.IGNORE,Players2.PrimaryPart)
CreateEsp(Players2,Color3.fromRGB(255,0,0),"Wire Eyes",Players2.PrimaryPart,2)
end
end
else
 for _,Players2 in pairs(game.Workspace.IGNORE:GetChildren()) do 
if Players2:IsA("Model") and Players2.Name == "Minion" and Players2 and Players2:FindFirstChildOfClass("Highlight") and Players2.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
KeepEsp(Players2,Players2.PrimaryPart)
end
end 
end
end,
})
	local DeleteDoorsButtons = MainTab:AddButton({
 Text = "Delete Doors", 
Name = "DeleteDoorsButtons",
  Callback = function()
 if workspace.MAPS:FindFirstChild("GAME MAP") then
if game.Workspace.MAPS["GAME MAP"].Doors then 
    game.Workspace.MAPS["GAME MAP"].Doors:Destroy()
 end
 end
end,
})

	local PlayKillerCutsceneButtons = MainTab:AddButton({
 Text = "Play killer cutscene", 
Name = "PlayKillerCutsceneButtons",
  Callback = function()
local KillerModel = workspace.PLAYERS.KILLER:FindFirstChildOfClass("Model")
if KillerModel and KillerModel == game.Players.LocalPlayer.Character then
 KillerModel:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Dead)
end
end,
})
	local SkipCutsceneButton = MainTab:AddButton({
 Text = "Skip cutscene", 
Name = "SkipCutsceneButton",
  Callback = function()
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local cutsceneRigs = ReplicatedStorage
    :WaitForChild("Modules")
    :WaitForChild("Cutscenes")
    :WaitForChild("Rigs")

local rigsToRemove = {
    "IntroCam",
    "IntroCamWithLight",
    "KillCam",
    "OutroCam"
}

for _, rigName in ipairs(rigsToRemove) do
    local rig = cutsceneRigs:FindFirstChild(rigName)

    if rig then
        rig:Destroy()
    end
end
--[[
local CutsceneModule = require(ReplicatedStorage.Modules.Cutscenes)

local savedCameraRigs = {}
for name, cutscene in pairs(CutsceneModule) do
    if typeof(cutscene) == "table" and cutscene.CameraRig then
        
        local cameraName = cutscene.CameraRig.Name

        if cameraName == "IntroCam"
        or cameraName == "IntroCamWithLight"
        or cameraName == "KillCam"
        or cameraName == "OutroCam" then
            
            savedCameraRigs[name] = cutscene.CameraRig
        end
    end
end


local function updateCutscenes()
    for name, savedRig in pairs(savedCameraRigs) do
        local cutscene = CutsceneModule[name]

        if cutscene and typeof(cutscene) == "table" then
                cutscene.CameraRig = nil
        end
    end
end
updateCutscenes()]]
end,
})

local player = game.Players.LocalPlayer
local RunService = game:GetService("RunService")

local animationTrack
local steppedConnection
local cameraConnection

local function ApplyInvisibility(enabled)
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local rootPart = character:WaitForChild("HumanoidRootPart")
    local camera = workspace.CurrentCamera

    if not enabled then
        if animationTrack then
            animationTrack:Stop()
            animationTrack = nil
        end

        if steppedConnection then
            steppedConnection:Disconnect()
            steppedConnection = nil
        end

        if cameraConnection then
            cameraConnection:Disconnect()
            cameraConnection = nil
        end

        camera.CameraSubject = humanoid
if workspace.MAPS:FindFirstChild("GAME MAP") then
if game.Workspace.MAPS["GAME MAP"].Doors then 
for _, BasePart in pairs(game.Workspace.MAPS["GAME MAP"].Doors:GetDescendants()) do
if BasePart:IsA("BasePart") then
if BasePart:GetAttribute("OriginalCollision") then
BasePart.CanCollide = BasePart:GetAttribute("OriginalCollision")
end
end
end
end
end
        return
    end
if  character:GetAttribute("Team") == "Killer" then
    if character:GetAttribute("Character") ~= "Mimic" and character:GetAttribute("Character") ~= "Ennard" then
return
end
    for _, part in ipairs(character:GetDescendants()) do
        if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
            part.CanCollide = false
        end
    end
    rootPart.CanCollide = true

    camera.CameraSubject = rootPart

    cameraConnection = camera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
        if camera.CameraSubject ~= rootPart then
            camera.CameraSubject = rootPart
        end
    end)

    local animation = Instance.new("Animation")
local Id = nil
    if character:GetAttribute("Character") == "Mimic" then
Id = "rbxassetid://95483601477510"
elseif character:GetAttribute("Character") == "Ennard" then
Id = "rbxassetid://111261793531584"
else
Id = nil
return
end
 if workspace.MAPS:FindFirstChild("GAME MAP") then
if game.Workspace.MAPS["GAME MAP"].Doors then 
for _, BasePart in pairs(game.Workspace.MAPS["GAME MAP"].Doors:GetDescendants()) do
if BasePart:IsA("BasePart") and BasePart.CanCollide then
if not BasePart:GetAttribute("OriginalCollision") then
BasePart:SetAttribute("OriginalCollision",BasePart.CanCollide)
end
BasePart.CanCollide = false
end
end
end
end
    animation.AnimationId = Id

    local animator = humanoid:FindFirstChildOfClass("Animator")
        or Instance.new("Animator", humanoid)

    animationTrack = animator:LoadAnimation(animation)
    animationTrack.Priority = Enum.AnimationPriority.Action4
    animationTrack.Looped = false
    animationTrack:Play()

    task.wait(0.1)

    if animationTrack.Length > 0 then
        animationTrack.TimePosition = animationTrack.Length - 0.01
        animationTrack:AdjustSpeed(0)
    end

  
    steppedConnection = RunService.RenderStepped:Connect(function()
        if camera.CameraSubject ~= rootPart then
            camera.CameraSubject = rootPart
        end
    end)
end
end

	local ButonDiscordLink = DiscordTab:AddButton({
		Text = "Discord Link",
		Name = "Button",
		Callback = function() 	
			library:CopyText("https://discord.gg/E2TqYRsRP4")
		end
	})

	--Toggle--
	local ToggleAG = MainTab:AddToggle({
		Text = "Auto Generator",
Note = "Maybe its working now",
		Name = "ToggleAG",
		Flag = "ToggleAG",--Put a name flag for save data if you enabled saving data
		Default = false,
		Callback = function(state)
AutoGen = state
		end
	})
	--Toggle--
	local ToggleAutoHighlightKillerAsSG = MainTab:AddToggle({
		Text = "Auto Highlight Killer As Security Guard",
		Name = "ToggleAutoHighlightKillerAsSG",
		Flag = "ToggleAutoHighlightKillerAsSG",--Put a name flag for save data if you enabled saving data
		Default = false,
		Callback = function(state)
AutoHighlightKillerCamera = state
		end
	})
	--Toggle--
	local ToggleAntiConfusion = MainTab:AddToggle({
		Text = "Anti Confusion",
Note = "Work when being tased",
		Name = "ToggleAntiConfusion",
		Flag = "ToggleAntiConfusion",--Put a name flag for save data if you enabled saving data
		Default = false,
		Callback = function(state)
AntiConfusion = state
		end
	})

local TimeForAH = MainTab:AddSlider({
Text = "Time For Auto Highlight Killer As Security Guard",
   Name = "TimeForAH",
   Min = 0,
   Max = 2.5,
   Default = 0.1,
Increment = 0.1,
   Flag = "TimeForAH", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
TimeAutoHighlight = Value
end, 
})
workspace.PLAYERS.KILLER.ChildRemoved:Connect(function(child)
ApplyInvisibility(false)
end)

workspace.PLAYERS.KILLER.ChildAdded:Connect(function(child)
if InvisibilityKiller then
ApplyInvisibility(true)
end
end)
local AutoFarmToggle = MainTab:AddToggle({
Text = "Auto Farm EXPIREMENT!",
Note = "Generators,Fuse boxes and auto escape at the same time!",
   Name = "AutoFarmToggle",
   Default = false,
   Flag = "AutoFarmToggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  AutoFarm = Value
end,
})
local TimeForGeneratorSlider = MainTab:AddSlider({
Text = "Time For Generator (Work for Auto Farm and Auto Generator!)",
   Name = "TimeForGeneratorSlider",
   Min = 0.5,
   Max = 3,
   Default = 1.25,
Increment = 0.05,
   Flag = "TimeForGeneratorSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
TimeForGenerator = Value
end, 
})

	local ToggleAutoParry = MainTab:AddToggle({
		Text = "Fighter - Auto Parry",
Note = "Don't work on Xeno,JJsploit and Solara!",
		Name = "ToggleAutoParry",
		Flag = "ToggleAutoParry",--Put a name flag for save data if you enabled saving data
		Default = false,
		Callback = function(state)
FighterAutoParry = state
		end
	})
	local ToggleBarricade = MainTab:AddToggle({
		Text = "Auto Barricade",
		Name = "ToggleBarricade",
		Flag = "ToggleBarricade",--Put a name flag for save data if you enabled saving data
		Default = false,
		Callback = function(state)
AutoBarricade = state
		end
	})
local SizeBoxBarricadeSlider = MainTab:AddSlider({
Text = "Size for the box of the barricade",
   Name = "SizeBoxBarricadeSlider",
   Min = 0.3,
   Max = 1.5,
   Default = 0.3,
Increment = 0.1,
   Flag = "SizeBoxBarricadeSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
SizeBoxBarricade = Value
end, 
})
	local ToggleAutoSafeSpot = MainTab:AddToggle({
		Text = "Auto Safe spot",
Note = " when near to die",
		Name = "ToggleAutoSafeSpot",
		Flag = "ToggleAutoSafeSpot",--Put a name flag for save data if you enabled saving data
		Default = false,
		Callback = function(state)
AutoSafeSpot = state
if not AutoSafeSpot then
   game.Players.LocalPlayer.Character.PrimaryPart.CFrame = SavedCFrame
end
		end
	})
local ToggleInvisibility = MainTab:AddToggle({
		Text = "Invisible Killer",
Note = "for mimic and ennard only!",
		Name = "ToggleInvisibilityMimic",
		Flag = "ToggleInvisibilityMimic",--Put a name flag for save data if you enabled saving data
		Default = false,
		Callback = function(state)
InvisibilityKiller = state
ApplyInvisibility(state)
		end
	})

	local NoCooldownpromptToggle = MainTab:AddToggle({
Text =  "Instant Prompt",
   Name ="NoCooldownpromptToggle",
   Default = false,
   Flag = "NoCooldownPrompt1", 
   Callback = function(Value)
ActiveNoCooldownPrompt = Value 
task.spawn(function()  
if ActiveNoCooldownPrompt then
for _,Assets in pairs(Game.Workspace:GetDescendants()) do  
if Assets:isA("ProximityPrompt") then 
task.spawn(function()
if Assets.HoldDuration ~= 0.1 then
Assets:SetAttribute("HoldDurationOld",Assets.HoldDuration)
Assets.HoldDuration = 0.1
end
end)
end 
end  
else
for _,Assets in pairs(game.Workspace:GetDescendants()) do  
if Assets:isA("ProximityPrompt") then 
task.spawn(function()
if Assets:GetAttribute("HoldDurationOld") and Assets:GetAttribute("HoldDurationOld") ~= 0 then
Assets.HoldDuration = Assets:GetAttribute("HoldDurationOld")
end
end)
end 
end   
end
end)
end,
})

local function Noclip()
if ActiveNoclip then
if game.Players.LocalPlayer.Character then
for _, Parts in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if Parts:isA("BasePart") and Parts.CanCollide then
if not Parts:GetAttribute("OldCollide") then
Parts:SetAttribute("OldCollide",Parts.CanCollide)
end
Parts.CanCollide = false
end
end
end
else
if game.Players.LocalPlayer.Character then
for _, Parts in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if Parts:isA("BasePart") and Parts:GetAttribute("OldCollide") then
Parts.CanCollide = Parts:GetAttribute("OldCollide")
end
end
end
end
end

local PlayerNoclipToggle = PlayerTab:AddToggle({
    Text = "Noclip",
   Name = "PlayerNoclipToggle",
   Default = false,
   Flag = "ButtonNoclip", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  ActiveNoclip = Value 
Noclip()
end,
})

game:GetService("Players").LocalPlayer:GetPropertyChangedSignal("Character"):Connect(function()
  Noclip()
end)

local PlayerSpeedSlider = PlayerTab:AddSlider({
Text = "Run Speed",
   Name = "PlayerSpeedSlider",
   Min = 0,
   Max = 50,
   Default = 24,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
ValueRunSpeed = Value
end, 
})

local PlayerActiveModifyingSpeedToggle = PlayerTab:AddToggle({
Text = "Active Modifying Run Speed",
   Name = "PlayerActiveModifyingSpeedToggle",
   Default = false,
   Flag = "ButtonSpeed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  ActiveSpeedBoost = Value
end,
})

local PlayerFlySpeedSlider = PlayerTab:AddSlider({
    Text = "Fly Speed",
   Name = "PlayerFlySpeedSlider",
  Min = 0,
		Max = 10,
		Default = 0,
   Flag = "PlayerFlySpeedSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
iyflyspeed = Value
end, 
})

local PlayerFlyToggle = PlayerTab:AddToggle({
    Text = "Fly",
   Name = "PlayerFlyToggle",
   Default = false,
   Flag = "ButtonFly", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  ActivateFly = Value 
task.spawn(function()
if not FLYING and ActivateFly then
			if UserInputService.TouchEnabled then
				MobileFly()
			else
task.spawn(function()
if not AlrActivatedFlyPC then 
AlrActivatedFlyPC = true
	local Notif = window:Notify({
		Title = "Fly!",
		Message = "When you enable to fly you can press F to fly/unfly (it won't disable the button!)!",
		Duration = 5,
	})
end
end)
				NOFLY()
				wait()
				sFLY()
			end
		elseif FLYING and not ActivateFly then
			if UserInputService.TouchEnabled then
				UnMobileFly()
			else
				NOFLY()
			end
		end
end)
end,
})
UserInputService.InputBegan:Connect(function(input, processed)
	if processed then return end
	if input.KeyCode == Enum.KeyCode.F then
		if not FLYING and ActivateFly then
			if UserInputService.TouchEnabled then
				MobileFly()
			else
				NOFLY()
				wait()
				sFLY()
			end
		elseif FLYING and ActivateFly then
			if UserInputService.TouchEnabled then
				UnMobileFly()
			else
				NOFLY()
			end
		end
	end
end)

local HESlider = MainTab:AddSlider({
Text = "Hitbox Size",
   Name = "HESlider",
   Min = 0,
   Max = 30,
   Default = 15,
   Flag = "HESlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
ValueHE = Value
end, 
})

local HitboxExpenderToggle = MainTab:AddToggle({
Text = "Active Hitbox Expender",
   Name = "HitboxExpenderToggle",
   Default = false,
   Flag = "HitboxExpenderToggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  HitboxExpender = Value
end,
})

local PlayerSpeedSlider = PlayerTab:AddSlider({
Text = "Walk Speed",
   Name = "PlayerSpeedSlider2",
   Min = 0,
   Max = 50,
   Default = 15,
   Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
ValueWalkSpeed = Value
end, 
})

local PlayerActiveModifyingSpeedToggle = PlayerTab:AddToggle({
Text = "Active Modifying Walk Speed",
   Name = "PlayerActiveModifyingSpeedToggle2",
   Default = false,
   Flag = "ButtonSpeed2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  ActiveSpeedBoost2 = Value
end,
})

local PlayerJumpPowerSlider = PlayerTab:AddSlider({
Text = "Jump Power",
   Name = "PlayerJumpPowerSlider",
   Note = "Recommended to put 25!",
   Min = 0,
   Max = 100,
   Default = 50,
   Flag = "PlayerJumpPowerSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
JumpPowerValue = Value
end, 
})

local PlayerActiveModifyingJumpPowerToggle = PlayerTab:AddToggle({
Text = "Active Modifying Jump Power",
   Name = "PlayerActiveModifyingJumpPowerToggle",
   Default = false,
   Flag = "PlayerActiveModifyingJumpPowerToggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  ActivateJumping = Value
  local Character = game:GetService("Players").LocalPlayer.Character
if Character and Character:FindFirstChildOfClass("Humanoid") then
local HUMM =  Character:FindFirstChildOfClass("Humanoid")
if HUMM then
HUMM.UseJumpPower = ActivateJumping
HUMM.JumpPower = JumpPowerValue
end
end
end,
})
local PlayerInfiniteStaminaToggle = PlayerTab:AddToggle({
Text = "Infinite Stamina",
   Name = "PlayerInfiniteStaminaToggle",
   Default = false,
   Flag = "PlayerInfiniteStaminaToggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  ActiveInfiniteStamina = Value
end,
})
local BigDistancePromptToggle = MainTab:AddToggle({
Text =  "Big Distance Prompt",
   Name ="BigDistancePromptToggle",
   Default = false,
   Flag = "AutoBigDistancePrompt", 
   Callback = function(Value)
ActiveBigPrompt = Value 
end,
})
local AutoAutoEscapeButton = MainTab:AddToggle({
Text =  "Auto Escape",
   Name ="AutoAutoEscapeButton",
   Default = false,
   Flag = "AutoAutoEscapeButton", 
   Callback = function(Value)
AutoEscape = Value 
end,
})
local AutoShakeButton = MainTab:AddToggle({
Text =  "Auto Shake Wire Eyes",
   Name ="AutoShakeButton",
   Default = false,
   Flag = "AutoShakeButton", 
   Callback = function(Value)
AutoShakeWireEyes = Value 
end,
})
local ShakeTimeSlider = MainTab:AddSlider({
Text = "Wire eyes Shake time",
   Name = "ShakeTimeSlider",
   Min = 0.1,
   Max = 1,
   Default = 0.5,
Increment = 0.1,
   Flag = "ShakeTimeSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
ShakeTime = Value
end, 
})
local NoBlindnessButton = MainTab:AddToggle({
Text =  "No Blindness",
   Name ="NoBlindnessButton",
   Default = false,
   Flag = "NoBlindnessButton", 
   Callback = function(Value)
NoBlindness = Value 
end,
})
local AutoPhaseButton = MainTab:AddToggle({
Text =  "Auto Phase - only with technician mask (Unverified!)",
   Name ="AutoPhaseButton",
   Default = false,
   Flag = "AutoPhaseButton", 
   Callback = function(Value)
AutoPhase = Value 
end,
})

local ButtonUnloadCheat = SettingsTab:AddButton({
Text = "Unload Cheat",
   Name = "ButtonUnloadCheat",
   Callback = function()
library:Destroy()
end,
})
local LimitRangerEspSlider = SettingsTab:AddSlider({
Text =  "Limit Ranger for esp",
   Name ="LimitRangerEspSlider",
   Min =25,
   Max = 1000,
   Default = 100,
   Flag = "LimitRangerEsp1",
   Callback = function(Value)
LimitRangerEsp = Value
end, 
}) 
local DisableLimitRangerEspToggle = SettingsTab:AddToggle({
Text =  "Disable Limit Ranger Esp",
   Name ="DisableLimitRangerEspToggle",
   Default = false,
   Flag = "ButtonDLRE", 
   Callback = function(Value)
  DisableLimitRangerEsp = Value 
end,
})
local DistanceEspToggle = SettingsTab:AddToggle({
Text =  "Activate Distance For Esp",
   Name ="DistanceEspToggle",
   Default = false,
   Flag = "ButtonADFE", 
   Callback = function(Value)
  ActiveDistanceEsp = Value 
end,
})
local TraitsToggle = SettingsTab:AddToggle({
Text =  "Trait for esp",
   Name ="TraitToggle",
   Default = false,
   Flag = "ButtonTTR", 
   Callback = function(Value)
  LineESPEnabled = Value 
end,
})
	local AllAvailableThemes = library:GetAllThemes()
	library:EnableFPSCounter(true)

	local ChangeThemeDropdown = SettingsTab:AddDropdown({
		Text = "Change Theme:",
		Name = "Dropdown2",
		Options = AllAvailableThemes,
		Default = "Default",
		MultiSelect = false,
		Flag = "Dropdown2", --Put a name flag for save data if you enabled saving data
		Callback = function(choice)
			window:ChangeTheme(choice)
		end
	})
	
library:LoadData()


local CanParry = true
 workspace.DescendantAdded:Connect(function(child) 
 local HrpPlayer = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
if child:IsA("Highlight") and child.Name == "Highlight" and child.Parent == workspace.PLAYERS.KILLER:FindFirstChildOfClass("Model") then
    local Character = game.Players.LocalPlayer.Character
    if FighterAutoParry and HrpPlayer and CanParry and not Character:GetAttribute("IFrames")  and not Character:GetAttribute("InAbility") and not Character:GetAttribute("Stun") and  Character:GetAttribute("Team") == "Survivor" and Character:GetAttribute("Character") == "Survivor-Fighter" then
local RootPart = child.Parent:FindFirstChild("RootPart")      
local Distance = (RootPart.Position - HrpPlayer.Position).Magnitude
        
        if Distance <= 20 then
            CanParry = false
            task.spawn(function()
               task.spawn(function()
        task.wait(0.5)
        CanParry = true
        end)
             local Module = require(game:GetService("ReplicatedStorage").Modules.Warp).Client("Input")
               if Module then
                   Module:Fire(true,{"Ability",2})
               end
    end)
        end
    end
 end
if child:IsA("BoxHandleAdornment") then
  if HitboxExpender then
      child.Size = Vector3.new(ValueHE,ValueHE,ValueHE)
  end
end
task.wait(0.75)
if ActiveNoCooldownPrompt then
if child:IsA("ProximityPrompt") and child.HoldDuration ~= 0.1 then
child:SetAttribute("HoldDurationOld",child.HoldDuration)
child.HoldDuration = .1
end  
end
if ActiveEspSurvivors then 
 local GetPByChar = game:GetService("Players"):GetPlayerFromCharacter(child)
if child.Parent == workspace.PLAYERS.ALIVE and child:IsA("Model") and child.PrimaryPart  and not child.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
if GetPByChar then
if child:FindFirstChildOfClass("Highlight") then
      child:FindFirstChildOfClass("Highlight"):Destroy()
 end
 	SetupCharacter(child,workspace.PLAYERS.ALIVE,child.PrimaryPart)
CreateEsp(child,Color3.fromRGB(0,255,0),child.Name.." "..child:GetAttribute("Character"),child.PrimaryPart,2)
end
end
end
if ActiveEspKillers then
 local GetPByChar = game:GetService("Players"):GetPlayerFromCharacter(child)
if child.Parent and child.Parent == workspace.PLAYERS.KILLER and child:IsA("Model") and child:FindFirstChild("RootPart") and not child.RootPart:FindFirstChildOfClass("BillboardGui") then
if GetPByChar then
local PART = child:FindFirstChild("RootPart") or nil
    if GetPByChar.Character:GetAttribute("Character") == "Ennard" then
    PART = GetPByChar.Character:FindFirstChild("HumanoidRootPart")
    end
    if child:FindFirstChildOfClass("Highlight") then
    child:FindFirstChildOfClass("Highlight"):Destroy()
end
    	SetupCharacter(child,workspace.PLAYERS.KILLER,PART)
CreateEsp(child,Color3.fromRGB(255,0,0),child.Name.." "..child:GetAttribute("Character"),PART,2)
end
end
end
if ActiveEspGen then
if workspace.MAPS:FindFirstChild("GAME MAP") then
if child.Parent and child.Parent == workspace.MAPS["GAME MAP"].Generators and child:IsA("Model") and child.PrimaryPart and not child:FindFirstChildOfClass("Highlight") and not child.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
CreateEsp(child,Color3.fromRGB(255,255,0),"Generator",child.PrimaryPart,2)
end
end
end
if ActiveEspFuseBoxes then
if workspace.MAPS:FindFirstChild("GAME MAP") and workspace.MAPS["GAME MAP"]:FindFirstChild("FuseBoxes") then
if child.Parent and child.Parent == workspace.MAPS["GAME MAP"].FuseBoxes and child:IsA("Model") and child.PrimaryPart  and not child.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
if child:FindFirstChildOfClass("Highlight") then
    child:FindFirstChildOfClass("Highlight"):Destroy()
end
CreateEsp(child,Color3.fromRGB(0,0,255),"Fuse Boxe",child.PrimaryPart,2)
end
end
end
if ActiveEspTraps then
if child.Parent and child.Name == "Trap" and child.Parent == workspace.IGNORE and child:IsA("Model") and child.PrimaryPart  and not child.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
if child:FindFirstChildOfClass("Highlight") then
    child:FindFirstChildOfClass("Highlight"):Destroy()
end
CreateEsp(child,Color3.fromRGB(255,0,0),"Trap",child.PrimaryPart,2)
end
end
if ActiveEspWireEyes then
if child.Parent and child.Name == "Minion" and child.Parent == workspace.IGNORE and child:IsA("Model") and child.PrimaryPart  and not child.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
if child:FindFirstChildOfClass("Highlight") then
    child:FindFirstChildOfClass("Highlight"):Destroy()
end
SetupCharacter(child,workspace.IGNORE,child.PrimaryPart)
CreateEsp(child,Color3.fromRGB(255,0,0),"Wire Eyes",child.PrimaryPart,2)
end
end
if ActiveEspBattery then
if child.Parent and child.Name == "Battery" and child.Parent == workspace.IGNORE and child:IsA("BasePart") and child  and not child:FindFirstChildOfClass("BillboardGui") then
if child:FindFirstChildOfClass("Highlight") then
    child:FindFirstChildOfClass("Highlight"):Destroy()
end
CreateEsp(child,Color3.fromRGB(0,0,255),"Battery",child,2)
end
end
end)

local Players = game:GetService("Players")
workspace.DescendantRemoving:Connect(function(child)
	if child:IsA("Model") then
		local player = Players:GetPlayerFromCharacter(child)
		
		if ActiveEspSurvivors then
			if child:IsDescendantOf(workspace.PLAYERS.ALIVE) and child.PrimaryPart then
				if child:FindFirstChildOfClass("Highlight") and child.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
					KeepEsp(child, child.PrimaryPart)
				end
			end
		end

		if ActiveEspKillers then
			if child:IsDescendantOf(workspace.PLAYERS.KILLER) then 
                                if  (child:FindFirstChild("RootPart") or child:FindFirstChild("HumanoidRootPart")) then
            local PART = child:FindFirstChild("RootPart") or nil
    if child:GetAttribute("Character") == "Ennard" then
    PART = child:FindFirstChild("HumanoidRootPart")
    end
				if child:FindFirstChildOfClass("Highlight") and PART:FindFirstChildOfClass("BillboardGui") then
					KeepEsp(child, PART)
				end
			end
            end
		end

		if ActiveEspGen and workspace.MAPS:FindFirstChild("GAME MAP") then
			local map = workspace.MAPS["GAME MAP"]

			if child:IsDescendantOf(map.Generators) and child.PrimaryPart then
				if child:FindFirstChildOfClass("Highlight") and child.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
					KeepEsp(child, child.PrimaryPart)
				end
			end
		end
        if ActiveEspFuseBoxes and workspace.MAPS:FindFirstChild("GAME MAP") and workspace.MAPS:FindFirstChild("GAME MAP"):FindFirstChild("FuseBoxes") then
			local map = workspace.MAPS["GAME MAP"]

			if child:IsDescendantOf(map.FuseBoxes) and child.PrimaryPart then
				if child:FindFirstChildOfClass("Highlight") and child.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
					KeepEsp(child, child.PrimaryPart)
				end
			end
		end
          if ActiveEspTraps then
			if child:IsDescendantOf(workspace.IGNORE) and child.Name == "Traps" and child.PrimaryPart then
				if child:FindFirstChildOfClass("Highlight") and child.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
					KeepEsp(child, child.PrimaryPart)
				end
			end
		end
       if ActiveEspWireEyes then
			if child:IsDescendantOf(workspace.IGNORE) and child.Name == "Minion" and child.PrimaryPart then
				if child:FindFirstChildOfClass("Highlight") and child.PrimaryPart:FindFirstChildOfClass("BillboardGui") then
					KeepEsp(child, child.PrimaryPart)
				end
			end
		end
        elseif child:IsA("BasePart") then
	  if ActiveEspBattery  then
			if child:IsDescendantOf(workspace.IGNORE) and child.Name == "Battery"then
				if child:FindFirstChildOfClass("Highlight") and child:FindFirstChildOfClass("BillboardGui") then
					KeepEsp(child, child)
				end
			end
		end
	end

end)
end)
