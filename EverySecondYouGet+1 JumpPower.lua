--[[
Created by slat
Contact me:
Discord: slat#5424
]]

if game.PlaceId == 11063612131 then
	local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
	local Window = Rayfield:CreateWindow({
	   Name = "Every Second You Get +1 Jump Power",
	   LoadingTitle = "Every Second You Get +1 Jump Power",
	   LoadingSubtitle = "by slat#5424",
	--    ConfigurationSaving = {
	--       Enabled = false,
	--       FolderName = nil, -- Create a custom folder for your hub/game
	--       FileName = "Big Hub"
	--    },
	   Discord = {
		  Enabled = true,
		  Invite = "https://discord.gg/BUA8XuPWGX", -- The Discord invite code, do not include discord.gg/
		  RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	   },
	   KeySystem = false, -- Set this to true to use our key system
	   KeySettings = {
		  Title = "Key System",
		  Subtitle = "slat#5424",
		  Note = "https://pastebin.com/raw/DDib0F3d",
		  FileName = "JKey",
		  SaveKey = false,
		  GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		  Key = "jWnZr4u7s",
	   }
	})


	-- Values
	_G.autoWins = true
	_G.autoRebirth = true
	_G.autoHatch = true
	_G.selectEgg = "Noob"
	
	
	-- Functions
	
	function autoWins()
		while _G.autoWins == true do
            local x = 16410.13671875
            local y = 82355.2265625
            local z = 263.0718078613281
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
                wait(12)
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
	
	-- Auto Farm
	
	local Tab = Window:CreateTab("Auto Farm", 4483362458) -- Title, Image
	
	local Toggle = Tab:CreateToggle({
	   Name = "Auto Wins",
	   CurrentValue = false,
	   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	   Callback = function(Value)
			_G.autoWins = Value
	
			autoWins()
	   end,
	})
	
	local Toggle = Tab:CreateToggle({
	   Name = "Auto Rebirths",
	   CurrentValue = false,
	   Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	   Callback = function(Value)
			_G.autoRebirth = Value
	
			autoRebirth()
	   end,
	})
	
	-- Eggs
	
	local Tab = Window:CreateTab("Eggs", 4483362458) -- Title, Image

    local Paragraph = Tab:CreateParagraph({Title = "NOTE", Content = "You must be standing inside the egg box"})
	
	local Toggle = Tab:CreateToggle({
	   Name = "Auto Hatch",
	   CurrentValue = false,
	   Flag = "Toggle3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	   Callback = function(Value)
		_G.autoHatch = Value
		autoHatch()
	   end,
	})
	
	local Dropdown = Tab:CreateDropdown({
	   Name = "Select Egg",
	   Options = {"Noob", "Starter", "Rare", "Pro", "Epic", "Legendary", "Mythical", "Godly", "Dark", "Void", "Desert"},
	   CurrentOption = "Noob",
	   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	   Callback = function(Option)
		_G.selectEgg = Option
		print(_G.selectEgg)
	   end,
	})

    	-- Teleport
	
	local Tab = Window:CreateTab("Teleport", 4483362458) -- Title, Image
	
	local Button = Tab:CreateButton({
	   Name = "Earth",
	   Callback = function()
		local x = -0.00007487638504244387
		local y = 0.2999988794326782
		local z = -120.989990234375
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
	   end,
	})
	
	local Button = Tab:CreateButton({
		Name = "Moon",
		Callback = function()
			local x = 2050.5
			local y = 0.3000236749649048
			local z = -121.99225616455078
			game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
		end,
	 })
	
	 local Button = Tab:CreateButton({
		Name = "Lava",
		Callback = function()
			local x = 4050.5
			local y = 0.3000236749649048
			local z = -121.9886474609375
			game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
		end,
	 })

     local Button = Tab:CreateButton({
        Name = "Ice",
        Callback = function()
            local x = 6050.5
			local y = 0.3000236749649048
			local z = -121.99262237548828
			game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
		end,
     })

     local Button = Tab:CreateButton({
        Name = "Flower",
        Callback = function()
            local x = 8050.5
			local y = 0.3000236749649048
			local z = -121.99272918701172
			game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
		end,
     })

     local Button = Tab:CreateButton({
        Name = "Snow",
        Callback = function()
            local x = 10267.5
			local y = 0.3000236749649048
			local z = -121.9919204711914
			game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
		end,
     })

     local Button = Tab:CreateButton({
        Name = "Dark",
        Callback = function()
            local x = 12315.5
			local y = 0.3000236749649048
			local z = -121.9915771484375
			game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
		end,
     })

     local Button = Tab:CreateButton({
        Name = "Void",
        Callback = function()
            local x = 14363.5
			local y = 0.3000236749649048
			local z = -121.9927749633789
			game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
		end,
     })

     local Button = Tab:CreateButton({
        Name = "Desert",
        Callback = function()
            local x = 16411.5
			local y = 0.3000236749649048
			local z = -121.99147033691406
			game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
		end,
     })

     	-- Updates
	
	local Tab = Window:CreateTab("Updates", 4483362458) -- Title, Image
	
	local Paragraph = Tab:CreateParagraph({Title = "NO UPDATE", Content = ""})
	
	-- GUI options
	
	local Tab = Window:CreateTab("Gui Options", 4483362458) -- Title, Image
	
	local Button = Tab:CreateButton({
	   Name = "Destory GUI",
	   Callback = function()
		Rayfield:Destroy()
	   end,
	})





	Rayfield:LoadConfiguration()
end

