$modelname "../../../../deploy/models/player/jericho_vicus/jericho_vicus.mdl"
$cd "."
$cdtexture "."
$scale 1.0
$cliptotextures


$bbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 0.000000


//reference mesh(es)
$body "studio" "v1"

$body "studio" "v2"

$body "studio" "v3"


// 12 hit box(es)
$hbox 0 "Bip01 L Thigh" -1.010000 -11.660000 -13.940000 12.470000 11.430000 3.500000
$hbox 0 "Bip01 L Calf" 0.000000 -5.760000 -8.650000 11.460000 5.410000 2.420000
$hbox 0 "Bip01 L Foot" 0.000000 -4.150000 -6.720000 5.130000 6.806704 0.440000
$hbox 0 "Bip01 L Toe0" -2.950000 -0.640000 -7.430000 2.190000 2.470000 0.720000
$hbox 0 "Bip01 R Thigh" -0.610000 -10.080000 -3.780000 13.450000 11.460000 13.830000
$hbox 0 "Bip01 R Calf" 0.000000 -5.730000 -2.770000 11.650000 4.170000 8.280000
$hbox 0 "Bip01 R Foot" 0.000000 -4.140000 -0.950000 5.420000 6.806704 6.180000
$hbox 0 "Bip01 R Toe0" -2.930000 -0.890000 -1.260000 2.200000 2.510000 6.880000
$hbox 0 "Bip01 Spine" -16.910000 -17.400000 -20.309999 17.080000 23.770000 20.209999
$hbox 0 "Bip01 Spine1" -15.930000 -16.820000 -40.389999 25.180000 15.790000 39.459999
$hbox 0 "Bone_BEA_R" -14.610000 -13.360000 0.000000 1.010000 8.010000 11.170000
$hbox 0 "Bone_BEA_L" -1.530000 -9.160000 -11.320000 17.600000 14.740000 3.910000

// 111 animation sequence(s)
$sequence "Koshak" "Koshak" fps 24 loop
$sequence "idle1" "idle1" fps 30 loop ACT_IDLE 1
$sequence "crouch_idle" "crouch_idle" fps 30 loop ACT_CROUCHIDLE 1
$sequence "walk" "walk" LX fps 30 loop ACT_WALK 1
$sequence "run" "run" LX fps 30 loop ACT_RUN 1
$sequence "crouchrun" "crouchrun" LX fps 30 loop ACT_CROUCH 1
$sequence "jump" "jump" fps 30 ACT_HOP 1
$sequence "longjump" "longjump" fps 30 ACT_LEAP 1
$sequence "swim" "swim" fps 30 loop ACT_SWIM 1
$sequence "treadwater" "treadwater" fps 30 loop ACT_HOVER 1
$sequence "crouch_aim_carbine" "crouch_aim_carbine" fps 30 loop
$sequence "crouch_shoot_carbine" "crouch_shoot_carbine" fps 15 { event 5001 0 "40" }
$sequence "crouch_reload_carbine" "crouch_reload_carbine" fps 30
$sequence "ref_aim_carbine" "ref_aim_carbine" fps 30 loop
$sequence "ref_shoot_carbine" "ref_shoot_carbine" fps 15 { event 5001 0 "40" }
$sequence "ref_reload_carbine" "ref_reload_carbine" fps 30
$sequence "crouch_aim_onehanded" "crouch_aim_onehanded" fps 30 loop
$sequence "crouch_shoot_onehanded" "crouch_shoot_onehanded" fps 15 { event 5001 0 "10" }
$sequence "crouch_reload_onehanded" "crouch_reload_onehanded" fps 30
$sequence "ref_aim_onehanded" "ref_aim_onehanded" fps 30 loop
$sequence "ref_shoot_onehanded" "ref_shoot_onehanded" fps 15 { event 5001 0 "10" }
$sequence "ref_reload_onehanded" "ref_reload_onehanded" fps 30
$sequence "crouch_aim_dualpistols_1" "crouch_aim_dualpistols_1" fps 10 loop
$sequence "crouch_shoot_dualpistols_1" "crouch_shoot_dualpistols_1" fps 30 { event 5011 0 "10" }
$sequence "crouch_shoot2_dualpistols_1" "crouch_shoot2_dualpistols_1" fps 30 { event 5001 0 "10" }
$sequence "crouch_reload_dualpistols_1" "crouch_reload_dualpistols_1" fps 30
$sequence "ref_aim_dualpistols_1" "ref_aim_dualpistols_1" fps 10 loop
$sequence "ref_shoot_dualpistols_1" "ref_shoot_dualpistols_1" fps 30 { event 5011 0 "10" }
$sequence "ref_shoot2_dualpistols_1" "ref_shoot2_dualpistols_1" fps 30 { event 5001 0 "10" }
$sequence "ref_reload_dualpistols_1" "ref_reload_dualpistols_1" fps 30
$sequence "crouch_aim_rifle" "crouch_aim_rifle" fps 30 loop
$sequence "crouch_shoot_rifle" "crouch_shoot_rifle" fps 20 { event 5001 0 "30" }
$sequence "crouch_reload_rifle" "crouch_reload_rifle" fps 30
$sequence "ref_aim_rifle" "ref_aim_rifle" fps 30 loop
$sequence "ref_shoot_rifle" "ref_shoot_rifle" fps 20 { event 5001 0 "30" }
$sequence "ref_reload_rifle" "ref_reload_rifle" fps 30
$sequence "crouch_aim_mp5" "crouch_aim_mp5" fps 30 loop
$sequence "crouch_shoot_mp5" "crouch_shoot_mp5" fps 15 { event 5001 0 "30" }
$sequence "crouch_reload_mp5" "crouch_reload_mp5" fps 30
$sequence "ref_aim_mp5" "ref_aim_mp5" fps 30 loop
$sequence "ref_shoot_mp5" "ref_shoot_mp5" fps 15 { event 5001 0 "30" }
$sequence "ref_reload_mp5" "ref_reload_mp5" fps 30
$sequence "crouch_aim_shotgun" "crouch_aim_shotgun" fps 30 loop
$sequence "crouch_shoot_shotgun" "crouch_shoot_shotgun" fps 30 { event 5001 0 "50" }
$sequence "crouch_reload_shotgun" "crouch_reload_shotgun" fps 30
$sequence "ref_aim_shotgun" "ref_aim_shotgun" fps 30 loop
$sequence "ref_shoot_shotgun" "ref_shoot_shotgun" fps 30 { event 5001 0 "50" }
$sequence "ref_reload_shotgun" "ref_reload_shotgun" fps 30
$sequence "crouch_aim_m249" "crouch_aim_m249" fps 10 loop
$sequence "crouch_shoot_m249" "crouch_shoot_m249" fps 30 loop { event 5001 0 "50" }
$sequence "crouch_reload_m249" "crouch_reload_m249" fps 30
$sequence "ref_aim_m249" "ref_aim_m249" fps 10 loop
$sequence "ref_shoot_m249" "ref_shoot_m249" fps 30 loop { event 5001 0 "50" }
$sequence "ref_reload_m249" "ref_reload_m249" fps 30
$sequence "I_am_a_stupid_placeholder" "I_am_a_stupid_placeholder" fps 30 loop
$sequence "so_am_I" "so_am_I" fps 30
$sequence "ref_aim_grenade" {
          "ref_aim_grenade_blend1"
          "ref_aim_grenade_blend2"
          "ref_aim_grenade_blend3"
          "ref_aim_grenade_blend4"
          "ref_aim_grenade_blend5"
          "ref_aim_grenade_blend6"
          "ref_aim_grenade_blend7"
          "ref_aim_grenade_blend8"
          "ref_aim_grenade_blend9"
          blend XR -90 90 fps 30 loop
}
$sequence "ref_shoot_grenade" {
          "ref_shoot_grenade_blend1"
          "ref_shoot_grenade_blend2"
          "ref_shoot_grenade_blend3"
          "ref_shoot_grenade_blend4"
          "ref_shoot_grenade_blend5"
          "ref_shoot_grenade_blend6"
          "ref_shoot_grenade_blend7"
          "ref_shoot_grenade_blend8"
          "ref_shoot_grenade_blend9"
          blend XR -90 90 fps 30
}
$sequence "crouch_aim_grenade" "crouch_aim_grenade" fps 30 loop
$sequence "crouch_shoot_grenade" {
          "crouch_shoot_grenade_blend1"
          "crouch_shoot_grenade_blend2"
          "crouch_shoot_grenade_blend3"
          "crouch_shoot_grenade_blend4"
          "crouch_shoot_grenade_blend5"
          "crouch_shoot_grenade_blend6"
          "crouch_shoot_grenade_blend7"
          "crouch_shoot_grenade_blend8"
          "crouch_shoot_grenade_blend9"
          blend XR -90 90 fps 30
}
$sequence "crouch_aim_c4" "crouch_aim_c4" fps 30 loop
$sequence "crouch_shoot_c4" "crouch_shoot_c4" fps 30
$sequence "ref_aim_c4" "ref_aim_c4" fps 30 loop
$sequence "ref_shoot_c4" "ref_shoot_c4" fps 30
$sequence "ref_reload_c4" "ref_reload_c4" fps 30
$sequence "crouch_aim_dualpistols_2" "crouch_aim_dualpistols_2" fps 10 loop
$sequence "crouch_shoot_dualpistols_2" "crouch_shoot_dualpistols_2" fps 30 { event 5011 0 "10" }
$sequence "crouch_shoot2_dualpistols_2" "crouch_shoot2_dualpistols_2" fps 30 { event 5001 0 "10" }
$sequence "crouch_reload_dualpistols_2" "crouch_reload_dualpistols_2" fps 30
$sequence "ref_aim_dualpistols_2" "ref_aim_dualpistols_2" fps 10 loop
$sequence "ref_shoot_dualpistols_2" "ref_shoot_dualpistols_2" fps 30 { event 5011 0 "10" }
$sequence "ref_shoot2_dualpistols_2" "ref_shoot2_dualpistols_2" fps 30 { event 5001 0 "10" }
$sequence "ref_reload_dualpistols_2" "ref_reload_dualpistols_2" fps 30
$sequence "crouch_aim_knife" "crouch_aim_knife" fps 30 loop
$sequence "crouch_shoot_knife" "crouch_shoot_knife" fps 30
$sequence "ref_aim_knife" "ref_aim_knife" fps 30 loop
$sequence "ref_shoot_knife" "ref_shoot_knife" fps 30 loop
$sequence "crouch_aim_ak47" "crouch_aim_ak47" fps 30 loop
$sequence "crouch_shoot_ak47" "crouch_shoot_ak47" fps 30 { event 5001 0 "40" }
$sequence "crouch_reload_ak47" "crouch_reload_ak47" fps 30
$sequence "ref_aim_ak47" "ref_aim_ak47" fps 30 loop
$sequence "ref_shoot_ak47" "ref_shoot_ak47" fps 30 { event 5001 0 "40" }
$sequence "ref_reload_ak47" "ref_reload_ak47" fps 30
$sequence "crouch_aim_shieldgren" "crouch_aim_shieldgren" fps 20 loop
$sequence "crouch_shoot_shieldgren" "crouch_shoot_shieldgren" fps 45
$sequence "ref_aim_shieldgren" "ref_aim_shieldgren" fps 20 loop
$sequence "ref_shoot_shieldgren" "ref_shoot_shieldgren" fps 45
$sequence "crouch_aim_shieldknife" "crouch_aim_shieldknife" fps 12 loop
$sequence "crouch_shoot_shieldknife" "crouch_shoot_shieldknife" fps 30
$sequence "ref_aim_shieldknife" "ref_aim_shieldknife" fps 12 loop
$sequence "ref_shoot_shieldknife" "ref_shoot_shieldknife" fps 30 loop
$sequence "crouch_aim_shieldgun" "crouch_aim_shieldgun" fps 30 loop
$sequence "crouch_shoot_shieldgun" "crouch_shoot_shieldgun" fps 30 { event 5001 0 "10" }
$sequence "crouch_reload_shieldgun" "crouch_reload_shieldgun" fps 30
$sequence "ref_aim_shieldgun" "ref_aim_shieldgun" fps 30 loop
$sequence "ref_shoot_shieldgun" "ref_shoot_shieldgun" fps 30 { event 5001 0 "10" }
$sequence "ref_reload_shieldgun" "ref_reload_shieldgun" fps 30
$sequence "crouch_aim_shielded" "crouch_aim_shielded" fps 20 loop
$sequence "ref_aim_shielded" "ref_aim_shielded" fps 20 loop
$sequence "gut_flinch" "gut_flinch" fps 30
$sequence "head_flinch" "head_flinch" fps 30
$sequence "death1" "death1" fps 30 ACT_DIE_CHESTSHOT 1 { event 2001 0 }
$sequence "death2" "death2" fps 30 ACT_DIESIMPLE 2 { event 2001 0 }
$sequence "death3" "death3" fps 30 ACT_DIE_BACKSHOT 1 { event 2001 0 }
$sequence "head" "head" fps 30 ACT_DIE_HEADSHOT 1 { event 2001 0 }
$sequence "gutshot" "gutshot" fps 30 ACT_DIE_GUTSHOT 1 { event 2001 0 }
$sequence "left" "left" fps 30 ACT_DIESIMPLE 1 { event 2001 0 }
$sequence "back" "back" fps 30 ACT_DIEBACKWARD 1 { event 2001 0 }
$sequence "right" "right" fps 30 ACT_DIESIMPLE 1 { event 2001 0 }
$sequence "forward" "forward" fps 30 ACT_DIEFORWARD 1 { event 2001 0 }
$sequence "crouch_die" "crouch_die" fps 30 { event 2001 0 }

// End of QC script.
