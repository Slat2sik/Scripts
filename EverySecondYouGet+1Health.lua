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

local Section = Tab:AddSection({
	Name = "Auto Farm"
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
	Name = "Updates",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddDropdown({
	Name = "v1.0",
	-- Default = "1",
	Options = {"Switched 5+ wins to 12+ wins"},
	Callback = function(Value)
		print(Value)
	end    
})

Tab:AddDropdown({
	Name = "v1.1",
	-- Default = "1",
	Options = {"Switched 12+ wins to 8+ wins"},
	Callback = function(Value)
		print(Value)
	end    
})

Tab:AddDropdown({
	Name = "v1.2",
	-- Default = "1",
	Options = {"Updated the auto farm section"},
	Callback = function(Value)
		print(Value)
	end    
})

Tab:AddDropdown({
	Name = "v1.3",
	-- Default = "1",
	Options = {"Switched +8 wins to +11 (couldnt get the 12+ wins because its glitched)"},
	Callback = function(Value)
		print(Value)
	end    
})

local Tab = Window:MakeTab({
	Name = "Discord",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Join discord server",
	Callback = function()
      		DiscordServerNotification()

              setclipboard("https://discord.gg/BUA8XuPWGX")
              toclipboard("https://discord.gg/BUA8XuPWGX")
  	end    
})

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