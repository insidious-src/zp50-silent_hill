/*================================================================================

	-------------------------------
	-*- [ZP] Class: Zombie: Fat -*-
	-------------------------------

	This plugin is part of Zombie Plague Mod and is distributed under the
	terms of the GNU General Public License. Check ZP_ReadMe.txt for details.

================================================================================*/

#pragma dynamic 50

#include <amxmodx>
#include <zp50_class_zombie>

// Vicus Monster Attributes
new const zombieclass4_name[] = "Vicus Monster"
new const zombieclass4_info[] = "Hardest to kill"
new const zombieclass4_models[][] = { "jericho_vicus" }
new const zombieclass4_clawmodels[][] = { "models/zombie_plague/v_knife_vicus.mdl" }
const zombieclass4_health = 3600
const Float:zombieclass4_speed = 0.75
const Float:zombieclass4_gravity = 1.1
const Float:zombieclass4_knockback = 0.3

new g_ZombieClassID

public plugin_precache()
{
	register_plugin("[ZP] Class: Zombie: Vicus", ZP_VERSION_STRING, "fymfifa")

	new index

	g_ZombieClassID = zp_class_zombie_register(zombieclass4_name, zombieclass4_info, zombieclass4_health, zombieclass4_speed, zombieclass4_gravity)
	zp_class_zombie_register_kb(g_ZombieClassID, zombieclass4_knockback)
	for (index = 0; index < sizeof zombieclass4_models; index++)
		zp_class_zombie_register_model(g_ZombieClassID, zombieclass4_models[index])
	for (index = 0; index < sizeof zombieclass4_clawmodels; index++)
		zp_class_zombie_register_claw(g_ZombieClassID, zombieclass4_clawmodels[index])
}
