$modelname "../../../../deploy/models/player/sh_monster05/sh_monster05.mdl"
$cd "."
$cdtexture "."
$cliptotextures

// Write textures into a ???T.mdl
//$externaltextures

$scale 1.0

// bodygroups: use relative path from $cd
$body studio "monster_05"

// sequences: all sequences are in $cd
$sequence idle ""monster_05"" loop fps 30 ACT_IDLE 1
