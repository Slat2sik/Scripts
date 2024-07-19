if game.PlaceId == 13176423363 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Build A Staircase", HidePremium = false, IntroEnabled = false})

    _G.autoFarm = true

    function autoFarmTrue()
        while _G.autoFarm == true do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
            game.Players.LocalPlayer.Character.Humanoid.JumpHeight = 0
            local x = 878.703857
			local y = 25.7024021
			local z = 268.655853
			game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
			wait(5)
        end
    end

    function autoFarmFalse()
        while _G.autoFarm == false do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            game.Players.LocalPlayer.Character.Humanoid.JumpHeight = 50
            wait(1)
        end
    end

    local Tab = Window:MakeTab({
        Name = "Farm Wins",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    Tab:AddToggle({
        Name = "Auto Farm",
        Default = false,
        Callback = function(Value)
            _G.autoFarm = Value
            autoFarmTrue()
            autoFarmFalse()
        end    
    })
end