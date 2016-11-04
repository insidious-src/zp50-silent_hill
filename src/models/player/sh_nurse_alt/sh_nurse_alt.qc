$modelname "../../../../deploy/models/player/sh_nurse_alt/sh_nurse_alt.mdl"
$cd "."
$cdtexture "."
$scale 1.0
$cliptotextures


$bbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 0.000000


//reference mesh(es)
$body "studio" "175girlbody"

$body "studio" "175girlhead"


// 21 hit box(es)
$hbox 3 "Bip01 Pelvis" -2.870000 -4.260000 -6.580000 4.118604 4.210000 6.410000
$hbox 6 "Bip01 L Thigh" 3.000000 -2.170000 -2.430000 18.670000 2.810000 2.670000
$hbox 6 "Bip01 L Calf" 0.870000 -2.790000 -2.160000 17.496044 3.305300 1.870000
$hbox 6 "Bip01 L Foot" 3.500000 -2.000000 -1.480000 -0.120000 6.280000 1.920000
$hbox 7 "Bip01 R Thigh" 3.000000 -2.170000 -2.670000 18.670000 2.810000 2.430000
$hbox 7 "Bip01 R Calf" 0.870000 -2.790000 -1.870000 17.496044 3.305300 2.160000
$hbox 7 "Bip01 R Foot" 3.500000 -2.000000 -1.420000 -0.120000 6.280000 1.920000
$hbox 3 "Bip01 Spine" 0.000000 -3.070000 -4.810000 4.118382 3.910000 4.620000
$hbox 2 "Bip01 Spine1" -1.410000 -3.180000 -5.010000 4.280000 4.620000 5.000000
$hbox 2 "Bip01 Spine2" 0.000000 -4.500000 -5.840000 6.540000 4.980000 5.830000
$hbox 2 "Bip01 Neck" -2.230000 -2.010000 -1.690000 2.970000 2.700000 1.680000
$hbox 1 "Bip01 Head" 0.000000 -2.940000 -3.580000 7.850000 4.340000 3.740000
$hbox 4 "Bip01 L Clavicle" 0.000000 -2.150000 -1.910000 5.162684 1.960000 1.980000
$hbox 4 "Bip01 L UpperArm" 0.000000 -1.550000 -1.430000 9.616839 1.560000 1.470000
$hbox 4 "Bip01 L Forearm" 0.000000 -2.260000 -1.590240 10.390000 2.040000 1.730000
$hbox 4 "Bip01 L Hand" 0.000000 -1.470000 -1.630000 6.120061 1.710000 1.790000
$hbox 5 "Bip01 R Clavicle" 0.000000 -2.150000 -1.980000 5.162681 1.960000 1.910000
$hbox 5 "Bip01 R UpperArm" 0.000000 -1.550000 -1.470000 9.616840 1.560000 1.430000
$hbox 5 "Bip01 R Forearm" 0.000000 -2.260000 -1.730000 10.390000 2.040000 1.590240
$hbox 5 "Bip01 R Hand" 0.000000 -1.470000 -1.790000 6.120060 1.710000 1.630000
$hbox 8 "Bip01 L Hand" -16.100000 -6.500000 -19.000000 10.600000 1.500000 33.000000

// 111 animation sequence(s)
$sequence "dummy" "dummy" fps 24 loop
$sequence "idle1" "idle1" fps 30 loop ACT_IDLE 1
$sequence "crouch_idle" "crouch_idle" fps 30 loop ACT_CROUCHIDLE 1
$sequence "walk" "walk" LX fps 30 loop ACT_WALK 1
$sequence "run" "run" LX fps 60 loop ACT_RUN 1
$sequence "crouchrun" "crouchrun" LX fps 22 loop ACT_CROUCH 1
$sequence "jump" "jump" fps 15 ACT_HOP 1
$sequence "longjump" "longjump" fps 15 ACT_LEAP 1
$sequence "swim" "swim" fps 30 loop ACT_SWIM 1
$sequence "treadwater" "treadwater" fps 24 loop ACT_HOVER 1
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
$sequence "crouch_aim_grenade" "crouch_aim_grenade" fps 20 loop
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
$sequence "ref_aim_knife" "ref_aim_knife" fps 60 loop
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
$sequence "death1" "death1" fps 20 ACT_DIE_CHESTSHOT 1 { event 2001 1 }
$sequence "death2" "death2" fps 20 ACT_DIESIMPLE 2 { event 2001 1 }
$sequence "death3" "death3" fps 18 ACT_DIE_BACKSHOT 1 { event 2001 1 }
$sequence "head" "head" fps 22 ACT_DIE_HEADSHOT 1 { event 2001 1 }
$sequence "gutshot" "gutshot" fps 20 ACT_DIE_GUTSHOT 1 { event 2001 1 }
$sequence "left" "left" fps 18 ACT_DIESIMPLE 1 { event 2001 1 }
$sequence "back" "back" fps 18 ACT_DIEBACKWARD 1 { event 2001 1 }
$sequence "right" "right" fps 20 ACT_DIESIMPLE 1 { event 2001 1 }
$sequence "forward" "forward" fps 18 ACT_DIEFORWARD 1 { event 2001 1 }
$sequence "crouch_die" "crouch_die" fps 18 { event 2001 1 }

// End of QC script.
