
local UILibrary = {}

function UILibrary.Notify(Text, Durartion, TweenSpeed)
	local Notification = Instance.new("ScreenGui")
	local Background = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local TextButton = Instance.new("TextButton")

	Notification.Name = "Notification"
	Notification.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	Notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Background.Name = "Background"
	Background.Parent = Notification
	Background.AnchorPoint = Vector2.new(0.5, 0.5)
	Background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Background.Position = UDim2.new(0.105,0,0.92,0)
	Background.Size = UDim2.new(0.200000003, 0, 0.150000006, 0)

	UICorner.Parent = Background

	TextButton.Parent = Background
	TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.BackgroundTransparency = 1.000
	TextButton.Position = UDim2.new(0.0136861317, 0, 0, 0)
	TextButton.Size = UDim2.new(0.968065679, 0, 1, 0)
	TextButton.Font = Enum.Font.FredokaOne
	TextButton.Text = Text
	TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.TextScaled = true
	TextButton.TextSize = 14.000
	TextButton.TextWrapped = true
	
	wait(1)
	
	Notification:Destroy()
end

return UILibrary
