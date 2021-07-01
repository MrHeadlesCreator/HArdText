local ServiceUs = game:GetService('UserInputService')
local Part1 = game.Workspace.tower.sections.finish.start
local Part2 = game.Workspace.tower.sections.finish.FinishGlow
local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart

local Cooldown = 5

ServiceUs.InputBegan:Connect(function(Input)
    if Input.KeyCode == Enum.KeyCode.F1 then
        wait(1)
        HRP.CFrame = Part1.CFrame
        wait(0.5)
        HRP.CFrame = Part2.CFrame
        wait(Cooldown)
    end
end)

ServiceUs.InputEnded:Connect(function(Input)
    if Input.KeyCode == Enum.KeyCode.F1 then
        return end
end)
ServiceUs.InputBegan:Connect(function(Input)
    if Input.KeyCode == Enum.KeyCode.LeftShift or Input.KeyCode == Enum.KeyCode.RightShift then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
    end
end)
ServiceUs.InputEnded:Connect(function(Input)
    if Input.KeyCode == Enum.KeyCode.LeftShift or Input.KeyCode == Enum.KeyCode.RightShift then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)
