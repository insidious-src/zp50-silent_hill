/*================================================================================

	---------------------------------
	-*- [ZP] Class: Monster: Nurse -*-
	---------------------------------

	This plugin is part of Zombie Plague Mod and is distributed under the
	terms of the GNU General Public License. Check ZP_ReadMe.txt for details.

================================================================================*/

#pragma dynamic 44
#pragma tabsize  0

#include <amxmodx>
#include <fakemeta>
#include <hamsandwich>
#include <cs_ham_bots_api>
#include <zp50_core>
#include <zp50_gamemodes>
#include <zp50_class_zombie>
#include <zp50_class_nemesis>

// Light Zombie Attributes
new const monster_name[]         =   "Nurse";
new const monster_info[]         =   "Fast & Ignores Armor";
new const monster_models[][]     = { "sh_nurse", "sh_nurse_2", "sh_nurse_alt" };
new const monster_clawmodels[][] = { "models/zombie_plague/v_knife_zombie.mdl" };

const monster_health          = 2000;
const Float:monster_speed     = 0.85;
const Float:monster_gravity   = 1.00;
const Float:monster_knockback = 1.05;

// Some constants
new g_ZombieClassID, cvar_armor_protect;

public plugin_precache ()
{
	new i;

	register_plugin ("[ZP] Class: Monster: Nurse", ZP_VERSION_STRING, "fymfifa");

	g_ZombieClassID = zp_class_zombie_register (monster_name,
                                                monster_info,
                                                monster_health,
                                                monster_speed,
                                                monster_gravity);

	zp_class_zombie_register_kb (g_ZombieClassID, monster_knockback);

	for (;      i < sizeof     monster_models; i++)
		zp_class_zombie_register_model (g_ZombieClassID, monster_models[i]);

	for (i = 0; i < sizeof monster_clawmodels; i++)
		zp_class_zombie_register_claw  (g_ZombieClassID, monster_clawmodels[i]);
}

public plugin_init ()
{
	RegisterHam     (Ham_TakeDamage, "player", "fw_take_damage_pre");
	RegisterHamBots (Ham_TakeDamage, "fw_take_damage_pre");

    if (!(cvar_armor_protect = get_cvar_pointer ("zp_human_armor_protect")))
        console_print(0,
            "[ZP50/SH] ERROR: Could not retrieve zp_human_armor_protect cvar pointer");
}

public fw_take_damage_pre (victim, inflictor, attacker, Float:damage, bits)
{
	if (attacker && victim != attacker     &&  zp_gamemodes_get_allow_infect ()  &&
		zp_core_is_zombie (attacker)       && !zp_core_is_zombie (victim)        &&
		g_ZombieClassID == zp_class_zombie_get_current (attacker)                &&
        !zp_class_nemesis_get (attacker)   && cvar_armor_protect                 &&
        get_pcvar_num (cvar_armor_protect) && get_armor_num (victim))
	{
		zp_core_infect (victim, attacker);
        return HAM_SUPERCEDE;
	}

	return HAM_IGNORED;
}

/*public zp_fw_core_infect_pre (victim, attacker)
{
	if (attacker && victim != attacker &&
        g_ZombieClassID    == zp_class_zombie_get_current (attacker))
	{
		zp_core_infect (victim, attacker);
	}

	return PLUGIN_CONTINUE;
}*/

static get_armor_num (victim)
{
    new armor;
    pev (victim, pev_armorvalue, armor);
    return armor;
}
