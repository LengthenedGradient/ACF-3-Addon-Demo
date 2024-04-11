local ACF     = ACF
local GameMachines = ACF.Classes.GameMachines

GameMachines.Register("GM", {
	Name = "Gambling Machine",
})

do
	GameMachines.RegisterItem("SLOT-GM", "GM", {
		Name = "Slot Gambling Machine",
		Model = "",
		Sound = "",
		Mass = 300,
		Cost = 0,
		Preview = {
			FOV = 80,
		},
	})

	GameMachines.RegisterItem("BETTING-GM", "GM", {
		Name = "Betting Gambling Machine",
		Model = "",
		Sound = "",
		Mass = 300,
		Cost = 0,
		Preview = {
			FOV = 80,
		},
	})

	GameMachines.RegisterItem("ROULETTE-GM", "GM", {
		Name = "Roulette Gambling Machine",
		Model = "",
		Sound = "",
		Mass = 300,
		Cost = 0,
		Preview = {
			FOV = 80,
		},
	})
end