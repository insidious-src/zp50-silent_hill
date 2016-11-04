$modelname "../../../../models/player/sh_pyramid_head_alt/sh_pyramid_head_alt.mdl"
$cd "./"
$cdtexture "./"
$scale 1.0
$cliptotextures


$bbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 0.000000


//reference mesh(es)
$body "studio" "1"


// 31 hit box(es)
$hbox 0 "Bip01 Spine" -2.410000 -3.360000 -6.000000 4.118605 6.420000 6.070000
$hbox 0 "Bip01 Spine1" -1.110000 -3.180000 -6.330000 4.118601 6.850000 6.400000
$hbox 0 "Bip01 Spine2" 0.000000 -3.710000 -7.080000 4.118600 6.790000 7.160000
$hbox 0 "Bip01 Neck" -3.570000 -4.470000 -2.400000 4.443601 5.740000 1.732721
$hbox 0 "Bip01 Head" -6.330000 -10.990000 -11.590000 21.330000 20.900000 12.100000
$hbox 0 "Bip01 L Clavicle" 0.000000 -5.030000 -2.170000 9.030000 4.720000 3.950000
$hbox 0 "Bip01 L UpperArm" 0.000000 -2.340000 -1.710000 10.242682 2.820000 1.740000
$hbox 0 "Bip01 L Forearm" -0.900000 -1.540000 -1.360000 11.375562 2.090000 1.830000
$hbox 0 "Bip01 L Hand" 0.000000 -1.290000 -1.400000 3.115505 0.550000 1.740000
$hbox 0 "Bip01 L Finger0" 0.000000 0.000000 0.000000 3.780000 1.350000 3.020000
$hbox 0 "Bip01 L Finger01" 0.000000 0.000000 0.000000 3.690000 1.400000 2.890000
$hbox 0 "Bip01 L Finger1" -0.750000 -0.730000 -0.760000 3.470000 1.710000 2.600000
$hbox 0 "Bip01 L Finger11" 0.000000 -0.980000 -1.160000 3.970000 0.280000 2.290000
$hbox 0 "-- L wrist" 0.000000 -1.370000 -1.470000 1.400000 0.630000 1.710000
$hbox 0 "Bip01 R Clavicle" -0.040000 -5.030000 -2.330000 6.830000 4.720000 1.450000
$hbox 0 "Bip01 R UpperArm" 0.000000 -2.480000 -2.810000 10.242681 2.810000 1.930000
$hbox 0 "Bip01 R Forearm" -1.200000 -1.400000 -1.750000 11.389366 2.240000 1.490000
$hbox 0 "Bip01 R Hand" 0.000000 -1.350000 -1.790000 3.190000 0.570000 1.600000
$hbox 0 "Bip01 R Finger0" 0.000000 -0.430000 -3.200000 3.970000 1.070000 0.000000
$hbox 0 "Bip01 R Finger01" 0.000000 0.000000 -3.080000 3.940000 1.040000 0.000000
$hbox 0 "Bip01 R Finger1" 0.000000 -0.790000 -2.180000 3.370000 1.710000 1.180000
$hbox 0 "Bip01 R Finger11" 0.000000 -1.240000 -2.010000 4.200000 0.150000 1.360000
$hbox 0 "-- R wrist" 0.000000 -1.630000 -1.200000 1.730000 0.320000 1.950000
$hbox 0 "Bip01 L Thigh" 0.000000 -3.020000 -5.120000 16.573919 6.850000 3.780000
$hbox 0 "Bip01 L Calf" 0.000000 -3.730000 -4.840000 15.128179 5.530000 4.180000
$hbox 0 "Bip01 L Foot" 0.000000 -2.240000 -2.440000 7.510000 4.244730 2.030000
$hbox 0 "Bip01 L Toe0" 0.000000 -1.900000 -3.590000 3.920000 0.000000 1.000000
$hbox 0 "Bip01 R Thigh" 0.000000 -2.840000 -2.810000 16.573919 6.830000 4.720000
$hbox 0 "Bip01 R Calf" 0.000000 -3.720000 -3.110000 15.128179 5.550000 4.440000
$hbox 0 "Bip01 R Foot" 0.000000 -2.240000 -2.400000 7.790000 4.244731 2.080000
$hbox 0 "Bip01 R Toe0" 0.000000 -2.180000 -1.360000 3.920000 0.000000 3.220000

// 111 animation sequence(s)
$sequence "Fer123" "Fer123" fps 24 loop 
$sequence "idle1" "idle1" fps 15 loop ACT_IDLE 1 
$sequence "crouch_idle" "crouch_idle" fps 10 loop ACT_CROUCHIDLE 1 
$sequence "walk" "walk" LX fps 30 loop ACT_WALK 1 
$sequence "run" "run" LX fps 60 loop ACT_RUN 1 
$sequence "crouchrun" "crouchrun" LX fps 30 loop ACT_CROUCH 1 
$sequence "jump" "jump" fps 36 ACT_HOP 1 
$sequence "longjump" "longjump" fps 36 ACT_LEAP 1 
$sequence "swim" "swim" fps 30 loop ACT_SWIM 1 
$sequence "treadwater" "treadwater" fps 24 loop ACT_HOVER 1 
$sequence "crouch_aim_carbine" {
          "crouch_aim_carbine_blend1" 
          "crouch_aim_carbine_blend2" 
          "crouch_aim_carbine_blend3" 
          "crouch_aim_carbine_blend4" 
          "crouch_aim_carbine_blend5" 
          "crouch_aim_carbine_blend6" 
          "crouch_aim_carbine_blend7" 
          "crouch_aim_carbine_blend8" 
          "crouch_aim_carbine_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "crouch_shoot_carbine" {
          "crouch_shoot_carbine_blend1" 
          "crouch_shoot_carbine_blend2" 
          "crouch_shoot_carbine_blend3" 
          "crouch_shoot_carbine_blend4" 
          "crouch_shoot_carbine_blend5" 
          "crouch_shoot_carbine_blend6" 
          "crouch_shoot_carbine_blend7" 
          "crouch_shoot_carbine_blend8" 
          "crouch_shoot_carbine_blend9" 
          blend XR -90 90 fps 15 { event 5001 0 "40" } 
}
$sequence "crouch_reload_carbine" "crouch_reload_carbine" fps 30 
$sequence "ref_aim_carbine" {
          "ref_aim_carbine_blend1" 
          "ref_aim_carbine_blend2" 
          "ref_aim_carbine_blend3" 
          "ref_aim_carbine_blend4" 
          "ref_aim_carbine_blend5" 
          "ref_aim_carbine_blend6" 
          "ref_aim_carbine_blend7" 
          "ref_aim_carbine_blend8" 
          "ref_aim_carbine_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "ref_shoot_carbine" {
          "ref_shoot_carbine_blend1" 
          "ref_shoot_carbine_blend2" 
          "ref_shoot_carbine_blend3" 
          "ref_shoot_carbine_blend4" 
          "ref_shoot_carbine_blend5" 
          "ref_shoot_carbine_blend6" 
          "ref_shoot_carbine_blend7" 
          "ref_shoot_carbine_blend8" 
          "ref_shoot_carbine_blend9" 
          blend XR -90 90 fps 15 { event 5001 0 "40" } 
}
$sequence "ref_reload_carbine" "ref_reload_carbine" fps 30 
$sequence "crouch_aim_onehanded" {
          "crouch_aim_onehanded_blend1" 
          "crouch_aim_onehanded_blend2" 
          "crouch_aim_onehanded_blend3" 
          "crouch_aim_onehanded_blend4" 
          "crouch_aim_onehanded_blend5" 
          "crouch_aim_onehanded_blend6" 
          "crouch_aim_onehanded_blend7" 
          "crouch_aim_onehanded_blend8" 
          "crouch_aim_onehanded_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "crouch_shoot_onehanded" {
          "crouch_shoot_onehanded_blend1" 
          "crouch_shoot_onehanded_blend2" 
          "crouch_shoot_onehanded_blend3" 
          "crouch_shoot_onehanded_blend4" 
          "crouch_shoot_onehanded_blend5" 
          "crouch_shoot_onehanded_blend6" 
          "crouch_shoot_onehanded_blend7" 
          "crouch_shoot_onehanded_blend8" 
          "crouch_shoot_onehanded_blend9" 
          blend XR -90 90 fps 15 { event 5001 0 "10" } 
}
$sequence "crouch_reload_onehanded" "crouch_reload_onehanded" fps 30 
$sequence "ref_aim_onehanded" {
          "ref_aim_onehanded_blend1" 
          "ref_aim_onehanded_blend2" 
          "ref_aim_onehanded_blend3" 
          "ref_aim_onehanded_blend4" 
          "ref_aim_onehanded_blend5" 
          "ref_aim_onehanded_blend6" 
          "ref_aim_onehanded_blend7" 
          "ref_aim_onehanded_blend8" 
          "ref_aim_onehanded_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "ref_shoot_onehanded" {
          "ref_shoot_onehanded_blend1" 
          "ref_shoot_onehanded_blend2" 
          "ref_shoot_onehanded_blend3" 
          "ref_shoot_onehanded_blend4" 
          "ref_shoot_onehanded_blend5" 
          "ref_shoot_onehanded_blend6" 
          "ref_shoot_onehanded_blend7" 
          "ref_shoot_onehanded_blend8" 
          "ref_shoot_onehanded_blend9" 
          blend XR -90 90 fps 15 { event 5001 0 "10" } 
}
$sequence "ref_reload_onehanded" "ref_reload_onehanded" fps 30 
$sequence "crouch_aim_dualpistols_1" {
          "crouch_aim_dualpistols_1_blend1" 
          "crouch_aim_dualpistols_1_blend2" 
          "crouch_aim_dualpistols_1_blend3" 
          "crouch_aim_dualpistols_1_blend4" 
          "crouch_aim_dualpistols_1_blend5" 
          "crouch_aim_dualpistols_1_blend6" 
          "crouch_aim_dualpistols_1_blend7" 
          "crouch_aim_dualpistols_1_blend8" 
          "crouch_aim_dualpistols_1_blend9" 
          blend XR -90 90 fps 10 loop 
}
$sequence "crouch_shoot_dualpistols_1" {
          "crouch_shoot_dualpistols_1_blend1" 
          "crouch_shoot_dualpistols_1_blend2" 
          "crouch_shoot_dualpistols_1_blend3" 
          "crouch_shoot_dualpistols_1_blend4" 
          "crouch_shoot_dualpistols_1_blend5" 
          "crouch_shoot_dualpistols_1_blend6" 
          "crouch_shoot_dualpistols_1_blend7" 
          "crouch_shoot_dualpistols_1_blend8" 
          "crouch_shoot_dualpistols_1_blend9" 
          blend XR -90 90 fps 30 { event 5011 0 "10" } 
}
$sequence "crouch_shoot2_dualpistols_1" {
          "crouch_shoot2_dualpistols_1_blend1" 
          "crouch_shoot2_dualpistols_1_blend2" 
          "crouch_shoot2_dualpistols_1_blend3" 
          "crouch_shoot2_dualpistols_1_blend4" 
          "crouch_shoot2_dualpistols_1_blend5" 
          "crouch_shoot2_dualpistols_1_blend6" 
          "crouch_shoot2_dualpistols_1_blend7" 
          "crouch_shoot2_dualpistols_1_blend8" 
          "crouch_shoot2_dualpistols_1_blend9" 
          blend XR -90 90 fps 30 { event 5001 0 "10" } 
}
$sequence "crouch_reload_dualpistols_1" "crouch_reload_dualpistols_1" fps 30 
$sequence "ref_aim_dualpistols_1" {
          "ref_aim_dualpistols_1_blend1" 
          "ref_aim_dualpistols_1_blend2" 
          "ref_aim_dualpistols_1_blend3" 
          "ref_aim_dualpistols_1_blend4" 
          "ref_aim_dualpistols_1_blend5" 
          "ref_aim_dualpistols_1_blend6" 
          "ref_aim_dualpistols_1_blend7" 
          "ref_aim_dualpistols_1_blend8" 
          "ref_aim_dualpistols_1_blend9" 
          blend XR -90 90 fps 10 loop 
}
$sequence "ref_shoot_dualpistols_1" {
          "ref_shoot_dualpistols_1_blend1" 
          "ref_shoot_dualpistols_1_blend2" 
          "ref_shoot_dualpistols_1_blend3" 
          "ref_shoot_dualpistols_1_blend4" 
          "ref_shoot_dualpistols_1_blend5" 
          "ref_shoot_dualpistols_1_blend6" 
          "ref_shoot_dualpistols_1_blend7" 
          "ref_shoot_dualpistols_1_blend8" 
          "ref_shoot_dualpistols_1_blend9" 
          blend XR -90 90 fps 30 { event 5011 0 "10" } 
}
$sequence "ref_shoot2_dualpistols_1" {
          "ref_shoot2_dualpistols_1_blend1" 
          "ref_shoot2_dualpistols_1_blend2" 
          "ref_shoot2_dualpistols_1_blend3" 
          "ref_shoot2_dualpistols_1_blend4" 
          "ref_shoot2_dualpistols_1_blend5" 
          "ref_shoot2_dualpistols_1_blend6" 
          "ref_shoot2_dualpistols_1_blend7" 
          "ref_shoot2_dualpistols_1_blend8" 
          "ref_shoot2_dualpistols_1_blend9" 
          blend XR -90 90 fps 30 { event 5001 0 "10" } 
}
$sequence "ref_reload_dualpistols_1" "ref_reload_dualpistols_1" fps 30 
$sequence "crouch_aim_rifle" {
          "crouch_aim_rifle_blend1" 
          "crouch_aim_rifle_blend2" 
          "crouch_aim_rifle_blend3" 
          "crouch_aim_rifle_blend4" 
          "crouch_aim_rifle_blend5" 
          "crouch_aim_rifle_blend6" 
          "crouch_aim_rifle_blend7" 
          "crouch_aim_rifle_blend8" 
          "crouch_aim_rifle_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "crouch_shoot_rifle" {
          "crouch_shoot_rifle_blend1" 
          "crouch_shoot_rifle_blend2" 
          "crouch_shoot_rifle_blend3" 
          "crouch_shoot_rifle_blend4" 
          "crouch_shoot_rifle_blend5" 
          "crouch_shoot_rifle_blend6" 
          "crouch_shoot_rifle_blend7" 
          "crouch_shoot_rifle_blend8" 
          "crouch_shoot_rifle_blend9" 
          blend XR -90 90 fps 20 { event 5001 0 "30" } 
}
$sequence "crouch_reload_rifle" "crouch_reload_rifle" fps 30 
$sequence "ref_aim_rifle" {
          "ref_aim_rifle_blend1" 
          "ref_aim_rifle_blend2" 
          "ref_aim_rifle_blend3" 
          "ref_aim_rifle_blend4" 
          "ref_aim_rifle_blend5" 
          "ref_aim_rifle_blend6" 
          "ref_aim_rifle_blend7" 
          "ref_aim_rifle_blend8" 
          "ref_aim_rifle_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "ref_shoot_rifle" {
          "ref_shoot_rifle_blend1" 
          "ref_shoot_rifle_blend2" 
          "ref_shoot_rifle_blend3" 
          "ref_shoot_rifle_blend4" 
          "ref_shoot_rifle_blend5" 
          "ref_shoot_rifle_blend6" 
          "ref_shoot_rifle_blend7" 
          "ref_shoot_rifle_blend8" 
          "ref_shoot_rifle_blend9" 
          blend XR -90 90 fps 20 { event 5001 0 "30" } 
}
$sequence "ref_reload_rifle" "ref_reload_rifle" fps 30 
$sequence "crouch_aim_mp5" {
          "crouch_aim_mp5_blend1" 
          "crouch_aim_mp5_blend2" 
          "crouch_aim_mp5_blend3" 
          "crouch_aim_mp5_blend4" 
          "crouch_aim_mp5_blend5" 
          "crouch_aim_mp5_blend6" 
          "crouch_aim_mp5_blend7" 
          "crouch_aim_mp5_blend8" 
          "crouch_aim_mp5_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "crouch_shoot_mp5" {
          "crouch_shoot_mp5_blend1" 
          "crouch_shoot_mp5_blend2" 
          "crouch_shoot_mp5_blend3" 
          "crouch_shoot_mp5_blend4" 
          "crouch_shoot_mp5_blend5" 
          "crouch_shoot_mp5_blend6" 
          "crouch_shoot_mp5_blend7" 
          "crouch_shoot_mp5_blend8" 
          "crouch_shoot_mp5_blend9" 
          blend XR -90 90 fps 15 { event 5001 0 "30" } 
}
$sequence "crouch_reload_mp5" "crouch_reload_mp5" fps 30 
$sequence "ref_aim_mp5" {
          "ref_aim_mp5_blend1" 
          "ref_aim_mp5_blend2" 
          "ref_aim_mp5_blend3" 
          "ref_aim_mp5_blend4" 
          "ref_aim_mp5_blend5" 
          "ref_aim_mp5_blend6" 
          "ref_aim_mp5_blend7" 
          "ref_aim_mp5_blend8" 
          "ref_aim_mp5_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "ref_shoot_mp5" {
          "ref_shoot_mp5_blend1" 
          "ref_shoot_mp5_blend2" 
          "ref_shoot_mp5_blend3" 
          "ref_shoot_mp5_blend4" 
          "ref_shoot_mp5_blend5" 
          "ref_shoot_mp5_blend6" 
          "ref_shoot_mp5_blend7" 
          "ref_shoot_mp5_blend8" 
          "ref_shoot_mp5_blend9" 
          blend XR -90 90 fps 15 { event 5001 0 "30" } 
}
$sequence "ref_reload_mp5" "ref_reload_mp5" fps 30 
$sequence "crouch_aim_shotgun" {
          "crouch_aim_shotgun_blend1" 
          "crouch_aim_shotgun_blend2" 
          "crouch_aim_shotgun_blend3" 
          "crouch_aim_shotgun_blend4" 
          "crouch_aim_shotgun_blend5" 
          "crouch_aim_shotgun_blend6" 
          "crouch_aim_shotgun_blend7" 
          "crouch_aim_shotgun_blend8" 
          "crouch_aim_shotgun_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "crouch_shoot_shotgun" {
          "crouch_shoot_shotgun_blend1" 
          "crouch_shoot_shotgun_blend2" 
          "crouch_shoot_shotgun_blend3" 
          "crouch_shoot_shotgun_blend4" 
          "crouch_shoot_shotgun_blend5" 
          "crouch_shoot_shotgun_blend6" 
          "crouch_shoot_shotgun_blend7" 
          "crouch_shoot_shotgun_blend8" 
          "crouch_shoot_shotgun_blend9" 
          blend XR -90 90 fps 30 { event 5001 0 "50" } 
}
$sequence "crouch_reload_shotgun" "crouch_reload_shotgun" fps 30 
$sequence "ref_aim_shotgun" {
          "ref_aim_shotgun_blend1" 
          "ref_aim_shotgun_blend2" 
          "ref_aim_shotgun_blend3" 
          "ref_aim_shotgun_blend4" 
          "ref_aim_shotgun_blend5" 
          "ref_aim_shotgun_blend6" 
          "ref_aim_shotgun_blend7" 
          "ref_aim_shotgun_blend8" 
          "ref_aim_shotgun_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "ref_shoot_shotgun" {
          "ref_shoot_shotgun_blend1" 
          "ref_shoot_shotgun_blend2" 
          "ref_shoot_shotgun_blend3" 
          "ref_shoot_shotgun_blend4" 
          "ref_shoot_shotgun_blend5" 
          "ref_shoot_shotgun_blend6" 
          "ref_shoot_shotgun_blend7" 
          "ref_shoot_shotgun_blend8" 
          "ref_shoot_shotgun_blend9" 
          blend XR -90 90 fps 30 { event 5001 0 "50" } 
}
$sequence "ref_reload_shotgun" "ref_reload_shotgun" fps 30 
$sequence "crouch_aim_m249" {
          "crouch_aim_m249_blend1" 
          "crouch_aim_m249_blend2" 
          "crouch_aim_m249_blend3" 
          "crouch_aim_m249_blend4" 
          "crouch_aim_m249_blend5" 
          "crouch_aim_m249_blend6" 
          "crouch_aim_m249_blend7" 
          "crouch_aim_m249_blend8" 
          "crouch_aim_m249_blend9" 
          blend XR -90 90 fps 10 loop 
}
$sequence "crouch_shoot_m249" {
          "crouch_shoot_m249_blend1" 
          "crouch_shoot_m249_blend2" 
          "crouch_shoot_m249_blend3" 
          "crouch_shoot_m249_blend4" 
          "crouch_shoot_m249_blend5" 
          "crouch_shoot_m249_blend6" 
          "crouch_shoot_m249_blend7" 
          "crouch_shoot_m249_blend8" 
          "crouch_shoot_m249_blend9" 
          blend XR -90 90 fps 30 loop { event 5001 0 "50" } 
}
$sequence "crouch_reload_m249" "crouch_reload_m249" fps 30 
$sequence "ref_aim_m249" {
          "ref_aim_m249_blend1" 
          "ref_aim_m249_blend2" 
          "ref_aim_m249_blend3" 
          "ref_aim_m249_blend4" 
          "ref_aim_m249_blend5" 
          "ref_aim_m249_blend6" 
          "ref_aim_m249_blend7" 
          "ref_aim_m249_blend8" 
          "ref_aim_m249_blend9" 
          blend XR -90 90 fps 10 loop 
}
$sequence "ref_shoot_m249" {
          "ref_shoot_m249_blend1" 
          "ref_shoot_m249_blend2" 
          "ref_shoot_m249_blend3" 
          "ref_shoot_m249_blend4" 
          "ref_shoot_m249_blend5" 
          "ref_shoot_m249_blend6" 
          "ref_shoot_m249_blend7" 
          "ref_shoot_m249_blend8" 
          "ref_shoot_m249_blend9" 
          blend XR -90 90 fps 30 loop { event 5001 0 "50" } 
}
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
          blend XR -90 90 fps 20 loop 
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
          blend XR -90 90 fps 45 
}
$sequence "crouch_aim_grenade" {
          "crouch_aim_grenade_blend1" 
          "crouch_aim_grenade_blend2" 
          "crouch_aim_grenade_blend3" 
          "crouch_aim_grenade_blend4" 
          "crouch_aim_grenade_blend5" 
          "crouch_aim_grenade_blend6" 
          "crouch_aim_grenade_blend7" 
          "crouch_aim_grenade_blend8" 
          "crouch_aim_grenade_blend9" 
          blend XR -90 90 fps 20 loop 
}
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
          blend XR -90 90 fps 45 
}
$sequence "crouch_aim_c4" {
          "crouch_aim_c4_blend1" 
          "crouch_aim_c4_blend2" 
          "crouch_aim_c4_blend3" 
          "crouch_aim_c4_blend4" 
          "crouch_aim_c4_blend5" 
          "crouch_aim_c4_blend6" 
          "crouch_aim_c4_blend7" 
          "crouch_aim_c4_blend8" 
          "crouch_aim_c4_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "crouch_shoot_c4" "crouch_shoot_c4" fps 30 
$sequence "ref_aim_c4" {
          "ref_aim_c4_blend1" 
          "ref_aim_c4_blend2" 
          "ref_aim_c4_blend3" 
          "ref_aim_c4_blend4" 
          "ref_aim_c4_blend5" 
          "ref_aim_c4_blend6" 
          "ref_aim_c4_blend7" 
          "ref_aim_c4_blend8" 
          "ref_aim_c4_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "ref_shoot_c4" "ref_shoot_c4" fps 30 
$sequence "ref_reload_c4" "ref_reload_c4" fps 30 
$sequence "crouch_aim_dualpistols_2" {
          "crouch_aim_dualpistols_2_blend1" 
          "crouch_aim_dualpistols_2_blend2" 
          "crouch_aim_dualpistols_2_blend3" 
          "crouch_aim_dualpistols_2_blend4" 
          "crouch_aim_dualpistols_2_blend5" 
          "crouch_aim_dualpistols_2_blend6" 
          "crouch_aim_dualpistols_2_blend7" 
          "crouch_aim_dualpistols_2_blend8" 
          "crouch_aim_dualpistols_2_blend9" 
          blend XR -90 90 fps 10 loop 
}
$sequence "crouch_shoot_dualpistols_2" {
          "crouch_shoot_dualpistols_2_blend1" 
          "crouch_shoot_dualpistols_2_blend2" 
          "crouch_shoot_dualpistols_2_blend3" 
          "crouch_shoot_dualpistols_2_blend4" 
          "crouch_shoot_dualpistols_2_blend5" 
          "crouch_shoot_dualpistols_2_blend6" 
          "crouch_shoot_dualpistols_2_blend7" 
          "crouch_shoot_dualpistols_2_blend8" 
          "crouch_shoot_dualpistols_2_blend9" 
          blend XR -90 90 fps 30 { event 5011 0 "10" } 
}
$sequence "crouch_shoot2_dualpistols_2" {
          "crouch_shoot2_dualpistols_2_blend1" 
          "crouch_shoot2_dualpistols_2_blend2" 
          "crouch_shoot2_dualpistols_2_blend3" 
          "crouch_shoot2_dualpistols_2_blend4" 
          "crouch_shoot2_dualpistols_2_blend5" 
          "crouch_shoot2_dualpistols_2_blend6" 
          "crouch_shoot2_dualpistols_2_blend7" 
          "crouch_shoot2_dualpistols_2_blend8" 
          "crouch_shoot2_dualpistols_2_blend9" 
          blend XR -90 90 fps 30 { event 5001 0 "10" } 
}
$sequence "crouch_reload_dualpistols_2" "crouch_reload_dualpistols_2" fps 30 
$sequence "ref_aim_dualpistols_2" {
          "ref_aim_dualpistols_2_blend1" 
          "ref_aim_dualpistols_2_blend2" 
          "ref_aim_dualpistols_2_blend3" 
          "ref_aim_dualpistols_2_blend4" 
          "ref_aim_dualpistols_2_blend5" 
          "ref_aim_dualpistols_2_blend6" 
          "ref_aim_dualpistols_2_blend7" 
          "ref_aim_dualpistols_2_blend8" 
          "ref_aim_dualpistols_2_blend9" 
          blend XR -90 90 fps 10 loop 
}
$sequence "ref_shoot_dualpistols_2" {
          "ref_shoot_dualpistols_2_blend1" 
          "ref_shoot_dualpistols_2_blend2" 
          "ref_shoot_dualpistols_2_blend3" 
          "ref_shoot_dualpistols_2_blend4" 
          "ref_shoot_dualpistols_2_blend5" 
          "ref_shoot_dualpistols_2_blend6" 
          "ref_shoot_dualpistols_2_blend7" 
          "ref_shoot_dualpistols_2_blend8" 
          "ref_shoot_dualpistols_2_blend9" 
          blend XR -90 90 fps 30 { event 5011 0 "10" } 
}
$sequence "ref_shoot2_dualpistols_2" {
          "ref_shoot2_dualpistols_2_blend1" 
          "ref_shoot2_dualpistols_2_blend2" 
          "ref_shoot2_dualpistols_2_blend3" 
          "ref_shoot2_dualpistols_2_blend4" 
          "ref_shoot2_dualpistols_2_blend5" 
          "ref_shoot2_dualpistols_2_blend6" 
          "ref_shoot2_dualpistols_2_blend7" 
          "ref_shoot2_dualpistols_2_blend8" 
          "ref_shoot2_dualpistols_2_blend9" 
          blend XR -90 90 fps 30 { event 5001 0 "10" } 
}
$sequence "ref_reload_dualpistols_2" "ref_reload_dualpistols_2" fps 30 
$sequence "crouch_aim_knife" {
          "crouch_aim_knife_blend1" 
          "crouch_aim_knife_blend2" 
          "crouch_aim_knife_blend3" 
          "crouch_aim_knife_blend4" 
          "crouch_aim_knife_blend5" 
          "crouch_aim_knife_blend6" 
          "crouch_aim_knife_blend7" 
          "crouch_aim_knife_blend8" 
          "crouch_aim_knife_blend9" 
          blend XR -90 90 fps 12 loop 
}
$sequence "crouch_shoot_knife" {
          "crouch_shoot_knife_blend1" 
          "crouch_shoot_knife_blend2" 
          "crouch_shoot_knife_blend3" 
          "crouch_shoot_knife_blend4" 
          "crouch_shoot_knife_blend5" 
          "crouch_shoot_knife_blend6" 
          "crouch_shoot_knife_blend7" 
          "crouch_shoot_knife_blend8" 
          "crouch_shoot_knife_blend9" 
          blend XR -90 90 fps 30 
}
$sequence "ref_aim_knife" {
          "ref_aim_knife_blend1" 
          "ref_aim_knife_blend2" 
          "ref_aim_knife_blend3" 
          "ref_aim_knife_blend4" 
          "ref_aim_knife_blend5" 
          "ref_aim_knife_blend6" 
          "ref_aim_knife_blend7" 
          "ref_aim_knife_blend8" 
          "ref_aim_knife_blend9" 
          blend XR -90 90 fps 12 loop 
}
$sequence "ref_shoot_knife" {
          "ref_shoot_knife_blend1" 
          "ref_shoot_knife_blend2" 
          "ref_shoot_knife_blend3" 
          "ref_shoot_knife_blend4" 
          "ref_shoot_knife_blend5" 
          "ref_shoot_knife_blend6" 
          "ref_shoot_knife_blend7" 
          "ref_shoot_knife_blend8" 
          "ref_shoot_knife_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "crouch_aim_ak47" {
          "crouch_aim_ak47_blend1" 
          "crouch_aim_ak47_blend2" 
          "crouch_aim_ak47_blend3" 
          "crouch_aim_ak47_blend4" 
          "crouch_aim_ak47_blend5" 
          "crouch_aim_ak47_blend6" 
          "crouch_aim_ak47_blend7" 
          "crouch_aim_ak47_blend8" 
          "crouch_aim_ak47_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "crouch_shoot_ak47" {
          "crouch_shoot_ak47_blend1" 
          "crouch_shoot_ak47_blend2" 
          "crouch_shoot_ak47_blend3" 
          "crouch_shoot_ak47_blend4" 
          "crouch_shoot_ak47_blend5" 
          "crouch_shoot_ak47_blend6" 
          "crouch_shoot_ak47_blend7" 
          "crouch_shoot_ak47_blend8" 
          "crouch_shoot_ak47_blend9" 
          blend XR -90 90 fps 30 { event 5001 0 "40" } 
}
$sequence "crouch_reload_ak47" "crouch_reload_ak47" fps 30 
$sequence "ref_aim_ak47" {
          "ref_aim_ak47_blend1" 
          "ref_aim_ak47_blend2" 
          "ref_aim_ak47_blend3" 
          "ref_aim_ak47_blend4" 
          "ref_aim_ak47_blend5" 
          "ref_aim_ak47_blend6" 
          "ref_aim_ak47_blend7" 
          "ref_aim_ak47_blend8" 
          "ref_aim_ak47_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "ref_shoot_ak47" {
          "ref_shoot_ak47_blend1" 
          "ref_shoot_ak47_blend2" 
          "ref_shoot_ak47_blend3" 
          "ref_shoot_ak47_blend4" 
          "ref_shoot_ak47_blend5" 
          "ref_shoot_ak47_blend6" 
          "ref_shoot_ak47_blend7" 
          "ref_shoot_ak47_blend8" 
          "ref_shoot_ak47_blend9" 
          blend XR -90 90 fps 30 { event 5001 0 "40" } 
}
$sequence "ref_reload_ak47" "ref_reload_ak47" fps 30 
$sequence "crouch_aim_shieldgren" {
          "crouch_aim_shieldgren_blend1" 
          "crouch_aim_shieldgren_blend2" 
          "crouch_aim_shieldgren_blend3" 
          "crouch_aim_shieldgren_blend4" 
          "crouch_aim_shieldgren_blend5" 
          "crouch_aim_shieldgren_blend6" 
          "crouch_aim_shieldgren_blend7" 
          "crouch_aim_shieldgren_blend8" 
          "crouch_aim_shieldgren_blend9" 
          blend XR -90 90 fps 20 loop 
}
$sequence "crouch_shoot_shieldgren" {
          "crouch_shoot_shieldgren_blend1" 
          "crouch_shoot_shieldgren_blend2" 
          "crouch_shoot_shieldgren_blend3" 
          "crouch_shoot_shieldgren_blend4" 
          "crouch_shoot_shieldgren_blend5" 
          "crouch_shoot_shieldgren_blend6" 
          "crouch_shoot_shieldgren_blend7" 
          "crouch_shoot_shieldgren_blend8" 
          "crouch_shoot_shieldgren_blend9" 
          blend XR -90 90 fps 45 
}
$sequence "ref_aim_shieldgren" {
          "ref_aim_shieldgren_blend1" 
          "ref_aim_shieldgren_blend2" 
          "ref_aim_shieldgren_blend3" 
          "ref_aim_shieldgren_blend4" 
          "ref_aim_shieldgren_blend5" 
          "ref_aim_shieldgren_blend6" 
          "ref_aim_shieldgren_blend7" 
          "ref_aim_shieldgren_blend8" 
          "ref_aim_shieldgren_blend9" 
          blend XR -90 90 fps 20 loop 
}
$sequence "ref_shoot_shieldgren" {
          "ref_shoot_shieldgren_blend1" 
          "ref_shoot_shieldgren_blend2" 
          "ref_shoot_shieldgren_blend3" 
          "ref_shoot_shieldgren_blend4" 
          "ref_shoot_shieldgren_blend5" 
          "ref_shoot_shieldgren_blend6" 
          "ref_shoot_shieldgren_blend7" 
          "ref_shoot_shieldgren_blend8" 
          "ref_shoot_shieldgren_blend9" 
          blend XR -90 90 fps 45 
}
$sequence "crouch_aim_shieldknife" {
          "crouch_aim_shieldknife_blend1" 
          "crouch_aim_shieldknife_blend2" 
          "crouch_aim_shieldknife_blend3" 
          "crouch_aim_shieldknife_blend4" 
          "crouch_aim_shieldknife_blend5" 
          "crouch_aim_shieldknife_blend6" 
          "crouch_aim_shieldknife_blend7" 
          "crouch_aim_shieldknife_blend8" 
          "crouch_aim_shieldknife_blend9" 
          blend XR -90 90 fps 12 loop 
}
$sequence "crouch_shoot_shieldknife" {
          "crouch_shoot_shieldknife_blend1" 
          "crouch_shoot_shieldknife_blend2" 
          "crouch_shoot_shieldknife_blend3" 
          "crouch_shoot_shieldknife_blend4" 
          "crouch_shoot_shieldknife_blend5" 
          "crouch_shoot_shieldknife_blend6" 
          "crouch_shoot_shieldknife_blend7" 
          "crouch_shoot_shieldknife_blend8" 
          "crouch_shoot_shieldknife_blend9" 
          blend XR -90 90 fps 30 
}
$sequence "ref_aim_shieldknife" {
          "ref_aim_shieldknife_blend1" 
          "ref_aim_shieldknife_blend2" 
          "ref_aim_shieldknife_blend3" 
          "ref_aim_shieldknife_blend4" 
          "ref_aim_shieldknife_blend5" 
          "ref_aim_shieldknife_blend6" 
          "ref_aim_shieldknife_blend7" 
          "ref_aim_shieldknife_blend8" 
          "ref_aim_shieldknife_blend9" 
          blend XR -90 90 fps 12 loop 
}
$sequence "ref_shoot_shieldknife" {
          "ref_shoot_shieldknife_blend1" 
          "ref_shoot_shieldknife_blend2" 
          "ref_shoot_shieldknife_blend3" 
          "ref_shoot_shieldknife_blend4" 
          "ref_shoot_shieldknife_blend5" 
          "ref_shoot_shieldknife_blend6" 
          "ref_shoot_shieldknife_blend7" 
          "ref_shoot_shieldknife_blend8" 
          "ref_shoot_shieldknife_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "crouch_aim_shieldgun" {
          "crouch_aim_shieldgun_blend1" 
          "crouch_aim_shieldgun_blend2" 
          "crouch_aim_shieldgun_blend3" 
          "crouch_aim_shieldgun_blend4" 
          "crouch_aim_shieldgun_blend5" 
          "crouch_aim_shieldgun_blend6" 
          "crouch_aim_shieldgun_blend7" 
          "crouch_aim_shieldgun_blend8" 
          "crouch_aim_shieldgun_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "crouch_shoot_shieldgun" {
          "crouch_shoot_shieldgun_blend1" 
          "crouch_shoot_shieldgun_blend2" 
          "crouch_shoot_shieldgun_blend3" 
          "crouch_shoot_shieldgun_blend4" 
          "crouch_shoot_shieldgun_blend5" 
          "crouch_shoot_shieldgun_blend6" 
          "crouch_shoot_shieldgun_blend7" 
          "crouch_shoot_shieldgun_blend8" 
          "crouch_shoot_shieldgun_blend9" 
          blend XR -90 90 fps 30 { event 5001 0 "10" } 
}
$sequence "crouch_reload_shieldgun" "crouch_reload_shieldgun" fps 30 
$sequence "ref_aim_shieldgun" {
          "ref_aim_shieldgun_blend1" 
          "ref_aim_shieldgun_blend2" 
          "ref_aim_shieldgun_blend3" 
          "ref_aim_shieldgun_blend4" 
          "ref_aim_shieldgun_blend5" 
          "ref_aim_shieldgun_blend6" 
          "ref_aim_shieldgun_blend7" 
          "ref_aim_shieldgun_blend8" 
          "ref_aim_shieldgun_blend9" 
          blend XR -90 90 fps 30 loop 
}
$sequence "ref_shoot_shieldgun" {
          "ref_shoot_shieldgun_blend1" 
          "ref_shoot_shieldgun_blend2" 
          "ref_shoot_shieldgun_blend3" 
          "ref_shoot_shieldgun_blend4" 
          "ref_shoot_shieldgun_blend5" 
          "ref_shoot_shieldgun_blend6" 
          "ref_shoot_shieldgun_blend7" 
          "ref_shoot_shieldgun_blend8" 
          "ref_shoot_shieldgun_blend9" 
          blend XR -90 90 fps 30 { event 5001 0 "10" } 
}
$sequence "ref_reload_shieldgun" "ref_reload_shieldgun" fps 30 
$sequence "crouch_aim_shielded" {
          "crouch_aim_shielded_blend1" 
          "crouch_aim_shielded_blend2" 
          "crouch_aim_shielded_blend3" 
          "crouch_aim_shielded_blend4" 
          "crouch_aim_shielded_blend5" 
          "crouch_aim_shielded_blend6" 
          "crouch_aim_shielded_blend7" 
          "crouch_aim_shielded_blend8" 
          "crouch_aim_shielded_blend9" 
          blend XR -90 90 fps 20 loop 
}
$sequence "ref_aim_shielded" {
          "ref_aim_shielded_blend1" 
          "ref_aim_shielded_blend2" 
          "ref_aim_shielded_blend3" 
          "ref_aim_shielded_blend4" 
          "ref_aim_shielded_blend5" 
          "ref_aim_shielded_blend6" 
          "ref_aim_shielded_blend7" 
          "ref_aim_shielded_blend8" 
          "ref_aim_shielded_blend9" 
          blend XR -90 90 fps 20 loop 
}
$sequence "gut_flinch" {
          "gut_flinch_blend1" 
          "gut_flinch_blend2" 
          "gut_flinch_blend3" 
          "gut_flinch_blend4" 
          "gut_flinch_blend5" 
          "gut_flinch_blend6" 
          "gut_flinch_blend7" 
          "gut_flinch_blend8" 
          "gut_flinch_blend9" 
          blend XR -90 90 fps 30 
}
$sequence "head_flinch" {
          "head_flinch_blend1" 
          "head_flinch_blend2" 
          "head_flinch_blend3" 
          "head_flinch_blend4" 
          "head_flinch_blend5" 
          "head_flinch_blend6" 
          "head_flinch_blend7" 
          "head_flinch_blend8" 
          "head_flinch_blend9" 
          blend XR -90 90 fps 30 
}
$sequence "death1" "death1" fps 30 ACT_DIE_CHESTSHOT 1 { event 2001 1 } 
$sequence "death2" "death2" fps 30 ACT_DIESIMPLE 2 { event 2001 1 } 
$sequence "death3" "death3" fps 30 ACT_DIE_BACKSHOT 1 { event 2001 1 } 
$sequence "head" "head" fps 30 ACT_DIE_HEADSHOT 1 { event 2001 1 } 
$sequence "gutshot" "gutshot" fps 30 ACT_DIE_GUTSHOT 1 { event 2001 1 } 
$sequence "left" "left" fps 30 ACT_DIESIMPLE 1 { event 2001 1 } 
$sequence "back" "back" fps 30 ACT_DIEBACKWARD 1 { event 2001 1 } 
$sequence "right" "right" fps 30 ACT_DIESIMPLE 1 { event 2001 1 } 
$sequence "forward" "forward" fps 30 ACT_DIEFORWARD 1 { event 2001 1 } 
$sequence "crouch_die" "crouch_die" fps 30 { event 2001 1 } 

// End of QC script.
