local plr = game:GetService("Players").LocalPlayer
local Scales = {'BodyProportionScale', 'HeadScale', 'BodyWidthScale', 'BodyDepthScale', 'BodyHeightScale', 'BodyTypeScale'}
local GetMode = {["Mode_1"] = {XZ = 2000, Y = 1500}, ["Mode_2"] = {XZ = 304, Y = 100}, ["Mode_3"] = {XZ = 30, Y = 5}}
local Hats = {}

for _, v in pairs(plr.Character:GetChildren()) do
    if v:IsA("Accessory") then
        if v:FindFirstChild("AvatarPartScaleType") then
            table.insert(Hats, v)
        end
    end
end

if #Hats == 0 then
    return game.StarterGui:SetCore("ChatMakeSystemMessage", {Text = "<Missing Accessory!>", Color = Color3.fromRGB(0, 255, 255), Font = Enum.Font.Cartoon, FontSize = Enum.FontSize.Size48})
end

local Handle = Hats[#Hats].Handle
if (Handle.Size.X <= GetMode["Mode_"..Mode].XZ or Handle.Size.Y <= GetMode["Mode_"..Mode].Y) or (Handle.Size.X <= GetMode["Mode_"..Mode].XZ and Handle.Size.Y <= GetMode["Mode_"..Mode].Y) then
    for _, v in next, Scales do
        if plr.Character.Humanoid:FindFirstChild(v) then
            for _, v2 in pairs(plr.Character:GetDescendants()) do
                if v2.Name == "Handle"  then
                    if v2:FindFirstChild("OriginalSize") then
                        v2.OriginalSize:Destroy()
                    end
                end
            end
            plr.Character.Humanoid[v]:Destroy(); wait(0.2)
        end
    end
    if (Handle.Size.X <= GetMode["Mode_"..Mode].XZ or Handle.Size.Y <= GetMode["Mode_"..Mode].Y) or (Handle.Size.X <= GetMode["Mode_"..Mode].XZ and Handle.Size.Y <= GetMode["Mode_"..Mode].Y) then
        return game.StarterGui:SetCore("ChatMakeSystemMessage", {Text = "<ReScale!>", Color = Color3.fromRGB(0, 255, 255), Font = Enum.Font.Cartoon, FontSize = Enum.FontSize.Size48})
    end
end

local SpawnLocation
local Character = plr.Character
plr.Character = nil
plr.Character = Character

for _, v in pairs(workspace:GetDescendants()) do
    if v:IsA("BasePart") then
        v.CanCollide = false
    end
end
for _, v in pairs(plr.Character:GetDescendants()) do
    if v:IsA("BasePart") then
        v.Anchored = true
    end
end
for _, v in pairs(workspace:GetDescendants()) do
    if v:IsA("SpawnLocation") then
        SpawnLocation = v
    end
end
for _, v in pairs(plr.Character:GetChildren()) do
    if v:IsA("Accessory") then
        v.Handle.Anchored = true
        for _, v in pairs(v.Handle:GetChildren()) do
            if v:IsA("Attachment") then
                v:Destroy()
            end
        end
    end
end

wait(game:GetService("Players").RespawnTime + 0.5)
plr.Character.HumanoidRootPart:Destroy()
for _, v in pairs(plr.Character:GetChildren()) do
    if v:IsA("BasePart") and v.Name ~= "Head" then
        v:Destroy()
    end
end
plr.Character.Head:Destroy()
Handle.CFrame = SpawnLocation.CFrame
Handle.Anchored = false

game:GetService("RunService").Heartbeat:Connect(function()
    for _, v in next, Hats do
        v.RotVelocity = Vector3.new(-10e10, -10e10, -10e10)
        v.CFrame = CFrame.new(Vector3.new(SpawnLocation.Position.X, SpawnLocation.Position.Y + math.random(-10, 20), SpawnLocation.Position.Z + math.random(10, 50)))
    end
end)
