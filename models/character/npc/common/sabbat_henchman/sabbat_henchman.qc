// Created by Crowbar 0.74

$modelname "character/npc/common/Sabbat_Henchman/Sabbat_Henchman.mdl"

$bodygroup "mainbody"
{
	studio "Sabbat_Henchman_REF"
}

$lod 15
{
	replacemodel "Sabbat_Henchman_REF.smd" "Sabbat_Henchman_REF_lod1.smd"
}
$lod 25
{
	replacemodel "Sabbat_Henchman_REF.smd" "Sabbat_Henchman_REF_lod2.smd"
}
$lod 45
{
	replacemodel "Sabbat_Henchman_REF.smd" "Sabbat_Henchman_REF_lod3.smd"
}
$lod 55
{
	replacemodel "Sabbat_Henchman_REF.smd" "Sabbat_Henchman_REF_lod4.smd"
}
$lod 65
{
	replacemodel "Sabbat_Henchman_REF.smd" "Sabbat_Henchman_REF_lod5.smd"
}
$shadowlod
{
	replacemodel "Sabbat_Henchman_REF.smd" "Sabbat_Henchman_REF_lod6.smd"
}

$illumposition 0 0 67.655

$eyeposition 0.5 -0.5 0.5

$surfaceprop "flesh"

$cdmaterials "models\character\npc\common\Sabbat_Henchman\"
$cdmaterials "models\character\teeth\"
$cdmaterials "models\character\eyes\"

$attachment "mouth" "Bip01 Head" 2 3.199999 0
$attachment "eyes" "Bip01 Head" 4.499995 2.2 0
$attachment "0" "Bip01 R Hand" 0 0 0

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 0 "Bip01 Pelvis" -11.082192 -5.711614 -7.648535 8.863701 6.38891 7.648565
$hbox 3 "Bip01 Spine" -1.387814 -6.728841 -9.119183 21.709177 5.316605 9.152316
$hbox 2 "Bip01 Spine1" -4.12026 -5.622279 -9.190576 17.188713 6.208769 9.311934
$hbox 2 "Bip01 Spine2" -5.79288 -5.24573 -10.108773 11.241774 6.102256 10.695734
$hbox 1 "Bip01 Neck" 0 -3.474224 -3.712288 3.89553 2.829865 3.712112
$hbox 1 "Bip01 Head" -1.451887 -5.938253 -4.121001 8.116248 4.943069 4.121499
$hbox 4 "Bip01 L UpperArm" -0.444813 -4.710828 -4.306231 11.284492 3.163887 2.807437
$hbox 4 "Bip01 L Forearm" -1.009132 -3.593597 -3.068327 18.215124 2.794692 2.381979
$hbox 4 "Bip01 L Hand" 0 -1.86696 -3.686078 8.854102 2.946991 2.27213
$hbox 5 "Bip01 R UpperArm" -0.471703 -4.710914 -2.78818 11.284572 3.160559 4.953859
$hbox 5 "Bip01 R Forearm" -1.009003 -3.57995 -2.381931 18.115866 2.794661 3.068382
$hbox 5 "Bip01 R Hand" -0.009664 -1.866796 -3.232237 8.74256 2.947151 3.685065
$hbox 6 "Bip01 L Thigh" -2.241702 -5.756701 -4.147394 17.830053 5.839718 5.257603
$hbox 6 "Bip01 L Calf" -1.300205 -4.443977 -3.727443 21.523357 9.504786 3.517059
$hbox 6 "Bip01 L Foot" -6.868221 -4.391678 -3.727443 3.583766 9.195521 3.069962
$hbox 7 "Bip01 R Thigh" -2.241687 -5.756705 -5.257663 17.830051 5.969372 4.14734
$hbox 7 "Bip01 R Calf" -1.300174 -4.443989 -3.517207 21.523376 9.504778 3.727391
$hbox 7 "Bip01 R Foot" -6.868213 -4.391687 -3.070104 3.583766 9.195513 3.727391

$sequence "Sabbat_Shooting_In_The_Air" {
	"sabbat_henchman_anims\Sabbat_Shooting_In_The_Air.smd"
	activity "ACT_SABBAT_SHOOTING_IN_THE_AIR" 1
	fps 30
}
$sequence "Sabbat_Shooting_And_Laughing" {
	"sabbat_henchman_anims\Sabbat_Shooting_And_Laughing.smd"
	activity "ACT_SABBAT_SHOOTING_SHOOTING_AND_LAUGHING" 1
	fps 30
}
$sequence "ragdoll" {
	"sabbat_henchman_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fps 30
}

$includemodel "character/shared/male/npc_allsequences.mdl"

$collisionjoints "sabbat_henchman_physics.smd"
{
	$mass 90
	$inertia 5
	$damping 0.05
	$rotdamping 2
	$rootbone " "


	$jointmassbias "Bip01 R Thigh" 2
	$jointconstrain "Bip01 R Thigh" x limit -25 20 1
	$jointconstrain "Bip01 R Thigh" y limit -40 20 1
	$jointconstrain "Bip01 R Thigh" z limit -37 63 1

	$jointconstrain "Bip01 R Calf" x limit 0 0 0
	$jointconstrain "Bip01 R Calf" y limit 0 0 0
	$jointconstrain "Bip01 R Calf" z limit -95 4 1

	$jointmassbias "Bip01 L Thigh" 2
	$jointconstrain "Bip01 L Thigh" x limit -25 20 1
	$jointconstrain "Bip01 L Thigh" y limit -20 40 1
	$jointconstrain "Bip01 L Thigh" z limit -37 63 1

	$jointconstrain "Bip01 L Calf" x limit 0 0 0
	$jointconstrain "Bip01 L Calf" y limit 0 0 0
	$jointconstrain "Bip01 L Calf" z limit -95 4 1

	$jointconstrain "Bip01 L Foot" x limit 0 0 0
	$jointconstrain "Bip01 L Foot" y limit 0 0 0
	$jointconstrain "Bip01 L Foot" z limit -15 35 1

	$jointconstrain "Bip01 Spine1" x limit -25 25 1
	$jointconstrain "Bip01 Spine1" y limit -25 25 1
	$jointconstrain "Bip01 Spine1" z limit -25 15 1

	$jointmassbias "Bip01 R UpperArm" 2
	$jointconstrain "Bip01 R UpperArm" x limit -20 20 1
	$jointconstrain "Bip01 R UpperArm" y limit -40 35 1
	$jointconstrain "Bip01 R UpperArm" z limit -60 30 1

	$jointmassbias "Bip01 R Forearm" 3
	$jointconstrain "Bip01 R Forearm" x limit 0 0 0
	$jointconstrain "Bip01 R Forearm" y limit 0 0 0
	$jointconstrain "Bip01 R Forearm" z limit -120 4 1

	$jointmassbias "Bip01 L UpperArm" 2
	$jointconstrain "Bip01 L UpperArm" x limit -20 20 1
	$jointconstrain "Bip01 L UpperArm" y limit -35 40 1
	$jointconstrain "Bip01 L UpperArm" z limit -60 30 1

	$jointmassbias "Bip01 L Forearm" 3
	$jointconstrain "Bip01 L Forearm" x limit 0 0 0
	$jointconstrain "Bip01 L Forearm" y limit 0 0 0
	$jointconstrain "Bip01 L Forearm" z limit -120 4 1

	$jointmassbias "Bip01 L Hand" 2
	$jointconstrain "Bip01 L Hand" x limit 0 0 0
	$jointconstrain "Bip01 L Hand" y limit 0 0 0
	$jointconstrain "Bip01 L Hand" z limit -35 60 1

	$jointrotdamping "Bip01 Head" 5
	$jointconstrain "Bip01 Head" x limit -20 20 1
	$jointconstrain "Bip01 Head" y limit -25 25 1
	$jointconstrain "Bip01 Head" z limit -13 30 1

	$jointmassbias "Bip01 R Hand" 2
	$jointconstrain "Bip01 R Hand" x limit 0 0 0
	$jointconstrain "Bip01 R Hand" y limit 0 0 0
	$jointconstrain "Bip01 R Hand" z limit -35 60 1

	$jointconstrain "Bip01 R Foot" x limit 0 0 0
	$jointconstrain "Bip01 R Foot" y limit 0 0 0
	$jointconstrain "Bip01 R Foot" z limit -15 35 1
}
