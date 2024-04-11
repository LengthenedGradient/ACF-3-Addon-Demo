-- Localize global variables
local ACF     = ACF
local Classes = ACF.Classes
local GameMachines = Classes.GameMachines
local Entries = {}

--- This handles when we want to register a game machine group (e.g. arcade/gambling)
function GameMachines.Register(ID, Data)
	local Group = Classes.AddGroup(ID, Entries, Data)

	-- If Group.LimitConVar isn't specified, set it to use this by default
	if not Group.LimitConVar then
		Group.LimitConVar = {
			Name   = "_acf_gamemachine",
			Amount = 16,
			Text   = "Maximum amount of ACF game machines a player can create."
		}
	end

	Classes.AddSboxLimit(Group.LimitConVar) -- Actually applies the sbox limit

	return Group
end

--- This handles when we want to register a game machine type (e.g. roulette/crate/tetris)
function GameMachines.RegisterItem(ID, ClassID, Data)
	local Class = Classes.AddGroupItem(ID, ClassID, Entries, Data)
	return Class
end