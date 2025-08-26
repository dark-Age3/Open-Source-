local gui = Instance.new("ScreenGui")
gui.Name = "AuxHub"
gui.Parent = game:GetService("CoreGui")
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.ResetOnSpawn = false

local main = Instance.new("Frame")
main.Size = UDim2.new(0, 250, 0, 150)
main.Position = UDim2.new(0.3, 0, 0.3, 0)
main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true
main.Parent = gui
main.BackgroundTransparency = 0.1
main.ClipsDescendants = true

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundTransparency = 1
title.Text = "Aux Hub"
title.Font = Enum.Font.GothamBold
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 18
title.Parent = main

local box = Instance.new("TextBox")
box.Size = UDim2.new(0.8, 0, 0, 30)
box.Position = UDim2.new(0.1, 0, 0.3, 0)
box.PlaceholderText = "Put Coins You Want..."
box.Text = ""
box.ClearTextOnFocus = false
box.Font = Enum.Font.Gotham
box.TextSize = 14
box.TextColor3 = Color3.fromRGB(255, 255, 255)
box.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
box.BorderSizePixel = 0
box.Parent = main

local boxCorner = Instance.new("UICorner")
boxCorner.CornerRadius = UDim.new(0, 8)
boxCorner.Parent = box

local toggle = Instance.new("TextButton")
toggle.Size = UDim2.new(0.8, 0, 0, 30)
toggle.Position = UDim2.new(0.1, 0, 0.6, 0)
toggle.Text = "Loop: OFF"
toggle.Font = Enum.Font.GothamBold
toggle.TextSize = 14
toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
toggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
toggle.BorderSizePixel = 0
toggle.Parent = main

local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(0, 8)
toggleCorner.Parent = toggle

local looping = false

toggle.MouseButton1Click:Connect(function()
	looping = not looping
	if looping then
		toggle.Text = "Loop: ON"
		toggle.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
	else
		toggle.Text = "Loop: OFF"
		toggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
	end
end)

task.spawn(function()
	while task.wait(0.1) do
		if looping then
			local amount = tonumber(box.Text)
			if amount then
				for i = 1, 100 do
					local args = {amount}
					game:GetService("ReplicatedStorage"):WaitForChild("AddCoins"):FireServer(unpack(args))
				end
			end
		end
	end
end)

print("Welcome to Aux hub")local gui = Instance.new("ScreenGui")
gui.Name = "AuxHub"
gui.Parent = game:GetService("CoreGui")
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.ResetOnSpawn = false

local main = Instance.new("Frame")
main.Size = UDim2.new(0, 250, 0, 150)
main.Position = UDim2.new(0.3, 0, 0.3, 0)
main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true
main.Parent = gui
main.BackgroundTransparency = 0.1
main.ClipsDescendants = true

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundTransparency = 1
title.Text = "Aux Hub"
title.Font = Enum.Font.GothamBold
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 18
title.Parent = main

local box = Instance.new("TextBox")
box.Size = UDim2.new(0.8, 0, 0, 30)
box.Position = UDim2.new(0.1, 0, 0.3, 0)
box.PlaceholderText = "Put Coins You Want..."
box.Text = ""
box.ClearTextOnFocus = false
box.Font = Enum.Font.Gotham
box.TextSize = 14
box.TextColor3 = Color3.fromRGB(255, 255, 255)
box.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
box.BorderSizePixel = 0
box.Parent = main

local boxCorner = Instance.new("UICorner")
boxCorner.CornerRadius = UDim.new(0, 8)
boxCorner.Parent = box

local toggle = Instance.new("TextButton")
toggle.Size = UDim2.new(0.8, 0, 0, 30)
toggle.Position = UDim2.new(0.1, 0, 0.6, 0)
toggle.Text = "Loop: OFF"
toggle.Font = Enum.Font.GothamBold
toggle.TextSize = 14
toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
toggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
toggle.BorderSizePixel = 0
toggle.Parent = main

local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(0, 8)
toggleCorner.Parent = toggle

local looping = false

toggle.MouseButton1Click:Connect(function()
	looping = not looping
	if looping then
		toggle.Text = "Loop: ON"
		toggle.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
	else
		toggle.Text = "Loop: OFF"
		toggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
	end
end)

task.spawn(function()
	while task.wait(0.1) do
		if looping then
			local amount = tonumber(box.Text)
			if amount then
				for i = 1, 100 do
					local args = {amount}
					game:GetService("ReplicatedStorage"):WaitForChild("AddCoins"):FireServer(unpack(args))
				end
			end
		end
	end
end)

print("Welcome to Aux hub")
