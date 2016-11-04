#if defined _explosion_effects_api_included
  #endinput
#endif
#define _explosion_effects_api_included

#if AMXX_VERSION_NUM >= 175
	#pragma reqlib explosion_effects_api
	#if !defined AMXMODX_NOAUTOLOAD
		#pragma loadlib explosion_effects_api
	#endif
#else
	#pragma library explosion_effects_api
#endif


/**
 * Explodes player's body. Doesn't check for valid index.
 *
 * @param target          Player index.
 * @param parts_count     How many flesh parts to burst.
 * @param splatter_count  How many blood splatters.
 * @param blood_drops     How many blood drops.
 * @param smoke_inst      How many smoke instances.
 * @return                Nada.
 */
native explode_player_body (target, parts_count = 3, splatter_count = 5, blood_drops = 10, smoke_inst = 3);
