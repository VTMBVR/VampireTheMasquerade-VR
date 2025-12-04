// Created by Crowbar 0.74

$modelname "character/npc/common/gangmember_male_2/gangmember_male_2.mdl"

$bodygroup "mainbody"
{
	studio "male_gangmember_2_REF"
}

$lod 10
{
	replacemodel "male_gangmember_2_REF.smd" "male_gangmember_2_REF_lod1.smd"
}
$lod 50
{
	replacemodel "male_gangmember_2_REF.smd" "male_gangmember_2_REF_lod2.smd"
}
$lod 60
{
	replacemodel "male_gangmember_2_REF.smd" "male_gangmember_2_REF_lod3.smd"
}
$lod 70
{
	replacemodel "male_gangmember_2_REF.smd" "male_gangmember_2_REF_lod4.smd"
}
$lod 80
{
	replacemodel "male_gangmember_2_REF.smd" "male_gangmember_2_REF_lod5.smd"
}
$shadowlod
{
	replacemodel "male_gangmember_2_REF.smd" "male_gangmember_2_REF_lod6.smd"
}

$illumposition 0 0 67.866

$eyeposition 0.5 -0.5 0.5

$surfaceprop "flesh"

$cdmaterials "models\character\npc\common\gangmember_male_2\"
$cdmaterials "models\character\teeth\"

$attachment "0" "Bip01 R Hand" 0 0.000002 0
$attachment "mouth" "Bip01 Head" 1.640005 4.299999 0
$attachment "eyes" "Bip01 Head" 4.500003 3.599999 0

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 0 "Bip01 Pelvis" -8.48978 -3.823855 -6.011903 7.830791 5.904511 6.011897
$hbox 3 "Bip01 Spine" -1.578555 -6.302349 -7.651846 21.341719 4.386406 6.644071
$hbox 2 "Bip01 Spine1" -3.614933 -4.910339 -7.651846 18.649836 5.40321 9.026168
$hbox 2 "Bip01 Spine2" -6.983046 -4.823627 -7.651846 12.862213 6.174451 9.129467
$hbox 1 "Bip01 Neck" -0.000001 -4.042297 -2.708155 4.427751 3.159784 3.757046
$hbox 1 "Bip01 Head" -2.686922 -4.900178 -3.556068 8.221551 5.154559 3.555932
$hbox 4 "Bip01 L UpperArm" -1.801881 -3.497008 -3.869715 10.732609 2.66778 1.879297
$hbox 4 "Bip01 L Forearm" -0.767278 -3.103804 -2.382837 17.943607 1.87333 1.400849
$hbox 4 "Bip01 L Hand" 0 -1.358178 -3.166985 8.696206 1.670823 1.928445
$hbox 5 "Bip01 R UpperArm" -1.801779 -3.496882 -1.8793 10.732704 2.667808 3.86971
$hbox 5 "Bip01 R Forearm" -0.787434 -3.103741 -1.400666 17.943684 1.873397 2.38278
$hbox 5 "Bip01 R Hand" 0 -1.357991 -3.232237 8.696262 1.671017 3.166931
$hbox 6 "Bip01 L Thigh" -1.646946 -4.130208 -2.915425 21.359917 5.614858 6.647867
$hbox 6 "Bip01 L Calf" -2.304605 -3.133331 -3.82247 21.363443 10.744909 5.799728
$hbox 6 "Bip01 L Foot" -2.372336 -1.637445 -3.597775 3.583766 8.618553 2.849126
$hbox 7 "Bip01 R Thigh" -1.646931 -4.130216 -6.971988 21.359936 5.614858 2.915409
$hbox 7 "Bip01 R Calf" -2.304576 -3.133337 -5.799838 21.375759 10.743998 3.822364
$hbox 7 "Bip01 R Foot" -2.372309 -1.828754 -2.84924 3.583766 8.541143 3.597659

$sequence "ragdoll" {
	"gangmember_male_2_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fps 30
}
$sequence "patron_barstand" {
	"gangmember_male_2_anims\patron_barstand.smd"
	fps 30
}
$sequence "patron_barsit_idle" {
	"gangmember_male_2_anims\patron_barsit_idle.smd"
	fps 30
}
$sequence "patron_barsit_look" {
	"gangmember_male_2_anims\patron_barsit_look.smd"
	fps 30
}
$sequence "patron_male_adjustment" {
	"gangmember_male_2_anims\patron_male_adjustment.smd"
	fps 30
}
$sequence "patron_male_idle" {
	"gangmember_male_2_anims\patron_male_idle.smd"
	fps 30
}
$sequence "walking_suitcase" {
	"gangmember_male_2_anims\walking_suitcase.smd"
	activity "ACT_WALK_WITH_BRIEFCASE" 1
	fps 30
}

$includemodel "character/shared/male/npc_allsequences.mdl"
