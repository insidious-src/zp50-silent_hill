/*================================================================================

	----------------------------------
	-*- [ZP] Class: Human: Raptor -*-
	----------------------------------

	This plugin is part of Zombie Plague Mod and is distributed under the
	terms of the GNU General Public License. Check ZP_ReadMe.txt for details.

================================================================================*/

#pragma dynamic 50

#include <amxmodx>
#include <cstrike>
#include <fakemeta>
#include <hamsandwich>
#include <zp50_core>
#include <zp50_class_human>

#define OFFSET_LINUX_WEAPONS               4
#define OFFSET_LINUX                       5
#define OFFSET_WEAPONOWNER                41
#define PDATA_SAFE                         2

// Raptor Human Attributes
new const sh_raptor_name[]      = "Weak Raptor";
new const sh_raptor_info[]      = "HP-- Speed++ Gravity- [Weak]";
new const sh_raptor_models[][]  = { "leet" };
static    Float:sh_raptor_speed = 1.28;

static const sh_raptor_health        = 50;
static const Float:sh_raptor_gravity = 1.08;

static Float:awp_speed    = 130.0;
static Float:g3sg1_speed  = 135.0;
static Float:m249_speed   = 125.0;
static Float:sg550_speed  = 135.0;
static Float:galil_speed  = 165.0;
static Float:m4a1_speed   = 145.0;
static Float:sg552_speed  = 165.0;
static Float:ak47_speed   = 145.0;
static Float:xm1014_speed = 165.0;
static Float:m3_speed     = 140.0;

new nHumanClassId;

public plugin_precache ()
{
	register_plugin ("[ZP] Class: Human: Weak Raptor", ZP_VERSION_STRING, "fymfifa");

	nHumanClassId = zp_class_human_register (sh_raptor_name, sh_raptor_info, sh_raptor_health, sh_raptor_speed, sh_raptor_gravity);

	for (new index = 0; index < sizeof sh_raptor_models; ++index)
		zp_class_human_register_model (nHumanClassId, sh_raptor_models[index]);
}

public plugin_init ()
{
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_awp",    "on_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_g3sg1",  "on_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_m249",   "on_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_sg550",  "on_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_galil",  "on_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_m4a1",   "on_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_sg552",  "on_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_ak47",   "on_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_xm1014", "on_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_m3",     "on_get_weapon_maxspeed");

	awp_speed    *= sh_raptor_speed;
	g3sg1_speed  *= sh_raptor_speed;
	m249_speed   *= sh_raptor_speed;
	sg550_speed  *= sh_raptor_speed;
	galil_speed  *= sh_raptor_speed;
	m4a1_speed   *= sh_raptor_speed;
	sg552_speed  *= sh_raptor_speed;
	ak47_speed   *= sh_raptor_speed;
	xm1014_speed *= sh_raptor_speed;
	m3_speed     *= sh_raptor_speed;
}

public on_get_weapon_maxspeed (ent)
{
	new const id = pev_valid (ent) != PDATA_SAFE ? -1 : get_pdata_cbase (ent, OFFSET_WEAPONOWNER, OFFSET_LINUX_WEAPONS);

	if (id <= 0 || zp_core_is_zombie (id) || nHumanClassId != zp_class_human_get_current (id))
		return HAM_HANDLED;

	switch (cs_get_weapon_id (ent))
	{
	case CSW_AWP:
		SetHamReturnFloat (awp_speed);
	case CSW_G3SG1:
		SetHamReturnFloat (g3sg1_speed);
	case CSW_M249:
		SetHamReturnFloat (m249_speed);
	case CSW_SG550:
		SetHamReturnFloat (sg550_speed);
	case CSW_GALIL:
		SetHamReturnFloat (galil_speed);
	case CSW_M4A1:
		SetHamReturnFloat (m4a1_speed);
	case CSW_SG552:
		SetHamReturnFloat (sg552_speed);
	case CSW_AK47:
		SetHamReturnFloat (ak47_speed);
	case CSW_XM1014:
		SetHamReturnFloat (xm1014_speed);
	case CSW_M3:
		SetHamReturnFloat (m3_speed);
	}

	return HAM_SUPERCEDE;
}
