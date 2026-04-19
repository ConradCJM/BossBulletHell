local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local character = player.Character

-- Sprint speeds
local WALK_SPEED = 16
local SPRINT_SPEED = 30

player.CharacterAdded:Connect(function(newCharacter)
	character = newCharacter
	local humanoid = character.Humanoid
	humanoid.JumpHeight = 0
	humanoid.WalkSpeed = WALK_SPEED
end)

-- Sprint with Left Shift
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then
		return
	end

	if input.KeyCode == Enum.KeyCode.LeftShift and character then
		character.Humanoid.WalkSpeed = SPRINT_SPEED
	end
end)

UserInputService.InputEnded:Connect(function(input, gameProcessed)
	if input.KeyCode == Enum.KeyCode.LeftShift and character then
		character.Humanoid.WalkSpeed = WALK_SPEED
	end
end)

-- Mouse Lock setup
local mouseLockController = Players.LocalPlayer.PlayerScripts
	:WaitForChild("PlayerModule")
	:WaitForChild("CameraModule")
	:WaitForChild("MouseLockController")

local obj = mouseLockController:FindFirstChild("BoundKeys")
if obj then
	obj.Value = "LeftControl"
else
	obj = Instance.new("StringValue")
	obj.Name = "BoundKeys"
	obj.Value = "LeftControl"
	obj.Parent = mouseLockController
end
