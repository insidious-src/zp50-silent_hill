/*================================================================================

	----------------------------------
	-*- [ZP] Class: Human: Weak Raptor -*-
	----------------------------------

	This plugin is part of Zombie Plague Mod and is distributed under the
	terms of the GNU General Public License. Check ZP_ReadMe.txt for details.

================================================================================*/

#pragma dynamic 42
#pragma tabsize  0

#include <amxmodx>
#include <cstrike>
#include <fakemeta>
#include <hamsandwich>
#include <zp50_core>
#include <zp50_class_human>

#define OFFSET_LINUX_WEAPONS  4
#define OFFSET_LINUX          5
#define OFFSET_WEAPONOWNER   41
#define PDATA_SAFE            2

new Float:weapon_max_speed[33] =
{
    1.25,  // speed factor
    0.0,   // P228
    0.0,   // unused
    0.0,   // SCOUT
    0.0,   // HEGRENADE
    165.0, // XM1014
    0.0,   // C4
    0.0,   // MAC10
    0.0,   // AUG
    0.0,   // SMOKEGRENADE
    0.0,   // ELITE
    0.0,   // FIVESEVEN
    0.0,   // UMP45
    135.0, // SG550
    165.0, // GALIL
    170.0, // FAMAS
    0.0,   // USP
    0.0,   // GLOCK18
    130.0, // AWP
    0.0,   // MP5NAVY
    125.0, // M249
    145.0, // M3
    145.0, // M4A1
    0.0,   // TMP
    135.0, // G3SG1
    0.0,   // FLASHBANG
    0.0,   // DEAGLE
    165.0, // SG552
    145.0, // AK47
    0.0    // KNIFE
    0.0,   // P90
    0.0,   // VEST
    0.0    // VESTHELM
};

new const human_class_models[][] = { "sh_heather_mason" };
new nHumanClassId;

public plugin_precache ()
{
	register_plugin ("[ZP] Class: Human: Weak Raptor", "1.0", "fymfifa");

	nHumanClassId = zp_class_human_register ("Weak Raptor",
                                             "HP-- Speed++ Gravity- [Weak]",
                                             50,
                                             weapon_max_speed[0],
                                             1.08);

	for (new i = 0; i < sizeof human_class_models; ++i)
		zp_class_human_register_model (nHumanClassId, human_class_models[i]);
}

public plugin_init ()
{
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_awp",    "fw_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_g3sg1",  "fw_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_m249",   "fw_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_sg550",  "fw_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_galil",  "fw_get_weapon_maxspeed");
    RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_famas",  "fw_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_m4a1",   "fw_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_sg552",  "fw_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_ak47",   "fw_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_xm1014", "fw_get_weapon_maxspeed");
	RegisterHam (Ham_CS_Item_GetMaxSpeed, "weapon_m3",     "fw_get_weapon_maxspeed");
}

public fw_get_weapon_maxspeed (ent)
{
	new const id = pev_valid (ent) != PDATA_SAFE ?
                                      -1 :
                                      get_pdata_cbase (ent, OFFSET_WEAPONOWNER, OFFSET_LINUX_WEAPONS);

	if (id <= 0 || zp_core_is_zombie (id) || nHumanClassId != zp_class_human_get_current (id))
		return HAM_HANDLED;

    SetHamReturnFloat (weapon_max_speed[cs_get_weapon_id (ent)] * weapon_max_speed[0]);
	return HAM_SUPERCEDE;
}
