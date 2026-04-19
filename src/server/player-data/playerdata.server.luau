local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = ReplicatedStorage.Packages
local DataService = require(Packages.DataService).server

DataService:init({
	template = {
		gold = 0,
		crystals = 0,
		level = 1,
		exp = 0,
		class = "None",
	},
})
