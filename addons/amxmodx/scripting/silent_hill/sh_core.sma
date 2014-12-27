/*================================================================================

	---------------------------------
	-*- [ZP] plugin: Silent Hill -*-
	---------------------------------

	This plugin is an extension to Zombie Plague Mod and is distributed under the
	terms of the GNU General Public License.

================================================================================*/

#pragma dynamic 50

#define PLUGIN_NAME "[ZP] Silent Hill Core"
#define AUTHOR      "fymfifa"
#define VERSION     "1.0"

#include <amxmodx>
#include <zp50_gamemodes>

// RGB Colors for each Hudmessage Mode
// See here some RGB Colors: http://web.njit.edu/~kevin/rgb.txt.html
new const rgb_hud_colors[][3] =
{
	// R    G    B
	{255,  20, 147},        // No mode Started
	{0,   100,   0},        // Normal Infection, single round
	{255,   0,   0},        // Nemesis Mode (zombie boss)
	{255,   0,   0},        // Assasin Mode (zombie boss)
	{0,   191, 255},        // Survivor Mode (human boss)
	{0,     0, 255},        // Sniper Mode (human boss)
	{255, 255,   0},        // Swarm round (no infections)
	{0,    69,   0},        // Multiple Infection (like single round, but, more than 1 zombie)
	{255,   0,   0},        // Plague round (nemesis & zombies vs. survivors & humans)
	{255,   0,   0},        // LNJ round (nemesis & zombies vs. survivors & humans)
	{255,  20, 147}         // An unofficial mode (edited/created/modified by user)
};

// X Hudmessage Position ( --- )
const Float:HUD_MODE_X = 0.015;

// Y Hudmessage Position ( ||| )
const Float:HUD_MODE_Y = 0.16;

// Time at which the Hudmessage is displayed. (when user is puted into the Server)
const Float:START_TIME = 3.0;

new const gSilentHillSirenSnd[] = "silent_hill/siren.wav";
new       g_iMaxPlayers, gMode = ZP_NO_GAME_MODE, gHudSync, cvar_hud_mode;

public plugin_precache ()
{
	precache_sound (gSilentHillSirenSnd);
	g_iMaxPlayers = get_maxplayers ();
}

public plugin_init ()
{
	register_plugin (PLUGIN_NAME, AUTHOR, VERSION);
	cvar_hud_mode = register_cvar ("sh_hud_gamemode", "1");
	gHudSync      = CreateHudSyncObj ();
}

public zp_fw_gamemodes_choose_post (game_mode_id, target_player)
{
	if (game_mode_id > ZP_NO_GAME_MODE)
		client_cmd (0, "spk ^"sound/%s^"", gSilentHillSirenSnd);
}

public zp_fw_gamemodes_start (game_mode_id)
{
	if (!get_pcvar_num (cvar_hud_mode) || game_mode_id < 0) return;
	gMode = game_mode_id;

	for (new i = 1; i <= g_iMaxPlayers; ++i)
	{
		if (is_user_connected (i) && !is_user_bot (i))
			set_task (START_TIME, "display_gamemode", i, "", 0, "b");
	}
}

public zp_fw_gamemodes_end (game_mode_id)
{
	if (!get_pcvar_num (cvar_hud_mode) || game_mode_id  < 0) return;

	for (new i = 1; i <= g_iMaxPlayers; ++i)
	{
		if (task_exists (i)) remove_task (i);
	}

	gMode = ZP_NO_GAME_MODE;
}

public client_putinserver (id)
{
	if (gMode >= 0 && !is_user_bot (id)) set_task (START_TIME, "display_gamemode", id, "", 0, "b");
}

public client_disconnect (id)
{
	if (task_exists (id)) remove_task (id);
}

public display_gamemode (id)
{
	static ModeName[32];

	if (zp_gamemodes_get_name (gMode, ModeName, 31))
	{
		// Hud Options
		set_hudmessage (rgb_hud_colors[gMode][0], rgb_hud_colors[gMode][1], rgb_hud_colors[gMode][2],
						HUD_MODE_X, HUD_MODE_Y, 0, 6.0, 12.0, 0.5, 0.6);

		// Now the hud appears
		ShowSyncHudMsg (id, gHudSync, "%s: %s", "Silent Hill Dimension", ModeName);
	}
}
