-- Localize global variables
local ACF     = ACF
local GameMachines = ACF.Classes.GameMachines

-- Register the arcade machine group
GameMachines.Register("Arcade", {
	Name = "Arcade Machine",
})

-- Register different arcade machine types under the arcade machine (AM) class
do
	GameMachines.RegisterItem("TETRIS-AM", "GM", {
		Name = "Tetris Arcade Machine",
		Model = "",
		Sound = "",
		Mass = 100,
		MinCost = 10,
		MaxCost = 10,
		Chances = 1,
		Ratio = 0,
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
		Chances = 1,
		Ratio = 0,
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
		Chances = 1,
		Ratio = 0,
		Preview = {
			FOV = 80,
		},
	})
end