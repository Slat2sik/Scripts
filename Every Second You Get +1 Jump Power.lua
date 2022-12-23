local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Made By J.#5424 | Every Second You Get +1 Jump Power", "BloodTheme")
 
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
 
 
FarmSection:NewButton("Infinite Wins (+35 Wins / 12 Seconds)", "+35 Wins every 12 Seconds (rejoin to stop)", function()
    while true do
        local x = 12314.6494140625
        local y = 45656.24609375
        local z = 213.0494842529297
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
            wait(9)
        end
end)