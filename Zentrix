

local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")



local function createUI(class, props)
	local inst = Instance.new(class)
	for prop, val in pairs(props) do
		inst[prop] = val
	end
	return inst
end

local library = {}

local function copyToClipboard(text)
	if setclipboard then
		setclipboard(text)
	else
		warn("setclipboard is not supported in this environment.")
	end
end

function library:CopyText(Text)
	copyToClipboard(Text)
end
local Theme = {
	Default = {
		mainFrame = Color3.fromRGB(30, 30, 30),
		NotifyFrame = Color3.fromRGB(30, 30, 30),
		TextColor = Color3.fromRGB(255, 255, 255),
		TabContent = Color3.fromRGB(20, 20, 20),
		TabButtons = Color3.fromRGB(50, 50, 50),
		Top = Color3.fromRGB(45, 45, 45),
		Buttons = Color3.fromRGB(50, 50, 50),
	},
	Light = {
		mainFrame = Color3.fromRGB(220, 225, 230), 
		NotifyFrame = Color3.fromRGB(235, 235, 240),
		TextColor = Color3.fromRGB(40, 40, 40),
		TabContent = Color3.fromRGB(210, 215, 220), 
		TabButtons = Color3.fromRGB(180, 185, 190), 
		Top = Color3.fromRGB(200, 205, 210),
		Buttons = Color3.fromRGB(160, 170, 180), 
	},
	RedDark = {
		mainFrame = Color3.fromRGB(45, 0, 0),
		NotifyFrame = Color3.fromRGB(30, 0, 0),
		TextColor = Color3.fromRGB(255, 200, 200),
		TabContent = Color3.fromRGB(25, 0, 0),
		TabButtons = Color3.fromRGB(60, 10, 10),
		Top = Color3.fromRGB(50, 0, 0),
		Buttons = Color3.fromRGB(70, 0, 0),
	},
	BlueNeon = {
		mainFrame = Color3.fromRGB(10, 10, 30),
		NotifyFrame = Color3.fromRGB(15, 15, 40),
		TextColor = Color3.fromRGB(0, 200, 255),
		TabContent = Color3.fromRGB(20, 20, 50),
		TabButtons = Color3.fromRGB(0, 140, 255),
		Top = Color3.fromRGB(0, 120, 255),
		Buttons = Color3.fromRGB(0, 100, 200),
	},
	GreenMatrix = {
		mainFrame = Color3.fromRGB(0, 20, 0),
		NotifyFrame = Color3.fromRGB(0, 30, 0),
		TextColor = Color3.fromRGB(255, 255, 255),
		TabContent = Color3.fromRGB(0, 40, 0),
		TabButtons = Color3.fromRGB(0, 200, 0),
		Top = Color3.fromRGB(0, 180, 0),
		Buttons = Color3.fromRGB(0, 200, 0),
	},
	PurpleDream = {
		mainFrame = Color3.fromRGB(40, 0, 50),
		NotifyFrame = Color3.fromRGB(30, 0, 40),
		TextColor = Color3.fromRGB(255, 200, 255),
		TabContent = Color3.fromRGB(60, 0, 80),
		TabButtons = Color3.fromRGB(120, 0, 150),
		Top = Color3.fromRGB(100, 0, 130),
		Buttons = Color3.fromRGB(90, 0, 120),
	},
	Sunset = {
		mainFrame = Color3.fromRGB(255, 94, 77),
		NotifyFrame = Color3.fromRGB(204, 77, 61),
		TextColor = Color3.fromRGB(255, 240, 230),
		TabContent = Color3.fromRGB(153, 51, 51),
		TabButtons = Color3.fromRGB(255, 140, 120),
		Top = Color3.fromRGB(204, 70, 60),
		Buttons = Color3.fromRGB(255, 120, 100),
	},
	Ocean = {
		mainFrame = Color3.fromRGB(0, 40, 70),
		NotifyFrame = Color3.fromRGB(0, 50, 90),
		TextColor = Color3.fromRGB(200, 230, 255),
		TabContent = Color3.fromRGB(0, 60, 100),
		TabButtons = Color3.fromRGB(0, 100, 150),
		Top = Color3.fromRGB(0, 80, 130),
		Buttons = Color3.fromRGB(0, 120, 180),
	},
	Storm = {
		mainFrame = Color3.fromRGB(20, 20, 30),
		NotifyFrame = Color3.fromRGB(25, 25, 35),
		TextColor = Color3.fromRGB(200, 200, 220),
		TabContent = Color3.fromRGB(30, 30, 40),
		TabButtons = Color3.fromRGB(70, 70, 90),
		Top = Color3.fromRGB(50, 50, 70),
		Buttons = Color3.fromRGB(80, 80, 100),
	},
	LimePop = {
		mainFrame = Color3.fromRGB(30, 50, 30),
		NotifyFrame = Color3.fromRGB(40, 70, 40),
		TextColor = Color3.fromRGB(200, 255, 200),
		TabContent = Color3.fromRGB(50, 90, 50),
		TabButtons = Color3.fromRGB(100, 200, 100),
		Top = Color3.fromRGB(90, 180, 90),
		Buttons = Color3.fromRGB(70, 160, 70),
	},
	Chocolate = {
		mainFrame = Color3.fromRGB(60, 40, 30),
		NotifyFrame = Color3.fromRGB(50, 30, 20),
		TextColor = Color3.fromRGB(255, 240, 220),
		TabContent = Color3.fromRGB(40, 20, 10),
		TabButtons = Color3.fromRGB(100, 70, 50),
		Top = Color3.fromRGB(80, 60, 40),
		Buttons = Color3.fromRGB(110, 80, 60),
	},
	Cyber = {
		mainFrame = Color3.fromRGB(10, 10, 20),
		NotifyFrame = Color3.fromRGB(15, 15, 30),
		TextColor = Color3.fromRGB(0, 255, 180),
		TabContent = Color3.fromRGB(20, 20, 35),
		TabButtons = Color3.fromRGB(0, 220, 170),
		Top = Color3.fromRGB(0, 200, 160),
		Buttons = Color3.fromRGB(0, 180, 140),
	},
	RoseGold = {
		mainFrame = Color3.fromRGB(183, 110, 121),
		NotifyFrame = Color3.fromRGB(153, 90, 101),
		TextColor = Color3.fromRGB(255, 230, 240),
		TabContent = Color3.fromRGB(133, 70, 81),
		TabButtons = Color3.fromRGB(203, 130, 141),
		Top = Color3.fromRGB(173, 100, 111),
		Buttons = Color3.fromRGB(213, 140, 151),
	},
	CottonCandy = {
		mainFrame = Color3.fromRGB(255, 182, 193),
		NotifyFrame = Color3.fromRGB(255, 192, 203),
		TextColor = Color3.fromRGB(100, 0, 50),
		TabContent = Color3.fromRGB(255, 204, 229),
		TabButtons = Color3.fromRGB(255, 153, 204),
		Top = Color3.fromRGB(255, 160, 215),
		Buttons = Color3.fromRGB(255, 105, 180),
	},
	NightSky = {
		mainFrame = Color3.fromRGB(10, 10, 30),
		NotifyFrame = Color3.fromRGB(20, 20, 40),
		TextColor = Color3.fromRGB(200, 200, 255),
		TabContent = Color3.fromRGB(15, 15, 35),
		TabButtons = Color3.fromRGB(30, 30, 70),
		Top = Color3.fromRGB(40, 40, 90),
		Buttons = Color3.fromRGB(60, 60, 120),
	},
	Steel = {
		mainFrame = Color3.fromRGB(80, 80, 85),
		NotifyFrame = Color3.fromRGB(90, 90, 95),
		TextColor = Color3.fromRGB(240, 240, 240),
		TabContent = Color3.fromRGB(70, 70, 75),
		TabButtons = Color3.fromRGB(100, 100, 105),
		Top = Color3.fromRGB(110, 110, 115),
		Buttons = Color3.fromRGB(95, 95, 100),
	},
	GoldLux = {
		mainFrame = Color3.fromRGB(70, 60, 0),
		NotifyFrame = Color3.fromRGB(90, 70, 0),
		TextColor = Color3.fromRGB(255, 220, 100),
		TabContent = Color3.fromRGB(80, 70, 20),
		TabButtons = Color3.fromRGB(200, 160, 20),
		Top = Color3.fromRGB(180, 150, 0),
		Buttons = Color3.fromRGB(220, 180, 0),
	},
	TealWave = {
		mainFrame = Color3.fromRGB(0, 80, 80),
		NotifyFrame = Color3.fromRGB(0, 90, 90),
		TextColor = Color3.fromRGB(200, 255, 255),
		TabContent = Color3.fromRGB(0, 100, 100),
		TabButtons = Color3.fromRGB(0, 160, 160),
		Top = Color3.fromRGB(0, 140, 140),
		Buttons = Color3.fromRGB(0, 180, 180),
	},
	Ice = {
		mainFrame = Color3.fromRGB(200, 240, 255),
		NotifyFrame = Color3.fromRGB(180, 220, 245),
		TextColor = Color3.fromRGB(30, 60, 90),
		TabContent = Color3.fromRGB(160, 210, 240),
		TabButtons = Color3.fromRGB(140, 200, 230),
		Top = Color3.fromRGB(120, 190, 220),
		Buttons = Color3.fromRGB(100, 180, 210),
	},
	FrostFire = {
		mainFrame = Color3.fromRGB(40, 40, 60),
		NotifyFrame = Color3.fromRGB(60, 60, 80),
		TextColor = Color3.fromRGB(255, 100, 100),
		TabContent = Color3.fromRGB(50, 50, 70),
		TabButtons = Color3.fromRGB(255, 150, 150),
		Top = Color3.fromRGB(120, 180, 255),
		Buttons = Color3.fromRGB(255, 120, 120),
	},
	DarkMatter = {
		mainFrame = Color3.fromRGB(10, 5, 20),
		NotifyFrame = Color3.fromRGB(15, 10, 30),
		TextColor = Color3.fromRGB(180, 0, 255),
		TabContent = Color3.fromRGB(20, 10, 40),
		TabButtons = Color3.fromRGB(100, 0, 150),
		Top = Color3.fromRGB(80, 0, 120),
		Buttons = Color3.fromRGB(60, 0, 100),
	},
	Lava = {
		mainFrame = Color3.fromRGB(50, 10, 0),
		NotifyFrame = Color3.fromRGB(70, 20, 0),
		TextColor = Color3.fromRGB(255, 180, 100),
		TabContent = Color3.fromRGB(90, 30, 0),
		TabButtons = Color3.fromRGB(255, 80, 0),
		Top = Color3.fromRGB(220, 60, 0),
		Buttons = Color3.fromRGB(255, 100, 10),
	},
	PinkCandy = {
		mainFrame = Color3.fromRGB(255, 170, 200),
		NotifyFrame = Color3.fromRGB(255, 180, 210),
		TextColor = Color3.fromRGB(100, 0, 50),
		TabContent = Color3.fromRGB(255, 200, 220),
		TabButtons = Color3.fromRGB(255, 120, 180),
		Top = Color3.fromRGB(255, 150, 190),
		Buttons = Color3.fromRGB(255, 100, 170),
	},
	DeepSpace = {
		mainFrame = Color3.fromRGB(5, 5, 10),
		NotifyFrame = Color3.fromRGB(10, 10, 15),
		TextColor = Color3.fromRGB(100, 200, 255),
		TabContent = Color3.fromRGB(15, 15, 25),
		TabButtons = Color3.fromRGB(50, 100, 150),
		Top = Color3.fromRGB(40, 80, 130),
		Buttons = Color3.fromRGB(30, 60, 110),
	},
	Sakura = {
		mainFrame = Color3.fromRGB(255, 225, 235),
		NotifyFrame = Color3.fromRGB(255, 230, 240),
		TextColor = Color3.fromRGB(120, 60, 90),
		TabContent = Color3.fromRGB(255, 210, 225),
		TabButtons = Color3.fromRGB(255, 160, 190),
		Top = Color3.fromRGB(240, 140, 180),
		Buttons = Color3.fromRGB(220, 120, 160),
	},
	Toxic = {
		mainFrame = Color3.fromRGB(20, 40, 10),
		NotifyFrame = Color3.fromRGB(25, 50, 15),
		TextColor = Color3.fromRGB(150, 255, 50),
		TabContent = Color3.fromRGB(30, 60, 20),
		TabButtons = Color3.fromRGB(100, 255, 50),
		Top = Color3.fromRGB(80, 230, 40),
		Buttons = Color3.fromRGB(120, 255, 60),
	},
	Skyline = {
		mainFrame = Color3.fromRGB(135, 206, 250),
		NotifyFrame = Color3.fromRGB(176, 226, 255),
		TextColor = Color3.fromRGB(30, 60, 90),
		TabContent = Color3.fromRGB(160, 210, 240),
		TabButtons = Color3.fromRGB(100, 180, 255),
		Top = Color3.fromRGB(70, 160, 230),
		Buttons = Color3.fromRGB(90, 180, 250),
	},
	Crimson = {
		mainFrame = Color3.fromRGB(60, 0, 10),
		NotifyFrame = Color3.fromRGB(90, 10, 20),
		TextColor = Color3.fromRGB(255, 180, 180),
		TabContent = Color3.fromRGB(100, 0, 0),
		TabButtons = Color3.fromRGB(160, 0, 20),
		Top = Color3.fromRGB(190, 0, 30),
		Buttons = Color3.fromRGB(220, 0, 40),
	},
	Desert = {
		mainFrame = Color3.fromRGB(237, 201, 175),
		NotifyFrame = Color3.fromRGB(245, 222, 179),
		TextColor = Color3.fromRGB(80, 60, 40),
		TabContent = Color3.fromRGB(222, 184, 135),
		TabButtons = Color3.fromRGB(210, 180, 140),
		Top = Color3.fromRGB(189, 154, 100),
		Buttons = Color3.fromRGB(160, 130, 90),
	},
	Plasma = {
		mainFrame = Color3.fromRGB(50, 0, 80),
		NotifyFrame = Color3.fromRGB(60, 10, 90),
		TextColor = Color3.fromRGB(255, 100, 255),
		TabContent = Color3.fromRGB(80, 0, 120),
		TabButtons = Color3.fromRGB(150, 0, 255),
		Top = Color3.fromRGB(130, 0, 200),
		Buttons = Color3.fromRGB(170, 0, 255),
	},
	Arctic = {
		mainFrame = Color3.fromRGB(210, 230, 255),
		NotifyFrame = Color3.fromRGB(230, 245, 255),
		TextColor = Color3.fromRGB(0, 30, 60),
		TabContent = Color3.fromRGB(200, 225, 250),
		TabButtons = Color3.fromRGB(180, 215, 240),
		Top = Color3.fromRGB(160, 200, 230),
		Buttons = Color3.fromRGB(140, 190, 220),
	},
	Camo = {
		mainFrame = Color3.fromRGB(75, 85, 60),
		NotifyFrame = Color3.fromRGB(80, 100, 70),
		TextColor = Color3.fromRGB(220, 240, 200),
		TabContent = Color3.fromRGB(60, 70, 50),
		TabButtons = Color3.fromRGB(100, 130, 90),
		Top = Color3.fromRGB(90, 110, 70),
		Buttons = Color3.fromRGB(110, 140, 100),
	},
	Vaporwave = {
		mainFrame = Color3.fromRGB(255, 128, 255),
		NotifyFrame = Color3.fromRGB(170, 255, 255),
		TextColor = Color3.fromRGB(40, 0, 80),
		TabContent = Color3.fromRGB(200, 140, 255),
		TabButtons = Color3.fromRGB(180, 255, 255),
		Top = Color3.fromRGB(255, 180, 255),
		Buttons = Color3.fromRGB(255, 220, 255),
	},
	Slate = {
		mainFrame = Color3.fromRGB(50, 50, 60),
		NotifyFrame = Color3.fromRGB(60, 60, 70),
		TextColor = Color3.fromRGB(220, 220, 230),
		TabContent = Color3.fromRGB(70, 70, 80),
		TabButtons = Color3.fromRGB(80, 80, 90),
		Top = Color3.fromRGB(90, 90, 100),
		Buttons = Color3.fromRGB(100, 100, 110),
	},
}


local function VisibleWindow(window,settings1,gui)
	local themeName = settings1.Theme 
	local selectedTheme = Theme[themeName] or Theme.Default

	local TweenService = game:GetService("TweenService")

	local mainFrame = createUI("Frame", {
		Size = UDim2.new(0, 0, 0, 0),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		BackgroundColor3 = selectedTheme.mainFrame,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Interactable = true,
		Parent = gui,
		Draggable = true,
	})

	-- Notify container frame
	local NotifyFrame = createUI("Frame", {
		Size = UDim2.new(0.25, 0, 1, 0),
		Position = UDim2.new(0.75, 0, -0.05, 0),
		BackgroundColor3 = Color3.fromRGB(20, 20, 20),
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0, 0),
		Name = "NotifyFrame",
		Parent = gui,
	})

	-- UIListLayout to stack notifications top to bottom

	function window:Destroy()
		gui:Destroy()
	end
	function window:IsVisbility()
		return mainFrame.Visible	
	end
	-- Ajoute ce layout une seule fois quand tu crées NotifyFrame :
	local listLayout = Instance.new("UIListLayout")
	listLayout.Padding = UDim.new(0, 5)
	listLayout.SortOrder = Enum.SortOrder.LayoutOrder
	listLayout.Parent = NotifyFrame

	function window:Notify(opts)
		local title = opts.Title or "Alert"
		local message = opts.Message or "No message provided."
		local icon = opts.Icon or "rbxassetid://0"
		local duration = opts.Duration or 5

		local tweenService = game:GetService("TweenService")

		-- Panneau principal fixé par UIListLayout
		local notifyPanel = createUI("Frame", {
			Size = UDim2.new(1, 0, 0.15, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ClipsDescendants = true,
			Parent = NotifyFrame,
		})

		-- Conteneur interne animé (slide in/out)
		local content = createUI("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(1, 20, 0, 0), -- hors écran à droite
			BackgroundColor3 = selectedTheme.NotifyFrame,
			BackgroundTransparency = 0.25,
			BorderSizePixel = 0,
			Parent = notifyPanel,
		})

		-- Titre
		createUI("TextLabel", {
			Size = UDim2.new(1, -10, 0.2, 0),
			Position = UDim2.new(0, 5, 0, 2),
			Text = title,
			TextScaled = true,
			TextColor3 = selectedTheme.TextColor,
			Font = Enum.Font.GothamBold,
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Left,
			Parent = content,
		})

		-- Message
		createUI("TextLabel", {
			Size = UDim2.new(1, -10, 0.6, 0),
			Position = UDim2.new(0, 5, 0.2, 0),
			Text = message,
			TextScaled = true,
			TextColor3 = selectedTheme.TextColor,
			Font = Enum.Font.Gotham,
			BackgroundTransparency = 1,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			Parent = content,
		})

		-- Icône
		createUI("ImageLabel", {
			Size = UDim2.new(0.15, 0, 0.6, 0),
			Position = UDim2.new(0.85, -5, 0.2, 0),
			Image = icon,
			BackgroundTransparency = 1,
			Parent = content,
		})

		-- Barre de durée
		local durationBar = createUI("Frame", {
			Size = UDim2.new(1, 0, 0.05, 0),
			Position = UDim2.new(0, 0, 0.95, 0),
			BackgroundColor3 = Color3.fromRGB(0, 170, 255),
			BorderSizePixel = 0,
			Parent = content,
		})

		-- Animation de slide in (droite vers gauche)
		local enterTween = tweenService:Create(content, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
			Position = UDim2.new(0, 0, 0, 0)
		})
		enterTween:Play()

		-- Barre de progression
		durationBar.AnchorPoint = Vector2.new(1, 0)
		durationBar.Position = UDim2.new(1, 0, 0.95, 0)
		local durationTween = tweenService:Create(durationBar, TweenInfo.new(duration, Enum.EasingStyle.Linear), {
			Size = UDim2.new(0, 0, 0.05, 0)
		})
		durationTween:Play()

	local NewSound = Instance.new("Sound",workspace)
	NewSound.SoundId = "rbxassetid://6647898215"
	NewSound:Play()
	game:GetService("Debris"):AddItem(NewSound,NewSound.TimeLength)
		task.delay(duration, function()
			local exitTween = tweenService:Create(content, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
				Position = UDim2.new(1, 20, 0, 0)
			})
			exitTween:Play()
			exitTween.Completed:Wait()
			notifyPanel:Destroy()
		end)
	end

	createUI("UICorner", {Parent = mainFrame})
	local animOpenPC = TweenService:Create(mainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 600, 0, 500);
		Position = UDim2.new(0.5, 0, 0.5, 0);
	})
	local animClose = TweenService:Create(mainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0.5, 0, 0.5, 0);
	})
	local animOpenMobile = TweenService:Create(mainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 500, 0, 250);
		Position = UDim2.new(0.5, 0, 0.5, 0);
	})
	

	-- Tabs list (gauche)
	local tabsFrame = createUI("ScrollingFrame", {
		Size = UDim2.new(0, 150, 1, 0);
		CanvasSize = UDim2.new(0, 0, 0, 0);
		ScrollBarThickness = 6;
AutomaticCanvasSize = Enum.AutomaticSize.Y;
		BackgroundColor3 =selectedTheme.TabContent;
		BorderSizePixel = 0;
		Parent = mainFrame;
	})
	if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
		tabsFrame.Size = UDim2.new(0,75,1,0)
	elseif UserInputService.TouchEnabled and UserInputService.KeyboardEnabled then
		tabsFrame.Size = UDim2.new(0,150,1,0)
	else
		tabsFrame.Size = UDim2.new(0,150,1,0)
	end

	createUI("UIListLayout", {
		Padding = UDim.new(0, 6),
		SortOrder = Enum.SortOrder.LayoutOrder,
		Parent = tabsFrame
	})
	createUI("UIPadding", {
		PaddingTop = UDim.new(0, 8),
		PaddingLeft = UDim.new(0, 6),
		PaddingRight = UDim.new(0, 6),
		Parent = tabsFrame
	})

	-- Contenu des tabs (droite)
	local contentHolder = createUI("Frame", {
		Position = UDim2.new(0, 150, 0, 0);
		Size = UDim2.new(1, -150, 1, 0);
		BackgroundTransparency = 1;
		Interactable = true,
		Parent = mainFrame;
	})
	local titleBar = createUI("Frame", {
		Size = UDim2.new(1, 0, 0, 40),  -- en largeur complète, hauteur 40px
		BackgroundColor3 = selectedTheme.Top,
		Interactable = true,
		Parent = mainFrame,
		Position = UDim2.new(0, 0, 0, 0)
	})
	createUI("UICorner", {Parent = titleBar})
	local titleLabel
	if settings1.Icon ~= 0 then
		-- Conteneur pour regrouper l'image et le texte
		local titleContainer = createUI("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Parent = titleBar
		})

		-- UIListLayout pour aligner image + texte horizontalement
		local layout = Instance.new("UIListLayout")
		layout.FillDirection = Enum.FillDirection.Horizontal
		layout.HorizontalAlignment = Enum.HorizontalAlignment.Left
		layout.VerticalAlignment = Enum.VerticalAlignment.Center
		layout.SortOrder = Enum.SortOrder.LayoutOrder
		layout.Padding = UDim.new(0, 6)
		layout.Parent = titleContainer

		-- Image à gauche
		local imageIcon2 = Instance.new("ImageLabel")
		imageIcon2.Name = "Icon"
		imageIcon2.Size = UDim2.new(0, 20, 0, 20)
		imageIcon2.BackgroundTransparency = 1
		imageIcon2.Image = "rbxassetid://"..settings1.Icon
		imageIcon2.Parent = titleContainer

		-- Texte à droite de l'image
		titleLabel = createUI("TextLabel", {
			Name = "TitleLabel",
			Text = settings1.Title,
			TextColor3 = Color3.new(1, 1, 1),
			BackgroundTransparency = 1,
			Font = Enum.Font.GothamBold,
			TextSize = 15, -- Réduit un peu la taille
			Size = UDim2.new(1, -30, 1, 0), -- Laisse de l'espace pour l’image
			TextXAlignment = Enum.TextXAlignment.Left,
			Parent = titleContainer
		})

	else
		titleLabel = createUI("TextLabel", {
			Text = settings1.Title,
			TextColor3 = Color3.new(1, 1, 1),
			BackgroundTransparency = 1,
			Font = Enum.Font.GothamBold,
			TextSize = 15,
			Size = UDim2.new(1, -20, 1, 0),
			Position = UDim2.new(0, 10, 0, 0),
			TextXAlignment = Enum.TextXAlignment.Left,
			Parent = titleBar
		})
	end
	local CloseButton = createUI("TextButton", {
		Text = "X",
		TextColor3 = Color3.new(1, 0, 0),
		BackgroundTransparency = 1,
		Font = Enum.Font.GothamBold,
		TextScaled = true,
		Size = UDim2.new(0.25, 0, 1, 0),
		Position = UDim2.new(0.7, 0, 0, 0),
		TextXAlignment = Enum.TextXAlignment.Right,
		Parent = titleBar
	})
	local OpenButton = createUI("TextButton", {
		Text = "Show "..settings1.Title,
		TextColor3 = selectedTheme.TextColor;
		BackgroundTransparency = 0.1,
		Font = Enum.Font.GothamBold,
		TextScaled = true,
		BackgroundColor3 = selectedTheme.mainFrame;
		Size = UDim2.new(0.15, 0, 0.1, 0),
		Position = UDim2.new(0.15, 0, 0.125, 0),
		TextXAlignment = Enum.TextXAlignment.Center,
		Visible = false,
		Draggable = true,
		Parent = gui
	})

	local OneTime = false
	CloseButton.MouseButton1Click:Connect(function()
		animClose:Play()
		if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
			OpenButton.Visible = true
		elseif UserInputService.TouchEnabled and UserInputService.KeyboardEnabled then
			if not OneTime then
				OneTime = true
				window:Notify({
					Title = "Key",
					Message = "Press "..settings1.KeyPC.Name.." to Open/Close frame",
					Duration = 7.5,
				})

			end
		else
			if not OneTime then
				OneTime = true
				window:Notify({
					Title = "Key",
					Message = "Press "..settings1.KeyPC.Name.." to Open/Close frame",
					Duration = 7.5,
				})

			end

		end

		animClose.Completed:Connect(function()
			mainFrame.Visible = false
		end)
	end)
	OpenButton.MouseButton1Click:Connect(function()
		mainFrame.Visible = true
	
		
			if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
	animOpenMobile:Play()
else
	animOpenPC:Play()
end
		
		OpenButton.Visible = false

	end)
	
	if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
	animOpenMobile:Play()
else
	animOpenPC:Play()
end
	
	local UserInputService = game:GetService("UserInputService")



	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.KeyCode == settings1.KeyPC then
			if not mainFrame.Visible then
				mainFrame.Visible = true
				if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
	animOpenMobile:Play()
else
	animOpenPC:Play()
end

			else
				animClose:Play()
				animClose.Completed:Connect(function()
					mainFrame.Visible = false
				end)
			end

		end
	end)

	if settings1.Discord.Enabled then
		if settings1.Discord.RememberJoin and settings1.Discord.DiscordLink and  settings1.Discord.DiscordLink ~= "NoInviteLink" then
			window:Notify({
				Title = "Discord!",
				Message = "Remember to join the discord,discord link: "..settings1.Discord.DiscordLink,
				Duration = settings1.Discord.Duration,
			})
		elseif not settings1.Discord.RememberJoin and settings1.Discord.DiscordLink and  settings1.Discord.DiscordLink ~= "NoInviteLink" then
			copyToClipboard(settings1.Discord.DiscordLink )
		end
	end

	tabsFrame.Position = UDim2.new(0, 0, 0, 40)
	tabsFrame.Size = UDim2.new(0, 150, 1, -40)

	contentHolder.Position = UDim2.new(0, 150, 0, 40)
	contentHolder.Size = UDim2.new(1, -150, 1, -40)
	function window:SetVisibility(bool)
		if bool then
			mainFrame.Visible = true
			OpenButton.Visible = false
		else
			mainFrame.Visible = false
			OpenButton.Visible = true
		end
	end

local TabButtons = {}
	function window:ChangeTheme(themeName)
		if Theme[themeName] then
			selectedTheme = Theme[themeName]
			OpenButton.TextColor3 = selectedTheme.TextColor
			OpenButton.BackgroundColor3 = selectedTheme.mainFrame
			mainFrame.BackgroundColor3 = selectedTheme.mainFrame
			titleBar.BackgroundColor3 = selectedTheme.Top
			tabsFrame.BackgroundColor3 = selectedTheme.TabContent
			for _, name in pairs(TabButtons) do
				name.BackgroundColor3 = selectedTheme.TabButtons
				name.TextColor3 = selectedTheme.TextColor
			end
			for _, tab in pairs(window.tabs) do
				if tab.sliders then
					for _, name in pairs(tab.sliders) do
						pcall(function()
					
							name:ChangeTheme(selectedTheme)

						end)
					
					end
				end
				if tab.ColorPicker then
					for _, name in pairs(tab.ColorPicker) do
						pcall(function()
					
							name:ChangeTheme(selectedTheme)

						end)
					
					end

				end
				if tab.textboxes then
					for _, name in pairs(tab.textboxes) do
						pcall(function()
					
							name:ChangeTheme(selectedTheme)

						end)
					
					end

				end
				if tab.dropdowns then
					for _, name in pairs(tab.dropdowns) do
						pcall(function()
					
							name:ChangeTheme(selectedTheme)

						end)
					
					end

				end
				if tab.toggles then
					for _, name in pairs(tab.toggles) do
						pcall(function()
						
							name:ChangeTheme(selectedTheme)

						end)
						print(name)
					end
				end
				if tab.texts then
					for _, name in pairs(tab.texts) do
						pcall(function()
					
							name:ChangeTheme(selectedTheme)

						end)
				
					end
				end
				if tab.paragraphs then
					for _, name in pairs(tab.paragraphs) do
						pcall(function()
							
							name:ChangeTheme(selectedTheme)

						end)
					
					end
				end
				if tab.buttons then
					for _, name in pairs(tab.buttons) do
						pcall(function()
					
							name:ChangeTheme(selectedTheme)

						end)
						
					end
				end
			end

		else
			warn("Theme '" .. themeName .. "' introuvable.")
		end
	end
	function window:ResetShowButtonPosition()
		OpenButton.Position = UDim2.new(0.15, 0, 0.125, 0)
	end
	function window:LockButton()
		OpenButton.Draggable = false
	end
	function window:UnlockButton()
		OpenButton.Draggable = true
	end
	function window:CreateTab(name,icon)
		local HttpService = game:GetService("HttpService")

		if  not game:GetService("RunService"):IsStudio() then
			if not writefile or not readfile then
				warn("writefile/readfile non disponibles.")
				return
			end
		end

		local flags = {}

		-- Structure UI
		local tab = {
			sliders = {},
			textboxes = {},
			dropdowns = {},
			toggles = {},
			texts = {},
	sections = {},
			buttons = {},
			paragraphs = {},
			ColorPicker = {},
			SlidersValue = {},
			ColorPickerValue = {},
			textboxesText = {},
			TogglesValue = {},
			dropdownValue = {},
		}

		-- Settings
		local settingsData = settings1 and settings1.Data or {}
		local FolderName = settingsData.FolderName or "UnknownFolder"
		local fileName = settingsData.FileName or "UnknownFile"

		-- Chemin complet avec dossier (ajoute l'extension .json)
		local fullPath = FolderName .. "/" .. fileName .. ".json"

		-- Fonction pour sauvegarder les flags dans un fichier JSON
		local function SaveData()
			local success, err = pcall(function()
				-- Encode flags en JSON, gérer Color3 en format table RGB pour éviter erreur JSON
				local serializableFlags = {}

				for key, value in pairs(flags) do
					if typeof(value) == "Color3" then
						serializableFlags[key] = {
							__type = "Color3",
							R = value.R,
							G = value.G,
							B = value.B
						}
					else
						serializableFlags[key] = value
					end
				end

				local jsonData = HttpService:JSONEncode(serializableFlags)
				writefile(fullPath, jsonData)
				print("Saved data in:", fullPath)
			end)
			if not success then
				warn("Error when saving the data :", err)
			end
		end


		local function DeserializeValue(val)
			if type(val) == "table" and val.__type == "Color3" and val.R and val.G and val.B then
				return Color3.new(val.R, val.G, val.B)
			end
			return val
		end


		local function SetFlag(name, value)
			print("SetFlag", name, value)
			flags[name] = value
			SaveData()
		end


		if settingsData.EnableSavingData then

			function library:LoadData()
				if not game:GetService("RunService"):IsStudio() then
					print("Loading Data...")

					local settingsData = settings1 and settings1.Data or {}
					local FolderName = settingsData.FolderName or "UnknownFolder"
					local fileName = settingsData.FileName or "UnknownFile"
					local fullPath = FolderName .. "/" .. fileName .. ".json"

					-- Check if file exists
					if not isfile(fullPath) then
						warn("No saved data file found at: " .. fullPath)
						window:Notify({
							Title = "Data!",
							Message = "No saved data found!",
							Duration = 5,
						})
						return
					end

					-- Read file content
					local success, content = pcall(readfile, fullPath)
					if not success or not content or content == "" then
						warn("Failed to read data file or file is empty: " .. tostring(content))
						window:Notify({
							Title = "Data!",
							Message = "Failed to load data or file is empty!",
							Duration = 10,
						})
						return
					end

					-- Decode JSON data
					local loadedData
					success, loadedData = pcall(function()
						return HttpService:JSONDecode(content)
					end)

					if not success or type(loadedData) ~= "table" then
						warn("Failed to decode JSON data or invalid data format.")
						window:Notify({
							Title = "Data!",
							Message = "Failed to decode saved data!",
							Duration = 10,
						})
						return
					end

					-- Deserialize values (handle Color3 and other types)
					for k, v in pairs(loadedData) do
						loadedData[k] = DeserializeValue(v)
					end

					-- Update flags
					flags = loadedData

					-- Apply loaded data to all tabs
					for _, tab in pairs(window.tabs) do
				
						tab.SlidersValue = tab.SlidersValue or {}
						tab.textboxesText = tab.textboxesText or {}
						tab.dropdownValue = tab.dropdownValue or {}
						tab.TogglesValue = tab.TogglesValue or {}
						tab.ColorPickerValue = tab.ColorPickerValue or {}
						tab.sliders = tab.sliders or {}
						tab.textboxes = tab.textboxes or {}
						tab.dropdowns = tab.dropdowns or {}
						tab.buttons = tab.buttons or {}
						tab.texts = tab.texts or {}
		tab.sections = tab.sections or {}
						tab.paragraphs = tab.paragraphs or {}
						tab.toggles = tab.toggles or {}
						tab.ColorPicker = tab.ColorPicker or {}

						-- Apply saved values to UI elements
						for name, value in pairs(flags) do
							print("Processing flag:", name, value)
							if tab.sliders[name] then
								pcall(function()
									print("Set slider", name, "to", value)
									tab.sliders[name]:SetValue(value)
									tab.SlidersValue[name] = value
								end)
							end
							if tab.ColorPicker[name] then
								pcall(function()
									print("Set color picker", name, "to", value)
									tab.ColorPicker[name]:Set(value)
									tab.ColorPickerValue[name] = value
								end)
							end
							if tab.textboxes[name] then
								pcall(function()
									print("Set textbox", name, "to", value)
									tab.textboxes[name]:SetText(value)
									tab.textboxesText[name] = value
								end)
							end
							if tab.dropdowns[name] then
								pcall(function()
									print("Set dropdown", name, "to", value)
									tab.dropdowns[name]:Select(value)
									tab.dropdownValue[name] = value
								end)
							end
							if tab.toggles[name] then
								pcall(function()
									print("Set toggle", name, "to", value)
									tab.toggles[name]:Set(value)
									tab.TogglesValue[name] = value
								end)
							end
						end
					end

					if not settingsData.DisableNotifyingLoadedData then
						window:Notify({
							Title = "Data!",
							Message = "Successfully loaded saved data!",
							Duration = 5,
						})
					end
				end
			end
		end


		library.SetFlag = SetFlag



		-- Frame de contenu scrollable
		local scroll = createUI("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, 0);
			CanvasSize = UDim2.new(0, 0, 0, 0);
			ScrollBarThickness = 8;
			Visible = false;
			BackgroundTransparency = 1;
			Parent = contentHolder;
		})
		local layout = createUI("UIListLayout", {
			Padding = UDim.new(0, 10),
			SortOrder = Enum.SortOrder.LayoutOrder,
			Parent = scroll
		})

		layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			scroll.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 20)
		end)

		createUI("UIPadding", {
			PaddingTop = UDim.new(0, 10),
			PaddingLeft = UDim.new(0, 10),
			PaddingRight = UDim.new(0, 10),
			Parent = scroll;
		})

		tab.content = scroll


		local tabButton 
		if icon ~= 0 then 
			tabButton = createUI("TextButton", {
				Text = ""; -- Le texte sera mis dans un Label séparé
				Size = UDim2.new(1, 0, 0, 30);
				BackgroundColor3 = selectedTheme.TabButtons;
				TextColor3 = selectedTheme.TextColor,
				Font = Enum.Font.GothamBold;
				TextSize = 14; -- inutile ici car on va utiliser un Label
				Parent = tabsFrame;
			})

			-- Layout pour bien aligner l’image et le texte
			local uiListLayout = Instance.new("UIListLayout")
			uiListLayout.Parent = tabButton
			uiListLayout.FillDirection = Enum.FillDirection.Horizontal
			uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
			uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
			uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			uiListLayout.Padding = UDim.new(0, 5)

			-- Image à gauche
			local Imageicon = Instance.new("ImageLabel")
			Imageicon.Name = "Icon"
			Imageicon.Size = UDim2.new(0, 20, 0, 20)
			Imageicon.BackgroundTransparency = 1
			Imageicon.Image = "rbxassetid://"..icon -- Remplace par l’ID de ton image
			Imageicon.Parent = tabButton

			-- Texte à droite
			local textLabel = Instance.new("TextLabel")
			textLabel.Name = name
			textLabel.Text = name
			textLabel.Size = UDim2.new(1, -30, 1, 0) -- laisse de la place pour l'image + padding
			textLabel.BackgroundTransparency = 1
			textLabel.TextColor3 = selectedTheme.TextColor
			textLabel.Font = Enum.Font.Gotham
			textLabel.TextSize = 12
			textLabel.TextXAlignment = Enum.TextXAlignment.Left
			textLabel.Parent = tabButton

		else
			tabButton =  createUI("TextButton", {
				Text = name;
				Size = UDim2.new(1, 0, 0, 30);
				BackgroundColor3 = selectedTheme.TabButtons;
				TextColor3 =selectedTheme.TextColor,
				Font = Enum.Font.GothamBold;
				TextSize = 14;
				Parent = tabsFrame;
			})
		
		end
		TabButtons[name] = tabButton
		createUI("UICorner", {Parent = tabButton})

		tabButton.MouseButton1Click:Connect(function()
			for _, t in pairs(window.tabs) do
				t.content.Visible = false
			end
			tab.content.Visible = true
		end)

		-- Ajout dans la liste de tabs
		table.insert(window.tabs, tab)

		-- Affiche automatiquement le premier
		if #window.tabs == 1 then
			tab.content.Visible = true
		end

		function tab:AddButton(opts)
			local flag = opts.Name
			local button = createUI("TextButton", {
				Text = opts.Text;
				Size = UDim2.new(1, 0, 0, 30);
				BackgroundColor3 = selectedTheme.Buttons;
				TextColor3 = selectedTheme.TextColor,
				Font = Enum.Font.Gotham;
				TextSize = 14;
				TextXAlignment = Enum.TextXAlignment.Left,
				Parent = tab.content;
			})
			local TextButonn = createUI("TextLabel", {
				Text = "Button";
				Size = UDim2.new(0.15, 0, 0.35, 0);
				Position = UDim2.new(0.8,0,0.65,0);
				BackgroundTransparency = 1;
				TextColor3 = Color3.new(0.533333, 0.533333, 0.533333);
				Font = Enum.Font.Gotham;
				TextSize = 12;
				Parent = button;
			})
			createUI("UICorner", {Parent = button})
			createUI("UIPadding", {
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
				PaddingTop = UDim.new(0, 5),
				PaddingBottom = UDim.new(0, 5),
				Parent = button;
			})
			button.MouseButton1Click:Connect(function()
				if opts.Callback then opts.Callback() end

			end)
			-- Retourne un objet avec une méthode Set pour changer le texte
			local obj = {}
			function obj:Set(t)
				-- t est une table avec un seul élément string, ex: {"nouveaux"}
				if type(t) == "table" and type(t[1]) == "string" then
					button.Text = t[1]
				else
					warn("Set attend une table avec un string en premier élément")
				end
			end
			function obj:ChangeTheme(ThemesName)
				button.BackgroundColor3 = selectedTheme.Buttons
				button.TextColor3 = selectedTheme.TextColor
			end
			tab.buttons[flag] = obj
			return obj

		end
		function tab:AddText(opts)
			local flag = opts.Name
			local button = createUI("TextLabel", {
				Text = opts.Text;
				Size = UDim2.new(1, 0, 0, 30);
				BackgroundColor3 = selectedTheme.Buttons;
				TextColor3 = selectedTheme.TextColor,
				Font = Enum.Font.Gotham;
				TextSize = 14;
				TextXAlignment = Enum.TextXAlignment.Left,
				Parent = tab.content;
			})
			createUI("UICorner", {Parent = button})
			createUI("UIPadding", {
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
				PaddingTop = UDim.new(0, 5),
				PaddingBottom = UDim.new(0, 5),
				Parent = button;
			})


			-- Retourne un objet avec une méthode Set pour changer le texte
			local obj = {}
			function obj:Set(t)
				-- t est une table avec un seul élément string, ex: {"nouveaux"}
				if type(t) == "table" and type(t[1]) == "string" then
					button.Text = t[1]
				else
					warn("Set attend une table avec un string en premier élément")
				end
			end
function obj:ChangeTheme(ThemesName)
				button.BackgroundColor3 = selectedTheme.Buttons
				button.TextColor3 = selectedTheme.TextColor
end
			tab.texts[flag] = obj
			return obj
		end

		function tab:AddParagraph(opts)
			local flag = opts.Name
			assert(type(opts) == "table", "Expected table as argument")
			assert(type(opts.Title) == "string", "Title must be a string")
			assert(type(opts.Content) == "string", "Content must be a string")

			-- Création de la frame conteneur
			local frame = createUI("Frame", {
				Size = UDim2.new(1, 0, 0, 50), -- hauteur temporaire, on va ajuster après
				BackgroundColor3 = selectedTheme.Buttons,
				Parent = tab.content,
			})
			createUI("UICorner", {Parent = frame})

			-- Padding interne pour un peu d’espace autour
			local padding = createUI("UIPadding", {
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
				PaddingTop = UDim.new(0, 10),
				PaddingBottom = UDim.new(0, 10),
				Parent = frame,
			})

			-- Label du titre
			local titleLabel = createUI("TextLabel", {
				Text = opts.Title,
				Size = UDim2.new(1, 0, 0, 25),
				Position = UDim2.new(0, 5, 0, 5), -- position locale ajoutée
				BackgroundTransparency = 1,
				TextColor3 = Color3.new(1, 1, 1),
				Font = Enum.Font.GothamBold,
				TextSize = 16,
				TextXAlignment = Enum.TextXAlignment.Left,
				Parent = frame,
			})

			-- Label du contenu (multi-line)
			local contentLabel = createUI("TextLabel", {
				Text = opts.Content,
				Size = UDim2.new(1, 0, 0, 0), -- taille temporaire
				Position = UDim2.new(0, 5, 0, 35), -- position locale ajoutée (juste en dessous du titre)
				BackgroundTransparency = 1,
				TextColor3 = Color3.new(1, 1, 1),
				Font = Enum.Font.Gotham,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				Parent = frame,
			})


			-- Calcul de la hauteur nécessaire pour le contenu (avec un petit délai pour s'assurer du rendu)
			-- On peut utiliser TextBounds pour calculer la taille
			local textSize = contentLabel.TextBounds
			contentLabel.Size = UDim2.new(1, 0, 0, textSize.Y)

			-- Ajustement de la taille de la frame conteneur (titre + contenu + padding)
			frame.Size = UDim2.new(1, 0, 0, 25 + textSize.Y + 25) -- 25 pour le titre, 20 pour padding haut+bas

	
			local Api = {Frame = frame,
				TitleLabel = titleLabel,
				ContentLabel = contentLabel,
				Set = function(self, newOpts)
					if newOpts.Title then
						self.TitleLabel.Text = newOpts.Title
					end
					if newOpts.Content then
						self.ContentLabel.Text = newOpts.Content
						local newSize = self.ContentLabel.TextBounds
						self.ContentLabel.Size = UDim2.new(1, 0, 0, newSize.Y)
						self.Frame.Size = UDim2.new(1, 0, 0, 25 + newSize.Y + 20)
					end
				end,
				ChangeTheme = function(ThemesName)
					frame.BackgroundColor3 = selectedTheme.Buttons
				end}
			
			tab.paragraphs[flag] = Api

			return Api
		end


		local TweenService = game:GetService("TweenService")
		local UserInputService = game:GetService("UserInputService")

		-- Convertit Color3 en table pour sauvegarde
		local function Color3ToTable(color)
			return {color.R, color.G, color.B}
		end

		-- Convertit table en Color3 pour chargement
		local function TableToColor3(t)
			if type(t) == "table" and #t == 3 then
				return Color3.new(t[1], t[2], t[3])
			else
				return Color3.fromRGB(255, 255, 255) -- couleur par défaut
			end
		end

		function tab:AddColorPicker(opts)
			local flag = opts.Flag or opts.Name or "ColorPicker"
			local defaultColor = opts.Color or Color3.fromRGB(255, 255, 255)

			tab.ColorPicker = tab.ColorPicker or {}
			tab.ColorPickerValue = tab.ColorPickerValue or {}

			-- UI Elements
			local container = createUI("TextButton", {
				Text = opts.Text;
				Size = UDim2.new(1, 0, 0, 30);
				BackgroundColor3 = selectedTheme.Buttons;
				TextColor3 = selectedTheme.TextColor,
				Font = Enum.Font.Gotham;
				TextSize = 14;
				TextXAlignment = Enum.TextXAlignment.Left,
				Parent = tab.content;
			})
			createUI("UICorner", {Parent = container})
			createUI("UIPadding", {
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
				PaddingTop = UDim.new(0, 5),
				PaddingBottom = UDim.new(0, 5),
				Parent = container;
			})

			local colorDisplay = Instance.new("TextButton")
			colorDisplay.Size = UDim2.new(0, 25, 0, 25)
			colorDisplay.Position = UDim2.new(1, -60, 0.5, -12)
			colorDisplay.BackgroundColor3 = defaultColor
			colorDisplay.BorderSizePixel = 0
			colorDisplay.Text = ""
			colorDisplay.AutoButtonColor = false

			colorDisplay.Parent = container
			createUI("UICorner", {Parent = colorDisplay})

			-- Color Picker Window
			local colorWindow = Instance.new("Frame")
			colorWindow.Size = UDim2.new(0, 250, 0, 250)
			colorWindow.Position = UDim2.new(0.5, 0, 0.5, 0)
			colorWindow.AnchorPoint = Vector2.new(0.5, 0.5)
			colorWindow.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			colorWindow.Visible = false
			colorWindow.BorderSizePixel = 0
			colorWindow.ZIndex = 10

			colorWindow.Parent = gui

			createUI("UICorner", {CornerRadius = UDim.new(0, 6), Parent = colorWindow})

			local colorWheel = Instance.new("ImageLabel")
			colorWheel.Size = UDim2.new(0, 200, 0, 200)
			colorWheel.Position = UDim2.new(0.5, 0, 0, 10)
			colorWheel.AnchorPoint = Vector2.new(0.5, 0)
			colorWheel.BackgroundTransparency = 1
			colorWheel.Image = "rbxassetid://6020299385" -- roue des couleurs
			colorWheel.ZIndex = 11
			colorWheel.Parent = colorWindow

			local closeBtn = Instance.new("TextButton")
			closeBtn.Size = UDim2.new(0, 60, 0, 30)
			closeBtn.Position = UDim2.new(0.5, -30, 1, -35)
			closeBtn.Text = "Close"
			closeBtn.ZIndex = 11
			closeBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			closeBtn.TextColor3 = Color3.new(1, 1, 1)
			closeBtn.Parent = colorWindow
			Instance.new("UICorner", closeBtn)

			local selecting = false

			local function ApplyColor(color)
				TweenService:Create(colorDisplay, TweenInfo.new(0.15), {
					BackgroundColor3 = color
				}):Play()

				if settings1 and settings1.Data and settings1.Data.EnableSavingData then
					print("Saving color: ", color)
					local colorTable = Color3ToTable(color)
					tab.ColorPickerValue[flag] = colorTable
					SetFlag(flag, colorTable) -- sauvegarde la table, pas Color3 direct
				end
				if opts.Callback then
					opts.Callback(color)
				end
			end

			local function updateColor(input)
				local relPos = Vector2.new(input.Position.X - colorWheel.AbsolutePosition.X, input.Position.Y - colorWheel.AbsolutePosition.Y)
				local radius = colorWheel.AbsoluteSize.X / 2
				local center = Vector2.new(radius, radius)
				local dist = (relPos - center).Magnitude

				if dist <= radius then
					local angle = math.atan2(relPos.Y - center.Y, relPos.X - center.X)
					local hue = (angle / (2 * math.pi)) % 1
					local color = Color3.fromHSV(hue, 1, 1)
					ApplyColor(color)
				end
			end

			colorWheel.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					selecting = true
					updateColor(input)
				end
			end)

			colorWheel.InputChanged:Connect(function(input)
				if selecting and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
					updateColor(input)
				end
			end)

			UserInputService.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					selecting = false
				end
			end)

			colorDisplay.MouseButton1Click:Connect(function()
				colorWindow.Visible = not colorWindow.Visible
			end)

			closeBtn.MouseButton1Click:Connect(function()
				colorWindow.Visible = false
			end)

	
			local api = {
				Set = function(_, color)
					if typeof(color) == "table" then
						local c = TableToColor3(color)
						ApplyColor(c)
					elseif typeof(color) == "Color3" then
						ApplyColor(color)
					end
				end,
				Get = function()
					local saved = tab.ColorPickerValue[flag]
					if saved then
						return TableToColor3(saved)
					else
						return defaultColor
					end
				end,
				ChangeTheme = function(ThemeName)
					container.BackgroundColor3 = selectedTheme.Buttons
				container.TextColor3 = selectedTheme.TextColor
				end
			}
			tab.ColorPicker[flag] = api



			return api
		end


		function tab:AddToggle(opts)
			local flag = opts.Flag or opts.Name or "Button"
			local value = opts.Default or false

			local button = createUI("TextButton", {
				Text = opts.Text;
				Size = UDim2.new(1, 0, 0, 30);
				BackgroundColor3 = selectedTheme.Buttons;
				TextColor3 = selectedTheme.TextColor,
				Font = Enum.Font.Gotham;
				TextSize = 14;
				TextXAlignment = Enum.TextXAlignment.Left;
				Parent = tab.content;
			})

			createUI("UICorner", {Parent = button})
			createUI("UIPadding", {
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
				PaddingTop = UDim.new(0, 5),
				PaddingBottom = UDim.new(0, 5),
				Parent = button;
			})

			local toggleContainer = createUI("Frame", {
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.new(0, 40, 0, 20),
				BackgroundColor3 = Color3.fromRGB(80, 80, 80),
				Parent = button,
			})
			createUI("UICorner", {CornerRadius = UDim.new(1, 0), Parent = toggleContainer})

			local toggleCircle = createUI("Frame", {
				Size = UDim2.new(0, 16, 0, 16),
				Position = value and UDim2.new(1, -18, 0.5, -8) or UDim2.new(0, 2, 0.5, -8),
				BackgroundColor3 = value and Color3.fromRGB(0, 170, 0) or Color3.fromRGB(200, 200, 200),
				Parent = toggleContainer,
			})
			createUI("UICorner", {CornerRadius = UDim.new(1, 0), Parent = toggleCircle})

			local function setToggleState(state)
				value = state
				local goalPos = state and UDim2.new(1, -18, 0.5, -8) or UDim2.new(0, 2, 0.5, -8)
				local goalColor = state and Color3.fromRGB(0, 170, 0) or Color3.fromRGB(200, 200, 200)

				TweenService:Create(toggleCircle, TweenInfo.new(0.2), {
					Position = goalPos,
					BackgroundColor3 = goalColor
				}):Play()
			end

			button.MouseButton1Click:Connect(function(State)
				if State then
					value = State
				else
					value = not value
				end
				if settings1 and settings1.Data and settings1.Data.EnableSavingData then
					print("Saving Toggle "..flag.." to "..tostring(value))
					tab.TogglesValue = tab.TogglesValue or {}
					tab.TogglesValue[flag] = value
					SetFlag(flag, value)
				end
				setToggleState(value)
				if opts.Callback then opts.Callback(value) end

			end)

			-- Init state
			setToggleState(value)

			-- Renvoi de l'objet
			local obj = {}

			function obj:Set(newValue)
				if type(newValue) ~= "boolean" then
					warn("Set attend un booléen.")
					return
				end
				print("load Toggle " ..tostring(newValue))

				setToggleState(newValue)

				if settings1 and settings1.Data and settings1.Data.EnableSavingData then
					tab.TogglesValue = tab.TogglesValue or {}
					tab.TogglesValue[flag] = newValue
					SetFlag(flag, newValue)
				end

				if opts.Callback then
					opts.Callback(newValue)
				end
			end
			function obj:ChangeTheme(ThemesName)
				button.BackgroundColor3 = selectedTheme.Buttons
			button.TextColor3 = selectedTheme.TextColor
			end
			tab.toggles[flag] = obj

			return obj
		end

		local UserInputService = game:GetService("UserInputService")

		function tab:AddSlider(opts)
			local flag = opts.Flag or opts.Name or "Slider"
			local min = opts.Min or 0
			local max = opts.Max or 100
			local default = opts.Default or min

			tab.sliders = tab.sliders or {}
			tab.SlidersValue = tab.SlidersValue or {}

			local value = default

			-- Conteneur principal du slider
			local slider = createUI("TextButton", {
				Text = "";
				Size = UDim2.new(1, 0, 0, 40);
				BackgroundColor3 = selectedTheme.Buttons;
				AutoButtonColor = false;
				Parent = tab.content;
			})
			createUI("UICorner", { Parent = slider })

			-- Padding interne
			createUI("UIPadding", {
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
				PaddingTop = UDim.new(0, 4),
				PaddingBottom = UDim.new(0, 4),
				Parent = slider,
			})

			-- Layout pour organiser les éléments verticalement
			local layout = Instance.new("UIListLayout")
			layout.FillDirection = Enum.FillDirection.Vertical
			layout.SortOrder = Enum.SortOrder.LayoutOrder
			layout.VerticalAlignment = Enum.VerticalAlignment.Center
			layout.Parent = slider

			-- Label du texte (ex: "Volume")
			local labelText = createUI("TextLabel", {
				Text = opts.Text or "Slider",
				Size = UDim2.new(1, 0, 0, 14),
				BackgroundTransparency = 1,
				TextColor3 = selectedTheme.TextColor,
				Font = Enum.Font.Gotham,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				Parent = slider,
			})

			-- Label de la valeur (au-dessus de la barre)
			local label = createUI("TextLabel", {
				Size = UDim2.new(1, 0, 0, 12),
				BackgroundTransparency = 1,
				Text = tostring(value),
				TextColor3 = Color3.fromRGB(170, 255, 255),
				Font = Enum.Font.Gotham,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Right,
				Parent = slider,
			})

			-- Barre de fond (pleine largeur du bouton)
			local sliderBar = createUI("Frame", {
				Size = UDim2.new(1, 0, 0, 6),
				BackgroundColor3 = Color3.fromRGB(80, 80, 80),
				Parent = slider,
			})
			createUI("UICorner", { CornerRadius = UDim.new(1, 0), Parent = sliderBar })

			-- Barre de remplissage
			local fillBar = createUI("Frame", {
				Size = UDim2.new((value - min) / (max - min), 0, 1, 0),
				BackgroundColor3 = Color3.fromRGB(0, 170, 255),
				Parent = sliderBar,
			})
			createUI("UICorner", { CornerRadius = UDim.new(1, 0), Parent = fillBar })


			local obj = {}
			obj.value = value

			function obj:SetValue(v)
				v = math.clamp(v, min, max)
				local percent = (v - min) / (max - min)
				fillBar.Size = UDim2.new(percent, 0, 1, 0)
				label.Text = tostring(v)
				value = v
				obj.value = v

				if settings1 and settings1.Data and settings1.Data.EnableSavingData then
					tab.SlidersValue = tab.SlidersValue or {}
					tab.SlidersValue[flag] = value
					SetFlag(flag, value)
				end
				if opts.Callback then
					opts.Callback(v)
				end
			end
function obj:ChangeTheme(ThemesName)
				slider.BackgroundColor3 = selectedTheme.Buttons
				labelText.TextColor3 = selectedTheme.TextColor
end
			local moveConn, releaseConn

			local function updateSlider(x)
				local percent = math.clamp((x - sliderBar.AbsolutePosition.X) / sliderBar.AbsoluteSize.X, 0, 1)
				local v = math.floor(min + (max - min) * percent)
				obj:SetValue(v)
				if settings1 and settings1.Data and settings1.Data.EnableSavingData then
					tab.SlidersValue = tab.SlidersValue or {}
					tab.SlidersValue[flag] = v
					SetFlag(flag, v)
				end
			end

			sliderBar.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					updateSlider(input.Position.X)

					moveConn = UserInputService.InputChanged:Connect(function(moveInput)
						if moveInput.UserInputType == Enum.UserInputType.MouseMovement or moveInput.UserInputType == Enum.UserInputType.Touch then
							updateSlider(moveInput.Position.X)
						end
					end)

					releaseConn = UserInputService.InputEnded:Connect(function(endInput)
						if endInput.UserInputType == Enum.UserInputType.MouseButton1 or endInput.UserInputType == Enum.UserInputType.Touch then
							if moveConn then moveConn:Disconnect() end
							if releaseConn then releaseConn:Disconnect() end
						end
					end)
				end
			end)

			tab.sliders[flag] = obj

			return obj
		end




		function tab:AddTextbox(opts)
			local flag = opts.Flag or opts.Name or "Textbox"
			local defaultText = opts.Text or ""

			tab.textboxes = tab.textboxes or {}
			tab.textboxesText = tab.textboxesText or {}

			local txt = createUI("TextBox", {
				Text = defaultText,
				PlaceholderText = opts.Placeholder or "",
				BackgroundColor3 = selectedTheme.Buttons,
				TextColor3 = selectedTheme.TextColor,
				PlaceholderColor3 = Color3.fromRGB(143, 143, 143),
				Font = Enum.Font.Gotham,
				TextSize = 18,
				Size = UDim2.new(1, 0, 0, 40),
				Parent = tab.content
			})
			createUI("UICorner", { Parent = txt })

			local obj = {}

			local function UpdateValue(newValue)
				if settings1 and settings1.Data and settings1.Data.EnableSavingData then
					tab.textboxesText = tab.textboxesText or {}
					tab.textboxesText[flag] = newValue
					SetFlag(flag, newValue)
				end
				if opts.Callback then opts.Callback(newValue) end
			end

			txt.FocusLost:Connect(function()
				UpdateValue(txt.Text)
			end)

			function obj:Set(t)
				if type(t) == "table" then
					if type(t.Placeholder) == "string" then
						txt.PlaceholderText = t.Placeholder
					end
					if type(t.Text) == "string" then
						txt.Text = t.Text
						UpdateValue(t.Text)
					end
				else
					warn("Set attend une table avec 'Placeholder' et/ou 'Text'")
				end
			end

			function obj:SetText(newText)
				if type(newText) == "string" then
					txt.Text = newText
					UpdateValue(newText)
				else
					warn("SetText attend une string")
				end
			end
function obj:ChangeTheme(ThemesName)
				txt.BackgroundColor3 = selectedTheme.Buttons
				txt.TextColor3 = selectedTheme.TextColor
	
end
			tab.textboxes[flag] = obj

			return obj
		end
	function tab:AddSection(opts)
			local flag = opts.Name
			local button = createUI("TextLabel", {
				Text = opts.Text;
				Size = UDim2.new(1, 0, 0, 25);
				BackgroundColor3 = selectedTheme.Buttons;
				TextColor3 = selectedTheme.TextColor,
				Font = Enum.Font.Gotham;
				TextScaled = true;
				TextXAlignment = Enum.TextXAlignment.Center,
				Parent = tab.content;
			})
			createUI("UICorner", {Parent = button})
			createUI("UIPadding", {
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
				PaddingTop = UDim.new(0, 5),
				PaddingBottom = UDim.new(0, 5),
				Parent = button;
			})


			-- Retourne un objet avec une méthode Set pour changer le texte
			local obj = {}
			function obj:Set(t)
				-- t est une table avec un seul élément string, ex: {"nouveaux"}
				if type(t) == "table" and type(t[1]) == "string" then
					button.Text = t[1]
				else
					warn("Set attend une table avec un string en premier élément")
				end
			end
function obj:ChangeTheme(ThemesName)
				button.BackgroundColor3 = selectedTheme.Buttons
				button.TextColor3 = selectedTheme.TextColor
end
			tab.sections[flag] = obj
			return obj
		end
		function tab:AddDropdown(opts)
			local flag = opts.Flag or opts.Name or "Dropdown"
			local multi = opts.MultiSelect or false
			local dropdown = {}
			dropdown.Selected = {}
			dropdown.Options = opts.Options or {}
			dropdown.FrameOpen = false

			tab.dropdowns = tab.dropdowns or {}
			tab.dropdownValue = tab.dropdownValue or {}

			local btn = createUI("TextButton", {
				Text = opts.Text,
				BackgroundColor3 = selectedTheme.Buttons,
				TextColor3 = selectedTheme.TextColor,
				Font = Enum.Font.Gotham,
				TextSize = 14,
				Size = UDim2.new(1, 0, 0, 40),
				TextXAlignment = Enum.TextXAlignment.Left,
				Parent = tab.content
			})
			createUI("UICorner", { Parent = btn })
		

			local container = createUI("Frame", {
				Size = UDim2.new(0.9, 0, 0, 0),
				BackgroundColor3 = selectedTheme.TabContent,
				BackgroundTransparency = 0,
				ClipsDescendants = true,
				Parent = tab.content
			})
			createUI("UICorner", { 
				Parent = container
			})
			local optionHolder = createUI("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundColor3 = Color3.fromRGB(60, 60, 60),
				Parent = container
			})
			createUI("UICorner", { Parent = optionHolder })

			local layout = createUI("UIListLayout", {
				Padding = UDim.new(0, 4),
				SortOrder = Enum.SortOrder.LayoutOrder,
				Parent = optionHolder
			})


			local function updateCanvas()
				local newHeight = layout.AbsoluteContentSize.Y + 10
				TweenService:Create(container, TweenInfo.new(0.2), {
					Size = dropdown.FrameOpen and UDim2.new(1, 0, 0, newHeight) or UDim2.new(1, 0, 0, 0)
				}):Play()
			end

			local function updateButtonText()
				if #dropdown.Selected == 0 then
					btn.Text = opts.Text.." "..opts.Default
					btn.TextSize = 14
				else
					btn.Text =  opts.Text.." "..table.concat(dropdown.Selected, ", ")
					local HM = #dropdown.Selected/2
					btn.TextSize = 14
					btn.TextSize = btn.TextSize - HM
				end
			end

			local function createOptions(optionList)
				for _, child in ipairs(optionHolder:GetChildren()) do
					if child:IsA("TextButton") then
						child:Destroy()
					end
				end

				for _, option in ipairs(optionList) do
					local optBtn = createUI("TextButton", {
						Text = option,
						TextColor3 = selectedTheme.TextColor,
						Font = Enum.Font.Gotham,
						TextSize = 14,
						BackgroundColor3 = selectedTheme.Buttons,
						Size = UDim2.new(1, 0, 0, 28),
						Parent = optionHolder
					})
					createUI("UICorner", { Parent = optBtn })

					optBtn.MouseButton1Click:Connect(function()
						if multi then
							if table.find(dropdown.Selected, option) then
								table.remove(dropdown.Selected, table.find(dropdown.Selected, option))
							else
								table.insert(dropdown.Selected, option)
							end
						else
							dropdown.Selected = {option}
							dropdown.FrameOpen = false
							updateCanvas()
						end
						if settings1 and settings1.Data and settings1.Data.EnableSavingData then
							tab.dropdownValue = tab.dropdownValue or {}
							tab.dropdownValue[flag] = dropdown.Selected
							SetFlag(flag, dropdown.Selected)
						end
						updateButtonText()
						if opts.Callback then opts.Callback(option, dropdown.Selected) end
					end)
				end
			end

			createOptions(dropdown.Options)

			btn.MouseButton1Click:Connect(function()
				dropdown.FrameOpen = not dropdown.FrameOpen
				updateCanvas()
			end)

			updateCanvas()
			updateButtonText()

			function dropdown:Refresh(newOptions)
				dropdown.Options = newOptions
				dropdown.Selected = {}
				updateButtonText()
				createOptions(newOptions)
			end

			function dropdown:Select(value)
				local changed = false

				if typeof(value) == "table" then
					if multi then
						for _, val in ipairs(value) do
							if not table.find(dropdown.Options, val) then
								warn("Option '" .. tostring(val) .. "' non trouvée dans le dropdown.")
								continue
							end
							if not table.find(dropdown.Selected, val) then
								table.insert(dropdown.Selected, val)
								changed = true
							end
						end
					else
						local val = value[1]
						if not table.find(dropdown.Options, val) then
							warn("Option '" .. tostring(val) .. "' non trouvée dans le dropdown.")
							return
						end
						if dropdown.Selected[1] ~= val or #dropdown.Selected > 1 then
							dropdown.Selected = {val}
							changed = true
						end
						dropdown.FrameOpen = false
						updateCanvas()
					end
				else
					if not table.find(dropdown.Options, value) then
						warn("Option '" .. tostring(value) .. "' non trouvée dans le dropdown.")
						return
					end

					if multi then
						if not table.find(dropdown.Selected, value) then
							table.insert(dropdown.Selected, value)
							changed = true
						end
					else
						if dropdown.Selected[1] ~= value or #dropdown.Selected > 1 then
							dropdown.Selected = {value}
							changed = true
						end
						dropdown.FrameOpen = false
						updateCanvas()
					end
				end

				if changed then
					-- Sauvegarde
					if settings1 and settings1.Data and settings1.Data.EnableSavingData then
						tab.dropdownValue = tab.dropdownValue or {}
						tab.dropdownValue[flag] = dropdown.Selected
						SetFlag(flag, dropdown.Selected)
					end

					updateButtonText()

					if opts.Callback then
						local selectedCopy = table.clone(dropdown.Selected)
						local firstValue = (typeof(value) == "table" and value[1]) or value
						opts.Callback(firstValue, selectedCopy)
					end


				end
			end

			function dropdown:ChangeTheme(ThemesName)
				btn.BackgroundColor3 = selectedTheme.Buttons
				btn.TextColor3 = selectedTheme.TextColor
				createOptions(dropdown.Options)
			end
			tab.dropdowns[flag] = dropdown -- ✅ Sauvegarde du dropdown pour LoadData
			return dropdown -- ✅ Très important !
		end


		

		return tab
		
	end
	
	
end
function library:CreateWindow(settings1, onLoad)
	print("Library Version: 0.37")
	if game:GetService("RunService"):IsStudio() then
		if game.Players.LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("UILibrary") then
			game.Players.LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("UILibrary"):Destroy()
		end
	else
		if game:GetService("CoreGui"):FindFirstChild("UILibrary") then
			game:GetService("CoreGui"):FindFirstChild("UILibrary"):Destroy()
		end
	end
	local window = {}
	window.tabs = {}


	local gui

	if game:GetService("RunService"):IsStudio() then
		gui = createUI("ScreenGui", {
			Name = "UILibrary";
			ResetOnSpawn = false;
			Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui");
		})
	else
		gui = createUI("ScreenGui", {
			Name = "UILibrary";
			ResetOnSpawn = false;
			Parent = game:GetService("CoreGui");
		})
	end
	if settings1.KeySystem then
		local TweenService = game:GetService("TweenService")

		-- Récupération des valeurs
		local Title = settings1.KeySettings.Title
		local Note = settings1.KeySettings.Note
		local Key = settings1.KeySettings.Key

		-- Création du cadre principal
		local KeyFrame = createUI("Frame", {
			Size = UDim2.new(0, 0, 0, 0),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			Parent = gui,
		})
		createUI("UICorner", {Parent = KeyFrame})

		-- Bouton de fermeture (croix rouge)
		local closeButton = createUI("TextButton", {
			Size = UDim2.new(0, 25, 0, 25),
			Position = UDim2.new(1, -30, 0, 5),
			BackgroundColor3 = Color3.fromRGB(200, 50, 50),
			Text = "X",
			TextColor3 = Color3.new(1, 1, 1),
			Font = Enum.Font.GothamBold,
			TextScaled = true,
			Parent = KeyFrame,
		})
		createUI("UICorner", {Parent = closeButton})
		closeButton.MouseButton1Click:Connect(function()
			gui:Destroy()
		end)

		-- Animation d'ouverture
		TweenService:Create(KeyFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
			Size = UDim2.new(0, 500, 0, 200),
			Position = UDim2.new(0.5, 0, 0.5, 0),
		}):Play()

		-- Titre
		createUI("TextLabel", {
			Size = UDim2.new(1, -20, 0, 30),
			Position = UDim2.new(0, 10, 0, 10),
			BackgroundTransparency = 1,
			Text = Title,
			TextColor3 = Color3.new(1, 1, 1),
			TextScaled = true,
			Font = Enum.Font.GothamBold,
			Parent = KeyFrame,
		})

		-- Note d'instruction
		createUI("TextLabel", {
			Size = UDim2.new(1, -20, 0, 40),
			Position = UDim2.new(0, 10, 0, 45),
			BackgroundTransparency = 1,
			Text = Note,
			TextColor3 = Color3.new(0.8, 0.8, 0.8),
			TextWrapped = true,
			TextScaled = true,
			Font = Enum.Font.Gotham,
			Parent = KeyFrame,
		})

		-- Zone de texte pour entrer la clé
		local TextBox = createUI("TextBox", {
			Size = UDim2.new(1, -20, 0, 30),
			Position = UDim2.new(0, 10, 0, 95),
			BackgroundColor3 = Color3.fromRGB(50, 50, 50),
			TextColor3 = Color3.new(1, 1, 1),
			Font = Enum.Font.Gotham,
			TextScaled = true,
			Text = "",
			PlaceholderText = "Enter key here...",
			Parent = KeyFrame,
		})
		createUI("UICorner", {Parent = TextBox})

		-- Bouton de confirmation
		local ConfirmButton = createUI("TextButton", {
			Size = UDim2.new(1, -20, 0, 30),
			Position = UDim2.new(0, 10, 0, 135),
			BackgroundColor3 = Color3.fromRGB(70, 130, 180),
			Text = "Confirm",
			TextColor3 = Color3.new(1, 1, 1),
			Font = Enum.Font.GothamBold,
			TextScaled = true,
			Parent = KeyFrame,
		})
		createUI("UICorner", {Parent = ConfirmButton})

		-- Gestion des boutons Discord / GetKey
		local AddDiscord = settings1.KeySettings.AddDiscordButton
		local AddGetKey = settings1.KeySettings.AddGetKeyButton

		-- Espace de base entre les deux (si les deux sont actifs)
		local spacing = 10
		local baseY = 170
		local totalWidth = 500 - 20 -- largeur totale du cadre - padding

		if AddDiscord and AddGetKey then
			local halfWidth = (totalWidth - spacing) / 2

			-- GetKey button
			local GetKeyBtn = createUI("TextButton", {
				Size = UDim2.new(0, halfWidth, 0, 30),
				Position = UDim2.new(0, 10, 0, baseY),
				BackgroundColor3 = Color3.fromRGB(90, 90, 150),
				Text = "Get Key",
				TextColor3 = Color3.new(1, 1, 1),
				Font = Enum.Font.GothamBold,
				TextScaled = true,
				Parent = KeyFrame,
			})
			createUI("UICorner", {Parent = GetKeyBtn})

			-- Discord button
			local DiscordBtn = createUI("TextButton", {
				Size = UDim2.new(0, halfWidth, 0, 30),
				Position = UDim2.new(0, 10 + halfWidth + spacing, 0, baseY),
				BackgroundColor3 = Color3.fromRGB(88, 101, 242),
				Text = "Join Discord",
				TextColor3 = Color3.new(1, 1, 1),
				Font = Enum.Font.GothamBold,
				TextScaled = true,
				Parent = KeyFrame,
			})
			createUI("UICorner", {Parent = DiscordBtn})
			GetKeyBtn.MouseButton1Click:Connect(function()
				if settings1.KeySettings.GetKeyLink and settings1.KeySettings.GetKeyLink ~= "NoGetKeyLink" then
					copyToClipboard(settings1.KeySettings.GetKeyLink)
				end
			end)
			DiscordBtn.MouseButton1Click:Connect(function()
				if settings1.KeySettings.DiscordLink and settings1.KeySettings.DiscordLink ~= "NoInviteLink" then
					copyToClipboard(settings1.KeySettings.DiscordLink)
				end
			end)
		elseif AddDiscord and not AddGetKey then
			local DiscordBtn = createUI("TextButton", {
				Size = UDim2.new(1, -20, 0, 30),
				Position = UDim2.new(0, 10, 0, baseY),
				BackgroundColor3 = Color3.fromRGB(88, 101, 242),
				Text = "Join Discord",
				TextColor3 = Color3.new(1, 1, 1),
				Font = Enum.Font.GothamBold,
				TextScaled = true,
				Parent = KeyFrame,
			})
			createUI("UICorner", {Parent = DiscordBtn})
DiscordBtn.MouseButton1Click:Connect(function()
				if settings1.KeySettings.DiscordLink and settings1.KeySettings.DiscordLink ~= "NoInviteLink" then
					copyToClipboard(settings1.KeySettings.DiscordLink)
				end
			end)
		elseif not AddDiscord and AddGetKey then
			local GetKeyBtn = createUI("TextButton", {
				Size = UDim2.new(1, -20, 0, 30),
				Position = UDim2.new(0, 10, 0, baseY),
				BackgroundColor3 = Color3.fromRGB(90, 90, 150),
				Text = "Get Key",
				TextColor3 = Color3.new(1, 1, 1),
				Font = Enum.Font.GothamBold,
				TextScaled = true,
				Parent = KeyFrame,
			})
			createUI("UICorner", {Parent = GetKeyBtn})
			GetKeyBtn.MouseButton1Click:Connect(function()
				if settings1.KeySettings.GetKeyLink and settings1.KeySettings.GetKeyLink ~= "NoGetKeyLink" then
					copyToClipboard(settings1.KeySettings.GetKeyLink)
				end
			end)
		end

		local fileName = settings1.KeySettings.FileName .. ".txt"


		local function saveKey(key)
			pcall(function()
				writefile(fileName, key)
			end)
		end


		local function loadKey()
			if isfile(fileName) then
				local key = readfile(fileName)
				return key
			end
			return nil
		end

		if  not game:GetService("RunService"):IsStudio() then
			local savedKey = loadKey()
			if savedKey and savedKey ~= ""  then
				if table.find(Key, savedKey) then
					print("✅ correct key :", savedKey)
					KeyFrame:Destroy()
					if settings1.Intro then
						local TweenService = game:GetService("TweenService")
						local IntroTitle = settings1.IntroTitle


						local IntroFrame = createUI("Frame", {
							Size = UDim2.new(0, 0, 0, 0),
							Position = UDim2.new(0.5, 0, 0.5, 0),
							AnchorPoint = Vector2.new(0.5, 0.5),
							BackgroundColor3 = Color3.fromRGB(30, 30, 30),
							Parent = gui,
						})
						createUI("UICorner", {Parent = IntroFrame})


						local anim = TweenService:Create(IntroFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
							Size = UDim2.new(0, 500, 0, 200),
							Position = UDim2.new(0.5, 0, 0.5, 0),
						})

						createUI("TextLabel", {
							Size = UDim2.new(1, -20, 0, 40),
							Position = UDim2.new(0, 10, 0.5, -20),
							BackgroundTransparency = 1,
							Text = IntroTitle,
							TextColor3 = Color3.new(1, 1, 1),
							TextScaled = true,
							Font = Enum.Font.GothamBold,
							Parent = IntroFrame,
						})
						anim:Play()
						anim.Completed:Connect(function()
							wait(1.5)
							IntroFrame:Destroy()
							VisibleWindow(window,settings1,gui)
							if onLoad then onLoad(window) end
						end)

					else
						VisibleWindow(window,settings1,gui)
						if onLoad then onLoad(window) end
					end

				else
					TextBox.Text = ""
					TextBox.PlaceholderText = "❌ Incorrect/Invalid Key"
				end

			end
		end



		ConfirmButton.MouseButton1Click:Connect(function()
			local inputKey = TextBox.Text
			if table.find(Key, inputKey) then
				print("✅ correct key :", inputKey)
				if settings1.KeySettings.SaveKey then
					if settings1.KeySettings.FileName and not game:GetService("RunService"):IsStudio() then
						local key = TextBox.Text
						saveKey(key)
					end
				end

				-- Animation de fermeture
				local closeTween = TweenService:Create(KeyFrame, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
					Size = UDim2.new(0, 0, 0, 0),
					Position = UDim2.new(0.5, 0, 0.5, 0)
				})
				closeTween:Play()
				closeTween.Completed:Connect(function()
					KeyFrame:Destroy()
					if settings1.Intro then
						local TweenService = game:GetService("TweenService")
						local IntroTitle = settings1.IntroTitle

						-- Création de l'IntroFrame
						local IntroFrame = createUI("Frame", {
							Size = UDim2.new(0, 0, 0, 0),
							Position = UDim2.new(0.5, 0, 0.5, 0),
							AnchorPoint = Vector2.new(0.5, 0.5),
							BackgroundColor3 = Color3.fromRGB(30, 30, 30),
							Parent = gui,
						})
						createUI("UICorner", {Parent = IntroFrame})


						local anim = TweenService:Create(IntroFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
							Size = UDim2.new(0, 500, 0, 200),
							Position = UDim2.new(0.5, 0, 0.5, 0),
						})

						createUI("TextLabel", {
							Size = UDim2.new(1, -20, 0, 40),
							Position = UDim2.new(0, 10, 0.5, -20),
							BackgroundTransparency = 1,
							Text = IntroTitle,
							TextColor3 = Color3.new(1, 1, 1),
							TextScaled = true,
							Font = Enum.Font.GothamBold,
							Parent = IntroFrame,
						})
						anim:Play()
						anim.Completed:Connect(function()
							wait(1.5)
							IntroFrame:Destroy()
							VisibleWindow(window,settings1,gui)
							if onLoad then onLoad(window) end
						end)

					else
						VisibleWindow(window,settings1,gui)
						if onLoad then onLoad(window) end
					end
				end)
			else
				TextBox.Text = ""
				TextBox.PlaceholderText = "❌ Incorrect/Invalid Key"
			end
		end)

	else
		if settings1.Intro then
			local TweenService = game:GetService("TweenService")
			local IntroTitle = settings1.IntroTitle

			-- Création de l'IntroFrame
			local IntroFrame = createUI("Frame", {
				Size = UDim2.new(0, 0, 0, 0),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundColor3 = Color3.fromRGB(30, 30, 30),
				Parent = gui,
			})
			createUI("UICorner", {Parent = IntroFrame})


			local anim = TweenService:Create(IntroFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
				Size = UDim2.new(0, 500, 0, 200),
				Position = UDim2.new(0.5, 0, 0.5, 0),
			})

			createUI("TextLabel", {
				Size = UDim2.new(1, -20, 0, 40),
				Position = UDim2.new(0, 10, 0.5, -20),
				BackgroundTransparency = 1,
				Text = IntroTitle,
				TextColor3 = Color3.new(1, 1, 1),
				TextScaled = true,
				Font = Enum.Font.GothamBold,
				Parent = IntroFrame,
			})
			anim:Play()
			anim.Completed:Connect(function()
				wait(1.5)
				IntroFrame:Destroy()
				VisibleWindow(window,settings1,gui)
				if onLoad then onLoad(window) end
			end)

		else
			VisibleWindow(window,settings1,gui)
			if onLoad then onLoad(window) end

		end
	end

	return window
end


return library
