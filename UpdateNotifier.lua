getgenv().CancelPLSXU = nil
local UpdateNotification = Instance.new("ScreenGui")
local UpdateNoti = Instance.new("Frame")
local tl = Instance.new("TextLabel")
local txt = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
UpdateNotification.Name = "UpdateNotification"
UpdateNotification.Parent = game:GetService("CoreGui")
UpdateNotification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
UpdateNoti.Name = "UpdateNoti"
UpdateNoti.Parent = UpdateNotification
UpdateNoti.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
UpdateNoti.ClipsDescendants = true
UpdateNoti.Position = UDim2.new(0.094313547, 0, 0.309202105, 0)
UpdateNoti.Size = UDim2.new(0, 358, 0, 282)
tl.Name = "tl"
tl.Parent = UpdateNoti
tl.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
tl.Position = UDim2.new(2.07724697e-05, 0, -0.0220006853, 0)
tl.Size = UDim2.new(0, 358, 0, 33)
tl.Font = Enum.Font.Code
tl.Text = " Prison Life X"
tl.TextColor3 = Color3.fromRGB(12, 178, 255)
tl.TextSize = 20.000
tl.TextWrapped = true
tl.TextXAlignment = Enum.TextXAlignment.Left
txt.Name = "txt"
txt.Parent = UpdateNoti
txt.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
txt.BackgroundTransparency = 1.000
txt.Position = UDim2.new(0.0972432792, 0, 0.196792394, 0)
txt.Size = UDim2.new(0, 288, 0, 91)
txt.Font = Enum.Font.Code
txt.Text = "Prison Life X has updated!\n\nWould you like to update to the newer version?"
txt.TextColor3 = Color3.fromRGB(12, 178, 255)
txt.TextScaled = true
txt.TextWrapped = true
txt.TextXAlignment = Enum.TextXAlignment.Left
txt.TextYAlignment = Enum.TextYAlignment.Top
Frame.Parent = UpdateNoti
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Frame.Position = UDim2.new(-0.00753185805, 0, 0.988185048, 0)
Frame.Size = UDim2.new(0, 364, 0, 5)
TextButton.Parent = UpdateNoti
TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextButton.Position = UDim2.new(0.140789881, 0, 0.698581576, 0)
TextButton.Size = UDim2.new(0, 130, 0, 32)
TextButton.Font = Enum.Font.Cartoon
TextButton.Text = "Update"
TextButton.TextColor3 = Color3.fromRGB(49, 170, 49)
TextButton.TextScaled = true
TextButton.TextWrapped = true
TextButton_2.Parent = UpdateNoti
TextButton_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextButton_2.Position = UDim2.new(0.274024367, 0, 0.84397161, 0)
TextButton_2.Size = UDim2.new(0, 178, 0, 32)
TextButton_2.Font = Enum.Font.Cartoon
TextButton_2.Text = "Remind me later"
TextButton_2.TextColor3 = Color3.fromRGB(49, 170, 49)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true
TextButton_3.Parent = UpdateNoti
TextButton_3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextButton_3.Position = UDim2.new(0.537098467, 0, 0.698581576, 0)
TextButton_3.Size = UDim2.new(0, 130, 0, 32)
TextButton_3.Font = Enum.Font.Cartoon
TextButton_3.Text = "Cancel"
TextButton_3.TextColor3 = Color3.fromRGB(170, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextWrapped = true
TextButton_3.MouseButton1Click:Connect(function()
		getgenv().RemoveUpdate = true

		if game:GetService("CoreGui"):FindFirstChild("PrisonLifeX Notifications") then
	NotifyX("Update has been cancelled", 5)

end
	UpdateNotification:Destroy()
	getgenv().CancelPLSXU = true
	wait(60)
	getgenv().CancelPLSXU = false
end)
TextButton_2.MouseButton1Click:Connect(function()
	getgenv().CancelPLSXU = false
		if game:GetService("CoreGui"):FindFirstChild("PrisonLifeX Notifications") then
		NotifyX("Set reminder for 300 seconds!", 4)


end
	UpdateNotification.Enabled = false
	wait(300)
	UpdateNotification.Enabled = true
end)
TextButton.MouseButton1Click:Connect(function()
	UpdateNotification:Destroy()
	getgenv().CancelPLSXU = false
	AutoRespawn = false
	AutoItems = false

	if AutoRPS then 
		AutoRPS:Disconnect()
	end
	if AutoRPS2 then 
		AutoRPS2:Disconnect()
	end
	if AutoITMS then 
		AutoITMS:Disconnect()
	end

	for _, v in next,  game:GetService("CoreGui"):GetChildren() do
		if v.Name == "PrisonLifeX" then
			v:Destroy()		
		end
	end
	loadstring(game:HttpGet('https://raw.githubusercontent.com/BloodyBurns/xL/main/PrisonLifeX.lua'))()
end)
repeat wait() until CancelPLSXU ~= nil
