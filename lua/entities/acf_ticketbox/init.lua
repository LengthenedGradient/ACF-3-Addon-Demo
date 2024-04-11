AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

local Inputs = {
    "Luck (Set to a value between 0 and 1 to override the machine's luck)",
    "Ratio (Set to a positive number to override the machine's ratio)",
}
local Outputs = {
    "Luckiness (The chances of winning of the machine)",
    "Multiplier (The amount of the machine)",
    "Entity (The game machine itself.) [ENTITY]",
}

local function VerifyData(Data) end

local function UpdateGameMachine(Entity, Data, Class, Weapon, Ammo) end

function MakeACF_Ammo(Player, Pos, Ang, Data) end

function ENT:Update(Data) end

function ENT:ACF_Activate(Recalc) end

function ENT:ACF_OnDamage(DmgResult, DmgInfo) end

function ENT:Detonate() end

function ENT:UpdateOverlayText() end