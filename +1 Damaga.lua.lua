if game.PlaceId == 11495558803 then
    local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
    local Window = Rayfield:CreateWindow({
        Name = "Every Second You Get +1 Damage",
        LoadingTitle = "Every Second You Get +1 Damage",
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


     -- Functions
     function autoWins()
        while _G.autoWins == true do
            local x = -61
			local y = -1
			local z = -81
			game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))

            game:GetService("ReplicatedStorage").AutoDamage:FireServer(true)

			wait('.0000000000000000000000000000000000000000000000000000000000000000001')
        end
     end


     -- On The Form

     local Tab = Window:CreateTab("Auto Farm", 4483362458) -- Title, Image

     local Section = Tab:CreateSection("Auto Wins")

     if game.PlaceId == 11495558803 then
        local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
        local Window = Rayfield:CreateWindow({
            Name = "Every Second You Get +1 Damage",
            LoadingTitle = "Every Second You Get +1 Damage",
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
    
    
         -- Functions
         function autoWins()
            while _G.autoWins == true do
                local x = -61
                local y = -1
                local z = -81
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
    
                game:GetService("ReplicatedStorage").AutoDamage:FireServer(true)
    
                wait('.0000000000000000000000000000000000000000000000000000000000000000001')
            end
         end
    
    
         -- On The Form
    
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
    end
end