syn.queue_on_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/SkyLi000/TestScript/main/AutoWinSWBW.lua'))()")

local vu = game:GetService("VirtualUser")
vu:CaptureController()

local KeyB = "0x42"

vu:SetKeyDown(KeyB)
wait(0.25)
vu:SetKeyUp(KeyB)

wait(10)

for i, v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Team ~= game.Players.LocalPlayer.Team then
            print(v.Name)
            repeat wait(0.2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
            until v.Character.Humanoid.Health == 0 or not v.Character:FindFirstChild("Humanoid")
        end
    end
