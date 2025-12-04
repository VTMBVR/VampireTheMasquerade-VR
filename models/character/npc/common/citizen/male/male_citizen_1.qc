// Created by Crowbar 0.74

$modelname "character/npc/common/citizen/male/male_citizen_1.mdl"

$bodygroup "mainbody"
{
	studio "male_citizen_1_REF"
}

$lod 15
{
	replacemodel "male_citizen_1_REF.smd" "male_citizen_1_REF_lod1.smd"
}
$lod 20
{
	replacemodel "male_citizen_1_REF.smd" "male_citizen_1_REF_lod2.smd"
}
$lod 30
{
	replacemodel "male_citizen_1_REF.smd" "male_citizen_1_REF_lod3.smd"
}
$lod 40
{
	replacemodel "male_citizen_1_REF.smd" "male_citizen_1_REF_lod4.smd"
}
$lod 50
{
	replacemodel "male_citizen_1_REF.smd" "male_citizen_1_REF_lod5.smd"
}
$shadowlod
{
	replacemodel "male_citizen_1_REF.smd" "male_citizen_1_REF_lod6.smd"
}

$illumposition 0 0 68.353

$eyeposition 0.5 -0.5 0.5

$surfaceprop "flesh"

$cdmaterials "models\character\npc\common\citizen\male\"
$cdmaterials "models\character\teeth\"

$attachment "mouth" "Bip01 Head" 2 3.199999 0
$attachment "eyes" "Bip01 Head" 4.499995 2.200001 0
$attachment "0" "Bip01 R Hand" 0 0.000001 0

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 0 "Bip01 Pelvis" -5.707126 -5.182212 -6.775637 5.168701 5.628668 6.562764
$hbox 3 "Bip01 Spine" -1.782432 -6.035023 -8.251377 21.740055 5.197206 8.138021
$hbox 2 "Bip01 Spine1" -3.332269 -5.310297 -9.124574 18.614019 6.270311 9.011125
$hbox 2 "Bip01 Spine2" -2.943759 -4.494634 -9.124574 12.474226 6.294181 9.011125
$hbox 1 "Bip01 Neck" -3.138241 -2.680987 -3.753589 5.210011 3.058612 3.640211
$hbox 1 "Bip01 Head" -1.161272 -3.750523 -3.676506 8.618229 5.330399 3.561994
$hbox 4 "Bip01 L UpperArm" -0.214707 -3.706909 -3.875981 10.293985 2.922334 2.250397
$hbox 4 "Bip01 L Forearm" -0.748999 -3.499854 -3.422403 18.115149 2.031191 2.048333
$hbox 4 "Bip01 L Hand" -0.520478 -1.769949 -3.543881 8.776766 2.608244 1.849452
$hbox 5 "Bip01 R UpperArm" -0.122769 -3.696477 -2.315712 10.293986 2.932757 3.810626
$hbox 5 "Bip01 R Forearm" -0.660704 -3.472116 -2.113701 18.203426 2.058896 3.356963
$hbox 5 "Bip01 R Hand" -0.425801 -1.822839 -3.232236 8.871446 2.5555 3.511195
$hbox 6 "Bip01 L Thigh" -0.425867 -4.935646 -3.052789 18.025806 5.244153 5.589321
$hbox 6 "Bip01 L Calf" -0.25403 -4.46754 -2.921343 21.502911 10.212447 3.396256
$hbox 6 "Bip01 L Foot" -1.932121 -3.479378 -2.921343 3.644879 9.454023 3.396256
$hbox 7 "Bip01 R Thigh" -0.425845 -4.93565 -5.476046 22.424772 5.244154 3.274445
$hbox 7 "Bip01 R Calf" -0.254014 -4.467548 -3.33781 21.502926 10.21244 3.489092
$hbox 7 "Bip01 R Foot" -1.932109 -3.479387 -3.509006 3.644894 9.45401 3.489092

$sequence "ragdoll" {
	"male_citizen_1_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fps 30
}

$includemodel "character/shared/male/npc_allsequences.mdl"
