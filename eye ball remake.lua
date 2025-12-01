--===[Got remake by palysky + anti execue]===--

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

if PlayerGui:FindFirstChild("lan") then
    warn("Eyeball GUI โหลดแล้ว — ยกเลิกการรันสคริปต์")
    return
end

print("กำลังโหลด Eyeball GUI ...")

--===[ Main script Eyeball GUI ]===--

local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

-- Create ScreenGui
local lan = Instance.new("ScreenGui")
lan.Name = "lan"
lan.ResetOnSpawn = false
lan.Parent = PlayerGui

-- Optional IntValue in sreccn gui
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local m = ReplicatedStorage:FindFirstChild("OKDOETHATSPRETTYRIZZY")
if not m then
	m = Instance.new("IntValue")
	m.Name = "OKDOETHATSPRETTYRIZZY"
	m.Value = 0
	m.Parent = ReplicatedStorage
end

-- Build UI (icon + eyeball)
local Icon = Instance.new("ImageLabel")
Icon.Name = "Icon"
Icon.Parent = lan
Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Icon.BackgroundTransparency = 1
Icon.BorderSizePixel = 0
Icon.Position = UDim2.new(0.5, -2000, 0.5, -50)
Icon.Size = UDim2.new(0, 72, 0, 72)
Icon.Image = "rbxassetid://16693312759"
Icon.ImageColor3 = Color3.new(0,0,0)
Icon.ImageTransparency = 0.5
Icon.ScaleType = Enum.ScaleType.Fit

local Eyeball = Instance.new("ImageLabel")
Eyeball.Name = "Eyeball"
Eyeball.Parent = Icon
Eyeball.AnchorPoint = Vector2.new(0.5,0.5)
Eyeball.BackgroundTransparency = 1
Eyeball.Position = UDim2.new(0.5, 1, 0.5, -1)
Eyeball.Size = UDim2.new(0, 70, 0, 70)
Eyeball.Image = "rbxassetid://16693312759"

local LidTop = Instance.new("ImageLabel")
LidTop.Name = "LidTop"
LidTop.Parent = Eyeball
LidTop.AnchorPoint = Vector2.new(0.5,0.5)
LidTop.BackgroundTransparency = 1
LidTop.Size = UDim2.new(1,0,1,0)
LidTop.Image = "rbxassetid://16693312759"

local LidBottom = LidTop:Clone()
LidBottom.Name = "LidBottom"
LidBottom.Parent = Eyeball

local StrainTemplate = Instance.new("ImageLabel")
StrainTemplate.Name = "StrainTemplate"
StrainTemplate.BackgroundTransparency = 1
StrainTemplate.BorderSizePixel = 0
StrainTemplate.Size = UDim2.new(0,70,0,70)
StrainTemplate.Image = "rbxassetid://16694415324"
StrainTemplate.ImageTransparency = 1

local Pupil = Instance.new("ImageLabel")
Pupil.Name = "Pupil"
Pupil.Parent = Eyeball
Pupil.AnchorPoint = Vector2.new(0.5,0.5)
Pupil.BackgroundTransparency = 1
Pupil.Position = UDim2.new(0.5,0,0.5,0)
Pupil.Size = UDim2.new(0,42,0,42)
Pupil.Image = "rbxassetid://16693312759"
Pupil.ImageColor3 = Color3.fromRGB(0,0,255)

local Glow = Instance.new("ImageLabel")
Glow.Name = "Glow"
Glow.Parent = Pupil
Glow.AnchorPoint = Vector2.new(0.5,0.5)
Glow.BackgroundTransparency = 1
Glow.Position = UDim2.new(0.5,5,0.5,-5)
Glow.Size = UDim2.new(0,25,0,25)
Glow.ZIndex = 2
Glow.Image = "rbxassetid://14327341766"
Glow.ImageTransparency = 0.2

local Darkness = Instance.new("ImageLabel")
Darkness.Name = "Darkness"
Darkness.Parent = Pupil
Darkness.AnchorPoint = Vector2.new(0.5,0.5)
Darkness.BackgroundTransparency = 1
Darkness.Size = UDim2.new(0,20,0,20)
Darkness.Image = "rbxassetid://16693312759"
Darkness.ImageColor3 = Color3.new(0,0,0)

local UIScale = Instance.new("UIScale")
UIScale.Parent = Icon
UIScale.Scale = 1.5

-- Gradients
local function addUIGradient(parent, rotation, colorSequence, offset, transparencySequence)
	local g = Instance.new("UIGradient")
	g.Rotation = rotation or 0
	g.Color = colorSequence
	g.Offset = offset
	g.Transparency = transparencySequence
	g.Parent = parent
	return g
end

addUIGradient(LidTop, 90, ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.new(0,0,0)),
	ColorSequenceKeypoint.new(1, Color3.new(0,0,0))
}, Vector2.new(0,-0.5),
NumberSequence.new{
	NumberSequenceKeypoint.new(0,0),
	NumberSequenceKeypoint.new(0.5,1),
	NumberSequenceKeypoint.new(1,1)
})

addUIGradient(LidBottom, -90, ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.new(0,0,0)),
	ColorSequenceKeypoint.new(1, Color3.new(0,0,0))
}, Vector2.new(0,0.5),
NumberSequence.new{
	NumberSequenceKeypoint.new(0,0),
	NumberSequenceKeypoint.new(0.5,1),
	NumberSequenceKeypoint.new(1,1)
})

-- Animations
local Looping = true
local Hue = 0

local function LookDir(x,y,speed)
	local tween = TweenService:Create(Pupil, TweenInfo.new(speed or 1, Enum.EasingStyle.Quad), {
		Position = UDim2.new(0.5 + x/300, 0, 0.5 + y/300, 0)
	})
	tween:Play()
	return tween
end

local function Squint(size,speed)
	local top = LidTop:FindFirstChildOfClass("UIGradient")
	local bot = LidBottom:FindFirstChildOfClass("UIGradient")
	if top then TweenService:Create(top, TweenInfo.new(speed or .5), {Offset = Vector2.new(0,size)}):Play() end
	if bot then TweenService:Create(bot, TweenInfo.new(speed or .5), {Offset = Vector2.new(0,-size)}):Play() end
end

local function Uni(set)
	Looping = false
	Squint(-1,0.2)

	for i = 1, 200 do
		Hue = (Hue + 0.01) % 1
		Pupil.ImageColor3 = Color3.fromHSV(Hue,1,1)
		task.spawn(LookDir, math.random(-set,set)/10, math.random(-set,set)/10, 0.01)
		task.wait()
	end

	TweenService:Create(Pupil, TweenInfo.new(2), {ImageColor3 = Color3.fromRGB(0,0,255)}):Play()
	Squint(-1,0.2)
	LookDir(0,0)
	Looping = true
end

-- Entrance animation
Icon:TweenPosition(UDim2.new(0.5,0,0.5,0))

task.delay(0.1, function()
	Uni(0)
end)

task.delay(2, function()
	Icon:TweenPosition(UDim2.new(-0.003,60,1.005,-60))
end)

-- Main loop
task.spawn(function()
	while true do
		task.wait(2)
		if Looping then
			if m.Value == 3 then
				Uni(1)
				m.Value = 0
			end

			LookDir(math.random(-400,400)/10, math.random(-400,400)/10)

			if math.random(1,3) == 1 then
				Squint(0.4,0.25)
				task.wait(0.25)
				Squint(-1,0.4)
			end
		end
	end
end)
