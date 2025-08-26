local SimpleUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/darkMaster549/Aux-Hub-Script-/refs/heads/main/Simple.lua"))()

local mainWindow = SimpleUI:CreateWindow("Aux Hub")

mainWindow:AddButton({
    text = "Infinite Cash",
    callback = function()
        local args = {"Cash","99999999999"}
        game:GetService("ReplicatedStorage").Remotes.AddValueEvent:FireServer(unpack(args))
    end
})

mainWindow:AddButton({
    text = "Infinite Gems (x500)",
    callback = function()
        for _ = 1, 500 do
            game:GetService("ReplicatedStorage").Remotes.MysteryBoxEvent:FireServer()
        end
    end
})

mainWindow:AddButton({
    text = "Unlock Fastest Trail",
    callback = function()
        local args1 = {"Aurora",140000000000}
        game:GetService("ReplicatedStorage").Remotes.BuyTrailEvent:FireServer(unpack(args1))
        local args2 = {"Aurora"}
        game:GetService("ReplicatedStorage").Remotes.EquipTrailEvent:FireServer(unpack(args2))
    end
})

mainWindow:AddButton({
    text = "Infinite Max Pets",
    callback = function()
        local args = {"MaxPets",9999}
        game:GetService("ReplicatedStorage").Remotes.MultiplierEvent:FireServer(unpack(args))
    end
})

mainWindow:AddButton({
    text = "Infinite Luck",
    callback = function()
        local args = {"LuckyMergeLevel",9999999999,3000}
        game:GetService("ReplicatedStorage").Remotes.UpgradeEvent:FireServer(unpack(args))
    end
})

mainWindow:AddButton({
    text = "Spin 99 Pets",
    callback = function()
        for _ = 1, 99 do
            local args = {4}
            game:GetService("ReplicatedStorage").Remotes.SpinWheelPrizeEvent:FireServer(unpack(args))
        end
    end
})

SimpleUI:Init()
