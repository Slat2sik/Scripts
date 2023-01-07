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

function espScript()
	while _G.espScript == true do
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Impulseonyoutube/ENCRYPTED-ESP/main/Protected.lua"))()
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
	Name = "ESP",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "ESP"
})

Tab:AddToggle({
	Name = "ESP",
	Default = false,
	Callback = function(Value)
		_G.espScript = Value

		espScript()
	end    
})

local Tab = Window:MakeTab({
	Name = "Updates",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("No Updates!","There are no updates as of now")

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


OrionLib:Init()