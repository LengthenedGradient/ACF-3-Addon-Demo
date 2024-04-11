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
		Cost = 0,
		Preview = {
			FOV = 80,
		},
	})

	GameMachines.RegisterItem("PACMAN-AM", "GM", {
		Name = "Pac-Man Arcade Machine",
		Model = "",
		Sound = "",
		Mass = 100,
		Cost = 0,
		Preview = {
			FOV = 80,
		},
	})

	GameMachines.RegisterItem("SOLITAIRE-AM", "GM", {
		Name = "Solitaire Arcade Machine",
		Model = "",
		Sound = "",
		Mass = 100,
		Cost = 0,
		Preview = {
			FOV = 80,
		},
	})
end