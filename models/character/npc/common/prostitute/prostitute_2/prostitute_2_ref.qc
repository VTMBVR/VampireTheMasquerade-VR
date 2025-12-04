// Created by Crowbar 0.74

$modelname "character/npc/common/prostitute/prostitute_2/prostitute_2_Ref.mdl"

$bodygroup "mainbody"
{
	studio "prostitute_2_REF"
}

$lod 15
{
	replacemodel "prostitute_2_REF.smd" "prostitute_2_REF_lod1.smd"
}
$lod 20
{
	replacemodel "prostitute_2_REF.smd" "prostitute_2_REF_lod2.smd"
}
$lod 25
{
	replacemodel "prostitute_2_REF.smd" "prostitute_2_REF_lod3.smd"
}
$lod 30
{
	replacemodel "prostitute_2_REF.smd" "prostitute_2_REF_lod4.smd"
}
$lod 50
{
	replacemodel "prostitute_2_REF.smd" "prostitute_2_REF_lod5.smd"
}
$shadowlod
{
	replacemodel "prostitute_2_REF.smd" "prostitute_2_REF_lod6.smd"
}

$illumposition 0 0 64.652

$eyeposition 0.5 -0.5 0.5

$surfaceprop "flesh"

$cdmaterials "models\character\npc\common\prostitute\prostitute_2\"
$cdmaterials "models\character\teeth\"

$attachment "0" "Bip01 R Hand" 0 0 0
$attachment "mouth" "Bip01 Head" 1.489997 4.45 0
$attachment "eyes" "Bip01 Head" 3.740001 3.299999 0

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 0 "Bip01 Pelvis" -4.978009 -2.919304 -4.9097 8.813393 5.326497 4.8638
$hbox 3 "Bip01 Spine" -2.006387 -4.879624 -5.909119 15.363283 5.287242 5.909081
$hbox 2 "Bip01 Spine1" -5.14404 -3.93165 -6.579316 13.059708 6.082455 6.579285
$hbox 2 "Bip01 Spine2" -5.982648 -3.955931 -6.579316 7.749945 5.758194 6.579285
$hbox 1 "Bip01 Neck" -0.536826 -1.148722 -1.919517 3.427643 2.918472 1.919483
$hbox 1 "Bip01 Head" -2.003684 -3.75373 -3.681023 7.244478 5.022695 3.680577
$hbox 4 "Bip01 L UpperArm" -2.368021 -1.979105 -1.949274 9.995443 1.960154 1.66005
$hbox 4 "Bip01 L Forearm" -0.431406 -2.365516 -1.582496 16.332113 1.476719 1.272358
$hbox 4 "Bip01 L Hand" -0.904762 -0.77072 -2.33407 6.564686 1.237409 1.564372
$hbox 5 "Bip01 R UpperArm" -2.682296 -1.992756 -1.716866 9.995542 1.965191 1.962832
$hbox 5 "Bip01 R Forearm" -0.432796 -2.365424 -1.272341 16.332108 1.476812 1.582461
$hbox 5 "Bip01 R Hand" -0.254616 -0.770681 -3.171222 6.564682 1.237444 2.333976
$hbox 6 "Bip01 L Thigh" -3.364782 -8.050665 -7.203792 19.728203 7.608812 4.540208
$hbox 6 "Bip01 L Calf" -0.594791 -3.371389 -2.274446 21.780512 7.810415 2.382255
$hbox 6 "Bip01 L Foot" -7.142328 -1.875483 -2.165461 3.674169 4.770401 1.87604
$hbox 7 "Bip01 R Thigh" -3.364774 -8.050673 -4.589672 19.728212 7.608809 7.203688
$hbox 7 "Bip01 R Calf" -0.594781 -3.370998 -2.381993 21.780521 7.810404 2.274394
$hbox 7 "Bip01 R Foot" -7.142328 -1.875295 -1.876092 3.674171 4.770391 2.16541

$sequence "ragdoll" {
	"prostitute_2_ref_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fps 30
}

$includemodel "character/shared/female/npc_allsequences.mdl"
