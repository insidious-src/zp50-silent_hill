/*================================================================================

	----------------------------------
	-*- [ZP] Class: Monster: Smog -*-
	----------------------------------

	This plugin is part of Silent Hill ZP5 Mod and is distributed under the
	terms of the GNU General Public License. Check ZP_ReadMe.txt for details.

================================================================================*/

#pragma dynamic 530
#pragma tabsize  0

#include <amxmodx>
#include <xs>
#include <engine>
#include <cstrike>
#include <fakemeta>
#include <hamsandwich>
#include <cs_ham_bots_api>
#include <zp50_core>
#include <zp50_gamemodes>
#include <zp50_class_zombie>
#include <zp50_class_survivor>
#include <zp50_class_nemesis>

#define OFFSET_LAST_HIT_GROUP 75
#define EXTRAOFFSET_PL_LINUX   5

new const monster_name[]         =   "Smog";
new const monster_info[]         =   "Fast & Explodes on Death";
new const monster_models[][]     = { "jericho_cultist", "sh_smog" };
new const monster_clawmodels[][] = { "models/zombie_plague/v_knife_cultist.mdl" };

new max_damage, Float:range;

const monster_health          = 1100;
const Float:monster_speed     = 0.9;
const Float:monster_gravity   = 1.0;
const Float:monster_knockback = 1.35;

new g_ZombieClassID, cvar_max_damage, cvar_range, cvar_armor_protect;

public plugin_precache ()
{
	new i;

	register_plugin ("[ZP] Class: Monster: Smog", ZP_VERSION_STRING, "fymfifa");

	g_ZombieClassID = zp_class_zombie_register (monster_name,   monster_info,
                                                monster_health, monster_speed,
                                                monster_gravity);

	zp_class_zombie_register_kb (g_ZombieClassID, monster_knockback);

	for (;      i < sizeof     monster_models; ++i)
		zp_class_zombie_register_model (g_ZombieClassID, monster_models[i]);

	for (i = 0; i < sizeof monster_clawmodels; ++i)
        zp_class_zombie_register_claw (g_ZombieClassID, monster_clawmodels[i]);
}

public plugin_init ()
{
    register_event  ("HLTV", "fw_round_start_pre", "a", "1=0", "2=0");
    RegisterHam     (Ham_Killed, "player", "fw_player_death_pre");
    RegisterHamBots (Ham_Killed, "fw_player_death_pre");

    cvar_max_damage = register_cvar ("sh_smog_max_dmg", "120"  );
    cvar_range      = register_cvar ("sh_smog_range" , "300.0");

    if (!(cvar_armor_protect = get_cvar_pointer ("zp_human_armor_protect")))
        console_print (0,
            "[ZP50/SH] ERROR: Could not retrieve zp_human_armor_protect cvar pointer");
}

// just before spawning all players on new round
public fw_round_start_pre ()
{
    range      = get_pcvar_float (cvar_range);
    max_damage = get_pcvar_num   (cvar_max_damage);
}

public fw_player_death_pre (victim, attacker, shouldgib)
{
    if (!zp_core_is_zombie (victim) || zp_class_nemesis_get (victim) ||
        g_ZombieClassID != zp_class_zombie_get_current      (victim))
        return PLUGIN_CONTINUE;

    set_task (0.2, "affect_everything_in_range_of", victim);

    // explodes to gibs
    SetHamParamInteger (3, 2);

    return PLUGIN_CONTINUE;
}

public affect_everything_in_range_of (attacker)
{
    new victim = -1, Float:attacker_origin[3], Float:victim_origin[3], Float:damage;
    pev (attacker, pev_origin, attacker_origin);

    while ((victim = find_ent_in_sphere (victim, attacker_origin, range)) != 0)
    {
        if (is_user_connected (victim))
        {
            if (zp_gamemodes_get_current () == ZP_NO_GAME_MODE ||
                zp_core_is_zombie (victim))
                continue;

            // get victim position
            pev (victim, pev_origin, victim_origin);

            // calculate distance from attacker
            xs_vec_sub (attacker_origin, victim_origin, victim_origin);

            // calculate damage
            damage = max_damage * (xs_vec_len (victim_origin) / range);

            if (cvar_armor_protect && get_pcvar_num (cvar_armor_protect))
            {
                new Float:armor;

                pev (victim, pev_armorvalue, armor);
                damage -= armor;

                if (damage <= 0.0)
                {
                    set_pev (victim, pev_armorvalue, armor);
                    continue;
                }
                else
                    cs_set_user_armor (victim, 0, CS_ARMOR_NONE);
            }

            if (!zp_core_is_last_human (victim) && zp_gamemodes_get_allow_infect ())
            {
                zp_core_infect (victim, attacker);
                continue;
            }
        }

        set_pdata_int (victim, OFFSET_LAST_HIT_GROUP, HIT_GENERIC, EXTRAOFFSET_PL_LINUX);

        ExecuteHamB (Ham_TakeDamage, victim, attacker, pev (attacker, pev_owner),
                     damage, DMG_GENERIC);
    }
}
