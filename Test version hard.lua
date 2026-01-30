--WTH HERE


--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
print("Nameless Admin Executed FE BYPASS ON TOP")
--loadstring(game:HttpGet('https://pastefy.app/ypFgVkxY/raw'))()


















--
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

-- GUI
local gui = Instance.new("ScreenGui")
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Background
local bg = Instance.new("Frame")
bg.Size = UDim2.fromScale(1,1)
bg.BackgroundColor3 = Color3.fromRGB(22, 18, 35) -- ม่วงเข้มพื้นหลัง
bg.Parent = gui

-- 🫧 ฟองพื้นหลัง
local bubbles = {}

local function createBubble()
	local bubble = Instance.new("Frame")
	local size = math.random(15, 40)
	bubble.Size = UDim2.fromOffset(size, size)
	bubble.Position = UDim2.fromScale(math.random(), 1.1)
	bubble.BackgroundColor3 = Color3.fromRGB(180, 120, 255)
	bubble.BackgroundTransparency = 0.6
	bubble.BorderSizePixel = 0
	bubble.Parent = bg

	local corner = Instance.new("UICorner", bubble)
	corner.CornerRadius = UDim.new(1,0)

	local speed = math.random(20, 40) / 10

	table.insert(bubbles, {
		obj = bubble,
		speed = speed
	})
end

for i = 1,25 do
	createBubble()
end

RunService.RenderStepped:Connect(function(dt)
	for _, b in ipairs(bubbles) do
		if b.obj then
			b.obj.Position -= UDim2.fromScale(0, b.speed * dt)
			if b.obj.Position.Y.Scale < -0.2 then
				b.obj.Position = UDim2.fromScale(math.random(), 1.1)
			end
		end
	end
end)

-- Text
local text = Instance.new("TextLabel")
text.Size = UDim2.fromScale(1,0.15)
text.Position = UDim2.fromScale(0,0.35)
text.BackgroundTransparency = 1
text.Text = "Loading"
text.Font = Enum.Font.Code
text.TextScaled = true
text.TextColor3 = Color3.fromRGB(210, 170, 255)
text.Parent = bg

-- Bar Holder
local barHolder = Instance.new("Frame")
barHolder.Size = UDim2.fromScale(0.5,0.03)
barHolder.Position = UDim2.fromScale(0.25,0.55)
barHolder.BackgroundColor3 = Color3.fromRGB(60, 45, 90)
barHolder.BorderSizePixel = 0
barHolder.ClipsDescendants = true
barHolder.Parent = bg
Instance.new("UICorner", barHolder).CornerRadius = UDim.new(0,12)

-- Bar
local bar = Instance.new("Frame")
bar.Size = UDim2.fromScale(0,1)
bar.BackgroundColor3 = Color3.fromRGB(190, 140, 255)
bar.BorderSizePixel = 0
bar.Parent = barHolder
Instance.new("UICorner", bar).CornerRadius = UDim.new(0,12)

-- Tween โหลด
local loadTween = TweenService:Create(
	bar,
	TweenInfo.new(4, Enum.EasingStyle.Linear),
	{ Size = UDim2.fromScale(1,1) }
)
loadTween:Play()

-- กระพริบเฉพาะ bar ตอนใกล้เต็ม
task.delay(3.2, function()
	for i = 1,6 do
		bar.BackgroundTransparency = 0.4
		task.wait(0.15)
		bar.BackgroundTransparency = 0
		task.wait(0.15)
	end
end)

-- เสร็จ
loadTween.Completed:Wait()
text.Text = "Cheak retrun = localplayer or not"
text.TextTransparency = 0
Wait(1)
text.Text = "Welcome"
text.TextTransparency = 0

task.wait(1.3)
gui:Destroy()


game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "GOt loading       for low unc executer pc verison";
	Text = "private gui by skimanc2og and Y0kai Hub vip green edlitor Febypass reel and all playsky and skimanv2";
	Icon = "2005276185"})
Duration = 15;
--loadstring(game:HttpGet("https://pastefy.app/dOi4GDqd/raw"))()
--loadstring(game:HttpGet("https://pastefy.app/XSSHMtuF/raw",true))()
--loadstring(game:HttpGet("https://raw.githubusercontent.com/indyplaysky-pixel/loase-/refs/heads/main/eye%20ball%20remake.lua",true))()
--==================================================
-- SERVICES
--==================================================
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

--==================================================
-- LOADING GUI
--==================================================
local LoadingGui = Instance.new("ScreenGui")
LoadingGui.Name = "PuporiaLoading"
LoadingGui.IgnoreGuiInset = true
LoadingGui.ResetOnSpawn = false
LoadingGui.Parent = CoreGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.fromScale(0.28, 0.16)
Frame.Position = UDim2.fromScale(0.5, 0.5)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Frame.Parent = LoadingGui

Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 22)

local Label = Instance.new("TextLabel")
Label.Size = UDim2.fromScale(1, 1)
Label.BackgroundTransparency = 1
Label.TextColor3 = Color3.new(1, 1, 1)
Label.Font = Enum.Font.GothamBold
Label.TextScaled = true
Label.Text = "Loading..."
Label.Parent = Frame

local function setText(t)
    Label.Text = t
end

--==================================================
-- LOAD UI LIB
--==================================================
setText("Loading UI Library...")

local success, WindUI = pcall(function()
    return loadstring(game:HttpGet(
        "https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"
    ))()
end)

if not success or not WindUI then
    Label.Text = "Failed to load UI"
    warn("WindUI load failed")
    task.wait(1.5)
    LoadingGui:Destroy()
    getgenv().PuporiaLoaded = nil
    return
end

--==================================================
-- WINDUI GLOBAL SETUP
--==================================================
WindUI:Localization({
    Enabled = true,
    Prefix = "loc:",
    DefaultLanguage = "en",
    Translations = {
        ["en"] = {
            ["WELCOME"] = "Welcome to Puporia!",
            ["SETTINGS"] = "Settings",
            ["APPEARANCE"] = "Appearance",
        }
    }
})

WindUI.TransparencyValue = 0.2
WindUI:SetTheme("Amber")

--==================================================
-- FADE LOADING
--==================================================
TweenService:Create(Frame, TweenInfo.new(0.35), {
    BackgroundTransparency = 1
}):Play()

TweenService:Create(Label, TweenInfo.new(0.35), {
    TextTransparency = 1
}):Play()

task.wait(0.4)
LoadingGui:Destroy()

--==================================================
-- MAIN WINDOW
--==================================================
local Window = WindUI:CreateWindow({
    Title = "AXFLOXI test _VERSION" .. identifyexecutor(),
    Icon = "bubbles",
    Author = "Big things coming",
    Folder = "malware",
    Size = UDim2.fromOffset(580, 415),
    Theme = "Dark",
    Background = WindUI:Gradient({
        ["0"] = { Color = Color3.fromHex("#151515"), Transparency = 0.60 },
        ["100"] = { Color = Color3.fromHex("#3E3E3E"), Transparency = 0.9 },
    }, {
        Rotation = 45,
    }),
    Background = "rbxassetid://101866555353434",
    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function()
WindUI:Notify({
                Title = "User Info",
                Content =
                    "Nickname: " .. player.DisplayName ..
                    "\nUsername: " .. player.Name ..
                    "\nAccount Age: " .. player.AccountAge .. " days",
                Duration = 8
            })
        end
    },
    Acrylic = false,
    HideSearchBar = false,
    SideBarWidth = 200,
})

task.wait(0.2)
Window:SetBackgroundImage("rbxassetid://335108522")

Window:EditOpenButton({
    Title = "Open Menu",
    Icon = "infinity",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new( -- gradient
        Color3.fromHex("5C5C5C"), 
        Color3.fromHex("A0A0A0")
    ),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
})

WindUI:SetFont("rbxassetid://12187371840")

local TimeTag = Window:Tag({
    Title = "--:--",
    Radius = 0,
    Order = 1, -- 👈 เพิ่มบรรทัดนี้
    Color = Color3.fromHex("#000000"),
    Color = WindUI:Gradient({
        ["0"]   = { Color = Color3.fromHex("#151515"), Transparency = 0 },
        ["100"] = { Color = Color3.fromHex("#3E3E3E"), Transparency = 0 },
    }, {
        Rotation = 45,
    }),
})


local hue = 0

task.spawn(function()
	while true do
		local now = os.date("*t")
		local hours = string.format("%02d", now.hour)
		local minutes = string.format("%02d", now.min)
		
		hue = (hue + 0.01) % 1
		local color = Color3.fromHSV(hue, 1, 1)
		
		TimeTag:SetTitle(hours .. ":" .. minutes)

		task.wait(0.06)
	end
end)

local Tab = Window:Tab({
    Title = "Info",
    Icon = "clock-8", -- optional
    Locked = false,
})

local Paragraph = Tab:Paragraph({
    Title = "This script was made by palysky",
    Desc = "",
    Color = "Red",
    Image = "https://create.roblox.com/store/asset/15011943566/jord404?",
    ImageSize = 30,
    Thumbnail = "",
    ThumbnailSize = 80,
    Locked = false,
    Buttons = {
        {
            Icon = "bird",
            Title = "kk shutup",
            Callback = function() print("1 Button") end,
        }
    }
})

local function getExecutorInfo()
    local realName = "Unknown"
    local displayName = "unknown"

    if identifyexecutor then
        local ok, name = pcall(identifyexecutor)
        if ok and name then
            realName = name
            local lower = string.lower(name)

            if string.find(lower, "xeno") then
                displayName = "moderately"
            elseif string.find(lower, "synapse") then
                displayName = "synapse god"
            elseif string.find(lower, "krnl") then
                displayName = "stable"
            elseif string.find(lower, "fluxus") then
                displayName = "fast"
            else
                displayName = name
            end
        end
    end

    return realName, displayName
end

local realExec, displayExec = getExecutorInfo()

local Button = Tab:Button({
    Title = "Executor: " .. displayExec .. " (" .. realExec .. ")",
    Desc = "",
    Locked = false,
    Callback = function()
        print("Real executor:", realExec)
        print("Display name:", displayExec)
    end
})

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function getAccountAgeInfo()
    local days = player.AccountAge or 0

    local level
    if days < 30 then
        level = "newbie"
    elseif days < 180 then
        level = "normal"
    elseif days < 365 then
        level = "old"
    else
        level = "veteran"
    end

    return days, level
end

local ageDays, ageLevel = getAccountAgeInfo()

local AgeButton = Tab:Button({
    Title = "Account Age: " .. ageLevel .. " (" .. ageDays .. " days)",
    Desc = "",
    Locked = false,
    Callback = function()
        print("Account age:", ageDays, "days")
        print("Level:", ageLevel)
    end
})

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function safeName(fn)
    return (type(fn) == "function") and "✅" or "❌"
end

local function getExecutorRuntimeInfo()
    local info = {}

    -- Executor name
    if identifyexecutor then
        local ok, name = pcall(identifyexecutor)
        info.Executor = ok and name or "Unknown"
    else
        info.Executor = "Unknown"
    end

    -- Environment
    info.ExecutorEnv = getexecutorname and getexecutorname() or "N/A"
    info.ThreadIdentity = getthreadidentity and getthreadidentity() or "N/A"
    info.IdentitySetter = setthreadidentity and "Supported" or "Not supported"

    -- APIs
    info.isFile = safeName(isfile)
    info.writeFile = safeName(writefile)
    info.readFile = safeName(readfile)
    info.makeFolder = safeName(makefolder)
    info.httpGet = safeName(game.HttpGet)
    info.loadstring = safeName(loadstring)
    info.getgc = safeName(getgc)
    info.hookfunction = safeName(hookfunction)
    info.getconnections = safeName(getconnections)
    info.getgenv = safeName(getgenv)
    info.getrenv = safeName(getrenv)
    info.getsenv = safeName(getsenv)
    info.setclipboard = safeName(setclipboard)
    info.request = safeName(request or http_request)

    -- FPS unlock
    info.setfpscap = safeName(setfpscap)

    return info
end

local function buildText(info)
    local t = {}

    table.insert(t, "Executor: " .. info.Executor)
    table.insert(t, "Thread Identity: " .. tostring(info.ThreadIdentity))
    table.insert(t, "Executor Env: " .. tostring(info.ExecutorEnv))
    table.insert(t, "")
    table.insert(t, "=== API Support ===")
    table.insert(t, "isfile: " .. info.isFile)
    table.insert(t, "writefile: " .. info.writeFile)
    table.insert(t, "readfile: " .. info.readFile)
    table.insert(t, "makefolder: " .. info.makeFolder)
    table.insert(t, "httpGet: " .. info.httpGet)
    table.insert(t, "loadstring: " .. info.loadstring)
    table.insert(t, "getgc: " .. info.getgc)
    table.insert(t, "hookfunction: " .. info.hookfunction)
    table.insert(t, "getconnections: " .. info.getconnections)
    table.insert(t, "getgenv: " .. info.getgenv)
    table.insert(t, "getrenv: " .. info.getrenv)
    table.insert(t, "getsenv: " .. info.getsenv)
    table.insert(t, "setclipboard: " .. info.setclipboard)
    table.insert(t, "http request: " .. info.request)
    table.insert(t, "setfpscap: " .. info.setfpscap)

    return table.concat(t, "\n")
end

local RuntimeButton = Tab:Button({
    Title = "API Info (Hard🔥🔥🔥)",
    Desc = "Show all supported executor APIs",
    Locked = false,
    Callback = function()
        local info = getExecutorRuntimeInfo()
        local text = buildText(info)

        print(text)

        -- ถ้า WindUI มี Notify ใหญ่
        if WindUI.Notify then
            WindUI:Notify({
                Title = "Executor Runtime Info",
                Content = text,
                Duration = 12
            })
        end

    
    end
})

local UnsupportedButton = Tab:Button({
    Title = "Executor Unsupported APIs",
    Desc = "Show APIs that executor does NOT support",
    Locked = false,
    Callback = function()
        local info = getExecutorRuntimeInfo()
        local text = buildUnsupportedText(info)

        print(text)

        if WindUI.Notify then
            WindUI:Notify({
                Title = "Unsupported Executor APIs",
                Content = text,
                Duration = 12
            })
        end

        
    end
})

local Tab = Window:Tab({
    Title = "Update Logs",
    Icon = "cast", -- optional
    Locked = false,
})

local Paragraph = Tab:Paragraph({
    Title = "Delete 3 tag (many tags) Delete R6 buttons Delete Re buttons --  Added Topbars R6 Added Topbars re",
    Desc = "Soon well fix Join out player Notify lag and clean up",
    Color = "Red",
    Image = "",
    ImageSize = 30,
    Thumbnail = "",
    ThumbnailSize = 50,
    Locked = false,
    Buttons = {
        {
            Icon = "",
            Title = "ok",
            Callback = function() print("ty for use") end,
        }
    }
})

local Paragraph = Tab:Paragraph({
    Title = "click get to get code editor",
    Desc = "is for me for fixed gui",
    Color = "Red",
    Image = "",
    ImageSize = 30,
    Thumbnail = "",
    ThumbnailSize = 50,
    Locked = false,
    Buttons = {
        {
            Icon = "",
            Title = "get",
            Callback = function() loadstring(game:HttpGet("https://pastefy.app/CQVxXS4L/raw"))() end,
        }
    }
})

Window:CreateTopbarButton("theme-switcher", "moon", function() WindUI:SetTheme(WindUI:GetCurrentTheme() == "Dark" and "Light" or "Dark") end, 10)
Window:CreateTopbarButton("Rig-6", "user", function() loadstring(game:HttpGet("https://pastefy.app/SOkx4F3z/raw?part=R6%20Real%20fe", true))() end, 11)
Window:CreateTopbarButton("Reset", "rotate-ccw", function() game.Players.LocalPlayer.Character.Humanoid.Health = 0 end, 12)

local Tabs = {
    Main = Window:Section({ Title = "loc:FEATURES", Opened = true }),
    Stuff = Window:Section({ Title = "loc:SETTINGS", Opened = true }),
}

local TabHandles = {
    Elements = Tabs.Main:Tab({ Title = "scripts private", Icon = "wifi", Desc = "Script Vault" }),
    Appearance = Tabs.Stuff:Tab({ Title = "loc:APPEARANCE", Icon = "brush" }),
    Tsb = Tabs.Main:Tab({ Title = "tsb", Icon = "swords" }),
    Config = Tabs.Stuff:Tab({ Title = "loc:CONFIGURATION", Icon = "settings" })
}

TabHandles.Elements:Paragraph({
    Title = "Info",
    Desc = "Ty for someone in scriptblox For my new gui",
    Image = "info",
    ImageSize = 20,
    Color = Color3.fromHex("#414141"),
})

TabHandles.Elements:Divider()

local ElementsSection = TabHandles.Elements:Section({
    Title = "Script libary",
    Icon = "scroll-text",
})

TabHandles.Elements:Divider()

local mangopmo = TabHandles.Elements:Section({
    Title = "Teleport",
    Icon = "navigation-2",
})

TabHandles.Elements:Divider()

local gooner = TabHandles.Elements:Section({
    Title = "LocalPlayer + excueter",
    Icon = "user",
})

TabHandles.Elements:Divider()

local sybau = TabHandles.Elements:Section({
    Title = "Server + emote idk",
    Icon = "server",
})

TabHandles.Elements:Divider()

local zawarudo = TabHandles.Elements:Section({
    Title = "Shader",
    Icon = "sun",
})

local six = TabHandles.Elements:Section({
    Title = "players music + fps boots",
    Icon = "headset",
})

TabHandles.Elements:Divider()

TabHandles.Elements:Paragraph({
    Title = "Support Me ❤️",
    Desc = "https://github.com/indyplaysky-pixel/loase-hu",
    Image = "github",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "Copy Link",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("https://github.com/indyplaysky-pixel/loase-hu")
                WindUI:Notify({
                    Title = "Copied!",
                    Content = "GitHub link copied to clipboard",
                    Duration = 2
                })
            end
        }
    }
})

local Code = TabHandles.Elements:Code({
    Title = "Code",
    Code = [["Filtering.Enabled = false"]]
})



ElementsSection:Button({
    Title = "R6 require",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/SOkx4F3z/raw?part=R6%20Real%20fe", true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "re",
    Icon = "code",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "primadon",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/37iQzQp3"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "primadon by 00de0l Febypass1!1!!1111",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/xLCQk9Z2/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Devoyance",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/Qib2weii/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Stigma ultimate",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/3UKN6jC1/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Tree house",
    Icon = "code",
    Callback = function()
        local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")
local hrp = char:WaitForChild("HumanoidRootPart")


local house = game:GetObjects("rbxassetid://15761692261")[1]
if not house then
	warn("โหลดบ้านไม่สำเร็จ")
	return
end

house.Parent = workspace


for _, v in ipairs(house:GetDescendants()) do
	if v:IsA("BasePart") then
		v.Anchored = true
		v.CanCollide = true
	end
end


local _, size = house:GetBoundingBox()
local cf =
	hrp.CFrame
	* CFrame.new(0, -3, -35)
	* CFrame.new(0, size.Y / 2, 0)

house:PivotTo(cf)


local seat
for _, v in ipairs(house:GetDescendants()) do
	if v:IsA("Seat") or v:IsA("VehicleSeat") then
		seat = v
		break
	end
end

if not seat then
	warn("บ้านนี้ไม่มีเก้าอี้")
	return
end


task.wait(0.5)
hrp.CFrame = seat.CFrame * CFrame.new(0, 0, -2)


task.wait(0.2)
seat:Sit(humanoid)


seat.Anchored = false
seat.CanCollide = true

    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "McDonalds",
    Icon = "code",
    Callback = function()
        local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")
local hrp = char:WaitForChild("HumanoidRootPart")

-- โหลดบ้าน
local house = game:GetObjects("rbxassetid://4572305378")[1]
if not house then
	warn("โหลดบ้านไม่สำเร็จ")
	return
end

house.Parent = workspace

-- ตรึงบ้าน
for _, v in ipairs(house:GetDescendants()) do
	if v:IsA("BasePart") then
		v.Anchored = true
		v.CanCollide = true
	end
end

-- วางบ้าน
local _, size = house:GetBoundingBox()
local cf =
	hrp.CFrame
	* CFrame.new(0, -3, -35)
	* CFrame.new(0, size.Y / 2, 0)

house:PivotTo(cf)

-- 🔍 หาเก้าอี้ในบ้าน
local seat
for _, v in ipairs(house:GetDescendants()) do
	if v:IsA("Seat") or v:IsA("VehicleSeat") then
		seat = v
		break
	end
end

if not seat then
	warn("บ้านนี้ไม่มีเก้าอี้")
	return
end

-- 🚶‍♂️ พาผู้เล่นไปหน้าเก้าอี้
task.wait(0.5)
hrp.CFrame = seat.CFrame * CFrame.new(0, 0, -2)

-- 🪑 สั่งให้นั่ง
task.wait(0.2)
seat:Sit(humanoid)


seat.Anchored = false
seat.CanCollide = true
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Obby Playground",
    Icon = "code",
    Callback = function()
        local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")
local hrp = char:WaitForChild("HumanoidRootPart")

-- โหลดบ้าน
local house = game:GetObjects("rbxassetid://3699248235")[1]
if not house then
	warn("โหลดบ้านไม่สำเร็จ")
	return
end

house.Parent = workspace

-- ตรึงบ้าน
for _, v in ipairs(house:GetDescendants()) do
	if v:IsA("BasePart") then
		v.Anchored = true
		v.CanCollide = true
	end
end

-- วางบ้าน
local _, size = house:GetBoundingBox()
local cf =
	hrp.CFrame
	* CFrame.new(0, -3, -35)
	* CFrame.new(0, size.Y / 2, 0)

house:PivotTo(cf)

-- 🔍 หาเก้าอี้ในบ้าน
local seat
for _, v in ipairs(house:GetDescendants()) do
	if v:IsA("Seat") or v:IsA("VehicleSeat") then
		seat = v
		break
	end
end

if not seat then
	warn("บ้านนี้ไม่มีเก้าอี้")
	return
end

-- 🚶‍♂️ พาผู้เล่นไปหน้าเก้าอี้
task.wait(0.5)
hrp.CFrame = seat.CFrame * CFrame.new(0, 0, -2)

-- 🪑 สั่งให้นั่ง
task.wait(0.2)
seat:Sit(humanoid)


seat.Anchored = false
seat.CanCollide = true
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Darius gui require to lua",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/uPYeSXGe/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "FF upgrade 2.0",
    Icon = "code",
    Callback = function()
        local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

for _,v in ipairs(char:GetChildren()) do
    if v:IsA("ForceField") then
        v:Destroy()
    end
end

local ff = Instance.new("ForceField")
ff.Visible = true
ff.Parent = char

    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Rock arena idk(super private lua)",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/SwmmE7I5/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "house party fun house(super private lua)",
    Icon = "code",
    Callback = function()
        local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")
local hrp = char:WaitForChild("HumanoidRootPart")

-- โหลดบ้าน
local house = game:GetObjects("rbxassetid://269540847")[1]
if not house then
	warn("โหลดบ้านไม่สำเร็จ")
	return
end

house.Parent = workspace

-- ตรึงบ้าน
for _, v in ipairs(house:GetDescendants()) do
	if v:IsA("BasePart") then
		v.Anchored = true
		v.CanCollide = true
	end
end

-- วางบ้าน
local _, size = house:GetBoundingBox()
local cf =
	hrp.CFrame
	* CFrame.new(0, -3, -35)
	* CFrame.new(0, size.Y / 2, 0)

house:PivotTo(cf)

-- 🔍 หาเก้าอี้ในบ้าน
local seat
for _, v in ipairs(house:GetDescendants()) do
	if v:IsA("Seat") or v:IsA("VehicleSeat") then
		seat = v
		break
	end
end

if not seat then
	warn("บ้านนี้ไม่มีเก้าอี้")
	return
end

-- 🚶‍♂️ พาผู้เล่นไปหน้าเก้าอี้
task.wait(0.5)
hrp.CFrame = seat.CFrame * CFrame.new(0, 0, -2)

-- 🪑 สั่งให้นั่ง
task.wait(0.2)
seat:Sit(humanoid)


seat.Anchored = false
seat.CanCollide = true
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "excavator",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/q74DFYYz/raw", true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Coca - cola(MY FAV)",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Ahma174/Tool/refs/heads/main/Coca%20Cola.lua"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "dababy car",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/xtIOQGPy/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Excavator secret urltra",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/sm9QaxQp/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Chara(Remake by me)",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/BF2lvbuV/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "secret service panel 2025",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/g4EHHDc7/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "duck rain",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/U8PRHtlb/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Dead Eye Edit Black",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Pu0qVEhM",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Dual ultimate",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/3QsB07Ba",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Red ultimate",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/njqct98T",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "All seeing hand",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/gMHio4aQ/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Xester v2",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/KYXnginx/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "SpectrumGlitcher v5 AWAKENED",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/k2Xnvk94/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Poly goner",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/77kUjFD1",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Sutart",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/e6kVGZhM/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "slegdehammer fe some map",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/37B76uTX/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "slegdehammer Fixed",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/p7S86J8q/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "doggo army Remake require 1.0",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/ChM2b8Oh/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "polaria secret",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/xos3Of2N/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "biprolaria",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/8qFWEtWY"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "exser old",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/7sO8ckTL/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "project local",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/wLdPnVaP/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "plane",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/eeOmAGQB/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Dexx honey",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/dhVCWh9U"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Vann scriptshub op",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/byxAn5bG/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "worship sis",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/wd0uDmES",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Robot mechine",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/ur8n4dc6/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "M4a1",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Idk-script-6-30278"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Dev-uzi ",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/jEPO3iAg/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Whiship",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/XAWb1YLR/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "gradolsa",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/kdE1b05N/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "seasola not done yet",
    Icon = "code",
    Callback = function()
        game:GetObjects("rbxassetid://78030789294372")[1].Parent = game.workspace
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "deathdosla by 00de0l",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/FVBs34eb/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Fernier Staff Fixed",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/PmAKUQu1/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "stummy gun",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/3XPaYv08"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Road Rogue(no leak it super private)",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/9gxSdisY/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "serverside spawn1020 and 1x1x1x1x",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/YxquFEAR",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "project broken spawn 1.0.0",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/NyJfL0ey",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "project broken spawn 2.0.0",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/XkW5Kbrd",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "project broken spawn 3.0.0",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/nYpHm5sa",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "project broken spawn 4.1.0",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/h1gaSbzi",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "project broken spawn 4.1.0 real",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/nR0WXnVs/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "project broken spawn 5.3.1",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/LXFGASZu",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "epikguiv2",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/C4fGK6Wb"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "k00pgui v9",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/The-901617-Realm-k00pgui-v9-21788"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "k00pgui v11",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/rI7DmyrJ/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "k00pgui v1",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/Qwt2l6zc/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "titan",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TEST19983/Reslasjd/refs/heads/main/attac",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "mystic",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/AaDfrnFK"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "MLG gun",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Client-Replication-the-ss-loadstring-script-27393"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "mr byebye",
    Icon = "code",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Mr.Bye%20Bye.lua"))() 
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "pee lua by lolololol",
    Icon = "code",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/gitezgitgit/Pee/refs/heads/main/PeeScript.lua",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Tower upd by me(i just add store btw)",
    Icon = "code",
    Callback = function()
       loadstring(game:HttpGet("https://pastefy.app/Hq7Wncjs/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "rainbow king",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Rainbow%20Banisher"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "xester",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/xester/refs/heads/main/qC7MUFRJ.txt"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "vereus",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/xester/refs/heads/main/fLrx77PM.txt"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "grab knife v4",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/refs/heads/main/Grab%20V4.txt"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "scythe",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/Scythe.txt"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "skeleton skybox",
    Icon = "code",
    Callback = function()
        print("clicked")
        --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
imageOne = "http://www.roblox.com/asset/?id=169585459"
imageTwo = "http://www.roblox.com/asset/?id=169585475"
imageThree = "http://www.roblox.com/asset/?id=169585485"
imageFour = "http://www.roblox.com/asset/?id=169585502"
imageFive = "http://www.roblox.com/asset/?id=169585515"
imageSix = "http://www.roblox.com/asset/?id=169585502"
imageSeven = "http://www.roblox.com/asset/?id=169585485"
imageEight = "http://www.roblox.com/asset/?id=169585475"

Spooky = Instance.new("Sound", workspace)
Spooky.Name = "Spooky"
Spooky.SoundId = "rbxassetid://174270407"
Spooky.Volume = 15
Spooky.Looped = true
Spooky:Play()

Sky = Instance.new("Sky", game.Lighting)
Sky.SkyboxBk = imageOne
Sky.SkyboxDn = imageOne
Sky.SkyboxFt = imageOne
Sky.SkyboxLf = imageOne
Sky.SkyboxRt = imageOne
Sky.SkyboxUp = imageOne


while true do
    Sky.SkyboxBk = imageOne
    Sky.SkyboxDn = imageOne
    Sky.SkyboxFt = imageOne
    Sky.SkyboxLf = imageOne
    Sky.SkyboxRt = imageOne
    Sky.SkyboxUp = imageOne
    wait(0.1)
    Sky.SkyboxBk = imageTwo
    Sky.SkyboxDn = imageTwo
    Sky.SkyboxFt = imageTwo
    Sky.SkyboxLf = imageTwo
    Sky.SkyboxRt = imageTwo
    Sky.SkyboxUp = imageTwo
    wait(0.1)
    Sky.SkyboxBk = imageThree
    Sky.SkyboxDn = imageThree
    Sky.SkyboxFt = imageThree
    Sky.SkyboxLf = imageThree
    Sky.SkyboxRt = imageThree
    Sky.SkyboxUp = imageThree
    wait(0.1)
    Sky.SkyboxBk = imageFour
    Sky.SkyboxDn = imageFour
    Sky.SkyboxFt = imageFour
    Sky.SkyboxLf = imageFour
    Sky.SkyboxRt = imageFour
    Sky.SkyboxUp = imageFour
    wait(0.1)
    Sky.SkyboxBk = imageFive
    Sky.SkyboxDn = imageFive
    Sky.SkyboxFt = imageFive
    Sky.SkyboxLf = imageFive
    Sky.SkyboxRt = imageFive
    Sky.SkyboxUp = imageFive
    wait(0.1)
    Sky.SkyboxBk = imageSix
    Sky.SkyboxDn = imageSix
    Sky.SkyboxFt = imageSix
    Sky.SkyboxLf = imageSix
    Sky.SkyboxRt = imageSix
    Sky.SkyboxUp = imageSix
    wait(0.1)
    Sky.SkyboxBk = imageSeven
    Sky.SkyboxDn = imageSeven
    Sky.SkyboxFt = imageSeven
    Sky.SkyboxLf = imageSeven
    Sky.SkyboxRt = imageSeven
    Sky.SkyboxUp = imageSeven
    wait(0.1)
    Sky.SkyboxBk = imageEight
    Sky.SkyboxDn = imageEight
    Sky.SkyboxFt = imageEight
    Sky.SkyboxLf = imageEight
    Sky.SkyboxRt = imageEight
    Sky.SkyboxUp = imageEight
    wait(0.1)
    
end

    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "fe skybox",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/magoozelote/w/main/w.lua"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Two brother gui",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/1sRPZUvM"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "fenching restore",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/dXrxUZe7/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "van gui v2.3",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/cJ15W1x0/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Audiovisualize",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/ongq4c6T/raw?part=Autovisualizer%20Ring%20By%20Luaman", true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "load johndoe",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/Du1ZdAI9/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "baseplate tpall",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/OxFF01KJ/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "fe grab knife r15",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/Tb06r2XZ/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Bow",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/oOHsaX3a/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Black dragon",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/TzZh2Tp9/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Ballon Fight (My fav is fun)",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/41ycb9P7/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "rc7 cloud",
    Icon = "code",
    Callback = function()
        --RC7 Cloud! Visual!

local Player = game.Players.LocalPlayer
local cloud = Instance.new("Part",Player.Character.Torso)
cloud.BrickColor = BrickColor.new(333)
cloud.Reflectance = 0.5
cloud.Anchored = true
cloud.CanCollide = false
cloud.FormFactor = Enum.FormFactor.Symmetric
cloud.Size = Vector3.new(1,1,1)

local mesh = Instance.new("SpecialMesh",cloud)
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = "rbxassetid://111820358"
mesh.Scale = Vector3.new(8,8,8)

local P = Instance.new("ParticleEmitter",cloud)
P.Size = NumberSequence.new(0.75)
P.LockedToPart = true
P.Texture = "rbxassetid://331959655"
P.Transparency = NumberSequence.new(0.5)
P.Acceleration = Vector3.new(0, -20, 0)
P.EmissionDirection = Enum.NormalId.Bottom
P.Enabled = true
P.Rate = 30
P.Rotation = NumberRange.new(0,360)
P.RotSpeed = NumberRange.new(0,15)
P.Speed = NumberRange.new(3,5)
P.VelocitySpread = 80

while wait() do
    cloud.CFrame = CFrame.new() + Vector3.new(Player.Character.Torso.CFrame.x,Player.Character.Torso.CFrame.y,Player.Character.Torso.CFrame.z) + Vector3.new(0,20,0)
end

    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "SB shothun",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/JEqdhShd/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "zeus blade",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/cSuRlnSg/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "tank",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/ScoQ2lri/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "suck pad",
    Icon = "code",
    Callback = function()
        
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "primadon remake by me",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/l4cuPtY5/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "robhub good",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/KSvbtcPE"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "project s3cr3t upd",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/dMdu0dKu/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "project s3cr3t ultimate",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/FfKpPBgi/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "project duck ultimate",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/RX1PYZs1/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "split",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/uxMP9Xga/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "snoopdog skybox",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/vIeHZgSK/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "sheldoni",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/5Ae9nz3k/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "sheldoni 2",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/vDKS79Fn/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "anime skybox",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/pDEeryvV/raw",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "noob spawner",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/Cannoneer%20Noob.txt",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Divider()

ElementsSection:Button({
    Title = "HD ADMIN",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/PHGS971/HDadmin/refs/heads/main/HDadmin.lua'))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Topk3k v5 remake",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/radiuscool/topkek/refs/heads/main/adsdsaadsdassad'))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "Anonymas combo (HOLY LAGGY)",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/uiwcplCF/raw"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "luamayg*y",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Project-Lua-Inspired-by-Project-Ligma-26224",true))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "steve remake",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Test4267/steve/refs/heads/main/rare"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "emote lol",
    Icon = "code",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7yd7/Hub/refs/heads/Branch/GUIS/Emotes.lua"))()
    end
})

ElementsSection:Divider()

ElementsSection:Button({
    Title = "soon",
    Icon = "code",
    Callback = function()
        
    end
})

ElementsSection:Divider()

local Dropdown67 = mangopmo:Dropdown({
    Title = "Teleport to Player",
    Values = {"No players available"},
    Value = "Select a player",
    Callback = function(selectedPlayer)
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        
        local targetPlayer = Players:FindFirstChild(selectedPlayer)
        if targetPlayer and targetPlayer.Character and LocalPlayer.Character then
            local targetChar = targetPlayer.Character
            local humanoidRootPart = targetChar:FindFirstChild("HumanoidRootPart")
            local localRootPart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            
            if humanoidRootPart and localRootPart then
                localRootPart.CFrame = humanoidRootPart.CFrame
            end
        end
    end
})

mangopmo:Divider()

local function gurt()
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    
    local playerList = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(playerList, player.Name)
        end
    end
    if #playerList == 0 then
        playerList = {"No players available"}
    end
    Dropdown67:Refresh(playerList)
end

game:GetService("Players").PlayerAdded:Connect(gurt)
game:GetService("Players").PlayerRemoving:Connect(gurt)

gurt()

local input = gooner:Input({
    Title = "Jump Power",
    Desc = "Set your jump power",
    Value = "50",
    InputIcon = "arrow-up-from-line",
    Type = "Input",
    Placeholder = "Enter jump power...",
    Callback = function(input)
        local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.JumpPower = tonumber(input) or 50
        end
    end
})

local input2 = gooner:Input({
    Title = "Walk Speed",
    Desc = "Set your walk speed", 
    Value = "16",
    InputIcon = "chevrons-up",
    Type = "Input",
    Placeholder = "Enter walk speed...",
    Callback = function(input)
        local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = tonumber(input) or 16
        end
    end
})

local input3 = gooner:Input({
    Title = "Gravity",
    Desc = "Set gravity",
    Value = "196.2",
    InputIcon = "circle-fading-arrow-up",
    Type = "Input",
    Placeholder = "Enter gravity...",
    Callback = function(input)
        workspace.Gravity = tonumber(input) or 196.2
    end
})

local input4 = gooner:Input({
    Title = "FOV",
    Desc = "Set FOV",
    Value = "70",
    InputIcon = "camera",
    Type = "Input",
    Placeholder = "Enter FOV...",
    Callback = function(input)
        game.Workspace.CurrentCamera.FieldOfView = tonumber(input) or 70
    end
})

local scriptCode = "" -- ตัวแปรเก็บโค้ดที่ผู้ใช้พิมพ์ไว้

-- ช่อง Input ใส่โค้ด
local input5 = gooner:Input({
    Title = "Mini Executor",
    Desc = "พิมพ์โค้ดที่นี่",
    Value = "",
    Type = "Input",
    Placeholder = "print('Hello World')",
    Callback = function(text)
        scriptCode = text  -- เก็บโค้ดไว้รันตอนกดปุ่ม
    end
})

-- ปุ่มรันโค้ด
local runBtn = gooner:Button({
    Title = "Run Script",
    Icon = "play",
    Callback = function()
        if scriptCode == "" then
            WindUI:Notify({
                Title = "Error",
                Content = "ไม่มีโค้ดให้รัน!",
                Duration = 2
            })
            return
        end

        -- จำลอง Executor (ปลอดภัย)
        local func, syntaxError = loadstring(scriptCode)

        if not func then
            WindUI:Notify({
                Title = "Syntax Error",
                Content = tostring(syntaxError),
                Duration = 3
            })
            return
        end

        local ok, runtimeError = pcall(func)

        if ok then
            WindUI:Notify({
                Title = "Run Success",
                Content = "รันโค้ดสำเร็จ",
                Duration = 2
            })
        else
            WindUI:Notify({
                Title = "Runtime Error",
                Content = tostring(runtimeError),
                Duration = 3
            })
        end
    end
})

gooner:Divider()

local scriptCode = ""

local function ConvertRequireToLua(text)
    local assetId = string.match(text, "require%((%d+)%)")

    if not assetId then
        return "-- ❌ ไม่พบ require(assetId)"
    end

    -- โหลด asset (ต้องใช้ executor ที่ allow GetObjects)
    local suc, obj = pcall(function()
        return game:GetObjects("rbxassetid://" .. assetId)[1]
    end)

    if not suc or not obj then
        return "-- ❌ โหลด asset ไม่ได้ หรือ executor ไม่รองรับ GetObjects"
    end

    -- หา Script / ModuleScript
    local source = nil

    if obj:IsA("ModuleScript") or obj:IsA("Script") or obj:IsA("LocalScript") then
        -- พยายามดึง source แบบตรง
        pcall(function()
            source = obj.Source
        end)
    else
        -- หา module script ใน descendants
        for _, d in ipairs(obj:GetDescendants()) do
            if d:IsA("ModuleScript") or d:IsA("LocalScript") or d:IsA("Script") then
                pcall(function()
                    source = d.Source
                end)
                if source then break end
            end
        end
    end

    if not source then
        return "-- ❌ Executor ของคุณไม่รองรับการอ่าน .Source"
    end

    return "-- Decompiled Lua from asset ID: "..assetId.."\n\n" .. source
end



-- ▼ UI Input
local codeInput = gooner:Input({
    Title = "Script Input",
    Desc = "พิมพ์ require(assetID)",
    Value = "",
    Type = "Input",
    Placeholder = "require(123456789)",
    Callback = function(text)
        scriptCode = text
    end
})


-- ▼ ปุ่ม Convert
gooner:Button({
    Title = "Convert require → Lua Module",
    Desc = "แปลง asset เป็น Lua Module code",
    Callback = function()
        local converted = ConvertRequireToLua(scriptCode)

        codeInput:Set(converted)

        -- ถ้า executor คุณมี setclipboard() → เปิดใช้ได้
        -- setclipboard(converted)
    end
})

local scriptCode = "" -- ตัวแปรเก็บโค้ดที่ผู้ใช้พิมพ์ไว้

-- ฟังก์ชันแปลง require(asset) → source code
local function ConvertRequire(text)
    local assetId = string.match(text, "require%((%d+)%)")
    if not assetId then
        return nil, "ไม่พบ require(assetId)"
    end

    -- โหลด asset
    local ok, obj = pcall(function()
        return game:GetObjects("rbxassetid://" .. assetId)[1]
    end)

    if not ok or not obj then
        return nil, "โหลด asset ไม่ได้หรือ executor ไม่รองรับ GetObjects"
    end

    -- หา Script/ModuleScript
    local source = nil

    if obj:IsA("ModuleScript") or obj:IsA("LocalScript") or obj:IsA("Script") then
        pcall(function()
            source = obj.Source
        end)
    else
        for _, v in ipairs(obj:GetDescendants()) do
            if v:IsA("ModuleScript") or v:IsA("LocalScript") or v:IsA("Script") then
                local ok2
                ok2, source = pcall(function() return v.Source end)
                if ok2 and source then break end
            end
        end
    end

    if not source then
        return nil, "ไม่สามารถอ่าน Source ได้ (executor ไม่รองรับ)"
    end

    return source, nil
end


-- ช่อง Input ใส่โค้ด
local input5 = gooner:Input({
    Title = "Mini Executor require work only map allow game:GetObjects and can read Script.Source",
    Desc = "พิมพ์โค้ดที่นี่",
    Value = "",
    Type = "Input",
    Placeholder = "require(123456789)",
    Callback = function(text)
        scriptCode = text
    end
})



gooner:Divider()

local togglemustard = gooner:Toggle({
    Title = "anti fling",
    Desc = "A good anti fling one by me",
    Icon = "zap-off",
    Type = "Checkbox",
    Default = false,
    Callback = function(state)
        workspace:SetAttribute("NoFatigue", state)
    end
})

local togglemango = gooner:Toggle({
    Title = "No Slide Dash Cooldown",
    Desc = "Remove slide dash cooldown ",
    Icon = "refresh-ccw",
    Type = "Checkbox",
    Default = false,
    Callback = function(state)
        workspace:SetAttribute("NoDashCooldown", state)
    end
})

local togglesybau = gooner:Toggle({
    Title = "Extra Slots",
    Desc = "Gives free extra slots",
    Icon = "square-plus",
    Type = "Checkbox",
    Default = false,
    Callback = function(state)
        local Players = game:GetService("Players")
        local localPlayer = Players.LocalPlayer
        localPlayer:SetAttribute("ExtraSlots", state)
    end
})

local togglepmo = gooner:Toggle({
    Title = "Emote Search Bar",
    Desc = "Gives free emote search bar",
    Icon = "search",
    Type = "Checkbox",
    Default = false,
    Callback = function(state)
        local Players = game:GetService("Players")
        local localPlayer = Players.LocalPlayer
        localPlayer:SetAttribute("EmoteSearchBar", state)
    end
})

gooner:Divider()

local buttonmaybe = sybau:Button({
    Title = "Server Hop",
    Desc = "Teleport you to the other server",
    Locked = false,
    Callback = function()
        local skibidi = game.PlaceId
        local mustarded = game.Players.MaxPlayers
        
        local gooned = false
        
        pcall(function()
            local mangoed = game:HttpGet("https://games.roblox.com/v1/games/"..skibidi.."/servers/Public?limit=100")
            mangoed = game:GetService("HttpService"):JSONDecode(mangoed)
            
            local skibied = {}
            local mustard = {}
            
            for _, server in pairs(mangoed.data) do
                if server.id ~= game.JobId then
                    local goon = server.playing
                    
                    if goon >= 5 and goon <= mustarded * 0.8 then
                        table.insert(skibied, server.id)
                    elseif goon < mustarded then
                        table.insert(mustard, server.id)
                    end
                end
            end
            
            if #skibied > 0 then
                game:GetService("TeleportService"):TeleportToPlaceInstance(skibidi, skibied[math.random(#skibied)])
                gooned = true
            elseif #mustard > 0 then
                game:GetService("TeleportService"):TeleportToPlaceInstance(skibidi, mustard[math.random(#mustard)])
                gooned = true
            end
        end)
        
        if not gooned then
            game:GetService("TeleportService"):Teleport(skibidi)
        end
    end
})

sybau:Divider()

local animationList = {
    ["Dab"] = 507771019,
    ["Floss"] = 456840422,
    ["Tilt"] = 336069291,
    ["Zombie"] = 616322950,
    ["Hero Landing"] = 2506281703
}

local selectedAnimId = nil

-- แปลงชื่อใน table เป็น array เพื่อทำ dropdown
local animNames = {}
for name, _ in pairs(animationList) do
    table.insert(animNames, name)
end

-- Dropdown เลือกท่าทาง
local dropdown = sybau:Dropdown({
    Title = "Select Animation",
    Desc = "เลือกท่าทางที่ต้องการเล่น",
    Values = animNames,
    Multi = false,
    Callback = function(selectedName)
        selectedAnimId = animationList[selectedName]
        print("Selected animation:", selectedName, selectedAnimId)
    end
})

-- ปุ่มเล่นท่าทาง
sybau:Button({
    Title = "Play Animation",
    Icon = "play",
    Callback = function()

        if not selectedAnimId then
            warn("Please select an animation first!")
            return
        end

        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")

        -- หยุดอันเก่า
        if currentTrack and currentTrack.IsPlaying then
            currentTrack:Stop()
        end

        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://" .. selectedAnimId

        local track = humanoid:LoadAnimation(animation)
        currentTrack = track

        track:Play()
        print("Playing animation:", selectedAnimId)
    end
})

zawarudo:Divider()

local Lighting = game:GetService("Lighting")

local function clear()
    for i, v in next, Lighting:GetDescendants() do 
        if v:IsA("PostEffect") or v:IsA("Sky") or v:IsA("Atmosphere") or v:IsA("ParticleEmitter") then
            v:Destroy() 
        end
    end
    Lighting.Ambient = Color3.fromRGB(102, 102, 102)
    Lighting.Brightness = 1
    Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
    Lighting.ColorShift_Top = Color3.new(0, 0, 0)
    Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
    Lighting.ClockTime = 14
    Lighting.ExposureCompensation = 0
    Lighting.GeographicLatitude = 41.28
end

local current = nil
local applied = false

local envs = {
    ["Coastal"] = function()
        clear()
        Lighting.Ambient = Color3.fromRGB(80, 100, 120)
        Lighting.Brightness = 2.8
        Lighting.ColorShift_Bottom = Color3.fromRGB(100, 140, 180)
        Lighting.ColorShift_Top = Color3.fromRGB(180, 200, 220)
        Lighting.OutdoorAmbient = Color3.fromRGB(90, 120, 150)
        Lighting.ClockTime = 13.5
        Lighting.ExposureCompensation = 0.2
        Lighting.GeographicLatitude = 30
        
        local s = Instance.new("Sky", Lighting)
        s.SunTextureId = "rbxassetid://6196665106"
        s.SunAngularSize = 18
        
        local a = Instance.new("Atmosphere", Lighting)
        a.Density = 0.3
        a.Offset = 0.15
        a.Color = Color3.fromRGB(180, 210, 230)
        a.Decay = Color3.fromRGB(160, 190, 210)
        a.Glare = 0.4
        a.Haze = 1.2
        
        local f = Instance.new("FogEffect", Lighting)
        f.Color = Color3.fromRGB(170, 200, 220)
        f.Density = 0.07
        
        local c = Instance.new("ColorCorrectionEffect", Lighting)
        c.Brightness = 0.05
        c.Contrast = 0.08
        c.Saturation = 0.1
        c.TintColor = Color3.fromRGB(120, 160, 200)
    end,

    ["Autumn"] = function()
        clear()
        Lighting.Ambient = Color3.fromRGB(110, 90, 70)
        Lighting.Brightness = 2.3
        Lighting.ColorShift_Bottom = Color3.fromRGB(140, 110, 90)
        Lighting.ColorShift_Top = Color3.fromRGB(220, 170, 120)
        Lighting.OutdoorAmbient = Color3.fromRGB(125, 100, 80)
        Lighting.ClockTime = 15
        Lighting.ExposureCompensation = -0.1
        Lighting.GeographicLatitude = 45
        
        local s = Instance.new("Sky", Lighting)
        s.SunTextureId = "rbxassetid://6196665106"
        s.SunAngularSize = 20
        
        local r = Instance.new("SunRaysEffect", Lighting)
        r.Intensity = 0.3
        
        local a = Instance.new("Atmosphere", Lighting)
        a.Density = 0.45
        a.Offset = 0.2
        a.Color = Color3.fromRGB(220, 180, 140)
        a.Decay = Color3.fromRGB(200, 160, 120)
        a.Glare = 0.35
        a.Haze = 2.2
        
        local f = Instance.new("FogEffect", Lighting)
        f.Color = Color3.fromRGB(190, 160, 130)
        f.Density = 0.09
        
        local c = Instance.new("ColorCorrectionEffect", Lighting)
        c.Contrast = 0.12
        c.Saturation = 0.2
        c.TintColor = Color3.fromRGB(200, 150, 100)
    end,

    ["Dawn"] = function()
        clear()
        Lighting.Ambient = Color3.fromRGB(50, 40, 70)
        Lighting.Brightness = 1.8
        Lighting.ColorShift_Bottom = Color3.fromRGB(120, 100, 170)
        Lighting.ColorShift_Top = Color3.fromRGB(255, 120, 60)
        Lighting.OutdoorAmbient = Color3.fromRGB(70, 50, 90)
        Lighting.ClockTime = 6.2
        Lighting.ExposureCompensation = -0.6
        Lighting.GeographicLatitude = 45
        
        local s = Instance.new("Sky", Lighting)
        s.SunTextureId = "rbxassetid://6196665106"
        s.SunAngularSize = 22
        
        local r = Instance.new("SunRaysEffect", Lighting)
        r.Intensity = 0.5
        
        local a = Instance.new("Atmosphere", Lighting)
        a.Density = 0.6
        a.Offset = 0.2
        a.Color = Color3.fromRGB(255, 150, 100)
        a.Decay = Color3.fromRGB(220, 130, 90)
        a.Glare = 0.8
        a.Haze = 4
        
        local f = Instance.new("FogEffect", Lighting)
        f.Color = Color3.fromRGB(180, 140, 160)
        f.Density = 0.1
        
        local b = Instance.new("BloomEffect", Lighting)
        b.Intensity = 0.3
        b.Size = 22
    end,

    ["Dusk"] = function()
        clear()
        Lighting.Ambient = Color3.fromRGB(60, 50, 80)
        Lighting.Brightness = 1.6
        Lighting.ColorShift_Bottom = Color3.fromRGB(90, 70, 120)
        Lighting.ColorShift_Top = Color3.fromRGB(220, 130, 80)
        Lighting.OutdoorAmbient = Color3.fromRGB(75, 60, 95)
        Lighting.ClockTime = 18.8
        Lighting.ExposureCompensation = -0.5
        Lighting.GeographicLatitude = 45
        
        local s = Instance.new("Sky", Lighting)
        s.SunTextureId = "rbxassetid://6196665106"
        s.SunAngularSize = 23
        
        local r = Instance.new("SunRaysEffect", Lighting)
        r.Intensity = 0.45
        
        local a = Instance.new("Atmosphere", Lighting)
        a.Density = 0.55
        a.Offset = 0.22
        a.Color = Color3.fromRGB(230, 140, 90)
        a.Decay = Color3.fromRGB(200, 120, 80)
        a.Glare = 0.7
        a.Haze = 3.5
        
        local f = Instance.new("FogEffect", Lighting)
        f.Color = Color3.fromRGB(160, 130, 150)
        f.Density = 0.08
        
        local b = Instance.new("BloomEffect", Lighting)
        b.Intensity = 0.25
        b.Size = 20
    end,

    ["Stormy"] = function()
        clear()
        Lighting.Ambient = Color3.fromRGB(50, 50, 60)
        Lighting.Brightness = 0.7
        Lighting.ColorShift_Bottom = Color3.fromRGB(60, 60, 80)
        Lighting.ColorShift_Top = Color3.fromRGB(40, 40, 60)
        Lighting.OutdoorAmbient = Color3.fromRGB(55, 55, 70)
        Lighting.ClockTime = 16
        Lighting.ExposureCompensation = -1.2
        Lighting.GeographicLatitude = 45
        
        local a = Instance.new("Atmosphere", Lighting)
        a.Density = 0.9
        a.Offset = 0.35
        a.Color = Color3.fromRGB(90, 90, 110)
        a.Haze = 15
        a.Glare = 0.05
        
        local b = Instance.new("BloomEffect", Lighting)
        b.Intensity = 0.7
        b.Size = 10
        b.Threshold = 0.65
        
        local f = Instance.new("FogEffect", Lighting)
        f.Color = Color3.fromRGB(70, 75, 85)
        f.Density = 0.2
        
        local c = Instance.new("Sky", Lighting)
        c.SkyboxBk = "rbxassetid://183069588"
        c.SkyboxDn = "rbxassetid://183069672"
        c.SkyboxFt = "rbxassetid://183069623"
        c.SkyboxLf = "rbxassetid://183069651"
        c.SkyboxRt = "rbxassetid://183069606"
        c.SkyboxUp = "rbxassetid://183069637"
        
        local cc = Instance.new("ColorCorrectionEffect", Lighting)
        cc.Brightness = -0.15
        cc.Contrast = 0.2
        cc.Saturation = -0.25
    end,

    ["Desert"] = function()
        clear()
        Lighting.Ambient = Color3.fromRGB(130, 100, 70)
        Lighting.Brightness = 3.8
        Lighting.ColorShift_Bottom = Color3.fromRGB(210, 160, 110)
        Lighting.ColorShift_Top = Color3.fromRGB(255, 210, 120)
        Lighting.OutdoorAmbient = Color3.fromRGB(160, 120, 80)
        Lighting.ClockTime = 14.5
        Lighting.ExposureCompensation = 0.7
        Lighting.GeographicLatitude = 25
        
        local a = Instance.new("Atmosphere", Lighting)
        a.Density = 0.25
        a.Offset = 0.15
        a.Color = Color3.fromRGB(210, 180, 130)
        a.Decay = Color3.fromRGB(190, 160, 110)
        a.Glare = 0.4
        a.Haze = 1.5
        
        local s = Instance.new("Sky", Lighting)
        s.SunTextureId = "rbxassetid://6196665106"
        s.SunAngularSize = 20
        
        local f = Instance.new("FogEffect", Lighting)
        f.Color = Color3.fromRGB(200, 170, 130)
        f.Density = 0.05
        
        local c = Instance.new("ColorCorrectionEffect", Lighting)
        c.Contrast = 0.15
        c.Saturation = 0.1
        c.TintColor = Color3.fromRGB(255, 200, 120)
    end,

    ["Rainy"] = function()
        clear()
        Lighting.Ambient = Color3.fromRGB(90, 90, 110)
        Lighting.Brightness = 1.2
        Lighting.ColorShift_Bottom = Color3.fromRGB(110, 110, 130)
        Lighting.ColorShift_Top = Color3.fromRGB(80, 80, 100)
        Lighting.OutdoorAmbient = Color3.fromRGB(100, 100, 120)
        Lighting.ClockTime = 14
        Lighting.ExposureCompensation = -0.6
        Lighting.GeographicLatitude = 45
        
        local a = Instance.new("Atmosphere", Lighting)
        a.Density = 0.7
        a.Offset = 0.25
        a.Color = Color3.fromRGB(160, 160, 180)
        a.Decay = Color3.fromRGB(130, 130, 150)
        a.Glare = 0.1
        a.Haze = 8
        
        local c = Instance.new("Sky", Lighting)
        c.SkyboxBk = "rbxassetid://570557514"
        c.SkyboxDn = "rbxassetid://570557775"
        c.SkyboxFt = "rbxassetid://570557559"
        c.SkyboxLf = "rbxassetid://570557518"
        c.SkyboxRt = "rbxassetid://570557524"
        c.SkyboxUp = "rbxassetid://570557485"
        
        local f = Instance.new("FogEffect", Lighting)
        f.Color = Color3.fromRGB(140, 150, 160)
        f.Density = 0.15
        
        local r = Instance.new("ParticleEmitter", Lighting)
        r.Texture = "rbxassetid://2452689026"
        r.Size = NumberSequence.new(0.5)
        r.Transparency = NumberSequence.new(0.3)
        r.Speed = NumberRange.new(20, 25)
        r.Rotation = NumberRange.new(0, 360)
        r.Lifetime = NumberRange.new(2, 3)
        r.Rate = 100
        r.VelocitySpread = 50
        
        local cc = Instance.new("ColorCorrectionEffect", Lighting)
        cc.Brightness = -0.1
        cc.Contrast = 0.15
        cc.Saturation = -0.2
        cc.TintColor = Color3.fromRGB(130, 140, 150)
    end,

    ["Sunset"] = function()
        clear()
        Lighting.Ambient = Color3.new(0,0,0)
        Lighting.Brightness = 2
        Lighting.ColorShift_Bottom = Color3.fromRGB(0,150,255)
        Lighting.ColorShift_Top = Color3.fromRGB(255,147,0)
        Lighting.EnvironmentDiffuseScale = 1
        Lighting.EnvironmentSpecularScale = 1
        Lighting.OutdoorAmbient = Color3.new(0,0,0)
        Lighting.ClockTime = 17.258
        Lighting.ExposureCompensation = -1
        
        local s = Instance.new("Sky",Lighting)
        s.CelestialBodiesShown = true
        s.SunTextureId = "rbxassetid://6281397906"
        
        local r = Instance.new("SunRaysEffect",Lighting)
        r.Intensity = 1
        
        local a = Instance.new("Atmosphere",Lighting)
        a.Density = 0.5
        a.Color = Color3.fromRGB(192,192,192)
        a.Decay = Color3.fromRGB(192,192,192)
        a.Glare = 1.5
        a.Haze = 2
    end
}

local Dropdownboii = zawarudo:Dropdown({
    Title = "Shader Selector",
    Values = {"Coastal", "Autumn", "Dawn", "Dusk", "Stormy", "Desert", "Rainy", "Sunset"},
    Value = "Sunset",
    Callback = function(option) 
        current = option
        applied = false
    end
})

local Buttonskibidi = zawarudo:Button({
    Title = "Apply Shader",
    Desc = "Click to apply selected Shader. Click again to reset.",
    Locked = false,
    Callback = function()
        if current then
            if applied then
                clear()
                applied = false
            else
                local func = envs[current]
                if func then
                    func()
                    applied = true
                    
                    if current == "Stormy" then
                        spawn(function()
                            while applied and current == "Stormy" do
                                wait(math.random(8, 20))
                                if applied and current == "Stormy" then
                                    local orig = Lighting.Brightness
                                    Lighting.Brightness = 2.5
                                    wait(0.1)
                                    Lighting.Brightness = orig
                                    wait(0.15)
                                    Lighting.Brightness = 1.8
                                    wait(0.07)
                                    Lighting.Brightness = orig
                                end
                            end
                        end)
                    end
                end
            end
        end
    end
})







































zawarudo:Divider()
six:Button({
    Title = "from the strat remix",
    Icon = "audio-lines",
    Callback = function()

        -- เอา PlayerGui ของผู้เล่น
        local player = game.Players.LocalPlayer
        local playerGui = player:WaitForChild("PlayerGui")

        -- หา Sound ถ้ายังไม่มีก็สร้างขึ้นใหม่
        local sound = playerGui:FindFirstChild("MusicPlayer")
        if not sound then
            sound = Instance.new("Sound")
            sound.Name = "MusicPlayer"
            sound.Parent = playerGui
            sound.Volume = 1
        end

        -- ตั้งค่า SongID ที่ต้องการ
        local SongID = 105663768150465  
        sound.SoundId = "rbxassetid://" .. SongID

        -- สลับ Play / Stop
        if sound.IsPlaying then
            sound:Stop()
        else
            sound:Play()
        end
    end
})




six:Divider()

six:Button({
    Title = "Under your spell - snow strippers",
    Icon = "audio-lines",
    Callback = function()

        -- เอา PlayerGui ของผู้เล่น
        local player = game.Players.LocalPlayer
        local playerGui = player:WaitForChild("PlayerGui")

        -- หา Sound ถ้ายังไม่มีก็สร้างขึ้นใหม่
        local sound = playerGui:FindFirstChild("MusicPlayer")
        if not sound then
            sound = Instance.new("Sound")
            sound.Name = "MusicPlayer"
            sound.Parent = playerGui
            sound.Volume = 1
        end

        -- ตั้งค่า SongID ที่ต้องการ
        local SongID = 91007045451630  
        sound.SoundId = "rbxassetid://" .. SongID

        -- สลับ Play / Stop
        if sound.IsPlaying then
            sound:Stop()
        else
            sound:Play()
        end
    end
})


six:Divider()

local currentSongID = nil -- เก็บ ID เพลงปัจจุบัน

local Input = six:Input({
    Title = "Song ID click again to stop music",
    Desc = "ใส่รหัสเพลง Roblox",
    Value = "110788401793874 or 82719020266339",
    InputIcon = "audio-lines",
    Type = "Input",
    Placeholder = "เช่น 1843526943",
    Callback = function(input)
        currentSongID = input
        print("Song ID set to:", input)
    end
})

six:Button({
    Title = "Play Song",
    Icon = "play",
    Callback = function()
        local player = game.Players.LocalPlayer
        local playerGui = player:WaitForChild("PlayerGui")

        -- หา Sound ถ้ายังไม่มีก็สร้าง
        local sound = playerGui:FindFirstChild("MusicPlayer")
        if not sound then
            sound = Instance.new("Sound")
            sound.Name = "MusicPlayer"
            sound.Parent = playerGui
            sound.Volume = 1
            sound.Looped = true  -- 💥 เล่นวนลูป
        end

        -- ถ้ามี sound อยู่แล้ว ให้บังคับ loop ด้วย
        sound.Looped = true

        -- เช็คว่าผู้ใช้ใส่ ID หรือยัง
        if not currentSongID or currentSongID == "" then
            warn("You must enter a Song ID!")
            return
        end

        -- ตั้งค่าเพลง
        sound.SoundId = "rbxassetid://" .. currentSongID

        -- Toggle Play / Stop
        if sound.IsPlaying then
            sound:Stop()
        else
            sound:Play()
        end
    end
})



six:Divider()

six:Button({
    Title = "JOJO blud ahh song 😭🙏",
    Icon = "audio-lines",
    Callback = function()

        -- เอา PlayerGui ของผู้เล่น
        local player = game.Players.LocalPlayer
        local playerGui = player:WaitForChild("PlayerGui")

        -- หา Sound ถ้ายังไม่มีก็สร้างขึ้นใหม่
        local sound = playerGui:FindFirstChild("MusicPlayer")
        if not sound then
            sound = Instance.new("Sound")
            sound.Name = "MusicPlayer"
            sound.Parent = playerGui
            sound.Volume = 1
        end

        -- ตั้งค่า SongID ที่ต้องการ
        local SongID = 107492048363429  
        sound.SoundId = "rbxassetid://" .. SongID

        -- สลับ Play / Stop
        if sound.IsPlaying then
            sound:Stop()
        else
            sound:Play()
        end
    end
})

six:Divider()

local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local player = game:GetService("Players").LocalPlayer

local LowGraphics = false
local original = {
    lighting = {},
    desc = {},
    gui = {},
}

local function save(inst, prop, val)
    if not original.desc[inst] then
        original.desc[inst] = {}
    end
    if original.desc[inst][prop] == nil then
        original.desc[inst][prop] = val
    end
end

local function applyLighting()
    if not original.lighting.saved then
        original.lighting.saved = true
        original.lighting.GlobalShadows = Lighting.GlobalShadows
        original.lighting.Brightness = Lighting.Brightness
        original.lighting.Ambient = Lighting.Ambient
        original.lighting.Out = Lighting.OutdoorAmbient
    end

    Lighting.GlobalShadows = false
    Lighting.Brightness = 1
    Lighting.Ambient = Color3.fromRGB(120,120,120)
    Lighting.OutdoorAmbient = Color3.fromRGB(120,120,120)
end

local function restoreLighting()
    if not original.lighting.saved then return end

    Lighting.GlobalShadows = original.lighting.GlobalShadows
    Lighting.Brightness = original.lighting.Brightness
    Lighting.Ambient = original.lighting.Ambient
    Lighting.OutdoorAmbient = original.lighting.Out
end

local function lowWorkspace()
    for _, inst in ipairs(workspace:GetDescendants()) do
        if inst:IsA("ParticleEmitter") then
            save(inst,"Enabled",inst.Enabled)
            inst.Enabled = false
        elseif inst:IsA("Beam") or inst:IsA("Trail") then
            save(inst,"Enabled",inst.Enabled)
            inst.Enabled = false
        elseif inst:IsA("MeshPart") then
            save(inst,"TextureID",inst.TextureID)
            inst.TextureID = ""
        elseif inst:IsA("Decal") then
            save(inst,"Transparency",inst.Transparency)
            inst.Transparency = 1
        end
    end
end

local function restoreWorkspace()
    for inst, props in pairs(original.desc) do
        for prop,val in pairs(props) do
            pcall(function()
                inst[prop] = val
            end)
        end
    end
end

local function lowGui()
    local gui = player:WaitForChild("PlayerGui")
    for _, obj in ipairs(gui:GetDescendants()) do
        if obj:IsA("ImageLabel") or obj:IsA("ImageButton") then
            original.gui[obj] = obj.Image
            obj.Image = ""
        end
    end
end

local function restoreGui()
    for obj, img in pairs(original.gui) do
        if obj then
            pcall(function()
                obj.Image = img
            end)
        end
    end
end

local function EnableLow()
    LowGraphics = true
    applyLighting()
    lowWorkspace()
    lowGui()
end

local function DisableLow()
    LowGraphics = false
    restoreLighting()
    restoreWorkspace()
    restoreGui()
end

local function ToggleLowGraphics(state)
    if state then
        EnableLow()
    else
        DisableLow()
    end
end

-- ============= SIX UI TOGGLE =============
local Toggle = six:Toggle({
    Title = "Low Graphics Mode",
    Desc = "ลดการ์ดจอ, ลด texture, ปิด effects",
    Icon = "gauge",
    Type = "Checkbox",
    Value = false,
    Callback = function(state)
        ToggleLowGraphics(state)
        print("Low Graphics:", state)
    end
})

-- Toggle controller: Sound ring + Head Snake (start/stop)
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local effectRunning = false
local connection = nil
local sound = nil
local dots = {}
local shadow = nil
local snake = nil
local snakeGui = nil
local originalHeadTransparency = nil

local function rainbowColor(t)
	return Color3.fromRGB(
		math.clamp(math.floor(math.sin(t) * 127 + 128), 0, 255),
		math.clamp(math.floor(math.sin(t + 2) * 127 + 128), 0, 255),
		math.clamp(math.floor(math.sin(t + 4) * 127 + 128), 0, 255)
	)
end

local function StartEffect()
	if effectRunning then return end
	effectRunning = true

	-- player + char
	local plr = Players.LocalPlayer
	local char = plr.Character or plr.CharacterAdded:Wait()
	local hrp = char:WaitForChild("HumanoidRootPart")
	local head = char:WaitForChild("Head")

	-- ===== Snake head =====
	-- เก็บค่าความโปร่งเดิมของหัวเพื่อคืนเมื่อปิด
	originalHeadTransparency = head.Transparency
	-- ถ้ามี Snake เดิม ให้ลบก่อน
	if head:FindFirstChild("Snake") then
		head:FindFirstChild("Snake"):Destroy()
	end

	-- สร้าง Part งูและผูกกับหัว (parent = head)
	snake = Instance.new("Part")
	snake.Name = "Snake"
	snake.Size = Vector3.new(1.2, 1.2, 1.2)
	snake.Color = Color3.fromRGB(255, 255, 255)
	snake.Material = Enum.Material.Neon
	snake.CanCollide = false
	snake.Anchored = true
	snake.Parent = head

	-- ซ่อนหัวจริง
	head.Transparency = 1

	-- สร้าง BillboardGui + TextLabel บน snake
	snakeGui = Instance.new("BillboardGui")
	snakeGui.Name = "SnakeText"
	snakeGui.Parent = snake
	snakeGui.Size = UDim2.new(4, 0, 1, 0)
	snakeGui.StudsOffset = Vector3.new(0, 1.5, 0)
	snakeGui.AlwaysOnTop = true

	local text = Instance.new("TextLabel")
	text.Parent = snakeGui
	text.BackgroundTransparency = 1
	text.Size = UDim2.new(1, 0, 1, 0)
	text.Text = "Sadhub plus"
	text.TextColor3 = Color3.fromRGB(255, 80, 80)
	text.TextStrokeTransparency = 0.3
	text.TextScaled = true
	text.Font = Enum.Font.GothamBold

	-- ===== Sound =====
	sound = Instance.new("Sound")
	sound.Name = "WaveMusic"
	sound.SoundId = "rbxassetid://134884767490882" -- เปลี่ยน ID ถ้าต้องการ
	sound.Volume = 25
	sound.Looped = true
	sound.Parent = plr:WaitForChild("PlayerGui")
	pcall(function() sound:Play() end)

	-- ===== Shadow ring =====
	shadow = Instance.new("Part")
	shadow.Name = "WaveShadow"
	shadow.Size = Vector3.new(16, 0.2, 16)
	shadow.Anchored = true
	shadow.CanCollide = false
	shadow.Material = Enum.Material.Neon
	shadow.Color = Color3.fromRGB(0, 0, 0)
	shadow.Transparency = 0.95
	shadow.Parent = workspace

	-- ===== Dots =====
	local POINTS = 75
	local BASE_RADIUS = 7
	local BASE_HEIGHT = 0.3

	dots = {}
	for i = 1, POINTS do
		local p = Instance.new("Part")
		p.Name = "WaveDot"
		p.Size = Vector3.new(0.45, 0.45, 0.45)
		p.Shape = Enum.PartType.Ball
		p.Anchored = true
		p.CanCollide = false
		p.Material = Enum.Material.Neon
		p.Parent = workspace
		dots[i] = p
	end

	-- ===== Animation loop =====
	local rot = 0
	connection = RunService.RenderStepped:Connect(function(dt)
		if not effectRunning then return end
		rot += dt * 6

		-- animate snake relative to head (งูหมุนรอบหัว)
		if snake and snake.Parent and head then
			local t = tick()
			local radius = 2
			local x = math.sin(t * 3) * radius
			local y = math.cos(t * 4.5) * 0.4
			local z = math.cos(t * 3) * radius
			local headPos = head.Position
			snake.CFrame = CFrame.new(headPos.X + x, headPos.Y + y, headPos.Z + z) * CFrame.Angles(0, t * 4, 0)

			-- เปลี่ยนสีข้อความเป็นรุ้งเล็กน้อย
			if snakeGui and snakeGui:FindFirstChildOfClass("TextLabel") then
				local lbl = snakeGui:FindFirstChildOfClass("TextLabel")
				lbl.TextColor3 = rainbowColor(t * 4)
			end
		end

		-- base position for wave (กลางตัว)
		local basePos = hrp.Position

		-- loudness (smooth)
		local loud = 0
		if sound then loud = sound.PlaybackLoudness end
		local loudSmooth = loud / 1000

		local musicRadius = BASE_RADIUS + loudSmooth * 7
		local musicHeight = BASE_HEIGHT + loudSmooth * 3

		shadow.CFrame = CFrame.new(basePos.X, basePos.Y - 3, basePos.Z)

		for i = 1, #dots do
			local ang = (i / #dots) * math.pi * 2 + rot
			local x = basePos.X + math.cos(ang) * musicRadius
			local z = basePos.Z + math.sin(ang) * musicRadius
			-- วางที่ "กึ่งกลางตัว" (basePos.Y) + การสั่นเล็กน้อย + การขยับตามเสียง
			local y = basePos.Y + math.sin(rot * 10 + i * 0.4) * 0.5 + musicHeight

			local col = rainbowColor(rot * 6 + i * 0.25)
			dots[i].Color = col
			dots[i].CFrame = CFrame.new(x, y, z)
		end
	end)
end

local function StopEffect()
	-- ปิด flag ก่อน เพื่อหยุด loop
	effectRunning = false

	-- disconnect loop
	if connection then
		connection:Disconnect()
		connection = nil
	end

	-- หยุดและลบ sound
	if sound then
		pcall(function() sound:Stop() end)
		if sound.Parent then sound:Destroy() end
		sound = nil
	end

	-- ลบ dots
	for _, p in ipairs(dots) do
		if p and p.Parent then p:Destroy() end
	end
	dots = {}

	-- ลบ shadow
	if shadow and shadow.Parent then
		shadow:Destroy()
		shadow = nil
	end

	-- ลบ snake + gui และคืนความโปร่งหัวเดิม
	local plr = Players.LocalPlayer
	local char = plr.Character
	if char and char:FindFirstChild("Head") then
		local head = char.Head
		-- คืน transparency
		if originalHeadTransparency then
			head.Transparency = originalHeadTransparency
			originalHeadTransparency = nil
		else
			head.Transparency = 0
		end
	end

	if snake and snake.Parent then
		snake:Destroy()
		snake = nil
	end
	if snakeGui and snakeGui.Parent then
		snakeGui:Destroy()
		snakeGui = nil
	end
end

-- ===== Six Toggle (UI) =====
local Toggle = six:Toggle({
    Title = "Sound ring",
    Desc = "Sound ring effects",
    Icon = "",
    Type = "Checkbox",
    Value = false,
    Callback = function(value)
        if value then
            StartEffect()
        else
            StopEffect()
        end
    end
})


TabHandles.Appearance:Paragraph({
    Title = "Customize Interface",
    Desc = "Personalize your experience",
    Image = "palette",
    ImageSize = 20,
    Color = "White"
})

local themes = {}
for themeName, _ in pairs(WindUI:GetThemes()) do
    table.insert(themes, themeName)
end
table.sort(themes)

local canchangetheme = true
local canchangedropdown = true



local themeDropdown = TabHandles.Appearance:Dropdown({
    Title = "THEME_SELECT",
    Values = themes,
    Value = "Midnight", --ตรงนี้ด้วยกันมันซํ้ากัน
    Callback = function(theme)
        canchangedropdown = false
        WindUI:SetTheme(theme)
        WindUI:Notify({
            Title = "Theme Applied",
            Content = theme,
            Icon = "palette",
            Duration = 2
        })
        canchangedropdown = true
    end
})

local Keybindgui = TabHandles.Appearance:Keybind({
    Title = "Keybind",
    Desc = "Keybind to open/close ui",
    Value = "G",
    Callback = function(v)
        Window:SetToggleKey(Enum.KeyCode[v])
    end
})

local transparencySlider = TabHandles.Appearance:Slider({
    Title = "TRANSPARENCY",
    Value = { 
        Min = 0,
        Max = 1,
        Default = 0.20,
    },
    Step = 0.1,
    Callback = function(value)
        WindUI.TransparencyValue = tonumber(value)
        Window:ToggleTransparency(tonumber(value) > 0)
    end
})













WindUI:OnThemeChange(function(theme)
    canchangetheme = false
    ThemeToggle:Set(theme == "Midnight") --เปลี่ยนตรงนี้ถ้าจะเปลี่นทีม
    canchangetheme = true
end)

local configName = "default"
local configFile = nil

TabHandles.Config:Input({
    Title = "Config Name",
    Value = configName,
    Callback = function(value)
        configName = value or "default"
    end
})

local ConfigManager = Window.ConfigManager
if ConfigManager then
    ConfigManager:Init(Window)
    
    TabHandles.Config:Button({
        Title = "loc:SAVE_CONFIG",
        Icon = "save",
        Variant = "Primary",
        Callback = function()
            configFile = ConfigManager:CreateConfig(configName)
            
            configFile:Register("featureToggle", featureToggle)
            configFile:Register("intensitySlider", intensitySlider)
            configFile:Register("modeDropdown", modeDropdown)
            configFile:Register("themeDropdown", themeDropdown)
            configFile:Register("transparencySlider", transparencySlider)
            
            configFile:Set("lastSave", os.date("%Y-%m-%d %H:%M:%S"))
            
            if configFile:Save() then
                WindUI:Notify({ 
                    Title = "loc:SAVE_CONFIG", 
                    Content = "Saved as: "..configName,
                    Icon = "check",
                    Duration = 3
                })
            else
                WindUI:Notify({ 
                    Title = "Error", 
                    Content = "Failed to save config",
                    Icon = "x",
                    Duration = 3
                })
            end
        end
    })

    TabHandles.Config:Button({
        Title = "loc:LOAD_CONFIG",
        Icon = "folder",
        Callback = function()
            configFile = ConfigManager:CreateConfig(configName)
            local loadedData = configFile:Load()
            
            if loadedData then
                if loadedData.playerData then
                    MyPlayerData = loadedData.playerData
                end
                
                local lastSave = loadedData.lastSave or "Unknown"
                WindUI:Notify({ 
                    Title = "loc:LOAD_CONFIG", 
                    Content = "Loaded: "..configName.."\nLast save: "..lastSave,
                    Icon = "refresh-cw",
                    Duration = 5
                })
            else
                WindUI:Notify({ 
                    Title = "Error", 
                    Content = "Failed to load config",
                    Icon = "x",
                    Duration = 3
                })
            end
        end
    })
else
    TabHandles.Config:Paragraph({
        Title = "Config Manager Not Available",
        Desc = "This feature requires ConfigManager",
        Image = "alert-triangle",
        ImageSize = 20,
        Color = "White"
    })
end


local footerSection = Window:Section({ Title = "script beta boii"})

Window:OnClose(function()
    if ConfigManager and configFile then
        configFile:Set("playerData", MyPlayerData)
        configFile:Set("lastSave", os.date("%Y-%m-%d %H:%M:%S"))
        configFile:Save()
    end
end)

Window:OnDestroy(function()
    print("idk boy like me")
end)

local Tab = Window:Tab({
    Title = "Tsb script",
    Icon = "swords", -- optional
    Locked = false,
})
local Button = Tab:Button({
    Title = "Greenhub",
    Desc = "",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/720ca401a8b75224254b35e0df05649e.lua"))()
    end
})
local Button = Tab:Button({
    Title = "Sor hub",
    Desc = "",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/wTf6tm5U"))()--the real goat
    end
})
local Button = Tab:Button({
    Title = "click tp(Pc)",
    Desc = "",
    Locked = false,
    Callback = function()
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local UIS = game:GetService("UserInputService")

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()


function GetCharacter()
   return game.Players.LocalPlayer.Character
end

function Teleport(pos)
   local Char = GetCharacter()
   if Char then
       Char:MoveTo(pos)
   end
end


UIS.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
       Teleport(Mouse.Hit.p)
   end
end)
    end
})
local Button = Tab:Button({
    Title = "auto bin trast",
    Desc = "",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sharkindigo12/Tsb/refs/heads/main/obfuscated_script-1764692652747.lua.txt"))()
    end
})

loadstring(game:HttpGet("https://pastefy.app/E8uC7Zmi/raw",true))()