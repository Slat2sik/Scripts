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

function EnabledNotification()
    OrionLib:MakeNotification({
        Name = "Enabled!",
        Content = "Auto farm has been enabled",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function RejoinNotification()
    OrionLib:MakeNotification({
        Name = "Rejoining",
        Content = "Rejoining the same server",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
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

Tab:AddButton({
	Name = "Auto Farm Wins (click the rejoin button to stop)",
	Callback = function()
      		EnabledNotification()
              while true do
                local x = 16410.13671875
                local y = 82355.2265625
                local z = 263.0718078613281
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
                    wait(12)
                end
  	end    
})

Tab:AddButton({
	Name = "Rejoin",
	Callback = function()
        RejoinNotification()
        wait(2)
        local ts = game:GetService("TeleportService")

        local p = game:GetService("Players").LocalPlayer
        
         
        
        ts:Teleport(game.PlaceId, p)
  	end    
})

local Tab = Window:MakeTab({
	Name = "Credits",
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
