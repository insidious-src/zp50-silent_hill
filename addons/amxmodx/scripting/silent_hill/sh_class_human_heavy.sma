/*================================================================================

	----------------------------------
	-*- [ZP] Class: Human: Classic -*-
	----------------------------------

	This plugin is part of Zombie Plague Mod and is distributed under the
	terms of the GNU General Public License. Check ZP_ReadMe.txt for details.

================================================================================*/

#pragma dynamic 50

#include <amxmodx>
#include <cstrike>
#include <zp50_gamemodes>
#include <zp50_class_human>

// Classic Human Attributes
new const humanclass3_name[] = "Heavy";
new const humanclass3_info[] = "Speed-- Gravity-- [250 Armor]";
new const humanclass3_models[][] = { "guerilla" };

const humanclass3_health = 100;
const Float:humanclass3_speed = 0.75;
const Float:humanclass3_gravity = 1.15;

new g_HeavyClassId, g_iMaxPlayers, g_iPlayerArmor[33];

public plugin_precache ()
{
	register_plugin ("[ZP] Class: Human: Heavy", ZP_VERSION_STRING, "fymfifa");
	g_HeavyClassId = zp_class_human_register (humanclass3_name, humanclass3_info, humanclass3_health, humanclass3_speed, humanclass3_gravity);

	for (new i = 0; i < sizeof humanclass3_models; ++i)
		zp_class_human_register_model (g_HeavyClassId, humanclass3_models[i]);

	g_iMaxPlayers = get_maxplayers ();
}

public plugin_init ()
{
	register_event ("HLTV", "on_round_start_pre", "a", "1=0", "2=0");
}

// just before spawning all players on new round
public on_round_start_pre ()
{
	static CsArmorType:dummy;

	for (new i = 1; i <= g_iMaxPlayers; ++i)
	{
		if (is_user_connected (i) && g_HeavyClassId != zp_class_human_get_next (i))
		{
			if (g_HeavyClassId == zp_class_human_get_current (i))
				g_iPlayerArmor[i] = 0;
			else
				g_iPlayerArmor[i] = cs_get_user_armor (i, dummy);
		}
	}
}

// after spawning a player and before applying class attributes
public zp_fw_core_spawn_post (id)
{
	if (is_user_alive (id)) cs_set_user_armor (id, g_iPlayerArmor[id], CS_ARMOR_VESTHELM);
}

public zp_fw_class_human_select_post (id, classid)
{
	if (classid == g_HeavyClassId) g_iPlayerArmor[id] = 250;
	else g_iPlayerArmor[id] = 0;
}

public client_disconnect (id)
{
	g_iPlayerArmor[id] = 0;
}
