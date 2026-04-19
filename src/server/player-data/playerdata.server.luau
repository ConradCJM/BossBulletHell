local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = ReplicatedStorage.Packages
local DataService = require(Packages.DataService).server

DataService:init({
	template = {
		gold = 0,
		crystals = 0,
		level = 1,
		exp = 0,
		maxExp = 100,
		class = "None",

		classes = {
			{ name = "None", level = 1 },
			{ name = "Warrior", level = 0 },
			{ name = "Mage", level = 0 },
			{ name = "Rogue", level = 0 },
			{ name = "Hunter", level = 0 },
			{ name = "Archer", level = 0 },
			{ name = "Spell Blade", level = 0 },
		},

		settings = {
			musicVolume = 0.5,
			sfxVolume = 0.5,
		},
	},
	useMock = true,
	resetData = true,
})
