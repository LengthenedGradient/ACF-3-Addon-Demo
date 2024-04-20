AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

-- Localize globals
local ACF          = ACF
local ActiveTicketCrates = ACF.AmmoTicketCrates
local Utilities    = ACF.Utilities
local TimerCreate  = timer.Create
local TimerExists  = timer.Exists
local HookRun      = hook.Run

-- Spawning and Updating
do
	local Classes   = ACF.Classes
	local WireIO    = Utilities.WireIO
	local Entities  = Classes.Entities

	-- Define wire inputs
	local Inputs = {
		"Luck (Set to a value between 0 and 1 to override the machine's luck)",
		"Ratio (Set to a positive number to override the machine's ratio)",
	}
	local Outputs = {
		"Luckiness (The chances of winning of the machine)",
		"Multiplier (The amount of the machine)",
		"Entity (The game machine itself.) [ENTITY]",
	}

	-- Here you should sanitize the input Data (e.g. Data.x = Safe(Data.x))
	local function VerifyData(Data)
		-- Well there's not much to check for ticket crates...
		do
			-- If the class has a verify data function, then 
			if Class.VerifyData then
				Class.VerifyData(Data, Class)
			end

			-- Call this hook after verifying data
			hook.Run("ACF_VerifyData", "acf_ticketcrate", Data, Class)
		end
	end

	local function UpdateTicketCrate(Entity, Data, Class, Weapon, Ammo)

	end

	function MakeTicketCrate(Player, Pos, Ang, Data)
		local CanSpawn = HookRun("ACF_PreEntitySpawn", "acf_ticketcrate", Player, Data)
		if CanSpawn == false then return false end

		local Crate = ents.Create("acf_ticketcrate")

		if not IsValid(Crate) then return end

		Player:AddCleanup("acf_ticketcrate", Crate)
		Player:AddCount("_acf_ticketcrate", Crate)

		Crate.ACF       = Crate.ACF or {}
		Crate.ACF.Model = Model

		Crate:SetMaterial("phoenix_storms/Future_vents")
		Crate:SetPlayer(Player)
		Crate:SetScaledModel(Model)
		Crate:SetAngles(Ang)
		Crate:SetPos(Pos)
		Crate:Spawn()
	end
end

do
	function ENT:Update(Data) end

	function ENT:ACF_Activate(Recalc) end

	function ENT:ACF_OnDamage(DmgResult, DmgInfo) end

	function ENT:Detonate() end

	function ENT:UpdateOverlayText() end
end