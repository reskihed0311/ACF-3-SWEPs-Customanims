AddCSLuaFile()

include("weapon_acf_base.lua")

SWEP.Base                   = "weapon_acf_base"
SWEP.PrintName              = "ACF M4A1"
SWEP.UseHands               = true
SWEP.ViewModel              = "models/ACF3/ar/acf3_m4.mdl"

SWEP.CustomAnim = true
SWEP.AimAnim = ACT_VM_IDLE   -- Different animation when aiming
SWEP.IdleAnim = ACT_VM_IDLE              -- Animation when not aiming

SWEP.ShotSound				= Sound(")acf_base/weapons/m4/fire_1.wav")
SWEP.WorldModel             = "models/weapons/w_rif_m4a1.mdl"
SWEP.HoldType               = "ar2"

SWEP.Slot                   = 2
SWEP.SlotPos                = 0

SWEP.Spawnable              = true
SWEP.AdminOnly              = false

SWEP.m_WeaponDeploySpeed    = 1.1
SWEP.Spread                 = 0.5
SWEP.RecoilMod              = 0.8

SWEP.Primary.ClipSize       = 30
SWEP.Primary.DefaultClip    = 30
SWEP.Primary.Ammo           = "SMG1"
SWEP.Primary.Automatic      = true
SWEP.Primary.Delay          = 0.075
SWEP.FiremodeSetting		= 2

SWEP.Caliber                = 5.56
SWEP.ACFProjMass            = 0.004
SWEP.ACFType                = "AP"
SWEP.ACFMuzzleVel           = 800
SWEP.Tracer                 = 1

SWEP.IronSightPos           = Vector(-2.78, -3.556, 0.079)
SWEP.IronSightAng           = Angle(0, 0, 0)

SWEP.Zoom					= 1.2
SWEP.Recovery				= 5

SWEP:SetupACFBullet()

-- Remove the custom PrimaryAttack override to let the base class handle it properly
-- The base class already handles animations correctly



sound.Add( {
	name = "acf3.cstm_Magout",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "acf_base/weapons/m4/magout.wav"
} )

sound.Add( {
	name = "acf3.cstm_Magin",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "acf_base/weapons/m4/magin.wav"
} )


sound.Add( {
	name = "acf3.cstm_Magtap",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "acf_base/weapons/m4/magclick.wav"
} )


sound.Add( {
	name = "acf3.cstm_Bolttap",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "acf_base/weapons/m4/bolt_smack1.wav"
} )

