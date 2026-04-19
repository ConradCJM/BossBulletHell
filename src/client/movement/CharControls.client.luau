local Players = game:GetService("Players")
local player = Players.LocalPlayer

player.CharacterAdded:Connect(function(character)
	local humanoid = character.Humanoid
	humanoid.JumpHeight = 0
end)
