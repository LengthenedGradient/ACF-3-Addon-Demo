local ACF     = ACF
local Classes = ACF.Classes
local GameMachines = Classes.GameMachines
local Entries = {}

function GameMachines.Register(ID, Data)
	local Group = Classes.AddGroup(ID, Entries, Data)

	if not Group.LimitConVar then
		Group.LimitConVar = {
			Name   = "_acf_gamemachine",
			Amount = 16,
			Text   = "Maximum amount of ACF game machines a player can create."
		}
	end

	Classes.AddSboxLimit(Group.LimitConVar)

	return Group
end

function GameMachines.RegisterItem(ID, ClassID, Data)
	local Class = Classes.AddGroupItem(ID, ClassID, Entries, Data)
	return Class
end