local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "JB Level Picker | By j2wavvy", HidePremium = false, IntroEnabled = false})

_G.elo = "1"

function levelPicker()
    game.Players.LocalPlayer.PlayerData.Stats.EloRating.Value = _G.elo
end

local Tab = Window:MakeTab({
	Name = "Tab",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddSlider({
	Name = "elo:",
	Min = 1,
	Max = 200,
	Default = 1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(Value)
		_G.elo = Value
        levelPicker()
	end    
})