game:GetService("Workspace").Touches.Luck.BillboardGui.TextLabel.Text = "Made By j2wavvy"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, EnabledIntro = false})

_G.luckFarm = true
_G.rebirthANDluckAutoFarm = trye

function luckFarm()
    while _G.luckFarm == true do
        local player = game.Players.LocalPlayer.Character
        local part = game.Workspace.Touches["Luck"] 
        player.HumanoidRootPart.CFrame = part.CFrame
        wait(3)
    end
end

function rebirthANDluckAutoFarm()
    while _G.rebirthANDluckAutoFarm == true do
        local player = game.Players.LocalPlayer.Character
        local part = game.Workspace.Touches["Luck"] 
        player.HumanoidRootPart.CFrame = part.CFrame
        wait(3)
        local player = game.Players.LocalPlayer.Character
        local part = game.Workspace.Touches["Rebirth"]
        player.HumanoidRootPart.CFrame = part.CFrame
        wait(3)
    end
end

local Tab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Auto Farm Luck",
	Default = false,
	Callback = function(Value)
		_G.luckFarm = Value
        luckFarm()
	end    
})

Tab:AddToggle({
	Name = "Auto Farm Rebirth & Luck",
	Default = false,
	Callback = function(Value)
		_G.rebirthANDluckAutoFarm = Value
        rebirthANDluckAutoFarm()
	end    
})