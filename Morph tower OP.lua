local Library = loadstring(game:HttpGet("https://pastebin.com/raw/RGiM1VYN"))()

local MainWindow = Library:CreateWindow("Aux Hub")

local bombAllEnabled = false
local teamCheckEnabled = false

local function getEnemyPlayers()
    local enemies = {}
    local localPlayer = game.Players.LocalPlayer
    
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            if teamCheckEnabled then
                if player.Team ~= localPlayer.Team then
                    table.insert(enemies, player)
                end
            else
                table.insert(enemies, player)
            end
        end
    end
    
    return enemies
end

MainWindow:Toggle("Kill All", function(isOn)
    bombAllEnabled = isOn
    
    if isOn then
        spawn(function()
            while bombAllEnabled do
                local enemies = getEnemyPlayers()
                
                for _, enemy in pairs(enemies) do
                    if bombAllEnabled and enemy.Character and enemy.Character:FindFirstChild("HumanoidRootPart") then
                        local targetPos = enemy.Character.HumanoidRootPart.Position
                        
                        local args = {
                            CFrame.new(targetPos.X, targetPos.Y, targetPos.Z, -0.19587595760822296, -0.020059427246451378, -0.9804235100746155, -4.141041676231083e-10, 0.9997907876968384, -0.020455680787563324, 0.9806286692619324, -0.004006775561720133, -0.19583497941493988),
                            Vector3.new(targetPos.X, targetPos.Y, targetPos.Z),
                            "Standard Launcher"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RocketLauncherEvent"):FireServer(unpack(args))
                        wait(0.1)
                    end
                end
                wait(0.1)
            end
        end)
    end
end)

MainWindow:Toggle("Team Check", function(isOn)
    teamCheckEnabled = isOn
end)

Library:SetTheme("tokyo")
