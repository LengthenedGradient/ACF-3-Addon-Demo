local ACF     = ACF
local GameMachines = ACF.Classes.GameMachines

GameMachines.Register("Arcade", {
	Name = "Arcade Machine",
})

do
	GameMachines.RegisterItem("TETRIS-AM", "GM", {
		Name = "Tetris Arcade Machine",
		Model = "",
		Sound = "",
		Mass = 100,
		MinCost = 10,
		MaxCost = 10,
		Preview = {
			FOV = 80,
		},
	})

	GameMachines.RegisterItem("PACMAN-AM", "GM", {
		Name = "Pac-Man Arcade Machine",
		Model = "",
		Sound = "",
		Mass = 100,
		MinCost = 10,
		MaxCost = 10,
		Preview = {
			FOV = 80,
		},
	})

	GameMachines.RegisterItem("MARIO-AM", "GM", {
		Name = "Mario Arcade Machine",
		Model = "",
		Sound = "",
		Mass = 100,
		MinCost = 10,
		MaxCost = 10,
		Preview = {
			FOV = 80,
		},
	})
end