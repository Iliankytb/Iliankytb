--[[
  TIMER NEON PRO - BY ILIANKYTB
  Style: Neon Futuriste Bleu
  Features: precise timer, settings panel (draggable), HSV color picker (3 sliders),
            sliders style synapse, toggles, animated UI, reset defaults, X close button,
            control bar under signature (Option C)
  Place this LocalScript in StarterPlayerScripts or StarterGui
]]--

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local playerGui = game:GetService("CoreGui")

-- Remove old
local old = playerGui:FindFirstChild("TimerGui_NeonPro")
if old then old:Destroy() end

-- Utils
local function new(cls, props)
    local obj = Instance.new(cls)
    if props then
        for k,v in pairs(props) do obj[k] = v end
    end
    return obj
end

local function clamp(x,a,b) return math.max(a, math.min(b, x)) end

-- Default settings
local DEFAULTS = {
    hsv = {h = 0.58, s = 0.9, v = 0.98}, -- neon blue by default (h approx 0.58)
    textSize = 48,                       -- font sizing (will be scaled)
    rainbow = false,
    beepEnabled = true,
    beepVolume = 0.8,
    bgColor = Color3.fromRGB(6,6,12),
}

local settings = {}
for k,v in pairs(DEFAULTS) do
    if type(v) == "table" then settings[k] = table.clone(v) else settings[k] = v end
end

-- Root GUI
local screenGui = new("ScreenGui", {Name = "TimerGui_NeonPro", ResetOnSpawn = false, Parent = playerGui})

-- Base theme colors
local THEME = {
    bg = Color3.fromRGB(6,6,12),
    panel = Color3.fromRGB(12,16,30),
    accent = Color3.fromRGB(0, 170, 255),
    accent2 = Color3.fromRGB(120, 200, 255),
    text = Color3.fromRGB(230, 240, 255),
    dim = Color3.fromRGB(40,40,60),
}

-- ---------- Main Timer Frame ----------
local mainFrame = new("Frame", {
    Name = "MainFrame",
    Parent = screenGui,
    Size = UDim2.new(0, 420, 0, 160),
    Position = UDim2.new(0.03, 0, 0.18, 0),
    BackgroundColor3 = THEME.bg,
    BorderSizePixel = 0,
})
new("UICorner", {Parent = mainFrame, CornerRadius = UDim.new(0,10)})
new("UIStroke", {Parent = mainFrame, Color = THEME.accent, Transparency = 0.85, Thickness = 1})

-- Title (invisible but gives handle for dragging)
local titleBar = new("Frame", {
    Parent = mainFrame,
    Size = UDim2.new(1,0,0,28),
    Position = UDim2.new(0,0,0,0),
    BackgroundTransparency = 1,
})

-- Timer Label
local timerLabel = new("TextLabel", {
    Parent = mainFrame,
    Name = "TimerLabel",
    BackgroundTransparency = 1,
    Size = UDim2.new(1, -20, 0, 80),
    Position = UDim2.new(0, 10, 0, 18),
    Text = "00:00:00.000",
    TextScaled = false,
    Font = Enum.Font.GothamBlack,
    TextSize = settings.textSize,
    TextColor3 = Color3.fromHSV(settings.hsv.h, settings.hsv.s, settings.hsv.v),
    TextStrokeTransparency = 0.9,
    RichText = false,
    TextXAlignment = Enum.TextXAlignment.Center,
})
-- Signature under the timer
local signature = new("TextLabel", {
    Parent = timerLabel,
    Name = "Signature",
    BackgroundTransparency = 1,
    Size = UDim2.new(1,0,0,18),
    Position = UDim2.new(0,0,1,0),
    Text = "The Best Timer Created By Iliankytb",
    TextScaled = true,
    Font = Enum.Font.Gotham,
    TextColor3 = THEME.text,
    TextTransparency = 0,
})

-- put buttons container directly under signature (Option C)
local controlsBar = new("Frame", {
    Parent = mainFrame,
    Name = "ControlsBar",
    Size = UDim2.new(1, -20, 0, 36),
    Position = UDim2.new(0, 10, 1, -46), -- bottom area, 10px padding
    BackgroundTransparency = 1,
})
local listLayout = new("UIListLayout", {Parent = controlsBar, FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0,8), HorizontalAlignment = Enum.HorizontalAlignment.Center})

-- small helper to make neon buttons (synapse style)
local function makeNeonButton(text, w)
    local b = new("TextButton", {
        Parent = controlsBar,
        Size = UDim2.new(0, w or 70, 1, 0),
        BackgroundColor3 = Color3.fromRGB(18,22,36),
        BorderSizePixel = 0,
        Text = text,
        Font = Enum.Font.GothamBold,
        TextSize = 16,
        TextColor3 = THEME.text,
        AutoButtonColor = false,
    })
    new("UICorner", {Parent = b, CornerRadius = UDim.new(0,6)})
    -- glow stroke
    new("UIStroke", {Parent = b, Color = THEME.accent, Transparency = 0.6, Thickness = 1})
    -- hover tween
    b.MouseEnter:Connect(function()
        TweenService:Create(b, TweenInfo.new(0.12, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(26,34,55)}):Play()
    end)
    b.MouseLeave:Connect(function()
        TweenService:Create(b, TweenInfo.new(0.12, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(18,22,36)}):Play()
    end)
    return b
end

-- Buttons: Start | Stop | Reset | Lock | Settings
local btnStart = makeNeonButton("Start", 84)
local btnStop  = makeNeonButton("Stop", 84)
local btnReset = makeNeonButton("Reset", 84)
local btnLock  = makeNeonButton("Lock", 64)
local btnSettings = makeNeonButton("⚙", 60)

-- ---------- Settings Panel (draggable) ----------
local settingsFrame = new("Frame", {
    Parent = screenGui,
    Name = "SettingsFrame",
    Size = UDim2.new(0, 420, 0, 380),
    Position = UDim2.new(0.35, 0, 0.12, 0),
    BackgroundColor3 = THEME.panel,
    BorderSizePixel = 0,
    Visible = false,
})
new("UICorner", {Parent = settingsFrame, CornerRadius = UDim.new(0,12)})
new("UIStroke", {Parent = settingsFrame, Color = THEME.accent, Transparency = 0.85, Thickness = 1})

-- Header with title & close button
local settingsHeader = new("Frame", {Parent = settingsFrame, Size = UDim2.new(1,0,0,40), BackgroundTransparency = 1})
local settingsTitle = new("TextLabel", {
    Parent = settingsHeader,
    Size = UDim2.new(1, -44, 1, 0),
    Position = UDim2.new(0,8,0,0),
    BackgroundTransparency = 1,
    Text = "Settings",
    TextColor3 = THEME.text,
    TextScaled = true,
    Font = Enum.Font.GothamBold,
})
local closeBtn = new("TextButton", {
    Parent = settingsHeader,
    Size = UDim2.new(0, 36, 0, 28),
    Position = UDim2.new(1, -44, 0, 6),
    Text = "X",
    BackgroundColor3 = Color3.fromRGB(200,40,40),
    TextColor3 = Color3.fromRGB(255,255,255),
    Font = Enum.Font.GothamBold,
    TextSize = 18,
})
new("UICorner", {Parent = closeBtn, CornerRadius = UDim.new(0,6)})
closeBtn.MouseButton1Click:Connect(function()
    settingsFrame.Visible = false
end)

-- make header draggable
do
    local dragging,dragStart,startPos = false,Vector2.new(0,0),UDim2.new()
    settingsHeader.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = settingsFrame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then dragging = false end
            end)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStart
            settingsFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end

-- Content area
local content = new("Frame", {Parent = settingsFrame, Size = UDim2.new(1, -20, 1, -60), Position = UDim2.new(0, 10, 0, 46), BackgroundTransparency = 1})
local contentLayout = new("UIListLayout", {Parent = content, Padding = UDim.new(0,8)})

-- Section helper
local function createSection(titleText)
    local header = new("TextLabel", {
        Parent = content,
        Size = UDim2.new(1,0,0,28),
        BackgroundTransparency = 1,
        Text = titleText,
        TextColor3 = THEME.accent2,
        Font = Enum.Font.GothamBold,
        TextSize = 18,
        TextXAlignment = Enum.TextXAlignment.Left,
    })
    return header
end

-- Slider helper (thin synapse style)
local function createSlider(parent, labelText, min, max, initial, onChange)
    local frame = new("Frame", {Parent = parent, Size = UDim2.new(1,0,0,40), BackgroundTransparency = 1})
    local lbl = new("TextLabel", {Parent = frame, Size = UDim2.new(0.4,0,1,0), BackgroundTransparency = 1, Text = labelText, TextColor3 = THEME.text, Font = Enum.Font.Gotham, TextSize = 14, TextXAlignment = Enum.TextXAlignment.Left})
    local bar = new("Frame", {Parent = frame, Size = UDim2.new(0.58,0,0,8), Position = UDim2.new(0.42,0,0.5,-4), BackgroundColor3 = THEME.dim})
    new("UICorner", {Parent = bar, CornerRadius = UDim.new(0,8)})
    -- fill
    local fill = new("Frame", {Parent = bar, Size = UDim2.new( initial and ( (initial - min) / (max - min) ) or 0, 0, 1, 0), BackgroundColor3 = THEME.accent})
    new("UICorner", {Parent = fill, CornerRadius = UDim.new(0,8)})
    -- handle
    local handle = new("ImageLabel", {Parent = bar, Size = UDim2.new(0,0,1,0), BackgroundTransparency = 1})
    local knob = new("Frame", {Parent = bar, Size = UDim2.new(0, 14, 0, 14), Position = UDim2.new(fill.Size.X.Scale, fill.Size.X.Offset - 7, 0.5, -7), BackgroundColor3 = THEME.accent2})
    new("UICorner", {Parent = knob, CornerRadius = UDim.new(1,0)})
    new("UIStroke", {Parent = knob, Color = THEME.accent, Thickness = 1, Transparency = 0.6})

    local dragging = false
    local function updateFromX(x)
        local abs = clamp(x - bar.AbsolutePosition.X, 0, bar.AbsoluteSize.X)
        local frac = abs / bar.AbsoluteSize.X
        fill.Size = UDim2.new(frac, 0, 1, 0)
        knob.Position = UDim2.new(frac, -7, 0.5, -7)
        local value = min + frac * (max - min)
        if onChange then onChange(value, frac) end
    end

    bar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            updateFromX(input.Position.X)
            dragging = true
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then dragging = false end
            end)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            updateFromX(input.Position.X)
        end
    end)

    -- initialize
    if initial then
        local frac = (initial - min) / (max - min)
        fill.Size = UDim2.new(frac, 0, 1, 0)
        knob.Position = UDim2.new(frac, -7, 0.5, -7)
    end

    return {frame = frame, set = function(v)
        local frac = (v - min) / (max - min)
        fill.Size = UDim2.new(frac, 0, 1, 0)
        knob.Position = UDim2.new(frac, -7, 0.5, -7)
        if onChange then onChange(v, frac) end
    end}
end

-- Toggle helper
local function createToggle(parent, labelText, initial, onToggle)
    local frame = new("Frame", {Parent = parent, Size = UDim2.new(1,0,0,36), BackgroundTransparency = 1})
    local lbl = new("TextLabel", {Parent = frame, Size = UDim2.new(0.7,0,1,0), BackgroundTransparency = 1, Text = labelText, TextColor3 = THEME.text, Font = Enum.Font.Gotham, TextSize = 14, TextXAlignment = Enum.TextXAlignment.Left})
    local toggle = new("Frame", {Parent = frame, Size = UDim2.new(0, 52, 0, 28), Position = UDim2.new(1, -56, 0.5, -14), BackgroundColor3 = Color3.fromRGB(30,30,40)})
    new("UICorner", {Parent = toggle, CornerRadius = UDim.new(0,14)})
    local knob = new("Frame", {Parent = toggle, Size = UDim2.new(0, 22, 0, 22), Position = UDim2.new(initial and 1 or 0, -22, 0.5, -11), BackgroundColor3 = initial and THEME.accent or Color3.fromRGB(140,140,160)})
    new("UICorner", {Parent = knob, CornerRadius = UDim.new(1,0)})
    local state = initial

    toggle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            state = not state
            local pos = state and UDim2.new(1, -22, 0.5, -11) or UDim2.new(0, 0, 0.5, -11)
            local color = state and THEME.accent or Color3.fromRGB(140,140,160)
            TweenService:Create(knob, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {Position = pos, BackgroundColor3 = color}):Play()
            if onToggle then onToggle(state) end
        end
    end)

    return {frame = frame, set = function(v)
        state = v
        local pos = state and UDim2.new(1, -22, 0.5, -11) or UDim2.new(0, 0, 0.5, -11)
        local color = state and THEME.accent or Color3.fromRGB(140,140,160)
        knob.Position = pos
        knob.BackgroundColor3 = color
    end}
end

-- Build settings content: Appearance, Audio, Advanced
createSection("Appearance")
-- HSV sliders
local hueSlider = createSlider(content, "Hue", 0, 1, settings.hsv.h, function(v, frac)
    settings.hsv.h = clamp(v,0,1)
    local c = Color3.fromHSV(settings.hsv.h, settings.hsv.s, settings.hsv.v)
    timerLabel.TextColor3 = c
end)
local satSlider = createSlider(content, "Saturation", 0, 1, settings.hsv.s, function(v)
    settings.hsv.s = clamp(v,0,1)
    timerLabel.TextColor3 = Color3.fromHSV(settings.hsv.h, settings.hsv.s, settings.hsv.v)
end)
local valSlider = createSlider(content, "Value", 0, 1, settings.hsv.v, function(v)
    settings.hsv.v = clamp(v,0,1)
    timerLabel.TextColor3 = Color3.fromHSV(settings.hsv.h, settings.hsv.s, settings.hsv.v)
end)

-- Text size slider
local textSizeSlider = createSlider(content, "Text Size", 16, 96, settings.textSize, function(v)
    settings.textSize = math.floor(v+0.5)
    timerLabel.TextSize = settings.textSize
end)

-- Rainbow toggle
createSection("Effects")
local rainbowToggle = createToggle(content, "Rainbow Effect", settings.rainbow, function(state)
    settings.rainbow = state
end)

-- Audio
createSection("Audio")
local beepToggle = createToggle(content, "Enable Beep", settings.beepEnabled, function(state)
    settings.beepEnabled = state
end)
local beepVolumeSlider = createSlider(content, "Beep Volume", 0, 1, settings.beepVolume, function(v)
    settings.beepVolume = v
end)

-- Advanced
createSection("Advanced")
local bgColorHue = createSlider(content, "BG Hue (bg color)", 0, 1, 0.6, function(v)
    local bg = Color3.fromHSV(v, 0.6, 0.06)
    settings.bgColor = bg
    mainFrame.BackgroundColor3 = bg
    settingsFrame.BackgroundColor3 = bg:Lerp(THEME.panel, 0.25)
end)

-- Reset defaults button
local resetBtn = new("TextButton", {
    Parent = content,
    Size = UDim2.new(1,0,0,36),
    BackgroundColor3 = Color3.fromRGB(200,40,40),
    Text = "Reset To Defaults",
    Font = Enum.Font.GothamBold,
    TextColor3 = Color3.fromRGB(255,255,255),
})
new("UICorner", {Parent = resetBtn, CornerRadius = UDim.new(0,8)})
resetBtn.MouseButton1Click:Connect(function()
    -- Reset data
    for k,v in pairs(DEFAULTS) do
        if type(v) == "table" then settings[k] = table.clone(v) else settings[k] = v end
    end
    -- Update UI controls
    hueSlider.set(settings.hsv.h)
    satSlider.set(settings.hsv.s)
    valSlider.set(settings.hsv.v)
    textSizeSlider.set(settings.textSize)
    beepVolumeSlider.set(settings.beepVolume)
    beepToggle.set(settings.beepEnabled)
    rainbowToggle.set(settings.rainbow)
    timerLabel.TextSize = settings.textSize
    timerLabel.TextColor3 = Color3.fromHSV(settings.hsv.h, settings.hsv.s, settings.hsv.v)
    mainFrame.BackgroundColor3 = settings.bgColor
    settingsFrame.BackgroundColor3 = settings.bgColor:Lerp(THEME.panel, 0.25)
end)

-- ---------- Timer Logic ----------
local running = false
local h,m,s,ms = 0,0,0,0
local beep = new("Sound", {Parent = mainFrame, SoundId = "rbxassetid://144368233", Volume = settings.beepVolume})

local function formatTimer()
    return string.format("%02d:%02d:%02d.%03d", h, m, s, ms)
end

-- rainbow effect for signature if enabled (smooth)
local rainbowTicker = 0
RunService.Heartbeat:Connect(function(dt)
    if settings.rainbow then
        rainbowTicker = (rainbowTicker + dt) % 1
        signature.TextColor3 = Color3.fromHSV(rainbowTicker, 1, 1)
    else
        signature.TextColor3 = THEME.text
    end
end)

-- precise update
local accumulator = 0
RunService.Heartbeat:Connect(function(dt)
    if running then
        if game.Players.LocalPlayer.Character then
            if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health == 0 then
              running = false
              return
            end
end
      
        accumulator = accumulator + dt
        -- update ms precisely
        ms = ms + dt * 1000
        if ms >= 1000 then
            ms = ms - 1000
            s = s + 1
            if settings.beepEnabled and beep and typeof(beep.Play) == "function" then
                beep.Volume = settings.beepVolume
                -- play short beep (non-blocking)
                pcall(function() beep:Play() end)
            end
            if s >= 60 then s = 0; m = m + 1 end
            if m >= 60 then m = 0; h = h + 1 end
        end
        -- update label (ms integer)
        timerLabel.Text = string.format("%02d:%02d:%02d.%03d", h, m, s, math.floor(ms))
    end
end)



-- ---------- Buttons Behavior ----------
local locked = false

btnStart.MouseButton1Click:Connect(function()
    running = true
end)
btnStop.MouseButton1Click:Connect(function()
    running = false
end)
btnReset.MouseButton1Click:Connect(function()
    running = false
    h,m,s,ms = 0,0,0,0
    timerLabel.Text = formatTimer()
end)
btnLock.MouseButton1Click:Connect(function()
    locked = not locked
    btnLock.Text = locked and "Unlock" or "Lock"
    btnLock.BackgroundColor3 = locked and Color3.fromRGB(120,40,40) or Color3.fromRGB(18,22,36)
end)
btnSettings.MouseButton1Click:Connect(function()
    settingsFrame.Visible = not settingsFrame.Visible
    if settingsFrame.Visible then
        -- open animation
        settingsFrame.Position = UDim2.new(0.35, 0, 0.05, -20)
        settingsFrame.Size = UDim2.new(0, 420, 0, 0)
        TweenService:Create(settingsFrame, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0,420,0,380), Position = UDim2.new(0.35,0,0.12,0)}):Play()
    else
        -- close animation
        TweenService:Create(settingsFrame, TweenInfo.new(0.18, Enum.EasingStyle.Quad), {Size = UDim2.new(0,420,0,0)}):Play()
        task.delay(0.18, function() settingsFrame.Visible = false end)
    end
end)

-- Simple keyboard shortcuts (optional)
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.P then -- toggle start/stop
        running = not running
    elseif input.KeyCode == Enum.KeyCode.R then
        running = false; h,m,s,ms = 0,0,0,0; timerLabel.Text = formatTimer()
    elseif input.KeyCode == Enum.KeyCode.O then -- open settings
        settingsFrame.Visible = not settingsFrame.Visible
    end
end)

-- Make mainFrame draggable (custom) unless locked
do
    local dragging, dragStart, startPos = false, Vector2.new(), UDim2.new()
    titleBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 and not locked then
            dragging = true
            dragStart = input.Position
            startPos = mainFrame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then dragging = false end
            end)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStart
            mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end

-- Initial set of visuals from settings
timerLabel.TextSize = settings.textSize
timerLabel.TextColor3 = Color3.fromHSV(settings.hsv.h, settings.hsv.s, settings.hsv.v)
mainFrame.BackgroundColor3 = settings.bgColor
settingsFrame.BackgroundColor3 = settings.bgColor:Lerp(THEME.panel, 0.25)

-- small entry animation
mainFrame.Size = UDim2.new(0, 420, 0, 0)
mainFrame.Position = UDim2.new(0.03, 0, 0.18, -30)
TweenService:Create(mainFrame, TweenInfo.new(0.28, Enum.EasingStyle.Back), {Size = UDim2.new(0,420,0,160), Position = UDim2.new(0.03,0,0.18,0)}):Play()

-- Done. You can now test.
-- Recommended: press P to toggle start/stop, O to open settings, R to reset.

