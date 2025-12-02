// Created by Crowbar 0.74

$modelname "character/npc/unique/Downtown/Damsel/Damsel.mdl"

$bodygroup "girl"
{
	studio "Damsel_REF"
}


$illumposition 0 0 64.678

$eyeposition 0.5 -0.5 0.5

$surfaceprop "flesh"

$cdmaterials "models\character\npc\unique\Downtown\Damsel\"
$cdmaterials "models\character\npc\common\blood_doll\"
$cdmaterials "models\character\teeth\"

$attachment "0" "Bip01 R Hand" 0 0.000001 0
$attachment "mouth" "Bip01 Head" 1.619998 4.150002 0
$attachment "eyes" "Bip01 Head" 3.579998 3.550001 0

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 0 "Bip01 Pelvis" -8.047909 -4.237305 -6.482501 3.753293 5.6368 6.482599
$hbox 3 "Bip01 Spine" -4.293853 -4.629945 -5.226202 6.061203 5.250546 5.211498
$hbox 2 "Bip01 Spine1" -4.86095 -4.086281 -7.550014 7.425244 5.939943 7.567684
$hbox 2 "Bip01 Spine2" 0 -3.497547 -6.057216 4.851276 3.038184 6.057184
$hbox 1 "Bip01 Neck" -1.514886 -1.866399 -2.245518 3.278767 3.337332 2.245483
$hbox 1 "Bip01 Head" -1.157999 -4.315218 -4.873726 8.494206 5.518615 3.83727
$hbox 4 "Bip01 L UpperArm" -0.867284 -2.03136 -2.890678 9.654571 2.333363 1.633978
$hbox 4 "Bip01 L Forearm" -0.588836 -1.488589 -1.878852 9.767429 1.722994 1.276843
$hbox 4 "Bip01 L Hand" -0.452995 -0.68054 -2.017589 4.019242 1.211146 1.437731
$hbox 5 "Bip01 R UpperArm" -0.867244 -2.061421 -1.644377 9.764897 2.348336 2.983522
$hbox 5 "Bip01 R Forearm" 0 -1.488527 -1.276824 9.767428 1.723051 2.01123
$hbox 5 "Bip01 R Hand" -0.452966 -0.680501 -3.171222 4.019272 1.211181 2.017501
$hbox 6 "Bip01 L Thigh" -0.948998 -4.289897 -3.438545 19.020607 4.849942 5.647873
$hbox 6 "Bip01 L Calf" 0 -3.495322 -3.277991 21.021761 3.400677 2.561163
$hbox 6 "Bip01 L Foot" -1.88123 -1.91389 -3.06236 3.737377 4.921102 1.73634
$hbox 7 "Bip01 R Thigh" -0.948986 -4.289894 -5.647886 19.02062 4.849933 3.438439
$hbox 7 "Bip01 R Calf" 0 -3.494935 -2.561091 21.021769 3.400366 3.277658
$hbox 7 "Bip01 R Foot" -1.881226 -1.913806 -1.736391 3.737381 4.921092 3.062311

$sequence "ragdoll" {
	"damsel_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fps 30
}
$sequence "Damsel_Line11_col_E" {
	"damsel_anims\Damsel_Line11_col_E.smd"
	fps 30
}
$sequence "Damsel_Line31_col_E" {
	"damsel_anims\Damsel_Line31_col_E.smd"
	fps 30
}
$sequence "Damsel_Line41_col_E" {
	"damsel_anims\Damsel_Line41_col_E.smd"
	fps 30
}
$sequence "Damsel_Line51_col_E" {
	"damsel_anims\Damsel_Line51_col_E.smd"
	fps 30
}
$sequence "Damsel_Line61_col_E" {
	"damsel_anims\Damsel_Line61_col_E.smd"
	fps 30
}
$sequence "Damsel_Line71_col_E" {
	"damsel_anims\Damsel_Line71_col_E.smd"
	fps 30
}
$sequence "Damsel_Line81_col_E" {
	"damsel_anims\Damsel_Line81_col_E.smd"
	fps 30
}
$sequence "Damsel_Line91_col_E" {
	"damsel_anims\Damsel_Line91_col_E.smd"
	fps 30
}
$sequence "Damsel_Line131_col_E" {
	"damsel_anims\Damsel_Line131_col_E.smd"
	fps 30
}
$sequence "Damsel_Line231_col_E" {
	"damsel_anims\Damsel_Line231_col_E.smd"
	fps 30
}
$sequence "Damsel_Line281_col_E" {
	"damsel_anims\Damsel_Line281_col_E.smd"
	fps 30
}
$sequence "Damsel_Line461_col_E" {
	"damsel_anims\Damsel_Line461_col_E.smd"
	fps 30
}

$includemodel "character/shared/female/npc_allsequences.mdl"
