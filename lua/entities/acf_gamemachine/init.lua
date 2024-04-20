AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

local Inputs = {
    "Dump (If set to a non-zero value, it will eject its contents)",
}
local Outputs = {
    "Tickets (Tickets left in this box.)",
    "Entity (The ticket box itself.) [ENTITY]",
}

local function VerifyData(Data) end

local function UpdateGameMachine(Entity, Data, Class, Weapon, Ammo) end

function UpdateGameMachine(Player, Pos, Ang, Data) end

function ENT:Update(Data) end

function ENT:ACF_Activate(Recalc) end

function ENT:ACF_OnDamage(DmgResult, DmgInfo) end

function ENT:Detonate() end

function ENT:UpdateOverlayText() end