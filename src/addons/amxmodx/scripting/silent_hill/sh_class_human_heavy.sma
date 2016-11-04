/*================================================================================

	----------------------------------
	-*- [ZP/SH] Class: Human: Heavy -*-
	----------------------------------

	This plugin is part of Zombie Plague Mod and is distributed under the
	terms of the GNU General Public License. Check ZP_ReadMe.txt for details.

================================================================================*/

#pragma dynamic 41
#pragma tabsize  0

#include <amxmodx>
#include <cstrike>
#include <zp50_core>
#include <zp50_class_human>

new const   heavyhuman_models[][] = { "sh_alex_trucker", "sh_travis_grady" };
const Float:heavyhuman_speed      = 0.75;

new g_HeavyClassId;

public plugin_precache ()
{
	register_plugin ("[ZP] Class: Human: Heavy", ZP_VERSION_STRING, "fymfifa");
	g_HeavyClassId = zp_class_human_register ("Heavy",
											  "Speed-- Gravity-- [250 Armor]",
											  100,
											  heavyhuman_speed,
											  1.15);

	for (new i = 0; i < sizeof heavyhuman_models; ++i)
		zp_class_human_register_model (g_HeavyClassId, heavyhuman_models[i]);
}

// after spawning a player and before applying class attributes
public zp_fw_core_spawn_post (id)
{
	if (!zp_core_is_zombie (id) && g_HeavyClassId == zp_class_human_get_next (id))
		cs_set_user_armor  (id, 250, CS_ARMOR_VESTHELM);
}
