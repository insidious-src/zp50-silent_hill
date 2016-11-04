/*================================================================================

	----------------------------------
	-*- [ZP] Class: Monster: Cultist -*-
	----------------------------------

	This plugin is part of Silent Hill ZP5 Mod and is distributed under the
	terms of the GNU General Public License. Check ZP_ReadMe.txt for details.

================================================================================*/

#pragma dynamic 50
#pragma tabsize  0

#include <amxmodx>
#include <fun>
#include <engine>
#include <hamsandwich>
#include <cs_ham_bots_api>

#define MAX_PLAYERS 32

enum _:BODY_PARTS
{
	FLESH = 0,
	MEAT,
	LEGBONE,
	SPINE,
	LUNG,
	HEAD
};

enum _:SPRITE_EFFECTS
{
	BLOOD_DROP = 0,
	BLOOD_SPRAY,
	SMOKE_STEAM
};

new const explode_sounds[][] =
{
	"debris/bustflesh1.wav",
	"debris/bustflesh2.wav",
	"turret/tu_fire1.wav",
	"ambience/biggun1.wav"
};

new const explode_models[BODY_PARTS][] =
{
	"models/fleshgibs.mdl",
	"models/gib_b_gib.mdl",
	"models/gib_legbone.mdl",
	"models/gib_b_bone.mdl",
	"models/gib_lung.mdl",
	"models/gib_skull.mdl"
};

new const explode_sprites[SPRITE_EFFECTS][] =
{
	"sprites/blood.spr",
	"sprites/bloodspray.spr",
	"sprites/steam1.spr"
};

new bool:exploded_info[MAX_PLAYERS+1], mdl_body_parts[BODY_PARTS], spr_effects[SPRITE_EFFECTS];

public plugin_precache ()
{
    new i;

	register_plugin ("Explosion Effects API", "1.0", "fymfifa");

	for (;      i < sizeof mdl_body_parts; ++i)
        mdl_body_parts[i] = precache_model (explode_models[i]);

	for (i = 0; i < sizeof    spr_effects; ++i)
        spr_effects[i]    = precache_model (explode_sprites[i]);

    for (i = 0; i < sizeof explode_sounds; ++i)
        precache_sound (explode_sounds[i]);
}

public plugin_init ()
{
	RegisterHam     (Ham_Spawn, "player", "fw_player_spawn_post", 1);
	RegisterHamBots (Ham_Spawn, "fw_player_spawn_post", 1);
}

public plugin_natives ()
{
	register_library ("explosion_effects_api");
	register_native  ("explode_player_body", "native_explode_player_body");
}

public fw_player_spawn_post (id)
{
	if (exploded_info[id] == false) return;

	set_user_rendering (id);
	exploded_info[id] = false;
}

public client_disconnect (id)
{
	if (exploded_info[id] == false) return;

	set_user_rendering (id);
	exploded_info[id] = false;
}

public native_explode_player_body (target,
								   parts_count/*    =  3*/,
							       splatter_count/* =  5*/,
						   		   blood_drops/*    = 10*/,
						   		   smoke_inst/*     =  3*/)
{
    new iOrigin[3];

	// get target position
    get_user_origin (target, iOrigin);

	// make player model disappear
	set_user_rendering (target, kRenderFxNone, 0, 0, 0, kRenderTransAlpha, 0);

	// emit explosion sound
	emit_sound (target, CHAN_STREAM,
				explode_sounds[random_num (0, sizeof explode_sounds - 1)],
				1.0, 0.5, 0, PITCH_NORM);

	// visualize explosion
	fx_draw_gib_body_burst (iOrigin, parts_count);
	fx_draw_blood_drops    (iOrigin, blood_drops);
	fx_draw_blood_splatter (iOrigin, splatter_count);
	fx_draw_smoke_steam    (iOrigin, smoke_inst);
	fx_draw_burn_decal     (iOrigin);

	exploded_info[target] = true;
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
		write_short (spr_effects[SMOKE_STEAM]);
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
	write_short (mdl_body_parts[HEAD]);
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
	write_short (mdl_body_parts[SPINE]);
	write_byte  (0);
	write_byte  (500);

	message_end ();

	// lung
	for(i = 0; i < 2; ++i)
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
		write_short (mdl_body_parts[LUNG]);
		write_byte  (0);
		write_byte  (500);

		message_end ();
	}

	// parts
	for(i = 0; i < num; ++i)
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
		write_short (mdl_body_parts[random_num (0, 2)]);
		write_byte  (0);
		write_byte  (500);

		message_end ();
	}

	// Blood
	for (i = 0; i < num; ++i)
	{
		x = random_num (-100, 100);
		y = random_num (-100, 100);
		z = random_num (0, 100);

		for (new j = 0; j < 3; ++j)
		{
			message_begin (MSG_BROADCAST, SVC_TEMPENTITY);

			write_byte  (TE_BLOODSPRITE);
			write_coord (origin[0] + (x * j));
			write_coord (origin[1] + (y * j));
			write_coord (origin[2] + (z * j));
			write_short (spr_effects[BLOOD_SPRAY]);
			write_short (spr_effects[BLOOD_DROP]);
			write_byte  (248);
			write_byte  (15);

			message_end ();
		}
	}
}
