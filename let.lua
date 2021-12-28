local plr = game:GetService("Players").LocalPlayer
local Scales = {'BodyProportionScale', 'HeadScale', 'BodyWidthScale', 'BodyDepthScale', 'BodyHeightScale', 'BodyTypeScale'}
local GetMode = {["Mode_1"] = {XZ = 2000, Y = 1500}, ["Mode_2"] = {XZ = 304, Y = 304}, ["Mode_3"] = {XZ = 30, Y = 5}}
if not plr.Character:FindFirstChild("PirateCaptain_HatAccessory") then
    return warn'<Missing Accessory!>'
end

local Character = plr.Character
local Handle = plr.Character["PirateCaptain_HatAccessory"].Handle
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
        return warn'<ReScale>'
    end
end

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
Handle.CFrame = workspace.SpawnLocation.CFrame

game:GetService("RunService").Heartbeat:Connect(function()
    Handle.Anchored = false
    Handle.RotVelocity = Vector3.new(-10e10, -10e10, -10e10)
    Handle.CFrame = workspace.SpawnLocation.CFrame
    Handle.Anchored = true
end)

while wait() do
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") and v.Parent.Name ~= Handle.Parent.Name then
            v.CanCollide = false
        end
    end
end
