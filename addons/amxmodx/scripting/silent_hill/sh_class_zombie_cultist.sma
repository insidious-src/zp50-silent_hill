/*================================================================================

	----------------------------------
	-*- [ZP] Class: Zombie: Cultist -*-
	----------------------------------

	This plugin is part of Silent Hill ZP5 Mod and is distributed under the
	terms of the GNU General Public License. Check ZP_ReadMe.txt for details.

================================================================================*/

//#pragma dynamic 90

#include <amxmodx>
#include <fun>
#include <xs>
#include <engine>
#include <cstrike>
#include <fakemeta>
#include <hamsandwich>
#include <zp50_core>
#include <zp50_gamemodes>
#include <zp50_class_zombie>
#include <zp50_class_nemesis>

#define OFFSET_LAST_HIT_GROUP      75
#define EXTRAOFFSET_PL_LINUX        5

// Raptor Zombie Attributes
new const zombieclass2_name[]         = "Cultist Monster";
new const zombieclass2_info[]         = "Explodes on death";
new const zombieclass2_models[][]     = { "jericho_cultist" };
new const zombieclass2_clawmodels[][] = { "models/zombie_plague/v_knife_cultist.mdl" };

// visual
new mdl_full_flesh[3], mdl_gib_legbone, mdl_gib_flesh, mdl_gib_meat, mdl_gib_head,
	spr_smoke_steam, spr_blood_drop, spr_blood_spray, mdl_gib_lung, mdl_gib_spine;

const zombieclass2_health          = 1100;
const Float:zombieclass2_speed     = 0.9;
const Float:zombieclass2_gravity   = 1.0;
const Float:zombieclass2_knockback = 1.35;

new const explode_sounds[3][] =
{
	"zombie_plague/explo_medium_09.wav",
	"zombie_plague/explo_medium_10.wav",
	"zombie_plague/explo_medium_14.wav"
};

new g_ZombieClassID, g_iMaxPlayers, cvar_max_damage, cvar_radius, cvar_armor_protect;

public plugin_precache ()
{
	static i;

	register_plugin ("[ZP] Class: Zombie: Cultist", ZP_VERSION_STRING, "fymfifa");
	g_ZombieClassID = zp_class_zombie_register (zombieclass2_name, zombieclass2_info, zombieclass2_health, zombieclass2_speed, zombieclass2_gravity);
	zp_class_zombie_register_kb (g_ZombieClassID, zombieclass2_knockback);

	for (i = 0; i < sizeof zombieclass2_models; ++i)
		zp_class_zombie_register_model (g_ZombieClassID, zombieclass2_models[i]);
	for (i = 0; i < sizeof zombieclass2_clawmodels; ++i)
		zp_class_zombie_register_claw (g_ZombieClassID, zombieclass2_clawmodels[i]);

	for (i = 0; i < sizeof explode_sounds; ++i) precache_sound (explode_sounds[i]);

	mdl_gib_lung    = precache_model ("models/GIB_Lung.mdl");
	mdl_gib_meat    = precache_model ("models/GIB_B_Gib.mdl");
	mdl_gib_head    = precache_model ("models/GIB_Skull.mdl");
	mdl_gib_flesh   = precache_model ("models/Fleshgibs.mdl");
	mdl_gib_spine   = precache_model ("models/GIB_B_Bone.mdl");
	mdl_gib_legbone = precache_model ("models/GIB_Legbone.mdl");
	spr_blood_drop  = precache_model ("sprites/blood.spr");
	spr_blood_spray = precache_model ("sprites/bloodspray.spr");
	spr_smoke_steam = precache_model ("sprites/steam1.spr");

	precache_model ("models/w_egon.mdl");

	mdl_full_flesh[0] = mdl_gib_flesh;
	mdl_full_flesh[1] = mdl_gib_meat;
	mdl_full_flesh[2] = mdl_gib_legbone;
	g_iMaxPlayers     = get_maxplayers ();
}

public plugin_init ()
{
	register_event ("DeathMsg", "on_player_death_post", "a");

	cvar_max_damage    = register_cvar ("sh_cultist_max_dmg", "120");
	cvar_radius        = register_cvar ("sh_cultist_radius",  "300");
	cvar_armor_protect = get_cvar_pointer ("zp_human_armor_protect");
}

public zp_fw_core_spawn_post (id)
{
	if (is_user_connected (id) && (g_ZombieClassID == zp_class_zombie_get_current (id) ||
		g_ZombieClassID == zp_class_zombie_get_next (id)))
		set_user_rendering (id); // restore normal rendering
}

public on_player_death_post ()
{
	new const ent = read_data (2);

	if (zp_gamemodes_get_current () == ZP_NO_GAME_MODE || !is_user_connected (ent) ||
		!zp_core_is_zombie (ent)  ||
		g_ZombieClassID != zp_class_zombie_get_current (ent) ||
		zp_class_nemesis_get (ent))
		return PLUGIN_CONTINUE;

	new Radius, ArmorProtect, MaxDamage;
	new iOrigin[3];

	// retrieve cvars
	Radius       = get_pcvar_num (cvar_radius);
	ArmorProtect = get_pcvar_num (cvar_armor_protect);
	MaxDamage    = get_pcvar_num (cvar_max_damage);

	// emit explosion sound
	emit_sound (ent, CHAN_STREAM, explode_sounds[random_num (0, 2)], 1.0, 0.5, 0,
				PITCH_NORM);

	get_user_origin (ent, iOrigin);

	// make cultist model disappear
	set_user_rendering (ent, kRenderFxNone, 0, 0, 0, kRenderTransAlpha, 0);

	// visualize cultist monster explosion
	fx_draw_gib_body_burst (iOrigin, 3);
	fx_draw_blood_splatter (iOrigin, 5);
	fx_draw_blood_drops (iOrigin, 15);
	fx_draw_smoke_steam (iOrigin, 3);
	fx_draw_burn_decal (iOrigin);

	// can be infected
	if (zp_gamemodes_get_allow_infect () && zp_core_get_human_count () > 1)
	{
		static CsArmorType:gArmorType, gArmor, Distance, Damage;

		for (new i = 1; i <= g_iMaxPlayers; ++i)
		{
			if (ent == i || !is_user_alive (i) || zp_core_is_zombie (i) ||
				(Distance = get_entity_distance (ent, i)) > Radius)
				continue; // jump to next user

			// calculate the damage taken within radius
			Damage = MaxDamage - floatround ((float (MaxDamage),
											  floatdiv (float (Distance), float (Radius))));

			gArmor = cs_get_user_armor (i, gArmorType);

			if (ArmorProtect && Damage < gArmor)
				cs_set_user_armor (i, gArmor - Damage, gArmorType);
			else
				zp_core_infect (i, ent);
		}
	}
	else
	{
		ham_radius_damage (ent, float (Radius), float (MaxDamage), 0);
	}

	return PLUGIN_CONTINUE;
}

static ham_radius_damage (ent, Float:radius, Float:damage, bits)
{
	new target = -1, Float:origin[3];
	pev (ent, pev_origin, origin);

	while ((target = find_ent_in_sphere (target, origin, radius)))
	{
		static Float:o[3];
		pev (target, pev_origin, o);

		xs_vec_sub (origin, o, o);

		// Recheck if the entity is in radius
		if (xs_vec_len (o) > radius) continue;

		set_pdata_int (target, OFFSET_LAST_HIT_GROUP, HIT_GENERIC, EXTRAOFFSET_PL_LINUX);
		ExecuteHamB (Ham_TakeDamage, target, ent, pev (ent, pev_owner),
		damage * (xs_vec_len (o) / radius), bits);
	}
}

static fx_draw_smoke_steam (origin[3], num)
{
	for (new e = 1; e < num; ++e)
	{
		message_begin (MSG_BROADCAST, SVC_TEMPENTITY);

		write_byte  (TE_SMOKE);
		write_coord (origin[0]);
		write_coord (origin[1]);
		write_coord (origin[2] + 256);
		write_short (spr_smoke_steam);
		write_byte  (random_num (80, 150)); // random smoke
		write_byte  (random_num (5, 10));

		message_end ();
	}
}

static fx_draw_burn_decal (origin[3])
{
	message_begin (MSG_BROADCAST, SVC_TEMPENTITY);

	write_byte  (TE_GUNSHOTDECAL);
	write_coord (origin[0]);
	write_coord (origin[1]);
	write_coord (origin[2]);
	write_short (0);
	write_byte  (random_num (46, 48)); // decal

	message_end ();
}

static fx_draw_blood_drops (origin[3], num)
{
	// small splash
	for (new j = 0; j < num; ++j)
	{
		message_begin (MSG_BROADCAST, SVC_TEMPENTITY);

		write_byte  (TE_WORLDDECAL);
		write_coord (origin[0] + random_num (-100, 100));
		write_coord (origin[1] + random_num (-100, 100));
		write_coord (origin[2]-36);
		write_byte  (random_num (190,197)); // blood decals

		message_end ();
	}

}

static fx_draw_blood_splatter (origin[3], num)
{
	// large splash
	for (new i = 0; i < num; ++i)
	{
		message_begin (MSG_BROADCAST, SVC_TEMPENTITY);

		write_byte  (TE_WORLDDECAL);
		write_coord (origin[0] + random_num (-50, 50));
		write_coord (origin[1] + random_num (-50, 50));
		write_coord (origin[2] - 36);
		write_byte  (random_num (204, 205)); // blood decals

		message_end ();
	}
}

static fx_draw_gib_body_burst (origin[3], num)
{
	static x, y, z, i;

	// gib explosion
	// head
	message_begin (MSG_BROADCAST, SVC_TEMPENTITY);

	write_byte  (TE_MODEL);
	write_coord (origin[0]);
	write_coord (origin[1]);
	write_coord (origin[2]);
	write_coord (random_num (-100, 100));
	write_coord (random_num (-100, 100));
	write_coord (random_num (100, 200));
	write_angle (random_num (0, 360));
	write_short (mdl_gib_head);
	write_byte  (0);
	write_byte  (500);

	message_end ();

	// spine
	message_begin (MSG_BROADCAST, SVC_TEMPENTITY);

	write_byte  (TE_MODEL);
	write_coord (origin[0]);
	write_coord (origin[1]);
	write_coord (origin[2]);
	write_coord (random_num (-100, 100));
	write_coord (random_num (-100, 100));
	write_coord (random_num (100, 200));
	write_angle (random_num (0, 360));
	write_short (mdl_gib_spine);
	write_byte  (0);
	write_byte  (500);

	message_end ();

	// lung
	for(i = 0; i < random_num (1, 2); ++i)
	{
		message_begin (MSG_BROADCAST, SVC_TEMPENTITY);

		write_byte  (TE_MODEL);
		write_coord (origin[0]);
		write_coord (origin[1]);
		write_coord (origin[2]);
		write_coord (random_num (-100, 100));
		write_coord (random_num (-100, 100));
		write_coord (random_num (100, 200));
		write_angle (random_num (0, 360));
		write_short (mdl_gib_lung);
		write_byte  (0);
		write_byte  (500);

		message_end ();
	}

	// parts, 5 times
	for(i = 0; i < 5; ++i)
	{
		message_begin (MSG_BROADCAST, SVC_TEMPENTITY);

		write_byte  (TE_MODEL);
		write_coord (origin[0]);
		write_coord (origin[1]);
		write_coord (origin[2]);
		write_coord (random_num (-100, 100));
		write_coord (random_num (-100, 100));
		write_coord (random_num (100, 200));
		write_angle (random_num (0, 360));
		write_short (mdl_full_flesh[random_num (0, 2)]);
		write_byte  (0);
		write_byte  (500);

		message_end ();
	}

	// Blood
	for(i = 0; i < num; ++i)
	{
		x = random_num (-100, 100);
		y = random_num (-100, 100);
		z = random_num (0, 100);

		for(new j = 0; j < 5; ++j)
		{
			message_begin (MSG_BROADCAST, SVC_TEMPENTITY);

			write_byte  (TE_BLOODSPRITE);
			write_coord (origin[0] + (x * j));
			write_coord (origin[1] + (y * j));
			write_coord (origin[2] + (z * j));
			write_short (spr_blood_spray);
			write_short (spr_blood_drop);
			write_byte  (248);
			write_byte  (15);

			message_end ();
		}
	}
}
