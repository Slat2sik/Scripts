local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Made By J.#5424 | Every Second You Get +1 Health", "BloodTheme")
 
-- Player
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")
 
PlayerSection:NewButton("Admin Commands", "Infinite Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
 
PlayerSection:NewSlider("Walk Speed", "Go Fast", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
 
 
PlayerSection:NewSlider("Jump Power", "Go High", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
-- AUTO FARM
local Farm = Window:NewTab("Auto Farm")
local FarmSection = Farm:NewSection("Auto Farm")
 
 
FarmSection:NewButton("Infinite Wins (+12 Wins / 9 Seconds)", "+12 Wins every 9 seconds (rejoin to stop)", function()
    while true do
        local x = 984.4512329101562
        local y = 0.20754379034042358
        local z = 329.2272644042969
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
            wait(9)
        end
end)