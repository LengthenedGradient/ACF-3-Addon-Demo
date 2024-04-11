local ACF     = ACF
local GameMachines = ACF.Classes.GameMachines

GameMachines.Register("GM", {
	Name = "Gambling Machine",
})

do
	GameMachines.RegisterItem("BETTING-GM", "GM", {
		Name = "Betting Gambling Machine",
		Model = "",
		Sound = "",
		Mass = 300,
		MinCost = 100,
		MaxCost = 1000,
		Chances = 1 / 2,
		Ratio = 2,
		Preview = {
			FOV = 80,
		},
	})

	GameMachines.RegisterItem("SLOT-GM", "GM", {
		Name = "Slot Gambling Machine",
		Model = "",
		Sound = "",
		Mass = 300,
		MinCost = 1,
		MaxCost = 100,
		Chances = 1 / 4,
		Ratio = 4,
		Preview = {
			FOV = 80,
		},
	})

	GameMachines.RegisterItem("ROULETTE-GM", "GM", {
		Name = "Roulette Gambling Machine",
		Model = "",
		Sound = "",
		Mass = 300,
		MinCost = 100,
		MaxCost = 100000,
		Chances = 1 / 6,
		Ratio = 10,
		Preview = {
			FOV = 80,
		},
	})

	GameMachines.RegisterItem("SNAIL-GM", "GM", {
		Name = "Snail Crate Gambling Machine",
		Model = "",
		Sound = "",
		Mass = 300,
		MinCost = 1,
		MaxCost = 100000,
		Chances = 1 / 100,
		Ratio = 100,
		Preview = {
			FOV = 80,
		},
	})
end