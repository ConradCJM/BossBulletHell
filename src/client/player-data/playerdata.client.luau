local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = ReplicatedStorage.Packages
local DataService = require(Packages.DataService).client

DataService:init()

-- Gold
local gold = DataService:get("gold")

DataService:getChangedSignal("gold"):Connect(function(newValue)
	-- Update UI with newValue
	print("Gold updated to: " .. newValue)
end)

-- Crystals
local crystals = DataService:get("crystals")
DataService:getChangedSignal("crystals"):Connect(function(newValue)
	-- Update UI with newValue
	print("Crystals updated to: " .. newValue)
end)

-- Level
local level = DataService:get("level")
DataService:getChangedSignal("level"):Connect(function(newValue)
	-- Update UI with newValue
	print("Level updated to: " .. newValue)
end)

-- EXP
local exp = DataService:get("exp")
DataService:getChangedSignal("exp"):Connect(function(newValue)
	-- Update UI with newValue
	print("EXP updated to: " .. newValue)
end)

-- Max EXP
local maxExp = DataService:get("maxExp")
DataService:getChangedSignal("maxExp"):Connect(function(newValue)
	-- Update UI with newValue
	print("Max EXP updated to: " .. newValue)
end)

-- Class
local class = DataService:get("class")
DataService:getChangedSignal("class"):Connect(function(newValue)
	-- Update UI with newValue
	print("Class updated to: " .. newValue)
end)

-- Class Tokens
local classTokens = DataService:get("classTokens")
DataService:getChangedSignal("classTokens"):Connect(function(newValue)
	-- Update UI with newValue
	print("Class Tokens updated to: " .. newValue)
end)

-- Settings
local settings = DataService:get("settings")
DataService:getChangedSignal("settings"):Connect(function(newValue)
	-- Update UI with newValue
	print("Settings updated")
end)
