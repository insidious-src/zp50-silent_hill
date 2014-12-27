/*================================================================================

	---------------------------------
	-*- [ZP] Class: Zombie: Light -*-
	---------------------------------

	This plugin is part of Zombie Plague Mod and is distributed under the
	terms of the GNU General Public License. Check ZP_ReadMe.txt for details.

================================================================================*/

//#pragma dynamic 50

#include <amxmodx>
#include <fakemeta>
#include <hamsandwich>
#include <cs_ham_bots_api>
#include <zp50_core>
#include <zp50_gamemodes>
#include <zp50_class_zombie>

#define DMG_HEGRENADE (1<<24)

// Light Zombie Attributes
new const zombieclass3_name[]         = "Nurse Monster";
new const zombieclass3_info[]         = "Ignores Armor";
new const zombieclass3_models[][]     = { "sh_nurse" };
new const zombieclass3_clawmodels[][] = { "models/zombie_plague/v_knife_zombie.mdl" };

const zombieclass3_health          = 2000;
const Float:zombieclass3_speed     = 0.80;
const Float:zombieclass3_gravity   = 1.00;
const Float:zombieclass3_knockback = 1.05;

// Some constants
new g_ZombieClassID, cvar_armor_protect;

public plugin_precache ()
{
	register_plugin ("[ZP] Class: Zombie: Nurse", ZP_VERSION_STRING, "fymfifa");

	g_ZombieClassID = zp_class_zombie_register (zombieclass3_name, zombieclass3_info, zombieclass3_health, zombieclass3_speed, zombieclass3_gravity);
	zp_class_zombie_register_kb (g_ZombieClassID, zombieclass3_knockback);

	for (new index = 0; index < sizeof zombieclass3_models; index++)
		zp_class_zombie_register_model (g_ZombieClassID, zombieclass3_models[index]);

	for (new index = 0; index < sizeof zombieclass3_clawmodels; index++)
		zp_class_zombie_register_claw (g_ZombieClassID, zombieclass3_clawmodels[index]);
}

public plugin_init ()
{
	RegisterHam (Ham_TakeDamage, "player", "fw_take_damage_pre");
	RegisterHamBots (Ham_TakeDamage, "fw_take_damage_pre");
	cvar_armor_protect = get_cvar_pointer ("zp_human_armor_protect");
}

public fw_take_damage_pre (victim, inflictor, attacker, Float:damage, bits)
{
	if (victim != attacker && is_user_alive (attacker) && zp_gamemodes_get_allow_infect () &&
		zp_core_is_zombie (attacker) && !zp_core_is_zombie (victim) &&
		g_ZombieClassID == zp_class_zombie_get_current (attacker))
	{
		static Float:armor;
		pev (victim, pev_armorvalue, armor);

		if (armor && get_pcvar_num (cvar_armor_protect))
			zp_core_infect (victim, attacker);

		return HAM_SUPERCEDE;
	}

	return HAM_IGNORED;
}
