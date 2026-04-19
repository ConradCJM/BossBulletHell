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
		classTokens = 0, --should be (level - 1) when reset

		classes = {
			{ name = "None", level = 1 },
			{ name = "Spell Blade", level = 0 }, -- med dps  | med hp  | med spe
			{ name = "Inferno", level = 0 }, -- high dps | low hp  | med spe
			{ name = "Phantom", level = 0 }, -- high spe | low dps | med hp
			{ name = "Guardian", level = 0 }, -- high hp  | low spe | med dps
		},

		settings = {
			musicVolume = 0.5,
			sfxVolume = 0.5,
		},
	},
	useMock = true,
	resetData = true,
})
