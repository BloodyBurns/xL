-- Rvmp

if game:GetService("CoreGui"):FindFirstChild("Menace") then
    game:GetService("CoreGui").Menace:Destroy()
    for _, v in pairs(bng) do
		v:Disconnect()
	end
end

local Prefix = "'"
local plr = game:GetService("Players").LocalPlayer
local RT = game:GetService("Players").RespawnTime
local asset = "http://www.roblox.com/asset/?id="
local Menace = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local DevFrame = Instance.new("Frame")
local Dev = Instance.new("TextBox")
local UIListLayout = Instance.new("UIListLayout")
local SavedAudio = {"rbxassetid://5926095771"; "rbxassetid://6723839955"}
local Whitelist = {}
local Blacklist = {}
local Auras = {3569167400, 5294214457, 7213381459, 7602575402, 8035020429, 8447593787}
local GT = ""
getgenv().bng = {}

Menace.Name = "Menace"
Menace.Parent = game:GetService("CoreGui")
Frame.Name = "Frame"
Frame.Parent = Menace
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0, 0, 0.693000019, 0)
Frame.Size = UDim2.new(0, 239, 0, 257)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(35, 35, 35)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120
Title.Name = "Title"
Title.Parent = Menace
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.TextStrokeTransparency = 0
Title.Position = UDim2.new(0.13, 0, 0.961, 0)
Title.Size = UDim2.new(0, 93, 0, 31)
Title.Font = Enum.Font.Highway
Title.Text = "Menace"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
Title.TextWrapped = true
ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.Position = UDim2.new(0, 0, 0.136186764, 0)
ScrollingFrame.Size = UDim2.new(0, 239, 0, 216)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 8, 0)
ScrollingFrame.ScrollBarThickness = 8
DevFrame.Name = "DevFrame"
DevFrame.Parent = Frame
DevFrame.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
DevFrame.Size = UDim2.new(0, 239, 0, 35)
Dev.Name = "Dev"
Dev.Parent = DevFrame
Dev.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dev.BackgroundTransparency = 1.000
Dev.Position = UDim2.new(0.0292887036, 0, 0, 0)
Dev.Size = UDim2.new(0, 232, 0, 35)
Dev.Font = Enum.Font.SourceSans
Dev.PlaceholderText = "Press " .. Prefix .. " to type"
Dev.Text = ""
Dev.TextColor3 = Color3.fromRGB(178, 178, 178)
Dev.TextSize = 16.000
Dev.TextXAlignment = Enum.TextXAlignment.Left
Dev.RichText = true
UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
Frame:TweenPosition(UDim2.new(0, 0, 0.963, 0), "In", "Linear", 0.4)

spawn(function()
	while Menace and wait() do
		if plr.PlayerGui:FindFirstChild("TeleportsGUI") then
			plr.PlayerGui.TeleportsGUI.Frame:TweenPosition(UDim2.new(0.88, 0, 0.62, 0), "In", "Linear", 0.4)
		end
		if plr.PlayerGui:FindFirstChild("GUI") then
			plr.PlayerGui.GUI.Frame:TweenPosition(UDim2.new(0.88, 0, 0.75, 0), "Out", "Linear", 0.4)
		end
	end
end)

spawn(function()
	while Menace do
		local text = "Menace"
		for i = 1, #text do
			Title.Text = text:sub(1, i)
			wait(1/5)
		end
		for i = 1, #text do
			Title.Text = text:sub(1, -i)
			wait(1/5)
		end
	end
end)

local RBX = function(Connection)
    if type(Connection) ~= "userdata" then
        return warn('Invalid Argument! RBX function')
    end

    bng[#bng + 1] = Connection
end
local Player = function(Ev)
	local DataBase = {}

	if type(Ev) == "string" then
		if Ev == "all" then
			for _, v in pairs(game:GetService("Players"):GetPlayers()) do
				if v.Name ~= plr.Name then
					table.insert(DataBase, v)
				end
			end
		elseif Ev == "random" then
			if game:GetService("Players"):GetPlayers()[math.random(1, #game:GetService("Players"):GetPlayers())] ~= plr.Name then
				table.insert(DataBase, game:GetService("Players"):GetPlayers()[math.random(1, #game:GetService("Players"):GetPlayers())])
			end
		elseif Ev == "me" then
			table.insert(DataBase, plr)
		else
			for _, v in pairs(game:GetService("Players"):GetPlayers()) do
				if v.Name:lower():sub(1, #Ev) == Ev:lower() or v.DisplayName:lower():sub(1, #Ev) == Ev then
					table.insert(DataBase, v)
				end
			end
		end
	end

	return DataBase
end

local Fire = function(obj, prop, val)
    if type(prop) == "table" then
        for n, x in pairs(prop) do
            spawn(function() plr.Character.PompousTheCloud.ServerControl:InvokeServer("SetProperty",{["Object"] = obj, ["Property"] = n, ["Value"] = x}) end)
        end
    elseif type(prop) ~= "table" then
        spawn(function() plr.Character.PompousTheCloud.ServerControl:InvokeServer("SetProperty",{["Object"] = obj, ["Property"] = prop, ["Value"] = val}) end)
    end
    return obj
end

local Cloud = function(Animation)
	if not plr.Backpack:FindFirstChild("PompousTheCloud") and not plr.Character:FindFirstChild("PompousTheCloud") then
		workspace:FindFirstChild("Buy"):FireServer(0, "PompousTheCloud"); plr.Backpack:WaitForChild("PompousTheCloud").Parent = plr.Character
	elseif plr.Backpack:FindFirstChild("PompousTheCloud") then
		plr.Backpack.PompousTheCloud.Parent = plr.Character
	end
	if Animation == nil and wait(0.1) then
		if not plr.Character.PompousTheCloud:FindFirstChild("EffectCloud") then
            plr.Character.PompousTheCloud.ServerControl:InvokeServer("Fly", {["Flying"] = true})
            Fire(plr.Character.PompousTheCloud.EffectCloud.Mesh, "Scale", Vector3.new(0, 0, 0))
            for _, v in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v.Name == "ToolNoneAnim" then
                    v:Stop()
                end
            end
        end
	end
end

local RemoveWeld = function(Weld)
	for _, v in pairs(plr.Character:GetDescendants()) do
		if v:IsA("Weld") and v.Name == "RightGrip" then
			if v.Part1 == Weld then
				spawn(function() v:Destroy() end)
			end
		end
	end
end


local CreateCommand = function(Command, Desc)
    local NC = Instance.new("TextLabel")
    NC.Name = Command
    NC.Parent = ScrollingFrame
    NC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NC.BackgroundTransparency = 1
    NC.Size = UDim2.new(0, 100, 0, 40)
    NC.Font = Enum.Font.SourceSans
    NC.Text = Desc
    NC.TextColor3 = Color3.fromRGB(208, 208, 208)
    NC.TextSize = 16
    NC.TextWrapped = true
    NC.TextXAlignment = Enum.TextXAlignment.Left
end

RBX(plr:GetMouse().KeyDown:Connect(function(Key)
    if string.lower(Key) == Prefix then
        Dev:CaptureFocus(); wait()
        Dev.Text = GT
        Dev.CursorPosition = #Dev.Text * 10
        Frame:TweenPosition(UDim2.new(0, 0, 0.763, 0), "Out", "Linear", 0.4)
    end
end))

RBX(Dev.FocusLost:Connect(function(enterPressed)
	if not enterPressed then return Frame:TweenPosition(UDim2.new(0, 0, 0.963, 0), "In", "Linear", 0.4) end
	local AddCommand = function(Command, Mini, Caller, Action)
        if tonumber(Caller) == 0 then
            Caller = ""
        elseif tonumber(Caller) == 1 then
            Caller = " local"
        elseif tonumber(Caller) == 2 then
            Caller = " <player>"
        elseif tonumber(Caller) == 3 then
            Caller = " <value>"
        elseif tonumber(Caller) == 4 then
            Caller = " <on/off>"
        end
		local msg = Dev.Text
		local Args = msg:split(" ")
		local Desc = ""
		if Mini == false then
			if table.remove(Args, 1) == Command then
				Action(Args)
			end

			Desc = " ( " .. Command .. " ) " .. Caller
		else
			if Args[1] == Mini then
				table.remove(Args, 1)
				Action(Args)	
			elseif Args[1] == Command then
				table.remove(Args, 1)
				Action(Args)
			end

			Desc = " ( " .. Command .. " | " .. Mini .. "  ) ".. Caller
		end

		if not ScrollingFrame:FindFirstChild(Command) then
			CreateCommand(Command, Desc)
		end
	end

    AddCommand("prefix", false, 3, function(Args)
        Prefix = tostring(Args[1])
        Dev.Text = ""
        Dev.PlaceholderText = "Press " .. Prefix .. " to type"
    end)

    AddCommand("reset", "respawn", 0, function(Args)
        pcall(function()
            local Root = plr.Character.HumanoidRootPart 
			local sD, sp = plr.Character
			plr.Character = nil
			plr.Character = sD; wait(RT - 0.2)
			sp = Root.CFrame
			plr.Character.Humanoid:Destroy()
			plr.Character = nil
			plr.CharacterAdded:Wait()
			plr.Character:WaitForChild(Root.Name).CFrame = sp
        end)
    end)

    AddCommand("rejoin", "rj", 0, function(Args)
        game:GetService("TeleportService"):Teleport(game.PlaceId, plr)
    end)

    AddCommand("walkspeed", "ws", 3, function(Args)
        if MxWalkSpeed then
            MxWalkSpeed:Disconnect()
        end
        
        if tonumber(Args[1]) ~= nil then
            local ws
            rs = game:GetService("RunService").Heartbeat:Connection(function()
                pcall(function()
                    plr.Character.Humanoid.WalkSpeed = tonumber(Args[1])
                end)
            end)
        end
    end)
    
    AddCommand("jumppower", "jp", 3, function(Args)
        if MxWalkSpeed then
            MxWalkSpeed:Disconnect()
        end
        
        if tonumber(Args[1]) ~= nil then
            local ws
            rs = game:GetService("RunService").Heartbeat:Connection(function()
                pcall(function()
                    plr.Character.Humanoid.JumpPower = tonumber(Args[1])
                end)
            end)
        end
    end)

    AddCommand("hipheight", "hh", 3, function(Args)
        if MxWalkSpeed then
            MxWalkSpeed:Disconnect()
        end
        
        if tonumber(Args[1]) ~= nil then
            local ws
            rs = game:GetService("RunService").Heartbeat:Connection(function()
                pcall(function()
                    plr.Character.Humanoid.HipHeight = tonumber(Args[1])
                end)
            end)
        end
    end)

    AddCommand("sit", false, 0, function(Args)
        pcall(function()
            plr.Character.Humanoid.Sit = true
        end)
    end)

    AddCommand("goto", "to", 2, function(Args)
        local GetTarget = Player(Args[1])
        local Target = GetTarget[1]

        pcall(function()
			local GetTarget = Player(Args[1])
			local Target = GetTarget[1]
			plr.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(4, 0, 0)
		end)
    end)

    AddCommand("cloud music", "cmusic", 3, function(Args)
        if tonumber(Args[1]) ~= nil then
            Cloud()
            for _, v in pairs(plr.Character.Animate.idle:GetChildren()) do
                if v:IsA("Sound") then
                    Fire(v, "Playing", false)
                    Fire(v:Stop())
                end
            end

            Fire(plr.Character.PompousTheCloud.Handle.Wind, {
                Volume = 9e9,
                SoundId = "rbxassetid://" .. tonumber(Args[1]),
                MaxDistance = 9e9,
                EmitterSize = 9e9,
                PlaybackSpeed = 1,
                Playing = true
            })
            Fire(plr.Character.PompousTheCloud.Handle.Wind:Play())
        end
    end)

    AddCommand("volume", false, 3, function(Args)
        if tonumber(Args[1]) ~= nil then
            Cloud()
            for _, v in pairs(plr.Character.Animate.idle:GetChildren()) do
                if v:IsA("Sound") then
                    Fire(v, "Volume", tonumber(Args[1]))
                end
            end
            
            if plr.Character.PompousTheCloud.Handle.Wind.Playing then
                Fire(plr.Character.PompousTheCloud.Handle.Wind, "Volume", tonumber(Args[1]))
            end
        end
    end)

    AddCommand("playback", false, 3, function(Args)
        if tonumber(Args[1]) ~= nil then
            Cloud()
            for _, v in pairs(plr.Character.Animate.idle:GetChildren()) do
                if v:IsA("Sound") then
                    Fire(v, "PlaybackSpeed", tonumber(Args[1]))
                end
            end
            
            if plr.Character.PompousTheCloud.Handle.Wind.Playing then
                Fire(plr.Character.PompousTheCloud.Handle.Wind, "PlaybackSpeed", tonumber(Args[1]))
            end
        end
    end)

    AddCommand("timepos", false, 3, function(Args)
        if tonumber(Args[1]) ~= nil then
            Cloud()
            for _, v in pairs(plr.Character.Animate.idle:GetChildren()) do
                if v:IsA("Sound") then
                    Fire(v, "TimePosition", tonumber(Args[1]))
                end
            end
            
            if plr.Character.PompousTheCloud.Handle.Wind.Playing then
                Fire(plr.Character.PompousTheCloud.Handle.Wind, "TimePosition", tonumber(Args[1]))
            end
        end
    end)

    AddCommand("antimute", "forceplay", 4, function(Args)
        if Args[1] == "on" then
            _G.ForcePlay = true
            while _G.ForcePlay and wait() do
                if plr.Character:FindFirstChild("PompousTheCloud") then
                    Fire(plr.Character.PompousTheCloud.Handle.Wind, "Playing", true)
                end
            end
        elseif Args[1] == "off" then
            _G.ForcePlay = false
        end
    end)

    AddCommand("rkleg", false, 2, function(Args)
        Cloud()
        local GetTarget = Player(Args[1])
        if Args[1] == "all" then
            for _, v in pairs(GetTarget) do
                if v.Character then
                    spawn(function()
                        workspace.Buy:FireServer(0, "Pizza")
                        Tool = plr.Backpack:WaitForChild("Pizza")
                        Tool.Name = v.Name
                        Tool.Parent = plr.Character
                        RemoveWeld(Tool.Handle)
                        Fire(Tool.Handle.Mesh, {
                            MeshId = "rbxassetid://101851696",
                            TextureId = "rbxassetid://101851254",
                            Scale = Vector3.new(1, 1, 1),
                            Name = "Leg"
                        })
                        Tool.Handle:WaitForChild("Leg")
                        Fire(Tool.Handle.Leg, "Parent", v.Character["Right Leg"]); wait(0.2)
                        Tool:Destroy()
                    end)
                end
            end
        else
            local Target = GetTarget[1]
    
            workspace.Buy:FireServer(0, "Pizza")
            Tool = plr.Backpack:WaitForChild("Pizza")
            Tool.Name = Target.Name
            Tool.Parent = plr.Character
            RemoveWeld(Tool.Handle)
            Fire(Tool.Handle.Mesh, {
                MeshId = "rbxassetid://101851696",
                TextureId = "rbxassetid://101851254",
                Scale = Vector3.new(1, 1, 1),
                Name = "Leg"
            })
            Tool.Handle:WaitForChild("Leg")
            Fire(Tool.Handle.Leg, "Parent", Target.Character["Right Leg"]); wait(0.2)
            Tool:Destroy()
        end
    end)

    AddCommand("lkleg", false, 2, function(Args)
        Cloud()
        local GetTarget = Player(Args[1])
        if Args[1] == "all" then
            for _, v in pairs(GetTarget) do
                if v.Character then
                    spawn(function()
                        workspace.Buy:FireServer(0, "Pizza")
                        Tool = plr.Backpack:WaitForChild("Pizza")
                        Tool.Name = v.Name
                        Tool.Parent = plr.Character
                        RemoveWeld(Tool.Handle)
                        Fire(Tool.Handle.Mesh, {
                            MeshId = "rbxassetid://101851582",
                            TextureId = "rbxassetid://101851254",
                            Scale = Vector3.new(1, 1, 1),
                            Name = "Leg"
                        })
                        Tool.Handle:WaitForChild("Leg")
                        Fire(Tool.Handle.Leg, "Parent", v.Character["Right Leg"]); wait(0.2)
                        Tool:Destroy()
                    end)
                end
            end
        else
            local Target = GetTarget[1]
    
            workspace.Buy:FireServer(0, "Pizza")
            Tool = plr.Backpack:WaitForChild("Pizza")
            Tool.Name = Target.Name
            Tool.Parent = plr.Character
            RemoveWeld(Tool.Handle)
            Fire(Tool.Handle.Mesh, {
                MeshId = "rbxassetid://101851582",
                TextureId = "rbxassetid://101851254",
                Scale = Vector3.new(1, 1, 1),
                Name = "Leg"
            })
            Tool.Handle:WaitForChild("Leg")
            Fire(Tool.Handle.Leg, "Parent", Target.Character["Left Leg"]); wait(0.2)
            Tool:Destroy()
        end
    end)

    AddCommand("rsleg", false, 2, function(Args)
        Cloud()
        local GetTarget = Player(Args[1])
        if Args[1] == "all" then
            for _, v in pairs(GetTarget) do
                if v.Character then
                    spawn(function()
                        workspace.Buy:FireServer(0, "Pizza")
                        Tool = plr.Backpack:WaitForChild("Pizza")
                        Tool.Name = v.Name
                        Tool.Parent = plr.Character
                        RemoveWeld(Tool.Handle)
                        Fire(Tool.Handle.Mesh, {
                            MeshId = "rbxassetid://36780195",
                            TextureId = "rbxassetid://36780292",
                            Scale = Vector3.new(1, 1, 1),
                            Name = "Leg"
                        })
                        Tool.Handle:WaitForChild("Leg")
                        Fire(Tool.Handle.Leg, "Parent", v.Character["Right Leg"]); wait(0.2)
                        Tool:Destroy()
                    end)
                end
            end
        else
            local Target = GetTarget[1]
    
            workspace.Buy:FireServer(0, "Pizza")
            Tool = plr.Backpack:WaitForChild("Pizza")
            Tool.Name = Target.Name
            Tool.Parent = plr.Character
            RemoveWeld(Tool.Handle)
            Fire(Tool.Handle.Mesh, {
                MeshId = "rbxassetid://36780195",
                TextureId = "rbxassetid://36780292",
                Scale = Vector3.new(1, 1, 1),
                Name = "Leg"
            })
            Tool.Handle:WaitForChild("Leg")
            Fire(Tool.Handle.Leg, "Parent", Target.Character["Right Leg"]); wait(0.2)
            Tool:Destroy()
        end
    end)

    AddCommand("rsleg", false, 2, function(Args)
        Cloud()
        local GetTarget = Player(Args[1])
        if Args[1] == "all" then
            for _, v in pairs(GetTarget) do
                if v.Character then
                    spawn(function()
                        workspace.Buy:FireServer(0, "Pizza")
                        Tool = plr.Backpack:WaitForChild("Pizza")
                        Tool.Name = v.Name
                        Tool.Parent = plr.Character
                        RemoveWeld(Tool.Handle)
                        Fire(Tool.Handle.Mesh, {
                            MeshId = "rbxassetid://36780079",
                            TextureId = "rbxassetid://36780292",
                            Scale = Vector3.new(1, 1, 1),
                            Name = "Leg"
                        })
                        Tool.Handle:WaitForChild("Leg")
                        Fire(Tool.Handle.Leg, "Parent", v.Character["Left Leg"]); wait(0.2)
                        Tool:Destroy()
                    end)
                end
            end
        else
            local Target = GetTarget[1]
    
            workspace.Buy:FireServer(0, "Pizza")
            Tool = plr.Backpack:WaitForChild("Pizza")
            Tool.Name = Target.Name
            Tool.Parent = plr.Character
            RemoveWeld(Tool.Handle)
            Fire(Tool.Handle.Mesh, {
                MeshId = "rbxassetid://36780079",
                TextureId = "rbxassetid://36780292",
                Scale = Vector3.new(1, 1, 1),
                Name = "Leg"
            })
            Tool.Handle:WaitForChild("Leg")
            Fire(Tool.Handle.Leg, "Parent", Target.Character["Left Leg"]); wait(0.2)
            Tool:Destroy()
        end
    end)

    AddCommand("cmdbar chat", false, 4, function(Args)

            getgenv().Cv = game:GetService("RunService").Heartbeat:Connect(function()
				pcall(function()
					exe(plr.Character.Head:FindFirstChildOfClass("BillboardGui"):FindFirstChildOfClass("TextLabel"), "Text", Dev.Text)
				end)
			end)
			plr.Character.Humanoid.Died:Connect(function() Cv:Disconnect() end)
			exe(plr.Character:FindFirstChildOfClass("BillboardGui"), {
				Size = UDim2.new(6, 0, 6, 0),
				StudsOffset = Vector3.new(0, 5, 0),
				ExtentsOffset = Vector3.new(0, 3, 0),
				SizeOffset = Vector2.new(0, 0),
				SizeOffsetWorldSpace = Vector3.new(0, 0, 0),
				Active = true,
				AlwaysOnTop = true
			})
			exe(plr.Character.Head:FindFirstChildOfClass("BillboardGui"):FindFirstChildOfClass("TextLabel"), {
				Font = Enum.Font.Kalam,
				Size = UDim2.new(4, 0, 1, 0),
				AnchorPoint = Vector3.new(0, 0),
				TextTruncate = Enum.TextTruncate.None,
				Position = UDim2.new(-1.5, 0, 0.9, 0),
				TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
				ClipsDescendants = false,
				TextWrapped = true,
				TextScaled = true,
				LineHeight = 1,
				Active = false,
				Zindex = 5
			})

    end)

    AddCommand("cplay", false, 3, function(Args)
        Cloud()

        Fire(plr.Character.PompousTheCloud.Handle.Wind, {
            SoundId = "rbxassetid://"..tonumber(Args[1]),
            Volume = math.huge,
			MaxDistance = math.huge,
			EmitterSize = math.huge,
			Playing = true,
			PlaybackSpeed = 1
        })
    end)

    AddCommand("barvis", false, 3, function(Args)
        Cloud()

        getgenv().Bars = {}
        getgenv().Bars2 = {}
        if tonumber(Args[1]) ~= nil then
            for i = 1, tonumber(Args[1]) do
                local C
                if #Bars == 0 then C = CFrame.new(0, 0, 1) else
                    C = CFrame.new(#Bars/3, 0, 1)
                end
                workspace.Buy:FireServer(0, "Pizza")
                Tool = plr.Backpack:WaitForChild("Pizza")
                Tool.Name = "Bar_" .. math.random(1, 10000)
                Tool.Parent = plr.Character
                RemoveWeld(Tool.Handle)
                for _, v in pairs(Tool.Handle:GetChildren()) do
                    if not v:IsA("Weld") then
                        v:Destroy()
                    end
                end
                Weld = Tool.Handle:WaitForChild("Weld")
                Weld.Name = "Weld_" .. math.random(1, 10000)
                Fire(Tool.Handle, {Material = "Neon", Color = Color3.fromRGB(150, 0, 0), Size = Vector3.new(0.3, 0.3, 0.3)})
                Fire(Weld, "Parent", plr.Character.HumanoidRootPart)
                plr.Character.HumanoidRootPart:WaitForChild(Weld.Name)
                Fire(Weld, {Part0 = plr.Character.HumanoidRootPart, Part1 = Tool.Handle, C0 = C})
                table.insert(Bars, Tool.Handle)
            end
        end
        if tonumber(Args[1]) ~= nil then
            for i = 1, tonumber(Args[1]) do
                local C
                if #Bars2 == 0 then C = CFrame.new(-1, 0, 1) else
                    C = CFrame.new(-#Bars2/3, 0, 1)
                end
                workspace.Buy:FireServer(0, "Pizza")
                Tool = plr.Backpack:WaitForChild("Pizza")
                Tool.Name = "Bar_" .. math.random(1, 10000)
                Tool.Parent = plr.Character
                RemoveWeld(Tool.Handle)
                for _, v in pairs(Tool.Handle:GetChildren()) do
                    if not v:IsA("Weld") then
                        v:Destroy()
                    end
                end
                Weld = Tool.Handle:WaitForChild("Weld")
                Weld.Name = "Weld_" .. math.random(1, 10000)
                Fire(Tool.Handle, {Material = "Neon", Color = Color3.fromRGB(150, 0, 0), Size = Vector3.new(0.3, 0.3, 0.3)})
                Fire(Weld, "Parent", plr.Character.HumanoidRootPart)
                plr.Character.HumanoidRootPart:WaitForChild(Weld.Name)
                Fire(Weld, {Part0 = plr.Character.HumanoidRootPart, Part1 = Tool.Handle, C0 = C})
                table.insert(Bars2, Tool.Handle)
            end
        end
        _G.Rs = true
        plr.Character.Humanoid.Died:Connect(function() if _G.Rs then _G.Rs = false end end)

        spawn(function()
            for _, v in pairs(Bars) do
                wait(0.1)
                spawn(function()
    
                    while _G.Rs do
                        for i = 1, 255, 4 do
                            if not _G.Rs then break end
                            Fire(v, "Color", Color3.fromHSV(i/256, 1, 1)); wait(0.15)
                        end
                    end
                end)
            end
            while _G.Rs and wait(1/420) do
                spawn(function()
                    for _, v in pairs(Bars) do
                        if not _G.Rs then break end
                        Size = math.rad(plr.Character.PompousTheCloud.Handle.Wind.PlaybackLoudness) * (_/8)
                        Fire(v, "Size", Vector3.new(0.3, Size * 0.15, 0.3))
                    end
                end)
            end
        end)

        for _, v in pairs(Bars2) do
            wait(0.1)
            spawn(function()

                while _G.Rs do
                    for i = 1, 255, 4 do
                        if not _G.Rs then break end
                        Fire(v, "Color", Color3.fromHSV(i/256, 1, 1)); wait(0.15)
                    end
                end
            end)
        end
        while _G.Rs and wait(1/420) do
            spawn(function()
                for _, v in pairs(Bars2) do
                    if not _G.Rs then break end
                    Size = math.rad(plr.Character.PompousTheCloud.Handle.Wind.PlaybackLoudness) * (_/8)
                    Fire(v, "Size", Vector3.new(0.3, Size * 0.15, 0.3))
                end
            end)
        end
    end)

    AddCommand("givebars", "gbars", 2, function(Args)
        Cloud()

        local GetTarget = Player(Args[1])
        local Target = GetTarget[1]

        for _, v in pairs(Bars2) do
            Fire(v.Weld, {Part0 = Target.Character.HumanoidRootPart, Part1 = Target.Character.HumanoidRootPart, C0 = CFrame.new(_/3, 0, 1)})
        end

        for _, v in pairs(Bars) do
            Fire(v.Weld, {Part0 = Target.Character.HumanoidRootPart, Part1 = Target.Character.HumanoidRootPart, C0 = CFrame.new(-_/3, 0, 1)})
        end
    end)
    
    AddCommand("looptp", false, 2, function(Args)
        Cloud()

        local GetTarget = Player(Args[1])
        local Target = GetTarget[1]

        plr.Character.PompousTheCloud.ServerControl:InvokeServer("Fly", {["Flying"] = true})
        while Target.Character.Humanoid and wait() do
            Fire(plr.Character.PompousTheCloud.EffectCloud.Weld, "Part0", Target.Character.HumanoidRootPart)
            Fire(plr.Character.PompousTheCloud.EffectCloud, "CFrame", plr.Character.Head.CFrame)
        end
    end)

    AddCommand("fkill", false, 2, function(Args)
        Cloud()

        workspace.Buy:FireServer(0, "Pizza")
        local Start = tick()
        local Tool = plr.Backpack:WaitForChild("Pizza"); Tool.Parent = plr.Character; Fire(Tool.Handle, "Transparency", 1)
        local GetTarget = Player(Args[1])
        local Target = GetTarget[1]
        local Aura = game:GetObjects("rbxassetid://"..Auras[4])[1];
        local Path = Aura:GetDescendants();

        for _, v in next, Path do
            if v:IsA("ParticleEmitter") then
                v.Name = "Particle_"..(_*math.random(1, 10000));
                workspace.GiveParticle7:FireServer();
                local Particle = plr.Character.Torso:WaitForChild("Pixel");
                Particle.Name = v.Name;
                Fire(Particle, "Parent", plr.Character[v.Parent.Name]); wait(0.2)
                
                repeat game:GetService("RunService").Stepped:Wait() until plr.Character[v.Parent.Name]:FindFirstChild(v.Name)
                spawn(function()
                    Fire(Particle, {
                        Color = v.Color,
                        Brightness = v.Brightness,
                        LightEmission = v.LightEmission,
                        LightInfluence = v.LightInfluence,
                        Orientation = v.Orientation,
                        Size = v.Size,
                        Squash = v.Squash,
                        Texture = v.Texture,
                        Transparency = v.Transparency,
                        ZOffset = v.ZOffset,
                        EmissionDirection = v.EmissionDirection,
                        Lifetime = v.Lifetime,
                        Rate = v.Rate,
                        Rotation = v.Rotation,
                        RotSpeed = v.RotSpeed,
                        Speed = v.Speed,
                        SpreadAngle = v.SpreadAngle,
                        Shape = v.Shape,
                        ShapeInOut = v.ShapeInOut,
                        ShapeStyle = v.ShapeStyle,
                        Acceleration = v.Acceleration,
                        Drag = v.Drag,
                        TimeScale = v.TimeScale,
                        VelocityInheritance = v.VelocityInheritance,
                    }); wait(0.2) Fire(Particle, "Parent", Target.Character[v.Parent.Name])
                end)
            end
        end
        Notify("Completed Aura in: "..(tostring(tick()-Start):split(".")[1]).." seconds!", false, 3)
        Fire(plr.Character.PompousTheCloud.Handle.Wind, {
            Volume = math.huge,
            SoundId = "rbxassetid://7288315840",
            MaxDistance = math.huge,
            EmitterSize = math.huge,
            PlaybackSpeed = 1,
            Playing = true
        })
        Fire(plr.Character.PompousTheCloud.Handle.Wind:Play()) wait(3.3)
        RemoveWeld(Tool.Handle)
        Fire(Tool.Handle, {Name = "Head", Parent = Target.Character}); wait(1)
        Fire(plr.Character.PompousTheCloud.Handle.Wind, "Playing", false)
    end)

    AddCommand("aura", false, 0, function(Args)
        if tonumber(Args[1]) <= #Auras then
            Cloud()
            local Start = tick()
            local Aura = game:GetObjects("rbxassetid://"..Auras[tonumber(Args[1])])[1];
            local Path = Aura:GetDescendants();

            for _, v in next, Path do
                if v:IsA("ParticleEmitter") then
                    v.Name = "Particle_"..(_*math.random(1, 10000));
                    workspace.GiveParticle7:FireServer();
                    local Particle = plr.Character.Torso:WaitForChild("Pixel");
                    Particle.Name = v.Name;
                    Fire(Particle, "Parent", plr.Character[v.Parent.Name]); wait(0.2)
                    
                    repeat game:GetService("RunService").Stepped:Wait() until plr.Character[v.Parent.Name]:FindFirstChild(v.Name)
                    spawn(function()
                        Fire(Particle, {
                            Color = v.Color,
                            Brightness = v.Brightness,
                            LightEmission = v.LightEmission,
                            LightInfluence = v.LightInfluence,
                            Orientation = v.Orientation,
                            Size = v.Size,
                            Squash = v.Squash,
                            Texture = v.Texture,
                            Transparency = v.Transparency,
                            ZOffset = v.ZOffset,
                            EmissionDirection = v.EmissionDirection,
                            Lifetime = v.Lifetime,
                            Rate = v.Rate,
                            Rotation = v.Rotation,
                            RotSpeed = v.RotSpeed,
                            Speed = v.Speed,
                            SpreadAngle = v.SpreadAngle,
                            Shape = v.Shape,
                            ShapeInOut = v.ShapeInOut,
                            ShapeStyle = v.ShapeStyle,
                            Acceleration = v.Acceleration,
                            Drag = v.Drag,
                            TimeScale = v.TimeScale,
                            VelocityInheritance = v.VelocityInheritance,
                        })
                    end)
                end
            end
            Notify("Completed Aura in: "..(tostring(tick()-Start):split(".")[1]).." seconds!", false, 3)
        end
    end)

    AddCommand("gaura", false, 2, function(Args)
        if tonumber(Args[2]) <= #Auras then
            Cloud()
            local Start = tick()
            local GetTarget = Player(Args[1])
            local Target = GetTarget[1]
            local Aura = game:GetObjects("rbxassetid://"..Auras[tonumber(Args[2])])[1];
            local Path = Aura:GetDescendants();
            local ParticleEmitters = {}
            for _, v in next, Path do
                if v:IsA("ParticleEmitter") then
                    v.Name = "Particle_"..(_*math.random(1, 10000));
                    workspace.GiveParticle7:FireServer();
                    local Particle = plr.Character.Torso:WaitForChild("Pixel");
                    table.insert(ParticleEmitters, Particle)
                    Particle.Name = v.Name;
                    Fire(Particle, "Parent", plr.Character[v.Parent.Name]); wait(0.2)
                    
                    repeat game:GetService("RunService").Stepped:Wait() until plr.Character[v.Parent.Name]:FindFirstChild(v.Name)
                    spawn(function()
                        Fire(Particle, {
                            Color = v.Color,
                            Brightness = v.Brightness,
                            LightEmission = v.LightEmission,
                            LightInfluence = v.LightInfluence,
                            Orientation = v.Orientation,
                            Size = v.Size,
                            Squash = v.Squash,
                            Texture = v.Texture,
                            Transparency = v.Transparency,
                            ZOffset = v.ZOffset,
                            EmissionDirection = v.EmissionDirection,
                            Lifetime = v.Lifetime,
                            Rate = v.Rate,
                            Rotation = v.Rotation,
                            RotSpeed = v.RotSpeed,
                            Speed = v.Speed,
                            SpreadAngle = v.SpreadAngle,
                            Shape = v.Shape,
                            ShapeInOut = v.ShapeInOut,
                            ShapeStyle = v.ShapeStyle,
                            Acceleration = v.Acceleration,
                            Drag = v.Drag,
                            TimeScale = v.TimeScale,
                            VelocityInheritance = v.VelocityInheritance,
                        })
                        wait(0.2) Fire(Particle, "Parent", Target.Character[v.Parent.Name])
                    end)
                end
            end
            Notify("Completed Aura in: "..(tostring(tick()-Start):split(".")[1]).." seconds!", false, 3)
        end
    end)

    AddCommand("build", false, 1, function(Args)
        Cloud();
        local Start = tick();
        local Convert = game:GetObjects("rbxassetid://" .. Args[1])[1];
        local Path = Convert:GetDescendants();
        local Data = {
            Model = {};
            Parts = {};
        };
        
        
        for _, v in pairs(Path) do
            if v:IsA("Part") then
                table.insert(Data.Model, v);
                workspace.Buy:FireServer(0, "FluffyUnicorn1");
                Convert.PrimaryPart = v;
                game:GetService("RunService").Stepped:Wait();
            end
        end
        Convert:SetPrimaryPartCFrame(plr.Character.Head.CFrame * CFrame.new(0, -2.5, 0))
        
        wait(3)
        for _, v in pairs(plr.Backpack:GetChildren()) do
            if v.Name == "FluffyUnicorn1" then
                v.Parent = plr.Character;
                v:Activate();
                v:Destroy();
                spawn(function()
                    for _, v in pairs(plr.Character.Head:GetChildren()) do
                        if v:IsA("Part") then
                            v:ClearAllChildren()
                            v.Name = _
                            if not table.find(Data.Parts, v) then
                                table.insert(Data.Parts, v)
                            end
                        end
                    end
                end)
            end
        end
        repeat wait() until not plr.Character:FindFirstChild("FluffyUnicorn1") and not plr.Backpack:FindFirstChild("FluffyUnicorn1");
        for _, v in pairs(Data.Model) do
            spawn(function()
                Fire(Data.Parts[_], {
                    CanCollide = v.CanCollide,
                    Size = v.Size,
                    CFrame = v.CFrame,
                    Orientation = v.Orientation,
                    BrickColor = v.BrickColor,
                    Shape = v.Shape,
                    Transparency = v.Transparency,
                    Material = v.Material
                });
            end);
        end
        
        Notify("Completed Building in: "..(tostring(tick()-Start):split(".")[1]).." seconds!", false, 3)
    end)

    AddCommand("build2", false, 1, function(Args)
        Cloud();
        local Start = tick();
        local Convert = game:GetObjects("rbxassetid://" .. Args[1])[1];
        local Path = Convert:GetDescendants();
        local Data = {
            Model = {};
            Parts = {};
        };
        
        for _, v in pairs(Path) do
            if v:IsA("Part") then
                table.insert(Data.Model, v);
                workspace.Buy:FireServer(0, "FluffyUnicorn1");
            end
        end
        wait(3)
        for _, v in pairs(plr.Backpack:GetChildren()) do
            if v.Name == "FluffyUnicorn1" then
                v.Parent = plr.Character;
                v:Activate();
                v:Destroy();
                spawn(function()
                    for _, v in pairs(plr.Character.Head:GetChildren()) do
                        if v:IsA("Part") then
                            v:ClearAllChildren()
                            v.Name = _
                            if not table.find(Data.Parts, v) then
                                table.insert(Data.Parts, v)
                            end
                        end
                    end
                end)
            end
        end
        repeat wait() until not plr.Character:FindFirstChild("FluffyUnicorn1") and not plr.Backpack:FindFirstChild("FluffyUnicorn1");
        for _, v in pairs(plr.Character.Head:GetChildren()) do
            if v:IsA("Part") then
                v:ClearAllChildren()
                v.Name = _
                if not table.find(Data.Parts, v) then
                    table.insert(Data.Parts, v)
                end
            end
        end
        wait(1)
        for _, v in pairs(Data.Model) do
            spawn(function()
                Fire(Data.Parts[_], {
                    CanCollide = v.CanCollide,
                    Size = v.Size,
                    CFrame = v.CFrame,
                    Orientation = v.Orientation,
                    BrickColor = v.BrickColor,
                    Shape = v.Shape,
                    Transparency = v.Transparency,
                    Material = v.Material
                });
            end);
        end
        
        Notify("Completed Building in: "..(tostring(tick()-Start):split(".")[1]).." seconds!", false, 3)
    end)

    return Frame:TweenPosition(UDim2.new(0, 0, 0.963, 0), "In", "Linear", 0.4)
end))

--[[
    [ Notes ]:
        [1st Argument]
            Command

        [2nd Argument]
            Minify?

        [3rd Argument]
            0: nil
            1: local
            2: player
            3: value
            4: on/off
]]
