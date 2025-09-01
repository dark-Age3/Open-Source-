-- Only supports Open Source Scripts from VantaXock and not open source 
local SUPPORTED_GAMES = {
    [84316229168229] = "https://raw.githubusercontent.com/Aux-Developm3nt/Open-Source-/main/Clone%20Chaos.lua",
    [126849358937279] = "https://raw.githubusercontent.com/Aux-Developm3nt/Open-Source-/main/Merge%20Gubby.lua", 
    [135170308040342] = "https://raw.githubusercontent.com/Aux-Developm3nt/Open-Source-/main/Grow%20Every%20Bite.lua",
    [111452220770252] = "https://raw.githubusercontent.com/Aux-Developm3nt/Open-Source-/main/Beat%20Up%20gubby%20on%20his%20own%20Home.lua",
    [15407368046] = "https://raw.githubusercontent.com/Aux-Developm3nt/Open-Source-/main/Trampoline%20Battle%20Simulator.lua",
    [13675842775] = "https://raw.githubusercontent.com/Aux-Developm3nt/Open-Source-/main/Get%20Big%20Simulator.lua",
    [116495829188952] = "https://raw.githubusercontent.com/Aux-Developm3nt/Open-Source-/main/Dead%20Rails.lua",
    [14157644155] = "https://raw.githubusercontent.com/Aux-Developm3nt/Open-Source-/main/Money%20Grab%20Simulator.lua",
    [15506010437] = "https://raw.githubusercontent.com/Aux-Developm3nt/Open-Source-/main/Fun%20Squid%20game!%20Glass%20Bridge%202.lua",
    [4577486879] = "https://raw.githubusercontent.com/dark-Age3/Open-Source-/refs/heads/main/MM2%20duels.lua", -- MM2 Duels
    [4924922222] = "https://raw.githubusercontent.com/dark-Age3/Open-Source-/refs/heads/main/Brookhaven.lua", -- Brookhaven RP
    [8665470667] = "https://raw.githubusercontent.com/dark-Age3/Open-Source-/refs/heads/main/5v5%20MM2%20Milbase.lua", -- 5v5 MM2 Milbase
    [5715080538] = "https://raw.githubusercontent.com/dark-Age3/Open-Source-/refs/heads/main/Kill%20bomb%20OP.lua", -- Red vs Blue Gun Battle
}

local scriptURL = SUPPORTED_GAMES[game.PlaceId]

if scriptURL then
    local success, err = pcall(function()
        loadstring(game:HttpGet(scriptURL))()
    end)
    if not success then
        warn("Failed to load script:", err)
    end
else
    warn("Game not supported. Are you sure you are on the right game?")
end
