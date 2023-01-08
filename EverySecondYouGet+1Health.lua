if game.PlaceId == 11302865934 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Made By J.#5424", HidePremium = false, SaveConfig = true, IntroEnabled = false})

-- Noti

OrionLib:MakeNotification({
	Name = "Enjoy the script",
	Content = "You are logged in as "..Player.Name.." ",
	Image = "rbxassetid://4483345998",
	Time = 7
})

-- Values
_G.autoWins = true
_G.autoRebirth = true
_G.autoHatch = true
_G.selectEgg = "Noob"


-- Functions

function autoWins()
    while _G.autoWins == true do
		local x = 2089.228271484375
		local y = 205.49998474121094
		local z = 145.49891662597656
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
                wait(9)
                wait('.0000000000000000000000000000000000000000000000000000000000000000001')
            end
end

function autoRebirth()
    while _G.autoRebirth == true do
    game:GetService("ReplicatedStorage").RebirthEvent:FireServer()
    wait('.0000000000000000000000000000000000000000000000000000000000000000001')
    end
end

function autoHatch()
	while _G.autoHatch == true do
	game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(_G.selectEgg,"Single")
	wait('.0000000000000000000000000000000000000000000000000000000000000000001')
	end
end

function DiscordServerNotification()
    OrionLib:MakeNotification({
        Name = "Copied!",
        Content = "Successfully copied invite to clipboard",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end




-- On the form

local Tab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Auto Wins",
	Default = false,
	Callback = function(Value)
            _G.autoWins = Value

            autoWins()
  	end    
})

Tab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		_G.autoRebirth = Value

        autoRebirth()
	end    
})

local Tab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("NOTE","To collect the eggs you must be standing inside the egg box")

Tab:AddToggle({
	Name = "Auto Hatch",
	Default = false,
	Callback = function(Value)
		_G.autoHatch = Value
		autoHatch()
	end    
})

Tab:AddDropdown({
	Name = "Select Egg",
	Default = "Noob",
	Options = {"Noob", "Starter", "Rare", "Pro", "Epic", "Legendary", "Mythical", "Godly", "Dark", "Void", "Desert"},
	Callback = function(Value)
		_G.selectEgg = Value
		print(_G.selectEgg)
	end    
})

local Tab = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Earth",
	Callback = function()
			local x = 0.026580367237329483
			local y = 0.19999952614307404
			local z = -0.0014024863485246897
			game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
  	end    
})

Tab:AddButton({
	Name = "Moon",
	Callback = function()
			local x = 1023.6930541992188
			local y = 0.19999976456165314
			local z = 3.8516876697540283
			game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
  	end    
})

Tab:AddButton({
	Name = "Lava",
	Callback = function()
			local x = 2047.70068359375
			local y = 0.19999976456165314
			local z = 3.853139638900757
			game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
  	end    
})

local Tab = Window:MakeTab({
	Name = "Updates",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("v1.0","Switched +5 wins to +12 wins")

Tab:AddParagraph("v1.1","Switched +12 wins to +8 wins")

Tab:AddParagraph("v1.2","Updated the auto farm section")

Tab:AddParagraph("v1.3","Switched +8 wins to +11 (couldn't get the +12 because the drop is glitched")

Tab:AddParagraph("v1.4","Added a auto hatch section")

Tab:AddParagraph("v1.5","Added a teleport section")

-- local Tab = Window:MakeTab({
-- 	Name = "Discord",
-- 	Icon = "rbxassetid://4483345998",
-- 	PremiumOnly = false
-- })

-- Tab:AddButton({
-- 	Name = "Join discord server",
-- 	Callback = function()
--       		DiscordServerNotification()

--               setclipboard("https://discord.gg/BUA8XuPWGX")
--               toclipboard("https://discord.gg/BUA8XuPWGX")
--   	end    
-- })

local Tab = Window:MakeTab({
	Name = "Gui Options",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Destory GUI",
	Callback = function()
        OrionLib:Destroy()
  	end    
})






end
OrionLib:Init()