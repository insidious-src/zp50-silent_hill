$modelname "../../../../models/player/sh_monster03/sh_monster03.mdl"
$cd "./"
$cdtexture "./"
$cliptotextures

// Write textures into a ???T.mdl
//$externaltextures

$scale 1.0

// bodygroups: use relative path from $cd
$body studio "monster_03"

// sequences: all sequences are in $cd
$sequence idle ""monster_03"" loop fps 30 ACT_IDLE 1
