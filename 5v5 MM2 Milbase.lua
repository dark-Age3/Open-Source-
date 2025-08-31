local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local KillAllButton = Instance.new("TextButton")
local KillAllCorner = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
MainFrame.Position = UDim2.new(0.85, 0, 0.4, 0)
MainFrame.Size = UDim2.new(0, 140, 0, 80)
MainFrame.Active = true
MainFrame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = MainFrame

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 30, 45)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(15, 15, 25))
}
UIGradient.Rotation = 45
UIGradient.Parent = MainFrame

UIPadding.Parent = MainFrame
UIPadding.PaddingTop = UDim.new(0, 15)
UIPadding.PaddingLeft = UDim.new(0, 15)
UIPadding.PaddingRight = UDim.new(0, 15)
UIPadding.PaddingBottom = UDim.new(0, 15)

KillAllButton.Parent = MainFrame
KillAllButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
KillAllButton.Size = UDim2.new(1, 0, 1, 0)
KillAllButton.Font = Enum.Font.GothamSemibold
KillAllButton.Text = " Kill All: OFF"
KillAllButton.TextColor3 = Color3.fromRGB(255, 255, 255)
KillAllButton.TextSize = 14
KillAllButton.TextScaled = true

KillAllCorner.CornerRadius = UDim.new(0, 10)
KillAllCorner.Parent = KillAllButton

getgenv().killall = false

KillAllButton.MouseButton1Click:connect(function()
if getgenv().killall == false then
   getgenv().killall = true
   KillAllButton.Text = " Kill All: ON"
   KillAllButton.BackgroundColor3 = Color3.fromRGB(50, 255, 50)
else
   getgenv().killall = false
   KillAllButton.Text = " Kill All: OFF"
   KillAllButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
end
end)

spawn(function()
local players, plr = game:GetService("Players"), game:GetService("Players").LocalPlayer

while true do
    if getgenv().killall then
        pcall(function()
            local char = plr.Character or plr.CharacterAdded:Wait()
            local knife = char:FindFirstChildOfClass("Tool") or plr.Backpack:FindFirstChildOfClass("Tool")
            if knife and knife.Parent == plr.Backpack then knife.Parent = char end
            if knife then
                for _, player in ipairs(players:GetPlayers()) do
                    if player ~= plr and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        task.spawn(function()
                            knife:Activate()
                            firetouchinterest(player.Character.HumanoidRootPart, knife.Handle, 0)
                            firetouchinterest(player.Character.HumanoidRootPart, knife.Handle, 1)
                        end)
                        wait(0.2)
                    end
                end
            end
        end)
    end
    wait()
end
end)

print("Enjoy")
