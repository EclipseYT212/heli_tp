-- Zorara Executor
-- Tab: tab3.lua

-- Your code here
if game.CoreGui:FindFirstChild("GTAStyleMenu") then return end

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local gui = Instance.new("ScreenGui")
gui.Name = "ExplosiveLoginGUI"
gui.Parent = game.CoreGui
gui.ResetOnSpawn = false

-- Main Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 330)
frame.Position = UDim2.new(0.5, -200, 0.5, -165)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.BorderSizePixel = 0
frame.Parent = gui

Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
Instance.new("UIStroke", frame).Color = Color3.fromRGB(0, 255, 128)

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.15, 0)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "🔥 EXPLOSIVE MENU 🔥"
title.TextColor3 = Color3.fromRGB(0, 255, 128)
title.Font = Enum.Font.GothamBold
title.TextScaled = true
title.Parent = frame

-- Username Box
local user = Instance.new("TextBox")
user.PlaceholderText = "Username"
user.Size = UDim2.new(0.9, 0, 0.15, 0)
user.Position = UDim2.new(0.05, 0, 0.2, 0)
user.Text = "Trial"
user.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
user.TextColor3 = Color3.fromRGB(255, 255, 255)
user.Font = Enum.Font.Gotham
user.TextScaled = true
user.ClearTextOnFocus = false
user.Parent = frame
Instance.new("UICorner", user).CornerRadius = UDim.new(0, 5)

-- Password Box
-- Password Box
local pass = Instance.new("TextBox")
pass.PlaceholderText = "Password"
pass.Size = UDim2.new(0.9, 0, 0.15, 0)
pass.Position = UDim2.new(0.05, 0, 0.4, 0)
pass.Text = "2025"
pass.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
pass.TextColor3 = Color3.fromRGB(255, 255, 255)
pass.Font = Enum.Font.Gotham
pass.TextScaled = true
pass.ClearTextOnFocus = false
pass.Parent = frame
Instance.new("UICorner", pass).CornerRadius = UDim.new(0, 5)

-- Hide actual password text
-- Hide actual password text
local realPass = "2025"
pass:GetPropertyChangedSignal("Text"):Connect(function()
    local text = pass.Text
    if #text < #realPass then
        realPass = realPass:sub(1, #text)
    else
        local char = text:sub(-1)
        if char ~= "" then
            realPass = realPass .. char
        end
    end
    pass.Text = string.rep(#realPass)
end)


-- Status Label
local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, 0, 0.1, 0)
status.Position = UDim2.new(0, 0, 0.6, 0)
status.BackgroundTransparency = 1
status.TextColor3 = Color3.fromRGB(255, 0, 0)
status.TextScaled = true
status.Font = Enum.Font.GothamBold
status.Text = ""
status.Parent = frame

-- Shake
local function shake(obj)
	local pos = obj.Position
	for i = 1, 4 do
		obj.Position = pos + UDim2.new(0, math.random(-10, 10), 0, 0)
		wait(0.05)
	end
	obj.Position = pos
end

-- Success Handler
local function success()
local player = game:GetService("Players").LocalPlayer
status.TextColor3 = Color3.fromRGB(85, 255, 0)
if user.Text == "dt25" then
local targetDate = os.time({year = 2025, month = 4, day = 15})
    local currentDate = os.time()
    local secondsLeft = targetDate - currentDate
    local daysLeft = math.floor(secondsLeft / (60 * 60 * 24))

    if daysLeft >= 1 then
     status.Text = "Yearly pass: " .. daysLeft .. " day(s) remaining"
    wait(3)
status.Text = "Checking whitelist..."
wait(2)
status.Text = "✅ Welcome!: " .. player.Name
wait(1)
status.Text = "Loading Menu stuff..."
    else
  status.TextColor3 = Color3.fromRGB(255, 0, 0)
        status.Text = "Yearly Pass expired. But you can still jump into the action with our pricing plans & purchase a license or go the free way and go through our keysystem"
        GTAStyleMenu:Destroy()
        ExplosiveLoginGUI:Destroy()
    end
end
if user.Text == "Trial" then
    local targetDate = os.time({year = 2025, month = 5, day = 31})
    local currentDate = os.time()
    local secondsLeft = targetDate - currentDate
    local daysLeft = math.floor(secondsLeft / (60 * 60 * 24))

    if daysLeft >= 1 then
        status.Text = "Trial mode: " .. daysLeft .. " day(s) remaining"
    wait(3)
status.Text = "Checking whitelist..."
wait(2)
status.Text = "✅ Welcome!: " .. player.Name
wait(1)
status.Text = "Loading Menu stuff..."
    else
  status.TextColor3 = Color3.fromRGB(255, 0, 0)
        status.Text = "Trial expired. But you can still jump into the action with our pricing plans & purchase a license or go the free way and go through our keysystem"
        GTAStyleMenu:Destroy()
        ExplosiveLoginGUI:Destroy()
        -- Whitelist data with the end date and time in local time zone (e.g., 23:00)
local whitelist = {
    ["sasashtr2333"] = os.time({year = 2025, month = 4, day = 14, hour = 23, min = 0, sec = 0}),  -- Player1 trial ends April 14, 2025, 23:00
    ["GrandTheftMinecart"] = os.time({year = 2025, month = 5, day = 15, hour = 23, min = 0, sec = 0}),  -- Player2 trial ends May 15, 2025, 23:00  -- Player3 trial ends June 1, 2025, 23:00

}
wait(2)
-- Create the GUI
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "TrialCountdownGUI"
gui.Parent = game.CoreGui
gui.ResetOnSpawn = false  -- Keep GUI on respawn

-- Create the Countdown Frame
local countdownFrame = Instance.new("Frame")
countdownFrame.Size = UDim2.new(0.3, 0, 0.1, 0)  -- Size of the frame (30% width, 10% height)
countdownFrame.Position = UDim2.new(0.394, 0, 0.908, 0)  -- Positioned in the center-bottom of the screen
countdownFrame.BackgroundColor3 = Color3.fromRGB(45,45,45)
countdownFrame.BackgroundTransparency = 1 -- Set fully opaque (no transparency)
countdownFrame.BorderSizePixel = 2
countdownFrame.BorderColor3 = Color3.fromRGB(45, 45, 45)
countdownFrame.Parent = gui

-- Create the Days Left TextLabel
local daysLeftText = Instance.new("TextLabel")
daysLeftText.Size = UDim2.new(1, 0, 1, 0)  -- Size to fill the frame
daysLeftText.Position = UDim2.new(0, 0, 0, 0)  -- Positioned at the top-left of the frame
daysLeftText.Text = "Calculating..."  -- Initial text
daysLeftText.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Default white text
daysLeftText.TextSize = 30
daysLeftText.TextStrokeTransparency = 0.7

daysLeftText.Parent = countdownFrame

-- Function to check if player is whitelisted
local function isWhitelisted(playerName)
    return whitelist[playerName] ~= nil
end

-- Function to update the countdown for the whitelisted player
local function updateCountdown()
    -- Check if the player is whitelisted
    if not isWhitelisted(player.Name) then
        daysLeftText.Text = "❌ You are not whitelisted!"
        daysLeftText.TextColor3 = Color3.fromRGB(255, 0, 0)  -- Red color for non-whitelisted
        return
    end

    -- Get the expiration date of the whitelisted player
    local endDate = whitelist[player.Name]

    -- Start the countdown loop
    while true do
        -- Get the current local time
        local now = os.time()  -- Local system time (current date and time)

        local secondsLeft = endDate - now

        -- If time has passed, mark as expired
        if secondsLeft <= 0 then
            daysLeftText.Text = "❌ Trial expired!"
            daysLeftText.TextColor3 = Color3.fromRGB(255, 0, 0)  -- Red color for expired
            countdownFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Change background to red when expired
            break
        end

        -- Calculate days, hours, minutes, and seconds
        local daysLeft = math.floor(secondsLeft / (60 * 60 * 24))  -- Days left
        local hoursLeft = math.floor((secondsLeft % (60 * 60 * 24)) / (60 * 60))  -- Hours left
        local minutesLeft = math.floor((secondsLeft % (60 * 60)) / 60)  -- Minutes left
        local secondsLeftFormatted = secondsLeft % 60  -- Seconds left

        -- Update the label text with days, hours, minutes, and seconds
        if daysLeft > 0 then
            daysLeftText.Text = string.format("⏳ Trial ends in %d day(s) %02d:%02d:%02d", daysLeft, hoursLeft, minutesLeft, secondsLeftFormatted)
        else
            daysLeftText.Text = string.format("⏳ Trial ends in %02d:%02d:%02d", hoursLeft, minutesLeft, secondsLeftFormatted)
        end

        -- Change the text color to red when 10 or fewer days are left
        if daysLeft <= 10 then
            daysLeftText.TextColor3 = Color3.fromRGB(255, 0, 0)
            countdownFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 0)  -- Yellow background when 10 or fewer days left
        else
            daysLeftText.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Default white color
            countdownFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)  -- Default background color
        end

        -- Update every second
        wait(1)
    end
end

-- Start updating the countdown
updateCountdown()
    end
end

local UserInputService = game:GetService("UserInputService")

-- Freeze overlay
local freezeScreen = Instance.new("Frame")
freezeScreen.Size = UDim2.new(1, 0, 1, 0)
freezeScreen.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
freezeScreen.BackgroundTransparency = 0.5
freezeScreen.ZIndex = 100
freezeScreen.Visible = false
freezeScreen.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- Freeze function
local function fakeFreeze(duration)
    freezeScreen.Visible = true

    -- Optionally: disable input
    local function blockInput(input)
        return true
    end
    UserInputService.InputBegan:Connect(blockInput)

    task.wait(duration)  -- Pause for specified duration

    freezeScreen.Visible = false
end

-- Usage: freeze for 1 second
fakeFreeze(1)
wait(3)
	gui:Destroy()
    
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local player = game:GetService("Players").LocalPlayer

-- UI Customization Variables
local menuBackgroundColor = Color3.fromRGB(10, 10, 10)
local menuGlowColor = Color3.fromRGB(0, 255, 0)
local menuTransparency = 0

-- Create Main GUI
local gui = Instance.new("ScreenGui")
gui.Name = "GTAStyleMenu"
gui.Parent = game.CoreGui

-- Main Menu Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 250)
frame.Position = UDim2.new(0.02, 0, 0.3, 0)
frame.BackgroundColor3 = menuBackgroundColor
frame.BackgroundTransparency = menuTransparency
frame.BorderSizePixel = 3
frame.Visible = false
frame.Parent = gui
frame.Draggable = true 

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 8)
corner.Parent = frame

local glow = Instance.new("UIStroke")
glow.Thickness = 2
glow.Color = menuGlowColor
glow.Parent = frame

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.2, 0)
title.Text = "EXPLOSIVE MENU"
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Parent = frame

-- Settings Menu
local settingsFrame = Instance.new("Frame")
settingsFrame.Size = UDim2.new(0, 250, 0, 300)
settingsFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
settingsFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
settingsFrame.BorderSizePixel = 2
settingsFrame.Visible = false
settingsFrame.Parent = gui
settingsFrame.Draggable = true

local settingsCorner = Instance.new("UICorner")
settingsCorner.CornerRadius = UDim.new(0, 8)
settingsCorner.Parent = settingsFrame

local settingsTitle = Instance.new("TextLabel")
settingsTitle.Size = UDim2.new(1, 0, 0.2, 0)
settingsTitle.Text = "UI Settings"
settingsTitle.Font = Enum.Font.GothamBold
settingsTitle.TextSize = 18
settingsTitle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
settingsTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
settingsTitle.Parent = settingsFrame

-- Settings Controls
local colorPickerButton = Instance.new("TextButton")
colorPickerButton.Size = UDim2.new(1, 0, 0.2, 0)
colorPickerButton.Position = UDim2.new(0, 0, 0.2, 0)
colorPickerButton.Text = "Change UI Color"
colorPickerButton.Font = Enum.Font.Gotham
colorPickerButton.TextSize = 14
colorPickerButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
colorPickerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
colorPickerButton.Parent = settingsFrame

local fontSizeSlider = Instance.new("TextButton")
fontSizeSlider.Size = UDim2.new(1, 0, 0.2, 0)
fontSizeSlider.Position = UDim2.new(0, 0, 0.4, 0)
fontSizeSlider.Text = "Increase Font Size"
fontSizeSlider.Font = Enum.Font.Gotham
fontSizeSlider.TextSize = 14
fontSizeSlider.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
fontSizeSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
fontSizeSlider.Parent = settingsFrame

local sliderFrame = Instance.new("Frame")
sliderFrame.Size = UDim2.new(1, 0, 0, 30)
sliderFrame.Position = UDim2.new(0, 0, 0.4, 0)
sliderFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
sliderFrame.BorderSizePixel = 0
sliderFrame.Parent = settingsFrame

local sliderBar = Instance.new("Frame")
sliderBar.Size = UDim2.new(0.8, 0, 0.5, 0)
sliderBar.Position = UDim2.new(0.1, 0, 0.25, 0)
sliderBar.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
sliderBar.BorderSizePixel = 0
sliderBar.Parent = sliderFrame

local sliderKnob = Instance.new("Frame")
sliderKnob.Size = UDim2.new(0, 10, 1, 0)
sliderKnob.Position = UDim2.new(0, 0, 0, 0)
sliderKnob.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
sliderKnob.BorderSizePixel = 0
sliderKnob.Parent = sliderBar

local valueLabel = Instance.new("TextLabel")
valueLabel.Size = UDim2.new(1, 0, 0, 20)
valueLabel.Position = UDim2.new(0, 0, 1, 5)
valueLabel.BackgroundTransparency = 1
valueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
valueLabel.Text = "Font Size: 14"
valueLabel.Font = Enum.Font.Gotham
valueLabel.TextSize = 14
valueLabel.Parent = sliderFrame

-- Drag Logic
local dragging = false
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local minSize = 10
local maxSize = 50

sliderKnob.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)

RunService.RenderStepped:Connect(function()
	if dragging then
		local mousePos = UserInputService:GetMouseLocation().X
		local barStart = sliderBar.AbsolutePosition.X
		local barWidth = sliderBar.AbsoluteSize.X
		local newX = math.clamp(mousePos - barStart, 0, barWidth)

		local percent = newX / barWidth
		sliderKnob.Position = UDim2.new(0, newX, 0, 0)

		local fontSize = math.floor(minSize + (maxSize - minSize) * percent)
		valueLabel.Text = "Font Size: " .. fontSize

		-- Apply the font size to your target element:
		if someTextElement then
			someTextElement.TextSize = fontSize
		end
	end
end)

local transparencySlider = Instance.new("TextButton")
transparencySlider.Size = UDim2.new(1, 0, 0.2, 0)
transparencySlider.Position = UDim2.new(0, 0, 0.6, 0)
transparencySlider.Text = "Change Transparency"
transparencySlider.Font = Enum.Font.Gotham
transparencySlider.TextSize = 14
transparencySlider.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
transparencySlider.TextColor3 = Color3.fromRGB(255, 255, 255)
transparencySlider.Parent = settingsFrame

-- Close Settings Button
local ChangeColor = Instance.new("TextButton")
ChangeColor.Size = UDim2.new(1, 0, 0.2, 0)
ChangeColor.Position = UDim2.new(0, 0, 1, 0) -- Position it at the bottom of the settings menu
ChangeColor.Text = "Close Settings"
ChangeColor.Font = Enum.Font.Gotham
ChangeColor.TextSize = 14
ChangeColor.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ChangeColor.TextColor3 = Color3.fromRGB(255, 255, 255)
ChangeColor.Parent = settingsFrame

-- Function to close the settings frame
local function closeSettingsMenu()
  
end

-- Connect the close button to the close function
ChangeColor.MouseButton1Click:Connect(closeSettingsMenu)


-- Close Settings Button
local closeSettingsButton = Instance.new("TextButton")
closeSettingsButton.Size = UDim2.new(1, 0, 0.2, 0)
closeSettingsButton.Position = UDim2.new(0, 0, 1, 0) -- Position it at the bottom of the settings menu
closeSettingsButton.Text = "Close Settings"
closeSettingsButton.Font = Enum.Font.Gotham
closeSettingsButton.TextSize = 14
closeSettingsButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
closeSettingsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeSettingsButton.Parent = settingsFrame

-- Function to close the settings frame
local function closeSettingsMenu()
    settingsFrame.Visible = false
end

-- Connect the close button to the close function
closeSettingsButton.MouseButton1Click:Connect(closeSettingsMenu)

local resetButton = Instance.new("TextButton")
resetButton.Size = UDim2.new(1, 0, 0.2, 0)
resetButton.Position = UDim2.new(0, 0, 0.8, 0)
resetButton.Text = "Reset to Default"
resetButton.Font = Enum.Font.Gotham
resetButton.TextSize = 14
resetButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
resetButton.TextColor3 = Color3.fromRGB(255, 255, 255)
resetButton.Parent = settingsFrame

-- Reset Settings Function
local function resetSettings()
    menuBackgroundColor = Color3.fromRGB(10, 10, 10)
    menuGlowColor = Color3.fromRGB(0, 255, 0)
    menuTransparency = 0
    -- Reset font size, transparency, etc.
end

resetButton.MouseButton1Click:Connect(resetSettings)

-- Settings Toggle Function
local function toggleSettingsMenu()
    settingsFrame.Visible = not settingsFrame.Visible
end

-- Script List
local scripts = {
 {name = "ESP", execute = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/EclipseYT212/EXPLOSIVE/refs/heads/main/ESP"))() end},
 {name = "Legit Aimbot", execute = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/EclipseYT212/EXPLOSIVE/refs/heads/main/legit_aimbot"))() end},
 {name = "AimbotV2", execute = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/EclipseYT212/EXPLOSIVE/refs/heads/main/AimbotV2"))() end},
  {name = "Inf Ammo", execute = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/EclipseYT212/EXPLOSIVE/refs/heads/main/inf_Ammo"))() end},
 --{name = "Speed Hack", execute = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/EclipseYT212/EXPLOSIVE/refs/heads/main/Speed_Hack"))() end},
 {name = "Radar", execute = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/EclipseYT212/EXPLOSIVE/refs/heads/main/Radar"))() end},
 {name = "⚙ Settings", execute = toggleSettingsMenu}
}

local optionsContainer = Instance.new("Frame")
optionsContainer.Size = UDim2.new(1, 0, 0.8, 0)
optionsContainer.Position = UDim2.new(0, 0, 0.2, 0)
optionsContainer.BackgroundTransparency = 1
optionsContainer.Parent = frame

local buttons = {}
for i, script in ipairs(scripts) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0.2, 0)
    button.Position = UDim2.new(0, 0, (i - 1) * 0.2, 0)
    button.Text = script.name
    button.Font = Enum.Font.GothamBold
    button.TextSize = 16
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    button.Parent = optionsContainer
    table.insert(buttons, button)
end

local selectedIndex = 1
local function updateSelection()
    for i, button in ipairs(buttons) do
        if i == selectedIndex then
            button.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
            button.TextColor3 = Color3.fromRGB(0, 0, 0)
        else
            button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            button.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
    end
end

-- This flag prevents navigation when Settings is open
local isSettingsVisible = false

-- Handle navigation within the settings menu
local settingsButtons = {colorPickerButton, fontSizeSlider, transparencySlider, resetButton, closeSettingsButton}
local settingsSelectedIndex = 1

local function updateSettingsSelection()
    for i, button in ipairs(settingsButtons) do
        if i == settingsSelectedIndex then
            button.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
            button.TextColor3 = Color3.fromRGB(0, 0, 0)
        else
            button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            button.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
    end
end

local function toggleGUI()
    if frame.Visible then
        local fadeOut = TweenService:Create(frame, TweenInfo.new(0.3), {BackgroundTransparency = 1})
        fadeOut:Play()
        fadeOut.Completed:Wait()
        frame.Visible = false
        frame.BackgroundTransparency = 0
        settingsFrame.Visible = false -- Close settings when menu closes
    else
        frame.Visible = true
        updateSelection()
        local fadeIn = TweenService:Create(frame, TweenInfo.new(0.3), {BackgroundTransparency = menuTransparency})
        fadeIn:Play()
    end
end

local function executeSelectedScript()
    local selectedScript = scripts[selectedIndex]
    if selectedScript and selectedScript.execute then
        selectedScript.execute()
    end
end

-- Handle input for navigating through the settings
local function onInputBegan(input, gameProcessed)
    if gameProcessed then return end
    -- Handle F1 key to toggle main menu
    if input.KeyCode == Enum.KeyCode.F1 then
        toggleGUI()
    -- Handle Up and Down navigation in settings
    elseif input.KeyCode == Enum.KeyCode.Up then
        if settingsFrame.Visible then
            settingsSelectedIndex = math.max(1, settingsSelectedIndex - 1)
            updateSettingsSelection()
        else
            selectedIndex = math.max(1, selectedIndex - 1)
            updateSelection()
        end
    elseif input.KeyCode == Enum.KeyCode.Down then
        if settingsFrame.Visible then
            settingsSelectedIndex = math.min(#settingsButtons, settingsSelectedIndex + 1)
            updateSettingsSelection()
        else
            selectedIndex = math.min(#buttons, selectedIndex + 1)
            updateSelection()
        end
    elseif input.KeyCode == Enum.KeyCode.Return then
        if settingsFrame.Visible then
            local selectedButton = settingsButtons[settingsSelectedIndex]
            if selectedButton == colorPickerButton then
                -- Implement color change functionality
                consoleInput.Text = ("Color picker clicked")
            elseif selectedButton == fontSizeSlider then
                -- Implement font size increase functionality

                consoleInput.Text = ("Font size increased")
            elseif selectedButton == transparencySlider then
                consoleInput.Text = ("Transparency changed")
            elseif selectedButton == closeSettingsButton then
                closeSettingsMenu()
                consoleInput.Text = ("SettingsClosed")
            elseif selectedButton == resetButton then
                resetSettings()
                consoleInput.Text = ("Settings reset")
            end
        else
            executeSelectedScript()
        end
    -- Handle Numpad '*' to move the menu to the left
    elseif input.KeyCode == Enum.KeyCode.KeypadMultiply then
        frame.Position = UDim2.new(frame.Position.X.Scale - 0.05, frame.Position.X.Offset, frame.Position.Y.Scale, frame.Position.Y.Offset)
    -- Handle Numpad '-' to move the menu to the right
    elseif input.KeyCode == Enum.KeyCode.KeypadMinus then
        frame.Position = UDim2.new(frame.Position.X.Scale + 0.05, frame.Position.X.Offset, frame.Position.Y.Scale, frame.Position.Y.Offset)
    end
end

-- Notification frame
local notificationFrame = Instance.new("Frame")
notificationFrame.Size = UDim2.new(0, 300, 0, 50)
notificationFrame.Position = UDim2.new(0.5, -150, 0.1, 0)
notificationFrame.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
notificationFrame.Visible = false
notificationFrame.Parent = gui

local notificationText = Instance.new("TextLabel")
notificationText.Size = UDim2.new(1, 0, 1, 0)
notificationText.Text = "Script Loaded"
notificationText.Font = Enum.Font.GothamBold
notificationText.TextSize = 18
notificationText.TextColor3 = Color3.fromRGB(255, 255, 255)
notificationText.BackgroundTransparency = 1
notificationText.Parent = notificationFrame

-- Settings Controls
local colorPickerButton = Instance.new("TextButton")
colorPickerButton.Size = UDim2.new(1, 0, 0.2, 0)
colorPickerButton.Position = UDim2.new(0, 0, 0.2, 0)
colorPickerButton.Text = "Change UI Color"
colorPickerButton.Font = Enum.Font.Gotham
colorPickerButton.TextSize = 14
colorPickerButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
colorPickerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
colorPickerButton.Parent = settingsFrame

-- Color Picker Frame (Initially Hidden)
local colorPickerFrame = Instance.new("Frame")
colorPickerFrame.Size = UDim2.new(0, 250, 0, 150)
colorPickerFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
colorPickerFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
colorPickerFrame.BorderSizePixel = 2
colorPickerFrame.Visible = false
colorPickerFrame.Parent = gui

local colorPickerTitle = Instance.new("TextLabel")
colorPickerTitle.Size = UDim2.new(1, 0, 0.2, 0)
colorPickerTitle.Text = "Select a Color"
colorPickerTitle.Font = Enum.Font.GothamBold
colorPickerTitle.TextSize = 18
colorPickerTitle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
colorPickerTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
colorPickerTitle.Parent = colorPickerFrame

-- Predefined Color Buttons
local colorButtons = {}
local colors = {
    Color3.fromRGB(255, 0, 0),   -- Red
    Color3.fromRGB(0, 255, 0),   -- Green
    Color3.fromRGB(0, 0, 255),   -- Blue
    Color3.fromRGB(255, 255, 0), -- Yellow
    Color3.fromRGB(255, 165, 0), -- Orange
    Color3.fromRGB(255, 255, 255), -- White
    Color3.fromRGB(0, 0, 0)      -- Black
}

-- Create Color Buttons
for i, color in ipairs(colors) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 40, 0, 40)
    button.Position = UDim2.new(0.2 * (i - 1), 0, 0.2, 0)
    button.BackgroundColor3 = color
    button.Text = ""
    button.Parent = colorPickerFrame

    button.MouseButton1Click:Connect(function()
        menuBackgroundColor = colors
        frame.BorderColor3 = menuBackgroundColor
        colorPickerFrame.Visible = false -- Close color picker after selection
    end)

    table.insert(colorButtons, button)
end
-- Show notification
local function showNotification(message)
    notificationText.Text = message
    notificationFrame.Visible = true
    wait(2)
    notificationFrame.Visible = false
end

UIS.InputBegan:Connect(onInputBegan)
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EclipseYT212/EXPLOSIVE/main/main"))()
end

-- Login
-- Login and Register function
local function login()
    local name = user.Text
    local passText = pass.Text

    if isfile("ExplosiveCredentials.txt") then
        -- Read all the data in the file
        local data = readfile("ExplosiveCredentials.txt")
        
        -- Split the data into lines (each line represents a saved user:pass pair)
        local lines = {}
        for line in string.gmatch(data, "[^\r\n]+") do
            table.insert(lines, line)
        end
        
        -- Check if any saved credentials match the input username and password
        local loginSuccessful = false
        for _, line in ipairs(lines) do
            local savedUser, savedPass = string.match(line, "([^:]+):(.+)")
            
            -- If saved credentials match input credentials
            if savedUser == name and savedPass == passText then
                loginSuccessful = true
                break
            end
        end
        
        if loginSuccessful then
            success()
            wait(2)
            
            -- Show login instructions
            local function showLoginInstructions()
                local player = game:GetService("Players").LocalPlayer
                local playerGui = player.PlayerGui

                -- Create a ScreenGui to hold the instructions
                local instructionsGui = Instance.new("ScreenGui")
                instructionsGui.Parent = playerGui

                -- Create a frame for the instructions
                local instructionsFrame = Instance.new("Frame")
                instructionsFrame.Size = UDim2.new(0.5, 0, 0.2, 0)  -- Adjust size as needed
                instructionsFrame.Position = UDim2.new(0.292, 0, 0.746, 0)  -- Position at the center of the screen
                instructionsFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                instructionsFrame.BackgroundTransparency = 0.5
                instructionsFrame.Parent = instructionsGui

                -- Create the instructions text
                local instructionsText = Instance.new("TextLabel")
                instructionsText.Size = UDim2.new(1, 0, 1, 0)
                instructionsText.Text = "Press F1 to launch mod menu. Press Up/Down arrows to navigate."
                instructionsText.TextColor3 = Color3.fromRGB(255, 255, 255)
                instructionsText.TextSize = 20
                instructionsText.BackgroundTransparency = 1
                instructionsText.TextWrapped = true
                instructionsText.Parent = instructionsFrame

                -- Automatically destroy the instructions after 5 seconds
                wait(8)
                instructionsGui:Destroy()  -- Remove the instructions after 5 seconds
            end

            showLoginInstructions()

        else
            status.Text = "❌ Invalid Username or Password"
            shake(frame)
        end
    else
        status.Text = "❌ No credentials found. Please register first."
        shake(frame)
    end
end

-- Show the login instructions when the player logs in
showLoginInstructions()
		else
			status.Text = "❌ Invalid credentials"
			shake(frame)
		end
	else
		-- Automatically register a new member if no file is found
		local defaultUser = "Trial" -- Default username
		local defaultPass = "2025" -- Default password

		-- Save the default credentials to file
		writefile("ExplosiveCredentials.txt", defaultUser..":"..defaultPass)
		status.Text = "✅ Registered new account"
		wait(0.5)
		success()
	end
end
local player = game:GetService("Players").LocalPlayer

-- Creating leaderstats to store profile data (e.g., name, avatar)
local function createLeaderstats()
    local stats = Instance.new("Folder")
    stats.Name = "leaderstats"
    stats.Parent = player

    local name = Instance.new("StringValue")
    name.Name = "Name"
    name.Value = player.Name
    name.Parent = stats
end

createLeaderstats()



-- Register
local function register()
    if user.Text == "" or realPass == "" then
        status.Text = "❌ Fill all fields"
        shake(frame)
    else
        -- Append new user credentials to the file (to support multiple users)
        local existingCredentials = readfile("ExplosiveCredentials.txt")
        local newCredentials = user.Text..":"..realPass
        -- If the file is empty, write the first credential
        if existingCredentials == "" then
            writefile("ExplosiveCredentials.txt", newCredentials)
        else
            -- Otherwise, append new credentials to the file
            appendfile("ExplosiveCredentials.txt", "\n"..newCredentials)
        end
        
        status.Text = "✅ Registered!"
    end
end

-- Login Button
local loginBtn = Instance.new("TextButton")
loginBtn.Size = UDim2.new(0.42, 0, 0.13, 0)
loginBtn.Position = UDim2.new(0.05, 0, 0.72, 0)
loginBtn.Text = "LOGIN"
loginBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 128)
loginBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
loginBtn.Font = Enum.Font.GothamBold
loginBtn.TextScaled = true
loginBtn.Parent = frame
Instance.new("UICorner", loginBtn).CornerRadius = UDim.new(0, 5)
loginBtn.MouseButton1Click:Connect(login)



-- Register Button
local registerBtn = Instance.new("TextButton")
registerBtn.Size = UDim2.new(0.42, 0, 0.13, 0)
registerBtn.Position = UDim2.new(0.53, 0, 0.72, 0)
registerBtn.Text = "REGISTER"
registerBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
registerBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
registerBtn.Font = Enum.Font.GothamBold
registerBtn.TextScaled = true
registerBtn.Parent = frame
Instance.new("UICorner", registerBtn).CornerRadius = UDim.new(0, 5)
registerBtn.MouseButton1Click:Connect(register)

-- Close Button
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 5)
closeBtn.Text = "X"
closeBtn.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextScaled = true
closeBtn.Parent = frame
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(1, 0)
closeBtn.MouseButton1Click:Connect(function()
	gui:Destroy()
end)


local scriptVersion = "1.5.5"  -- Current version of the script

-- Create the update notification frame and progress bar
local function createUpdateNotification()
    local player = game:GetService("Players").LocalPlayer
    local playerGui = player.PlayerGui

    -- Create a ScreenGui to hold all UI elements
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = playerGui

    -- Create the main frame for the update notification
    local updateFrame = Instance.new("Frame")
    updateFrame.Size = UDim2.new(0.5, 0, 0.1, 0)  -- Adjust size as needed
    updateFrame.Position = UDim2.new(0.292, 0, 0.746, 0)  -- Position
    updateFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    updateFrame.BackgroundTransparency = 0.5
    updateFrame.Parent = screenGui

    -- Create the title text for the update notification
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0.3, 0)
    title.Text = "Explosive Menu Update Available!"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 24
    title.BackgroundTransparency = 1
    title.Parent = updateFrame

    -- Create the progress text label
    local progressText = Instance.new("TextLabel")
    progressText.Size = UDim2.new(1, 0, 0.3, 0)
    progressText.Position = UDim2.new(0, 0, 0.3, 0)  -- Position under the title
    progressText.Text = "Update available,Finding the correct files..."
    progressText.TextColor3 = Color3.fromRGB(255, 255, 255)
    progressText.TextSize = 18
    progressText.BackgroundTransparency = 1
    progressText.Parent = updateFrame

    -- Create the progress bar container, positioned at the bottom of the frame
    local progressBarContainer = Instance.new("Frame")
    progressBarContainer.Size = UDim2.new(1, 0, 0.2, 0)  -- Height of the progress bar
    progressBarContainer.Position = UDim2.new(0, 0, 0.8, 0)  -- Position at the bottom of the frame
    progressBarContainer.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    progressBarContainer.ZIndex = 2  -- Set higher ZIndex
    progressBarContainer.Parent = updateFrame

    -- Create the progress bar inside the container
    local progressBar = Instance.new("Frame")
    progressBar.Size = UDim2.new(0, 0, 1, 0)  -- Initially 0% progress
    progressBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    progressBar.ZIndex = 3  -- Set higher ZIndex
    progressBar.Parent = progressBarContainer

    -- Function to update the progress bar and progress text
    local function updateProgressBar(progress)
        progressBar:TweenSize(UDim2.new(progress, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
        
        -- Update the progress text based on the current progress
        if progress < 0.2 then
            progressText.Text = "Scanning for updated files..."
        elseif progress < 0.5 then
            progressText.Text = "Downloading files..."
        elseif progress < 1 then
            progressText.Text = "Finishing up..."
        else
            progressText.Text = "Download complete!"
        end
    end

    return screenGui, updateFrame, updateProgressBar
end

-- Function to show the login instructions


-- Check for updates (replace this with real version checking logic)
local function checkForUpdates()
    local latestVersion = "1.5.5"  -- Simulated latest version for testing
    local scriptVersion = "1.5.5"  -- Current version of the script

    status.Text = ("Current Version: " .. scriptVersion)  -- Debug output for current version
    status.Text = ("Latest Version: " .. latestVersion)  -- Debug output for latest version

    if scriptVersion ~= latestVersion then
        -- Print to console to debug
        status.Text = ("A new version is available!")

        -- Display the update notification frame and progress bar
        local screenGui, updateFrame, updateProgressBar = createUpdateNotification()

        -- Display the first message and wait for 5 seconds
        wait(5)
frame.Visible = false
        -- Simulate the update process with slower progress
        local progress = 0
        while progress < 1 do
            wait(0.2)  -- Update every 0.2 seconds (slower)
            progress = progress + 0.025  -- Increase progress by a smaller amount (slower)
            updateProgressBar(progress)
        end

        -- Once the update is complete, update the text and hide the progress bar
        wait(0.5)
        screenGui:Destroy()  -- Hide the update notification frame and the ScreenGui after the update
   frame.Visible = true 
    else
        status.Text = ("You already have the latest version.")
    end
end



-- Check for updates
checkForUpdates()

-- Your code here
if game.CoreGui:FindFirstChild("TrialCountdownGUI") then return end



local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TeleportService = game:GetService("TeleportService")

-- List of known developer usernames and UserIds
local devs = {
    ["xonae"] = true,
    ["TCtully"] = true,
    ["MidnightKrystal"] = true,
    ["GuessASuperCoolGuy"] = true,
    ["Campyfire"] = true,
    ["PrimeFIRE94"] = true,
    ["mightybaseplate"] = true,
    ["Bluay"] = true,
    ["DJH_Dylan"] = true,
    ["PrimE_RBLX"] = true,
    ["devkeni"] = true,
    ["Civicus"] = true,
    ["Higumadon"] = true,
    ["Toad_85"] = true,
    ["Castlers"] = true,
        ["ExplosiveUniversal"] = true,
    -- Add more usernames as needed
    [12345678] = true, -- Example UserId
    [87654321] = true, -- Example UserId
}

-- Function to check if a player is a developer
local function isDeveloper(player)
    return devs[player.Name] or devs[player.UserId]
end

-- Function to handle developer detection
local function handleDeveloperDetection(player)
    if isDeveloper(player) then
        warn("[Anti-Dev] Developer Detected:", player.Name)
        LocalPlayer:Kick("Developer detected in server. Leaving...")
        -- Optional: Teleport to a different place
        -- TeleportService:Teleport(game.PlaceId)
    end
end

-- Check existing players in the server
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        handleDeveloperDetection(player)
    end
end

-- Listen for new players joining
Players.PlayerAdded:Connect(function(player)
    handleDeveloperDetection(player)
end)
   
local Players = game:GetService("Players")

-- Function to check if the message contains "report"
local function onPlayerChatted(player, message)
    if string.lower(message):find("report") then
        -- Kicks the player with a custom message
        player:Kick("You have been kicked for saying 'report'. Please rejoin to a new server.")
    end
end

-- Connect to the player chat event
Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(message)
        onPlayerChatted(player, message)
    end)
end)



