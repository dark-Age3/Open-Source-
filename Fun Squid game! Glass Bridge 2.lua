local SimpleUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Aux-Developm3nt/ZyXn/refs/heads/main/xc.lua"))()

local window = SimpleUI:CreateWindow("   Aux Hub")

local mainFolder = window:AddFolder({ title = "Main Features", open = true })

local InstantCashEnabled = false

mainFolder:AddToggle({
    text = "Instant Cash",
    state = false,
    flag = "InstantCash",
    callback = function(value)
        InstantCashEnabled = value
        print("Instant Cash:", value and "ENABLED" or "DISABLED")
        if value then
            task.spawn(function()
                while InstantCashEnabled do
                    local success, err = pcall(function()
                        game:GetService("ReplicatedStorage"):WaitForChild("Spin"):InvokeServer()
                    end)
                    if not success then
                        warn("Error invoking Spin:", err)
                    end
                    task.wait(0.1)
                end
            end)
        end
    end
})

SimpleUI:Init()
