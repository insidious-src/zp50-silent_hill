$modelname "../../../../models/player/sh_nurse/sh_nurse.mdl"
$cd "./"
$cdtexture "./"
$cliptotextures

// Write textures into a ???T.mdl
//$externaltextures

$scale 1.0

// bodygroups: use relative path from $cd
$body studio "head"
$body studio "arms"
$body studio "breasts"
$body studio "dress"
$body studio "hat"
$body studio "legs"
$body studio "shoes"
//$body studio "knife"

// sequences
//$sequence static "anims/static" fps 10
$sequence idle "anims/idle" fps 30 LOOP ACT_IDLE 1
//$sequence crouch "anims/crouch" fps 30 LOOP ACT_CROUCH 1
//$sequence crouchwalk "anims/crouchwalk" fps 30 LX LOOP ACT_CROUCHWALK 1
//$sequence walk "anims/walk" fps 30 LX loop ACT_WALK 1
//$sequence run "anims/run" fps 30 LX loop ACT_RUN 1
//$sequence swim "anims/swim" fps 30 LX loop ACT_SWIM 1
//$sequence jump "anims/jump" fps 30 LX ACT_JUMP 1
//$sequence climb "anims/climb" fps 30 LX loop ACT_CLIMB 1
//$sequence attack "anims/attack" fps 30 LX ACT_KNIFE 1
