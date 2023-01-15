--[[
Created by slat
Contact me:
Discord: slat#5424
]]

if game.PlaceId == 11302865934 then
	local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
	local Window = Rayfield:CreateWindow({
	   Name = "Every Second You Get +1 Health",
	   LoadingTitle = "Every Second You Get +1 Health",
	   LoadingSubtitle = "by slat#5424",
	--    ConfigurationSaving = {
	--       Enabled = false,
	--       FolderName = nil, -- Create a custom folder for your hub/game
	--       FileName = "Big Hub"
	--    },
	   Discord = {
		  Enabled = true,
		  Invite = "BUA8XuPWGX", -- The Discord invite code, do not include discord.gg/
		  RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	   },
	   KeySystem = true, -- Set this to true to use our key system
	   KeySettings = {
		  Title = "Key System",
		  Subtitle = "slat#5424",
		  Note = "https://pastebin.com/raw/DDib0F3d",
		  FileName = "JKey",
		  SaveKey = true,
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
	
	-- Auto Farm
	
	local Tab = Window:CreateTab("Auto Farm", 4483362458) -- Title, Image

	local Section = Tab:CreateSection("Auto Wins")
	
	local Toggle = Tab:CreateToggle({
	   Name = "Auto Wins",
	   CurrentValue = false,
	   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	   Callback = function(Value)
			_G.autoWins = Value
	
			autoWins()
	   end,
	})
	
	local Section = Tab:CreateSection("Auto Rebirths")

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
	
	local Section = Tab:CreateSection("Auto Hatch Eggs")

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
		local x = 0.026580367237329483
		local y = 0.19999952614307404
		local z = -0.0014024863485246897
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
	   end,
	})
	
	local Button = Tab:CreateButton({
		Name = "Moon",
		Callback = function()
			local x = 1023.6930541992188
			local y = 0.19999976456165314
			local z = 3.8516876697540283
			game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
		end,
	 })
	
	 local Button = Tab:CreateButton({
		Name = "Lava",
		Callback = function()
			local x = 2047.70068359375
			local y = 0.19999976456165314
			local z = 3.853139638900757
			game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
		end,
	 })
	
	-- Updates
	
	local Tab = Window:CreateTab("Updates", 4483362458) -- Title, Image
	
	local Paragraph = Tab:CreateParagraph({Title = "v1.0", Content = "Switched +5 wins to +12 wins"})
	
	local Paragraph = Tab:CreateParagraph({Title = "v1.1", Content = "Switched +12 wins to +8 wins"})
	
	local Paragraph = Tab:CreateParagraph({Title = "v1.2", Content = "Updated the auto farm section"})
	
	local Paragraph = Tab:CreateParagraph({Title = "v1.3", Content = "Switched +8 wins to +11 (couldn't get the +12 because the drop is glitched)"})
	
	local Paragraph = Tab:CreateParagraph({Title = "v1.4", Content = "Added a auto hatch section"})
	
	local Paragraph = Tab:CreateParagraph({Title = "v1.5", Content = "Added a teleport section"})
	
	local Paragraph = Tab:CreateParagraph({Title = "v1.6", Content = "Switched to a different UI"})

	local Paragraph = Tab:CreateParagraph({Title = "v1.7", Content = "Transferred auto hatch to auto farm"})
	
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