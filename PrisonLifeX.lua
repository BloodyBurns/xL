local Version = "v0.0.2"
local nMSG = nil
local pr, r = pcall(function() readfile("PrisonLifeXScriptVersion.txt") end)
if not pr then
	writefile("PrisonLifeXScriptVersion.txt", Version)
	getgenv().CancelPLSXU = false
end

if pr then
	local Versx = readfile("PrisonLifeXScriptVersion.txt")
	if Versx ~= Version then
		print'old version'
		nMSG = "Updated Script to Version "..Version
	loadstring(game:HttpGet('https://raw.githubusercontent.com/BloodyBurns/xL/main/UpdateNotifier.lua'))()
	else
		print'current version'
		getgenv().CancelPLSXU = false
	end
end

if CancelPLSXU then
	return warn'Update Denied!'
end
if game.CoreGui:FindFirstChild("PrisonLifeX") then
	return 'void'	
end
writefile("PrisonLifeXScriptVersion.txt", Version)
local PrisonLifeX = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local holder = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local exit = Instance.new("TextButton")
local minimize = Instance.new("TextButton")
local settings = Instance.new("ImageButton")
local Frames = Instance.new("Frame")
local ItemsFrame = Instance.new("Frame")
local GUNS = Instance.new("Frame")
local GunsLayout = Instance.new("UIListLayout")
local Remington870 = Instance.new("TextButton")
local AK47 = Instance.new("TextButton")
local M4A1 = Instance.new("TextButton")
local M9 = Instance.new("TextButton")
local fT1 = Instance.new("TextLabel")
local OTHER = Instance.new("Frame")
local GunsLayout_2 = Instance.new("UIListLayout")
local Lunch = Instance.new("TextButton")
local Hammer = Instance.new("TextButton")
local RiotShield = Instance.new("TextButton")
local CrudeKnife = Instance.new("TextButton")
local fT2 = Instance.new("TextLabel")
local fT3 = Instance.new("TextLabel")
local ACCESSORIES = Instance.new("Frame")
local GunsLayout_3 = Instance.new("UIListLayout")
local Policehat = Instance.new("TextButton")
local Skimask = Instance.new("TextButton")
local Riothelmet = Instance.new("TextButton")
local autorespawn = Instance.new("TextLabel")
local onoff = Instance.new("ImageLabel")
local truefalse = Instance.new("ImageButton")
local LocalFrame = Instance.new("Frame")
local speed = Instance.new("TextLabel")
local slider = Instance.new("ImageLabel")
local dragger = Instance.new("ImageButton")
local reset = Instance.new("TextButton")
local jumppower = Instance.new("TextLabel")
local slider_2 = Instance.new("ImageLabel")
local dragger_2 = Instance.new("ImageButton")
local gravity = Instance.new("TextLabel")
local slider_3 = Instance.new("ImageLabel")
local dragger_3 = Instance.new("ImageButton")
local fov = Instance.new("TextLabel")
local slider_4 = Instance.new("ImageLabel")
local dragger_4 = Instance.new("ImageButton")
local serverhop = Instance.new("TextButton")
local autorespawn_2 = Instance.new("TextLabel")
local onoff_2 = Instance.new("ImageLabel")
local truefalse_2 = Instance.new("ImageButton")
local rejoin = Instance.new("TextButton")
local TpsFrame = Instance.new("Frame")
local GUNS_2 = Instance.new("Frame")
local GunsLayout_4 = Instance.new("UIListLayout")
local Remington870_2 = Instance.new("TextButton")
local AK47_2 = Instance.new("TextButton")
local M4A1_2 = Instance.new("TextButton")
local M9_2 = Instance.new("TextButton")
local fT1_2 = Instance.new("TextLabel")
local OTHER_2 = Instance.new("Frame")
local GunsLayout_5 = Instance.new("UIListLayout")
local Lunch_2 = Instance.new("TextButton")
local Hammer_2 = Instance.new("TextButton")
local RiotShield_2 = Instance.new("TextButton")
local CrudeKnife_2 = Instance.new("TextButton")
local fT2_2 = Instance.new("TextLabel")
local fT3_2 = Instance.new("TextLabel")
local ACCESSORIES_2 = Instance.new("Frame")
local GunsLayout_6 = Instance.new("UIListLayout")
local Policehat_2 = Instance.new("TextButton")
local Skimask_2 = Instance.new("TextButton")
local Riothelmet_2 = Instance.new("TextButton")
local TpsFrame = Instance.new("Frame")
local InsidePrison = Instance.new("ScrollingFrame")
local IPLayout = Instance.new("UIListLayout")
local fT4 = Instance.new("TextLabel")
local fT5 = Instance.new("TextLabel")
local OutsidePrison = Instance.new("ScrollingFrame")
local OPLayout = Instance.new("UIListLayout")
local TeamsFrame = Instance.new("Frame")
local Criminal = Instance.new("TextButton")
local Prisoner = Instance.new("TextButton")
local Police = Instance.new("TextButton")
local Neutral = Instance.new("TextButton")
local Custom = Instance.new("TextBox")
local Tabs = Instance.new("Frame")
local TabLayout = Instance.new("UIListLayout")
local Local = Instance.new("TextButton")
local Items = Instance.new("TextButton")
local Tps = Instance.new("TextButton")
local Teams = Instance.new("TextButton")
local Others = Instance.new("TextButton")
local Misc = Instance.new("TextButton")
local Credit = Instance.new("TextButton")
local plr = game:GetService("Players").LocalPlayer
local Notification = Instance.new("ScreenGui")
local Notifications = Instance.new("Frame")
local NLayout = Instance.new("UIListLayout")

PrisonLifeX.Name = "PrisonLifeX"
PrisonLifeX.Parent = game:GetService("CoreGui")
PrisonLifeX.Enabled = false
Main.Name = "Main"
Main.Parent = PrisonLifeX
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.160044223, 0, 0.299165696, 0)
Main.Size = UDim2.new(0, 572, 0, 358)
Main.Image = "rbxassetid://3570695787"
Main.ImageColor3 = Color3.fromRGB(25, 25, 25)
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100)
Main.SliceScale = 0.120
Main.Active = true
Main.Draggable = true
holder.Name = "holder"
holder.Parent = Main
holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
holder.BackgroundTransparency = 1.000
holder.Size = UDim2.new(0, 572, 0, 40)
holder.Image = "rbxassetid://3570695787"
holder.ImageColor3 = Color3.fromRGB(15, 15, 15)
holder.ScaleType = Enum.ScaleType.Slice
holder.SliceCenter = Rect.new(100, 100, 100, 100)
holder.SliceScale = 0.120
Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 255)
Title.Position = UDim2.new(-0.000912112766, 0, 0, 0)
Title.Size = UDim2.new(0, 110, 0, 40)
Title.Font = Enum.Font.TitilliumWeb
Title.Text = "  Prison Life X"
Title.TextColor3 = Color3.fromRGB(20, 173, 255)
Title.TextScaled = true
Title.TextSize = 25.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left
exit.Name = "exit"
exit.Parent = Main
exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exit.BackgroundTransparency = 1.000
exit.Position = UDim2.new(0.942784429, 0, 0.0251396652, 0)
exit.Size = UDim2.new(0, 22, 0, 22)
exit.Font = Enum.Font.Nunito
exit.Text = "X"
exit.TextColor3 = Color3.fromRGB(255, 255, 255)
exit.TextSize = 20.000
exit.TextWrapped = true
minimize.Name = "minimize"
minimize.Parent = Main
minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
minimize.BackgroundTransparency = 1.000
minimize.Position = UDim2.new(0.895104885, 0, 0.0251396652, 0)
minimize.Size = UDim2.new(0, 22, 0, 22)
minimize.Font = Enum.Font.Nunito
minimize.LineHeight = 1.610
minimize.Text = "_"
minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
minimize.TextScaled = true
minimize.TextSize = 14.000
minimize.TextWrapped = true
minimize.TextYAlignment = Enum.TextYAlignment.Top
settings.Name = "settings"
settings.Parent = Main
settings.BackgroundTransparency = 1.000
settings.LayoutOrder = 1
settings.Position = UDim2.new(0.839726746, 0, 0.0195463914, 0)
settings.Size = UDim2.new(0, 25, 0, 25)
settings.ZIndex = 2
settings.Image = "rbxassetid://3926307971"
settings.ImageRectOffset = Vector2.new(324, 124)
settings.ImageRectSize = Vector2.new(36, 36)
settings.ImageTransparency = 0.300
Frames.Name = "Frames"
Frames.Parent = Main
Frames.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frames.BackgroundTransparency = 1.000
Frames.ClipsDescendants = true
Frames.Position = UDim2.new(0.0227272734, 0, 0.190529078, 0)
Frames.Size = UDim2.new(0, 548, 0, 289)
ItemsFrame.Name = "ItemsFrame"
ItemsFrame.Parent = Frames
ItemsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ItemsFrame.BackgroundTransparency = 0.950
ItemsFrame.Position = UDim2.new(0.00995355099, 0, 0.0276816618, 0)
ItemsFrame.Size = UDim2.new(0, 542, 0, 275)
ItemsFrame.Visible = false
GUNS.Name = "GUNS"
GUNS.Parent = ItemsFrame
GUNS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GUNS.BackgroundTransparency = 1.000
GUNS.Position = UDim2.new(0.0147601478, 0, 0.127272725, 0)
GUNS.Size = UDim2.new(0, 196, 0, 118)
GunsLayout.Name = "GunsLayout"
GunsLayout.Parent = GUNS
GunsLayout.SortOrder = Enum.SortOrder.LayoutOrder
GunsLayout.Padding = UDim.new(0, 5)
Remington870.Name = "Remington 870"
Remington870.Parent = GUNS
Remington870.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Remington870.Size = UDim2.new(0, 180, 0, 23)
Remington870.Font = Enum.Font.SourceSans
Remington870.Text = "Remington 870"
Remington870.TextColor3 = Color3.fromRGB(200, 200, 200)
Remington870.TextScaled = true
Remington870.TextSize = 14.000
Remington870.TextWrapped = true
Remington870.TextXAlignment = Enum.TextXAlignment.Left
AK47.Name = "AK-47"
AK47.Parent = GUNS
AK47.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
AK47.Size = UDim2.new(0, 180, 0, 23)
AK47.Font = Enum.Font.SourceSans
AK47.Text = "AK-47"
AK47.TextColor3 = Color3.fromRGB(200, 200, 200)
AK47.TextScaled = true
AK47.TextSize = 14.000
AK47.TextWrapped = true
AK47.TextXAlignment = Enum.TextXAlignment.Left
M4A1.Name = "M4A1"
M4A1.Parent = GUNS
M4A1.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
M4A1.Size = UDim2.new(0, 180, 0, 23)
M4A1.Font = Enum.Font.SourceSans
M4A1.Text = "MA41 - Gamepass"
M4A1.TextColor3 = Color3.fromRGB(200, 200, 200)
M4A1.TextScaled = true
M4A1.TextSize = 14.000
M4A1.TextWrapped = true
M4A1.TextXAlignment = Enum.TextXAlignment.Left
M9.Name = "M9"
M9.Parent = GUNS
M9.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
M9.Size = UDim2.new(0, 180, 0, 23)
M9.Font = Enum.Font.SourceSans
M9.Text = "M9"
M9.TextColor3 = Color3.fromRGB(200, 200, 200)
M9.TextScaled = true
M9.TextSize = 14.000
M9.TextWrapped = true
M9.TextXAlignment = Enum.TextXAlignment.Left
fT1.Name = "fT1"
fT1.Parent = ItemsFrame
fT1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fT1.BackgroundTransparency = 1.000
fT1.Size = UDim2.new(0, 196, 0, 29)
fT1.Font = Enum.Font.SourceSans
fT1.Text = "Guns"
fT1.TextColor3 = Color3.fromRGB(255, 255, 255)
fT1.TextScaled = true
fT1.TextSize = 14.000
fT1.TextWrapped = true
OTHER.Name = "OTHER"
OTHER.Parent = ItemsFrame
OTHER.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OTHER.BackgroundTransparency = 1.000
OTHER.Position = UDim2.new(0.367158651, 0, 0.119999997, 0)
OTHER.Size = UDim2.new(0, 196, 0, 118)
GunsLayout_2.Name = "GunsLayout"
GunsLayout_2.Parent = OTHER
GunsLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
GunsLayout_2.Padding = UDim.new(0, 5)

Lunch.Name = "Lunch"
Lunch.Parent = OTHER
Lunch.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Lunch.Size = UDim2.new(0, 180, 0, 23)
Lunch.Font = Enum.Font.SourceSans
Lunch.Text = "Lunch"
Lunch.TextColor3 = Color3.fromRGB(200, 200, 200)
Lunch.TextScaled = true
Lunch.TextSize = 14.000
Lunch.TextWrapped = true
Lunch.TextXAlignment = Enum.TextXAlignment.Left

Hammer.Name = "Hammer"
Hammer.Parent = OTHER
Hammer.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Hammer.Size = UDim2.new(0, 180, 0, 23)
Hammer.Font = Enum.Font.SourceSans
Hammer.Text = "Hammer"
Hammer.TextColor3 = Color3.fromRGB(200, 200, 200)
Hammer.TextScaled = true
Hammer.TextSize = 14.000
Hammer.TextWrapped = true
Hammer.TextXAlignment = Enum.TextXAlignment.Left

RiotShield.Name = "Riot Shield"
RiotShield.Parent = OTHER
RiotShield.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
RiotShield.Size = UDim2.new(0, 180, 0, 23)
RiotShield.Font = Enum.Font.SourceSans
RiotShield.Text = "Riot Shield - Gamepass"
RiotShield.TextColor3 = Color3.fromRGB(200, 200, 200)
RiotShield.TextScaled = true
RiotShield.TextSize = 14.000
RiotShield.TextWrapped = true
RiotShield.TextXAlignment = Enum.TextXAlignment.Left

CrudeKnife.Name = "Crude Knife"
CrudeKnife.Parent = OTHER
CrudeKnife.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
CrudeKnife.Size = UDim2.new(0, 180, 0, 23)
CrudeKnife.Font = Enum.Font.SourceSans
CrudeKnife.Text = "Crude Knife"
CrudeKnife.TextColor3 = Color3.fromRGB(200, 200, 200)
CrudeKnife.TextScaled = true
CrudeKnife.TextSize = 14.000
CrudeKnife.TextWrapped = true
CrudeKnife.TextXAlignment = Enum.TextXAlignment.Left

fT2.Name = "fT2"
fT2.Parent = ItemsFrame
fT2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fT2.BackgroundTransparency = 1.000
fT2.Position = UDim2.new(0.418819189, 0, 0, 0)
fT2.Size = UDim2.new(0, 113, 0, 29)
fT2.Font = Enum.Font.SourceSans
fT2.Text = "Other"
fT2.TextColor3 = Color3.fromRGB(255, 255, 255)
fT2.TextScaled = true
fT2.TextSize = 14.000
fT2.TextWrapped = true

fT3.Name = "fT3"
fT3.Parent = ItemsFrame
fT3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fT3.BackgroundTransparency = 1.000
fT3.Position = UDim2.new(0.752767563, 0, 0.0218181815, 0)
fT3.Size = UDim2.new(0, 113, 0, 29)
fT3.Font = Enum.Font.SourceSans
fT3.Text = "Accessories"
fT3.TextColor3 = Color3.fromRGB(255, 255, 255)
fT3.TextScaled = true
fT3.TextSize = 14.000
fT3.TextWrapped = true

ACCESSORIES.Name = "ACCESSORIES"
ACCESSORIES.Parent = ItemsFrame
ACCESSORIES.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ACCESSORIES.BackgroundTransparency = 1.000
ACCESSORIES.Position = UDim2.new(0.72324723, 0, 0.127272725, 0)
ACCESSORIES.Size = UDim2.new(0, 156, 0, 118)

GunsLayout_3.Name = "GunsLayout"
GunsLayout_3.Parent = ACCESSORIES
GunsLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
GunsLayout_3.Padding = UDim.new(0, 5)

Policehat.Name = "Police hat"
Policehat.Parent = ACCESSORIES
Policehat.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Policehat.Size = UDim2.new(0, 143, 0, 23)
Policehat.Font = Enum.Font.SourceSans
Policehat.Text = "Police Hat"
Policehat.TextColor3 = Color3.fromRGB(200, 200, 200)
Policehat.TextScaled = true
Policehat.TextSize = 14.000
Policehat.TextWrapped = true
Policehat.TextXAlignment = Enum.TextXAlignment.Left

Skimask.Name = "Ski mask"
Skimask.Parent = ACCESSORIES
Skimask.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Skimask.Position = UDim2.new(0, 0, 0.237288132, 0)
Skimask.Size = UDim2.new(0, 143, 0, 23)
Skimask.Font = Enum.Font.SourceSans
Skimask.Text = "Ski Mask - Gamepass"
Skimask.TextColor3 = Color3.fromRGB(200, 200, 200)
Skimask.TextScaled = true
Skimask.TextSize = 14.000
Skimask.TextWrapped = true
Skimask.TextXAlignment = Enum.TextXAlignment.Left

Riothelmet.Name = "Riot helmet"
Riothelmet.Parent = ACCESSORIES
Riothelmet.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Riothelmet.Position = UDim2.new(0, 0, 0.474576265, 0)
Riothelmet.Size = UDim2.new(0, 143, 0, 23)
Riothelmet.Font = Enum.Font.SourceSans
Riothelmet.Text = "Riot Helmet - Gamepass"
Riothelmet.TextColor3 = Color3.fromRGB(200, 200, 200)
Riothelmet.TextScaled = true
Riothelmet.TextSize = 14.000
Riothelmet.TextWrapped = true
Riothelmet.TextXAlignment = Enum.TextXAlignment.Left

autorespawn.Name = "autorespawn"
autorespawn.Parent = ItemsFrame
autorespawn.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
autorespawn.BackgroundTransparency = 1.000
autorespawn.BorderSizePixel = 0
autorespawn.Position = UDim2.new(0.0129151288, 0, 0.556363642, 0)
autorespawn.Size = UDim2.new(0, 89, 0, 26)
autorespawn.Font = Enum.Font.PatrickHand
autorespawn.Text = "Auto Weapons"
autorespawn.TextColor3 = Color3.fromRGB(255, 255, 255)
autorespawn.TextScaled = true
autorespawn.TextSize = 14.000
autorespawn.TextWrapped = true

onoff.Name = "onoff"
onoff.Parent = autorespawn
onoff.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
onoff.BackgroundTransparency = 1.000
onoff.Position = UDim2.new(1.1362288, 0, 0.192307696, 0)
onoff.Size = UDim2.new(0, 50, 0, 15)
onoff.Image = "rbxassetid://3570695787"
onoff.ImageColor3 = Color3.fromRGB(143, 0, 2)
onoff.ScaleType = Enum.ScaleType.Slice
onoff.SliceCenter = Rect.new(100, 100, 100, 100)
onoff.SliceScale = 0.080

truefalse.Name = "truefalse"
truefalse.Parent = onoff
truefalse.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
truefalse.BackgroundTransparency = 1.000
truefalse.Position = UDim2.new(-0.0210525505, 0, -0.400000006, 0)
truefalse.Size = UDim2.new(0, 25, 0, 25)
truefalse.Image = "rbxassetid://264754931"

LocalFrame.Name = "LocalFrame"
LocalFrame.Parent = Frames
LocalFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LocalFrame.BackgroundTransparency = 0.950
LocalFrame.Position = UDim2.new(0.00995355006, 0, 0.0276816618, 0)
LocalFrame.Size = UDim2.new(0, 542, 0, 275)

speed.Name = "WalkSpeed"
speed.Parent = LocalFrame
speed.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
speed.BackgroundTransparency = 1.000
speed.BorderSizePixel = 0
speed.Position = UDim2.new(0.0129151288, 0, 0.0327272713, 0)
speed.Size = UDim2.new(0, 89, 0, 26)
speed.Font = Enum.Font.PatrickHand
speed.Text = "Speed: "
speed.TextColor3 = Color3.fromRGB(255, 255, 255)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

slider.Name = "slider"
slider.Parent = speed
slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
slider.BackgroundTransparency = 1.000
slider.Position = UDim2.new(1.1362288, 0, 0.192307681, 0)
slider.Size = UDim2.new(0, 140, 0, 15)
slider.Image = "rbxassetid://3570695787"
slider.ImageColor3 = Color3.fromRGB(52, 52, 52)
slider.ScaleType = Enum.ScaleType.Slice
slider.SliceCenter = Rect.new(100, 100, 100, 100)
slider.SliceScale = 0.080

dragger.Name = "dragger"
dragger.Parent = slider
dragger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dragger.BackgroundTransparency = 1.000
dragger.Position = UDim2.new(-0.0210525505, 0, -0.400000006, 0)
dragger.Size = UDim2.new(0, 25, 0, 25)
dragger.Image = "rbxassetid://264754931"
dragger.AnchorPoint = Vector2.new(0.5, 0.5)

reset.Name = "reset"
reset.Parent = LocalFrame
reset.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
reset.BackgroundTransparency = 1.000
reset.Position = UDim2.new(0.00369004253, 0, 0.894545436, 0)
reset.Size = UDim2.new(0, 68, 0, 22)
reset.Font = Enum.Font.Cartoon
reset.Text = "Reset"
reset.TextColor3 = Color3.fromRGB(255, 255, 255)
reset.TextScaled = true
reset.TextSize = 14.000
reset.TextWrapped = true

jumppower.Name = "JumpPower"
jumppower.Parent = LocalFrame
jumppower.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
jumppower.BackgroundTransparency = 1.000
jumppower.BorderSizePixel = 0
jumppower.Position = UDim2.new(0.0129151288, 0, 0.152727276, 0)
jumppower.Size = UDim2.new(0, 89, 0, 26)
jumppower.Font = Enum.Font.PatrickHand
jumppower.Text = "JumpP: "
jumppower.TextColor3 = Color3.fromRGB(255, 255, 255)
jumppower.TextScaled = true
jumppower.TextSize = 14.000
jumppower.TextWrapped = true

slider_2.Name = "slider"
slider_2.Parent = jumppower
slider_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
slider_2.BackgroundTransparency = 1.000
slider_2.Position = UDim2.new(1.1362288, 0, 0.192307681, 0)
slider_2.Size = UDim2.new(0, 140, 0, 15)
slider_2.Image = "rbxassetid://3570695787"
slider_2.ImageColor3 = Color3.fromRGB(52, 52, 52)
slider_2.ScaleType = Enum.ScaleType.Slice
slider_2.SliceCenter = Rect.new(100, 100, 100, 100)
slider_2.SliceScale = 0.080

dragger_2.Name = "dragger"
dragger_2.Parent = slider_2
dragger_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dragger_2.BackgroundTransparency = 1.000
dragger_2.Position = UDim2.new(-0.0210525505, 0, -0.400000006, 0)
dragger_2.Size = UDim2.new(0, 25, 0, 25)
dragger_2.Image = "rbxassetid://264754931"
dragger_2.AnchorPoint = Vector2.new(0.5, 0.5)

gravity.Name = "Gravity"
gravity.Parent = LocalFrame
gravity.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
gravity.BackgroundTransparency = 1.000
gravity.BorderSizePixel = 0
gravity.Position = UDim2.new(0.0129151288, 0, 0.265454531, 0)
gravity.Size = UDim2.new(0, 89, 0, 26)
gravity.Font = Enum.Font.PatrickHand
gravity.Text = "Gravity: "
gravity.TextColor3 = Color3.fromRGB(255, 255, 255)
gravity.TextScaled = true
gravity.TextSize = 14.000
gravity.TextWrapped = true

slider_3.Name = "slider"
slider_3.Parent = gravity
slider_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
slider_3.BackgroundTransparency = 1.000
slider_3.Position = UDim2.new(1.1362288, 0, 0.192307681, 0)
slider_3.Size = UDim2.new(0, 140, 0, 15)
slider_3.Image = "rbxassetid://3570695787"
slider_3.ImageColor3 = Color3.fromRGB(52, 52, 52)
slider_3.ScaleType = Enum.ScaleType.Slice
slider_3.SliceCenter = Rect.new(100, 100, 100, 100)
slider_3.SliceScale = 0.080

dragger_3.Name = "dragger"
dragger_3.Parent = slider_3
dragger_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dragger_3.BackgroundTransparency = 1.000
dragger_3.Position = UDim2.new(-0.0210525505, 0, -0.400000006, 0)
dragger_3.Size = UDim2.new(0, 25, 0, 25)
dragger_3.Image = "rbxassetid://264754931"
dragger_3.AnchorPoint = Vector2.new(0.5, 0.5)

fov.Name = "FieldOfView"
fov.Parent = LocalFrame
fov.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
fov.BackgroundTransparency = 1.000
fov.BorderSizePixel = 0
fov.Position = UDim2.new(0.0129151288, 0, 0.385454535, 0)
fov.Size = UDim2.new(0, 89, 0, 26)
fov.Font = Enum.Font.PatrickHand
fov.Text = "FOV: "
fov.TextColor3 = Color3.fromRGB(255, 255, 255)
fov.TextScaled = true
fov.TextSize = 14.000
fov.TextWrapped = true

slider_4.Name = "slider"
slider_4.Parent = fov
slider_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
slider_4.BackgroundTransparency = 1.000
slider_4.Position = UDim2.new(1.1362288, 0, 0.192307681, 0)
slider_4.Size = UDim2.new(0, 140, 0, 15)
slider_4.Image = "rbxassetid://3570695787"
slider_4.ImageColor3 = Color3.fromRGB(52, 52, 52)
slider_4.ScaleType = Enum.ScaleType.Slice
slider_4.SliceCenter = Rect.new(100, 100, 100, 100)
slider_4.SliceScale = 0.080

dragger_4.Name = "dragger"
dragger_4.Parent = slider_4
dragger_4.AnchorPoint = Vector2.new(0.5, 0.5)
dragger_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dragger_4.BackgroundTransparency = 1.000
dragger_4.Position = UDim2.new(-0.0210525505, 0, -0.400000006, 0)
dragger_4.Size = UDim2.new(0, 25, 0, 25)
dragger_4.Image = "rbxassetid://264754931"

serverhop.Name = "serverhop"
serverhop.Parent = LocalFrame
serverhop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
serverhop.BackgroundTransparency = 1.000
serverhop.Position = UDim2.new(0.24538745, 0, 0.894545436, 0)
serverhop.Size = UDim2.new(0, 90, 0, 22)
serverhop.Font = Enum.Font.Cartoon
serverhop.Text = "Server Hop"
serverhop.TextColor3 = Color3.fromRGB(255, 255, 255)
serverhop.TextScaled = true
serverhop.TextSize = 14.000
serverhop.TextWrapped = true

autorespawn_2.Name = "autorespawn"
autorespawn_2.Parent = LocalFrame
autorespawn_2.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
autorespawn_2.BackgroundTransparency = 1.000
autorespawn_2.BorderSizePixel = 0
autorespawn_2.Position = UDim2.new(0.0129151288, 0, 0.50545454, 0)
autorespawn_2.Size = UDim2.new(0, 89, 0, 26)
autorespawn_2.Font = Enum.Font.PatrickHand
autorespawn_2.Text = "Auto Respawn"
autorespawn_2.TextColor3 = Color3.fromRGB(255, 255, 255)
autorespawn_2.TextScaled = true
autorespawn_2.TextSize = 14.000
autorespawn_2.TextWrapped = true

onoff_2.Name = "onoff"
onoff_2.Parent = autorespawn_2
onoff_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
onoff_2.BackgroundTransparency = 1.000
onoff_2.Position = UDim2.new(1.1362288, 0, 0.192307696, 0)
onoff_2.Size = UDim2.new(0, 50, 0, 15)
onoff_2.Image = "rbxassetid://3570695787"
onoff_2.ImageColor3 = Color3.fromRGB(143, 0, 2)
onoff_2.ScaleType = Enum.ScaleType.Slice
onoff_2.SliceCenter = Rect.new(100, 100, 100, 100)
onoff_2.SliceScale = 0.080

truefalse_2.Name = "truefalse"
truefalse_2.Parent = onoff_2
truefalse_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
truefalse_2.BackgroundTransparency = 1.000
truefalse_2.Position = UDim2.new(-0.0210525505, 0, -0.400000006, 0)
truefalse_2.Size = UDim2.new(0, 25, 0, 25)
truefalse_2.Image = "rbxassetid://264754931"

rejoin.Name = "rejoin"
rejoin.Parent = LocalFrame
rejoin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rejoin.BackgroundTransparency = 1.000
rejoin.Position = UDim2.new(0.119926199, 0, 0.894545436, 0)
rejoin.Size = UDim2.new(0, 68, 0, 22)
rejoin.Font = Enum.Font.Cartoon
rejoin.Text = "Rejoin"
rejoin.TextColor3 = Color3.fromRGB(255, 255, 255)
rejoin.TextScaled = true
rejoin.TextSize = 14.000
rejoin.TextWrapped = true

TpsFrame.Name = "TpsFrame"
TpsFrame.Parent = Frames
TpsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TpsFrame.BackgroundTransparency = 0.950
TpsFrame.Position = UDim2.new(0.00995355099, 0, 0.0276816618, 0)
TpsFrame.Size = UDim2.new(0, 542, 0, 275)
TpsFrame.Visible = false

InsidePrison.Name = "InsidePrison"
InsidePrison.Parent = TpsFrame
InsidePrison.Active = true
InsidePrison.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InsidePrison.BackgroundTransparency = 1.000
InsidePrison.BorderColor3 = Color3.fromRGB(27, 42, 53)
InsidePrison.BorderSizePixel = 0
InsidePrison.Position = UDim2.new(0.0313653126, 0, 0.156363636, 0)
InsidePrison.Size = UDim2.new(0, 176, 0, 160)
InsidePrison.ScrollBarThickness = 4

IPLayout.Name = "IPLayout"
IPLayout.Parent = InsidePrison
IPLayout.SortOrder = Enum.SortOrder.LayoutOrder
IPLayout.Padding = UDim.new(0, 4)

fT4.Name = "fT4"
fT4.Parent = TpsFrame
fT4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fT4.BackgroundTransparency = 1.000
fT4.Position = UDim2.new(0.0092250919, 0, 0.0509090908, 0)
fT4.Size = UDim2.new(0, 196, 0, 29)
fT4.Font = Enum.Font.SourceSans
fT4.Text = "Prison"
fT4.TextColor3 = Color3.fromRGB(255, 255, 255)
fT4.TextScaled = true
fT4.TextSize = 14.000
fT4.TextWrapped = true

fT5.Name = "fT5"
fT5.Parent = TpsFrame
fT5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fT5.BackgroundTransparency = 1.000
fT5.Position = UDim2.new(0.380073816, 0, 0.0509090908, 0)
fT5.Size = UDim2.new(0, 196, 0, 29)
fT5.Font = Enum.Font.SourceSans
fT5.Text = "Outside Prison"
fT5.TextColor3 = Color3.fromRGB(255, 255, 255)
fT5.TextScaled = true
fT5.TextSize = 14.000
fT5.TextWrapped = true

OutsidePrison.Name = "OutsidePrison"
OutsidePrison.Parent = TpsFrame
OutsidePrison.Active = true
OutsidePrison.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OutsidePrison.BackgroundTransparency = 1.000
OutsidePrison.BorderColor3 = Color3.fromRGB(27, 42, 53)
OutsidePrison.BorderSizePixel = 0
OutsidePrison.Position = UDim2.new(0.400368989, 0, 0.156363636, 0)
OutsidePrison.Size = UDim2.new(0, 176, 0, 160)
OutsidePrison.ScrollBarThickness = 4

OPLayout.Name = "OPLayout"
OPLayout.Parent = OutsidePrison
OPLayout.SortOrder = Enum.SortOrder.LayoutOrder
OPLayout.Padding = UDim.new(0, 4)

TeamsFrame.Name = "TeamsFrame"
TeamsFrame.Parent = Frames
TeamsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeamsFrame.BackgroundTransparency = 0.950
TeamsFrame.Position = UDim2.new(0.00995355099, 0, 0.0276816618, 0)
TeamsFrame.Size = UDim2.new(0, 542, 0, 275)
TeamsFrame.Visible = false

Criminal.Name = "Criminal"
Criminal.Parent = TeamsFrame
Criminal.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Criminal.BorderColor3 = Color3.fromRGB(48, 75, 94)
Criminal.BorderSizePixel = 0
Criminal.Position = UDim2.new(0.0239852406, 0, 0.0363636352, 0)
Criminal.Size = UDim2.new(0, 124, 0, 25)
Criminal.Font = Enum.Font.SourceSans
Criminal.Text = "Criminal"
Criminal.TextColor3 = Color3.fromRGB(230, 230, 230)
Criminal.TextScaled = true
Criminal.TextSize = 14.000
Criminal.TextWrapped = true
Criminal.TextXAlignment = Enum.TextXAlignment.Left

Prisoner.Name = "Prisoner"
Prisoner.Parent = TeamsFrame
Prisoner.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Prisoner.BorderColor3 = Color3.fromRGB(48, 75, 94)
Prisoner.BorderSizePixel = 0
Prisoner.Position = UDim2.new(0.0239852406, 0, 0.149090901, 0)
Prisoner.Size = UDim2.new(0, 124, 0, 25)
Prisoner.Font = Enum.Font.SourceSans
Prisoner.Text = "Prisoner"
Prisoner.TextColor3 = Color3.fromRGB(230, 230, 230)
Prisoner.TextScaled = true
Prisoner.TextSize = 14.000
Prisoner.TextWrapped = true
Prisoner.TextXAlignment = Enum.TextXAlignment.Left

Police.Name = "Police"
Police.Parent = TeamsFrame
Police.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Police.BorderColor3 = Color3.fromRGB(48, 75, 94)
Police.BorderSizePixel = 0
Police.Position = UDim2.new(0.0239852406, 0, 0.265454531, 0)
Police.Size = UDim2.new(0, 124, 0, 25)
Police.Font = Enum.Font.SourceSans
Police.Text = "Police"
Police.TextColor3 = Color3.fromRGB(230, 230, 230)
Police.TextScaled = true
Police.TextSize = 14.000
Police.TextWrapped = true
Police.TextXAlignment = Enum.TextXAlignment.Left

Neutral.Name = "Neutral"
Neutral.Parent = TeamsFrame
Neutral.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Neutral.BorderColor3 = Color3.fromRGB(48, 75, 94)
Neutral.BorderSizePixel = 0
Neutral.Position = UDim2.new(0.0239852406, 0, 0.378181815, 0)
Neutral.Size = UDim2.new(0, 124, 0, 25)
Neutral.Font = Enum.Font.SourceSans
Neutral.Text = "Neutral"
Neutral.TextColor3 = Color3.fromRGB(230, 230, 230)
Neutral.TextScaled = true
Neutral.TextSize = 14.000
Neutral.TextWrapped = true
Neutral.TextXAlignment = Enum.TextXAlignment.Left

Custom.Name = "Custom"
Custom.Parent = TeamsFrame
Custom.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Custom.BorderColor3 = Color3.fromRGB(27, 42, 53)
Custom.BorderSizePixel = 0
Custom.Position = UDim2.new(0.286000013, 0, 0.0359999985, 0)
Custom.Size = UDim2.new(0, 124, 0, 25)
Custom.Font = Enum.Font.SourceSans
Custom.PlaceholderColor3 = Color3.fromRGB(210, 210, 210)
Custom.PlaceholderText = "BrickColor"
Custom.Text = "Cyan"
Custom.TextColor3 = Color3.fromRGB(210, 210, 210)
Custom.TextScaled = true
Custom.TextSize = 14.000
Custom.TextWrapped = true

Tabs.Name = "Tabs"
Tabs.Parent = Main
Tabs.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Tabs.BackgroundTransparency = 0.600
Tabs.ClipsDescendants = true
Tabs.Position = UDim2.new(0.0227272734, 0, 0.109523498, 0)
Tabs.Size = UDim2.new(0, 546, 0, 29)

TabLayout.Name = "TabLayout"
TabLayout.Parent = Tabs
TabLayout.FillDirection = Enum.FillDirection.Horizontal
TabLayout.SortOrder = Enum.SortOrder.LayoutOrder
TabLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
TabLayout.Padding = UDim.new(0, 5)

Local.Name = "Local"
Local.Parent = Tabs
Local.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Local.BorderColor3 = Color3.fromRGB(0, 0, 255)
Local.Position = UDim2.new(0, 0, 0.241379306, 0)
Local.Size = UDim2.new(0, 63, 0, 22)
Local.Font = Enum.Font.SourceSans
Local.Text = "Local"
Local.TextColor3 = Color3.fromRGB(255, 255, 255)
Local.TextScaled = true
Local.TextSize = 14.000
Local.TextWrapped = true

Items.Name = "Items"
Items.Parent = Tabs
Items.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Items.BorderColor3 = Color3.fromRGB(143, 143, 143)
Items.Position = UDim2.new(0, 0, 0.241379306, 0)
Items.Size = UDim2.new(0, 63, 0, 22)
Items.Font = Enum.Font.SourceSans
Items.Text = "Items"
Items.TextColor3 = Color3.fromRGB(255, 255, 255)
Items.TextScaled = true
Items.TextWrapped = true

Tps.Name = "Tps"
Tps.Parent = Tabs
Tps.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Tps.BorderColor3 = Color3.fromRGB(143, 143, 143)
Tps.Position = UDim2.new(0, 0, 0.241379306, 0)
Tps.Size = UDim2.new(0, 63, 0, 22)
Tps.Font = Enum.Font.SourceSans
Tps.Text = "Teleport"
Tps.TextColor3 = Color3.fromRGB(255, 255, 255)
Tps.TextScaled = true
Tps.TextWrapped = true

Teams.Name = "Teams"
Teams.Parent = Tabs
Teams.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Teams.BorderColor3 = Color3.fromRGB(143, 143, 143)
Teams.Position = UDim2.new(0, 0, 0.241379306, 0)
Teams.Size = UDim2.new(0, 63, 0, 22)
Teams.Font = Enum.Font.SourceSans
Teams.Text = "Teams"
Teams.TextColor3 = Color3.fromRGB(255, 255, 255)
Teams.TextScaled = true
Teams.TextWrapped = true

Others.Name = "Others"
Others.Parent = Tabs
Others.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Others.BorderColor3 = Color3.fromRGB(143, 143, 143)
Others.Position = UDim2.new(0, 0, 0.241379306, 0)
Others.Size = UDim2.new(0, 63, 0, 22)
Others.Font = Enum.Font.SourceSans
Others.Text = "Others"
Others.TextColor3 = Color3.fromRGB(255, 255, 255)
Others.TextScaled = true
Others.TextWrapped = true

Misc.Name = "Misc"
Misc.Parent = Tabs
Misc.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Misc.BorderColor3 = Color3.fromRGB(143, 143, 143)
Misc.Position = UDim2.new(0, 0, 0.241379306, 0)
Misc.Size = UDim2.new(0, 63, 0, 22)
Misc.Font = Enum.Font.SourceSans
Misc.Text = "Misc"
Misc.TextColor3 = Color3.fromRGB(255, 255, 255)
Misc.TextScaled = true
Misc.TextWrapped = true

Credit.Name = "Credit"
Credit.Parent = Tabs
Credit.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Credit.BorderColor3 = Color3.fromRGB(143, 143, 143)
Credit.Position = UDim2.new(0, 0, 0.241379306, 0)
Credit.Size = UDim2.new(0, 63, 0, 22)
Credit.Font = Enum.Font.SourceSans
Credit.Text = "Credit"
Credit.TextColor3 = Color3.fromRGB(255, 255, 255)
Credit.TextScaled = true
Credit.TextWrapped = true
if game:GetService("CoreGui"):FindFirstChild("PrisonLifeX Notifications") then
	Notification:Destroy()
	Notification = game:GetService("CoreGui")["PrisonLifeX Notifications"]
end
Notification.Name = "PrisonLifeX Notifications"
Notification.Parent = game:GetService("CoreGui")
Notifications.Name = "Notifications"
Notifications.Parent = Notification
Notifications.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notifications.BackgroundTransparency = 1
Notifications.ClipsDescendants = true
Notifications.Position = UDim2.new(0.845312476, 0, 0.41, 0)
Notifications.Size = UDim2.new(0, 260, 0, 541)
NLayout.Name = "NLayout"
NLayout.Parent = Notifications
NLayout.SortOrder = Enum.SortOrder.LayoutOrder
NLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
NLayout.Padding = UDim.new(0, 5)

local Tabs = {Credit, Local, Items, Tps, Teams, Others, Misc}
local Sliders = {dragger, dragger_2, dragger_3}
local Items = {
	["Guns"] = {"AK-47", "M4A1", "M9", "Remington 870"},
	["Other"] = {"Lunch", "Crude Knife", "Hammer", "Riot Shield"},
	["Accessories"] = {"Police hat", "Riot helmet", "Ski mask"}
}


local AddTP = function(name, parent, cframe)
	local tp = Instance.new("TextButton")
	tp.Name = "tp"
	tp.Parent = parent
	tp.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	tp.BorderColor3 = Color3.fromRGB(48, 75, 94)
	tp.BorderSizePixel = 0
	tp.Size = UDim2.new(0, 180, 0, 23)
	tp.Font = Enum.Font.SourceSans
	tp.Text = name
	tp.TextColor3 = Color3.fromRGB(200, 200, 200)
	tp.TextScaled = true
	tp.TextWrapped = true
	tp.TextXAlignment = Enum.TextXAlignment.Left
	tp.MouseButton1Click:Connect(function()
		pcall(function()
			plr.Character.HumanoidRootPart.CFrame = cframe
		end)
	end)
end

getgenv().NotifyX = function(message, lenght)
	spawn(function()
		local Noti = Instance.new("Frame")
		local tb1 = Instance.new("TextLabel")
		local tb2 = Instance.new("TextLabel")
		local Timer = Instance.new("Frame")
		local close = Instance.new("TextButton")
		local Tween = game:GetService("TweenService"):Create(Timer, TweenInfo.new(lenght), {Position = UDim2.new(1, 0, 0.991, 0)})
		if #message >= 20 then
				tb2.TextScaled = true end
		Noti.Name = "Noti"
		Noti.Parent = Notifications
		Noti.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		Noti.ClipsDescendants = true
		Noti.Position = UDim2.new(0.842187524, 0, 0.858762085, 0)
		Noti.Size = UDim2.new(0, 266, 0, 104)
		tb1.Name = "tb1"
		tb1.Parent = Noti
		tb1.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
		tb1.Position = UDim2.new(0, 0, -0.0219780225, 0)
		tb1.Size = UDim2.new(0, 266, 0, 22)
		tb1.Font = Enum.Font.Code
		tb1.Text = "Prison Life X"
		tb1.TextColor3 = Color3.fromRGB(12, 178, 255)
		tb1.TextScaled = true
		tb1.TextWrapped = true
		tb2.Name = "tb2"
		tb2.Parent = Noti
		tb2.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
		tb2.BackgroundTransparency = 1.000
		tb2.Position = UDim2.new(0.0225563906, 0, 0.279097348, 0)
		tb2.Size = UDim2.new(0, 260, 0, 65)
		tb2.Font = Enum.Font.Code
		tb2.Text = message
		tb2.TextColor3 = Color3.fromRGB(12, 178, 255)
		tb2.TextSize = 17.000
		tb2.TextXAlignment = Enum.TextXAlignment.Left
		tb2.TextYAlignment = Enum.TextYAlignment.Top
		Timer.Name = "Timer"
		Timer.Parent = Noti
		Timer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Timer.Position = UDim2.new(-0.00751879718, 0, 0.990635812, 0)
		Timer.Size = UDim2.new(0, 270, 0, 3)
		close.Name = "close"
		close.Parent = Noti
		close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		close.BackgroundTransparency = 1.000
		close.Position = UDim2.new(0.838345826, 0, 0, 0)
		close.Size = UDim2.new(0, 36, 0, 19)
		close.Font = Enum.Font.SourceSansBold
		close.LineHeight = 2.000
		close.Text = "_"
		close.TextColor3 = Color3.fromRGB(255, 255, 255)
		close.TextScaled = true
		close.TextWrapped = true
		close.MouseButton1Click:Connect(function()
			Tween:Cancel()
			Noti:Destroy()
		end)
		wait(0.5)
		Tween:Play()
		wait(lenght)
		Noti:Destroy()
	end)
end

local respawn = function()
	local SetPoint = plr.Character.HumanoidRootPart.CFrame
	workspace.Remote.loadchar:InvokeServer(plr, plr.TeamColor.Color)
	plr.Character:WaitForChild("HumanoidRootPart").CFrame = SetPoint
end

AddTP("Yard", InsidePrison, CFrame.new(Vector3.new(783.654, 97.398, 2465.142)))
AddTP("Police Base", InsidePrison, CFrame.new(Vector3.new(832.45, 97.49, 2315.587)))
AddTP("Police Layout", InsidePrison, CFrame.new(Vector3.new(837.637, 97.489, 2267.417)))
AddTP("Cameras", InsidePrison, CFrame.new(Vector3.new(795.145, 97.492, 2323.769)))
AddTP("Cafeteria", InsidePrison, CFrame.new(Vector3.new(927.624, 97.54, 2288.865)))
AddTP("Prison", InsidePrison, CFrame.new(Vector3.new(912.365, 97.49, 2370.1)))
AddTP("Cells", InsidePrison, CFrame.new(Vector3.new(916.49, 97.73, 2446.178)))
AddTP("Tower", InsidePrison, CFrame.new(Vector3.new(821.18, 127.54, 2571.068)))
AddTP("PD Cars", InsidePrison, CFrame.new(Vector3.new(614.329, 95.699, 2516.921)))
AddTP("Gate", OutsidePrison, CFrame.new(Vector3.new(461.835, 95.54, 2216.076)))
AddTP("Crates", OutsidePrison, CFrame.new(Vector3.new(263.128, 70.017, 2342.914)))
AddTP("Armory", OutsidePrison, CFrame.new(Vector3.new(403.718, 9.326, 1165.951)))
AddTP("Grocer", OutsidePrison, CFrame.new(Vector3.new(471.775, 9.324, 1164.875)))
AddTP("Criminal Car", OutsidePrison, CFrame.new(Vector3.new(-916.78, 92.628, 2155.95)))
AddTP("Criminal Base", OutsidePrison, CFrame.new(Vector3.new(-951.843, 91.632, 2064.163)))
AddTP("Secret 1", OutsidePrison, CFrame.new(Vector3.new(-67.319, 8.34, 1341.723)))
AddTP("Secret 2", OutsidePrison, CFrame.new(Vector3.new(-28.781, 8.599, 1270.713)))
AddTP("Secret 3", OutsidePrison, CFrame.new(Vector3.new(-30.94, 8.529, 1264.227)))
AddTP("Secret 4", OutsidePrison, CFrame.new(Vector3.new(881.01, 25.29, 2349.288)))
AddTP("City", OutsidePrison, CFrame.new(Vector3.new(-181.629, 52.075, 1883.265)))
AddTP("Neighborhood", OutsidePrison, CFrame.new(Vector3.new(-126.451, 52.078, 2462.615)))

NotifyX("Loading Script...", 3)
wait(3)
PrisonLifeX.Enabled = true
if nMSG ~= nil then
	NotifyX(nMSG, 5)
else
	NotifyX("Successfully Loaded Script!", 2)
end
spawn(function()
	while wait(30) do
		if not game.CoreGui:FindFirstChild("UpdateNotification") then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/BloodyBurns/xL/main/PrisonLifeX.lua'))()
				end
	end
end)
for _, v in next, Tabs do
	v.MouseButton1Click:Connect(function()
		if Frames:FindFirstChild(v.Name.."Frame") then
			for _, v2 in next, Tabs do
				v2.BorderColor3 = Color3.fromRGB(143, 143, 143)
			end
			for _, v2 in next, Frames:GetChildren() do
				v2.Visible = false
			end
			v.BorderColor3 = Color3.new(0, 0, 1)
			Frames[v.Name.."Frame"].Visible = true
		end
	end)
end

for _, v in next, ItemsFrame:GetDescendants() do
	if v:IsA("TextButton") then
		v.MouseButton1Click:Connect(function()
			for _, v2 in next, workspace["Prison_ITEMS"]:GetDescendants() do
				if v2:IsA("BasePart") and v2.Name == "ITEMPICKUP" and v2.Parent.Name == v.Name then
					if not plr.Backpack:FindFirstChild(v2.Parent.Name) and not plr.Character:FindFirstChild(v2.Parent.Name) then
						workspace.Remote.ItemHandler:InvokeServer(v2)
					end
				end
			end
		end)
	end
end

AutoRespawn = false
AutoItems = false

rejoin.MouseButton1Click:Connect(function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, plr)
end)

reset.MouseButton1Click:Connect(function()
	respawn()
end)

truefalse_2.MouseButton1Click:Connect(function()
	AutoItems = not AutoItems

	if AutoItems then
		getgenv().AutoRPS = plr.CharacterAdded:Connect(function()
			getgenv().AutoRPS2 = plr.Character:WaitForChild("Humanoid").Died:Connect(function()
				respawn()
			end)
		end)
		respawn()
		truefalse_2:TweenPosition(UDim2.new(0.6, 0, -0.4, 0), "Out", "Quint", 0.2)
		onoff_2.ImageColor3 = Color3.new(0, 1, 0)
	end

	if not AutoItems then
		AutoRPS:Disconnect()
		AutoRPS2:Disconnect()
		respawn()
		truefalse_2:TweenPosition(UDim2.new(-0.1, 0, -0.4, 0), "In", "Quint", 0.2)
		onoff_2.ImageColor3 = Color3.new(1, 0, 0)
	end
end)

truefalse.MouseButton1Click:Connect(function()
	AutoItems = not AutoItems

	if AutoItems then
		getgenv().AutoITMS = plr.CharacterAdded:Connect(function()
			for _, v2 in next, workspace["Prison_ITEMS"]:GetDescendants() do
				if v2:IsA("BasePart") and v2.Name == "ITEMPICKUP" and v2.Parent.Name ~= "nil" then
					if not plr.Backpack:FindFirstChild(v2.Parent.Name) and not plr.Character:FindFirstChild(v2.Parent.Name) then
						workspace.Remote.ItemHandler:InvokeServer(v2)
					end
				end
			end
		end)
		respawn()
		truefalse:TweenPosition(UDim2.new(0.6, 0, -0.4, 0), "Out", "Quint", 0.2)
		onoff.ImageColor3 = Color3.new(0, 1, 0)
	end

	if not AutoItems then
		AutoITMS:Disconnect()
		truefalse:TweenPosition(UDim2.new(-0.1, 0, -0.4, 0), "In", "Quint", 0.2)
		onoff.ImageColor3 = Color3.new(1, 0, 0)
		respawn()
	end
end)

for _, v in next, Sliders do
	local Dragging = false
	v.MouseButton1Down:Connect(function()
		Dragging = true
	end)

	game:GetService("UserInputService").InputChanged:Connect(function()
		if Dragging then
			local max = 300
			local MousePos = game:GetService("UserInputService"):GetMouseLocation()+Vector2.new(0,36)
			local RelPos = MousePos-v.Parent.AbsolutePosition
			local Precent = math.clamp(RelPos.X/v.Parent.AbsoluteSize.X,0,1)
			v.Position = UDim2.new(Precent,0,0.5,0)
			v.Parent.Parent.Text = v.Parent.Parent.Text:split(" ")[1] .. " " .. tostring(Precent*max):split(".")[1]
			if v.Parent.Parent.Name == "Gravity" then
				workspace.Gravity = tonumber(tostring(Precent*max):split(".")[1])
			else
				pcall(function()
					plr.Character.Humanoid[v.Parent.Parent.Name] = tonumber(tostring(Precent*max):split(".")[1])
				end)
			end
		end
	end)

	game:GetService("UserInputService").InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			Dragging = false
		end
	end)
end

local fDragging = false
dragger_4.MouseButton1Down:Connect(function()
	fDragging = true
end)

game:GetService("UserInputService").InputChanged:Connect(function()
	if fDragging then
		local MousePos = game:GetService("UserInputService"):GetMouseLocation()+Vector2.new(0,36)
		local RelPos = MousePos-slider_4.AbsolutePosition
		local Precent = math.clamp(RelPos.X/slider_4.AbsoluteSize.X,0,1)
		dragger_4.Position = UDim2.new(Precent,0,0.5,0)
		fov.Text = fov.Text:split(" ")[1] .. " " .. tostring(Precent*120):split(".")[1]
		workspace.CurrentCamera.FieldOfView = tonumber(tostring(Precent*120):split(".")[1])
	end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		fDragging = false
	end
end)

Criminal.MouseButton1Click:Connect(function()
	local SetPoint = plr.Character.HumanoidRootPart.CFrame
	workspace.Remote.loadchar:InvokeServer(plr, "Really red")
	plr.Character:WaitForChild("HumanoidRootPart").CFrame = SetPoint
end)

Prisoner.MouseButton1Click:Connect(function()
	local SetPoint = plr.Character.HumanoidRootPart.CFrame
	workspace.Remote.loadchar:InvokeServer(plr, "Bright orange")
	plr.Character:WaitForChild("HumanoidRootPart").CFrame = SetPoint
end)

Police.MouseButton1Click:Connect(function()
	local SetPoint = plr.Character.HumanoidRootPart.CFrame
	workspace.Remote.loadchar:InvokeServer(plr, "Bright blue")
	plr.Character:WaitForChild("HumanoidRootPart").CFrame = SetPoint
end)

Neutral.MouseButton1Click:Connect(function()
	local SetPoint = plr.Character.HumanoidRootPart.CFrame
	workspace.Remote.loadchar:InvokeServer(plr, Color3.fromHSV(0, 0, 0))
	plr.Character:WaitForChild("HumanoidRootPart").CFrame = SetPoint
end)
