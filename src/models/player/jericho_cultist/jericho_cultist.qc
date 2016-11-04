$modelname "..\..\..\..\models\player\jericho_cultist\jericho_cultist.mdl"
$cd ".\"
$cdtexture ".\"
$scale 1.0
$cliptotextures


$bbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 0.000000


//reference mesh(es)
$body "body" "cul1"

$body "body" "cul2"

$body "body" "cul3"


// 14 hit box(es)
$hbox 0 "Bip01 Pelvis" -5.410000 -4.380000 -7.520000 7.020000 6.930000 7.070000
$hbox 0 "Bip01 Spine" 0.000000 -4.210000 -6.440000 10.460467 7.370000 6.390000
$hbox 0 "Bip01 Spine1" -1.850000 -10.080000 -8.040000 20.559999 9.850000 16.790001
$hbox 0 "Bip01 L Thigh" -2.510000 -3.380000 -5.290000 15.380000 6.180000 3.180000
$hbox 0 "Bip01 L Calf" 0.000000 -3.360000 -5.050000 17.087376 3.710000 0.930000
$hbox 0 "Bip01 L Foot" -0.680000 -2.770000 -5.250000 3.840000 8.610000 0.000000
$hbox 0 "Bip01 R Thigh" -0.110000 -3.380000 -3.050000 14.724920 5.780000 5.260000
$hbox 0 "Bip01 R Calf" -1.180000 -3.280000 -0.570000 17.087378 3.710000 6.000000
$hbox 0 "Bip01 R Foot" -0.710000 -2.770000 0.000000 3.720000 8.610000 6.400000
$hbox 0 "Bip01 Head" -2.920000 0.000000 -3.140000 8.580000 12.100000 3.010000
$hbox 0 "Bip01 L Clavicle" 0.000000 -7.950000 -1.840000 8.390000 0.000000 6.170000
$hbox 0 "Bip01 R Clavicle" 0.000000 -5.830000 -7.730000 10.420000 7.080000 0.240000
$hbox 0 "Bip01 R UpperArm" 0.000000 -5.360000 -4.380000 9.700000 4.000000 3.760000
$hbox 0 "Bip01 R Forearm" 0.000000 -6.960000 -2.810000 23.860001 4.670000 3.120000

// 111 animation sequence(s)
$sequence "Koshak" "Koshak" fps 1 
$sequence "idle1" "idle1" fps 15 ACT_IDLE 1 
$sequence "crouch_idle" "crouch_idle" LX fps 18 loop ACT_CROUCHIDLE 1 
$sequence "walk" "walk" LX fps 15 loop ACT_WALK 1 
$sequence "run" "run" LX fps 20 loop ACT_RUN 1 
$sequence "crouchrun" "crouchrun" LX fps 15 loop ACT_CROUCH 1 
$sequence "jump" "jump" fps 17 ACT_HOP 1 
$sequence "longjump" "longjump" fps 17 ACT_LEAP 1 
$sequence "swim" "swim" fps 15 loop ACT_SWIM 1 
$sequence "treadwater" "treadwater" fps 15 loop ACT_HOVER 1 
$sequence "crouch_aim_carbine" "crouch_aim_carbine" fps 30 
$sequence "crouch_shoot_carbine" "crouch_shoot_carbine" fps 30 
$sequence "crouch_reload_carbine" "crouch_reload_carbine" fps 30 
$sequence "ref_aim_carbine" "ref_aim_carbine" fps 30 
$sequence "ref_shoot_carbine" "ref_shoot_carbine" fps 30 
$sequence "ref_reload_carbine" "ref_reload_carbine" fps 30 
$sequence "crouch_aim_onehanded" "crouch_aim_onehanded" fps 30 
$sequence "crouch_shoot_onehanded" "crouch_shoot_onehanded" fps 30 
$sequence "crouch_reload_onehanded" "crouch_reload_onehanded" fps 30 
$sequence "ref_aim_onehanded" "ref_aim_onehanded" fps 30 
$sequence "ref_shoot_onehanded" "ref_shoot_onehanded" fps 30 
$sequence "ref_reload_onehanded" "ref_reload_onehanded" fps 30 
$sequence "crouch_aim_dualpistols_1" "crouch_aim_dualpistols_1" fps 30 
$sequence "crouch_shoot_dualpistols_1" "crouch_shoot_dualpistols_1" fps 30 
$sequence "crouch_shoot2_dualpistols_1" "crouch_shoot2_dualpistols_1" fps 30 
$sequence "crouch_reload_dualpistols_1" "crouch_reload_dualpistols_1" fps 30 
$sequence "ref_aim_dualpistols_1" "ref_aim_dualpistols_1" fps 30 
$sequence "ref_shoot_dualpistols_1" "ref_shoot_dualpistols_1" fps 30 
$sequence "ref_shoot2_dualpistols_1" "ref_shoot2_dualpistols_1" fps 30 
$sequence "ref_reload_dualpistols_1" "ref_reload_dualpistols_1" fps 30 
$sequence "crouch_aim_rifle" "crouch_aim_rifle" fps 30 
$sequence "crouch_shoot_rifle" "crouch_shoot_rifle" fps 30 
$sequence "crouch_reload_rifle" "crouch_reload_rifle" fps 30 
$sequence "ref_aim_rifle" "ref_aim_rifle" fps 30 
$sequence "ref_shoot_rifle" "ref_shoot_rifle" fps 30 
$sequence "ref_reload_rifle" "ref_reload_rifle" fps 30 
$sequence "crouch_aim_mp5" "crouch_aim_mp5" fps 30 
$sequence "crouch_shoot_mp5" "crouch_shoot_mp5" fps 30 
$sequence "crouch_reload_mp5" "crouch_reload_mp5" fps 30 
$sequence "ref_aim_mp5" "ref_aim_mp5" fps 30 
$sequence "ref_shoot_mp5" "ref_shoot_mp5" fps 30 
$sequence "ref_reload_mp5" "ref_reload_mp5" fps 30 
$sequence "crouch_aim_shotgun" "crouch_aim_shotgun" fps 30 
$sequence "crouch_shoot_shotgun" "crouch_shoot_shotgun" fps 30 
$sequence "crouch_reload_shotgun" "crouch_reload_shotgun" fps 30 
$sequence "ref_aim_shotgun" "ref_aim_shotgun" fps 30 
$sequence "ref_shoot_shotgun" "ref_shoot_shotgun" fps 30 
$sequence "ref_reload_shotgun" "ref_reload_shotgun" fps 30 
$sequence "crouch_aim_m249" "crouch_aim_m249" fps 30 
$sequence "crouch_shoot_m249" "crouch_shoot_m249" fps 30 
$sequence "crouch_reload_m249" "crouch_reload_m249" fps 30 
$sequence "ref_aim_m249" "ref_aim_m249" fps 30 
$sequence "ref_shoot_m249" "ref_shoot_m249" fps 30 
$sequence "ref_reload_m249" "ref_reload_m249" fps 30 
$sequence "I_am_a_stupid_placeholder" "I_am_a_stupid_placeholder" fps 30 
$sequence "so_am_I" "so_am_I" fps 30 
$sequence "ref_aim_grenade" "ref_aim_grenade" fps 18 loop 
$sequence "ref_shoot_grenade" "ref_shoot_grenade" fps 18 
$sequence "crouch_aim_grenade" "crouch_aim_grenade" fps 20 loop 
$sequence "crouch_shoot_grenade" "crouch_shoot_grenade" fps 18 
$sequence "crouch_aim_c4" "crouch_aim_c4" fps 30 
$sequence "crouch_shoot_c4" "crouch_shoot_c4" fps 30 
$sequence "ref_aim_c4" "ref_aim_c4" fps 30 
$sequence "ref_shoot_c4" "ref_shoot_c4" fps 30 
$sequence "ref_reload_c4" "ref_reload_c4" fps 30 
$sequence "crouch_aim_dualpistols_2" "crouch_aim_dualpistols_2" fps 30 
$sequence "crouch_shoot_dualpistols_2" "crouch_shoot_dualpistols_2" fps 30 
$sequence "crouch_shoot2_dualpistols_2" "crouch_shoot2_dualpistols_2" fps 30 
$sequence "crouch_reload_dualpistols_2" "crouch_reload_dualpistols_2" fps 30 
$sequence "ref_aim_dualpistols_2" "ref_aim_dualpistols_2" fps 30 
$sequence "ref_shoot_dualpistols_2" "ref_shoot_dualpistols_2" fps 30 
$sequence "ref_shoot2_dualpistols_2" "ref_shoot2_dualpistols_2" fps 30 
$sequence "ref_reload_dualpistols_2" "ref_reload_dualpistols_2" fps 30 
$sequence "crouch_aim_knife" "crouch_aim_knife" fps 20 loop 
$sequence "crouch_shoot_knife" "crouch_shoot_knife" fps 18 
$sequence "ref_aim_knife" "ref_aim_knife" fps 18 loop 
$sequence "ref_shoot_knife" "ref_shoot_knife" fps 18 
$sequence "crouch_aim_ak47" "crouch_aim_ak47" fps 30 
$sequence "crouch_shoot_ak47" "crouch_shoot_ak47" fps 30 
$sequence "crouch_reload_ak47" "crouch_reload_ak47" fps 30 
$sequence "ref_aim_ak47" "ref_aim_ak47" fps 30 
$sequence "ref_shoot_ak47" "ref_shoot_ak47" fps 30 
$sequence "ref_reload_ak47" "ref_reload_ak47" fps 30 
$sequence "crouch_aim_shieldgren" "crouch_aim_shieldgren" fps 30 
$sequence "crouch_shoot_shieldgren" "crouch_shoot_shieldgren" fps 30 
$sequence "ref_aim_shieldgren" "ref_aim_shieldgren" fps 30 
$sequence "ref_shoot_shieldgren" "ref_shoot_shieldgren" fps 30 
$sequence "crouch_aim_shieldknife" "crouch_aim_shieldknife" fps 30 
$sequence "crouch_shoot_shieldknife" "crouch_shoot_shieldknife" fps 30 
$sequence "ref_aim_shieldknife" "ref_aim_shieldknife" fps 30 
$sequence "ref_shoot_shieldknife" "ref_shoot_shieldknife" fps 30 
$sequence "crouch_aim_shieldgun" "crouch_aim_shieldgun" fps 30 
$sequence "crouch_shoot_shieldgun" "crouch_shoot_shieldgun" fps 30 
$sequence "crouch_reload_shieldgun" "crouch_reload_shieldgun" fps 30 
$sequence "ref_aim_shieldgun" "ref_aim_shieldgun" fps 30 
$sequence "ref_shoot_shieldgun" "ref_shoot_shieldgun" fps 30 
$sequence "ref_reload_shieldgun" "ref_reload_shieldgun" fps 30 
$sequence "crouch_aim_shielded" "crouch_aim_shielded" fps 30 
$sequence "ref_aim_shielded" "ref_aim_shielded" fps 30 
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
