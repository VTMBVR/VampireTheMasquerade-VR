// Created by Crowbar 0.74

$modelname "character/npc/common/shopkeeper/Shopkeeper_Santa_Monica_A/Shopkeeper_Santa_Monica_A.mdl"

$bodygroup "mainbody"
{
	studio "Shopkeeper_Santa_Monica_A_ref"
}

$lod 15
{
	replacemodel "Shopkeeper_Santa_Monica_A_ref.smd" "Shopkeeper_Santa_Monica_A_ref_lod1.smd"
}
$lod 25
{
	replacemodel "Shopkeeper_Santa_Monica_A_ref.smd" "Shopkeeper_Santa_Monica_A_ref_lod2.smd"
}
$lod 45
{
	replacemodel "Shopkeeper_Santa_Monica_A_ref.smd" "Shopkeeper_Santa_Monica_A_ref_lod3.smd"
}
$lod 55
{
	replacemodel "Shopkeeper_Santa_Monica_A_ref.smd" "Shopkeeper_Santa_Monica_A_ref_lod4.smd"
}
$lod 65
{
	replacemodel "Shopkeeper_Santa_Monica_A_ref.smd" "Shopkeeper_Santa_Monica_A_ref_lod5.smd"
}
$shadowlod
{
	replacemodel "Shopkeeper_Santa_Monica_A_ref.smd" "Shopkeeper_Santa_Monica_A_ref_lod6.smd"
}

$illumposition 0 0 67.9

$eyeposition 0.5 -0.5 0.5

$surfaceprop "flesh"

$cdmaterials "models\character\npc\common\shopkeeper\Shopkeeper_Santa_Monica_A\"
$cdmaterials "models\character\npc\common\bum\male\"
$cdmaterials "models\character\teeth\"
$cdmaterials "models\character\eyes\"
$cdmaterials "models\character\"

$attachment "0" "Bip01 R Hand" 0 -0.000001 0

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 0 "Bip01 Pelvis" -10.994027 -5.501869 -3.501184 3.385628 8.29274 3.501182
$hbox 3 "Bip01 Spine" -8.991056 -8.103454 -9.930044 19.221418 9.425511 11.072433
$hbox 2 "Bip01 Spine1" -1.631956 -7.46602 -11.312172 17.699566 8.325745 11.072433
$hbox 2 "Bip01 Spine2" -1.210704 -7.264069 -11.312172 11.703148 7.306552 10.299325
$hbox 1 "Bip01 Neck" -1.994358 -4.016983 -3.330791 4.100765 4.670944 3.271114
$hbox 1 "Bip01 Head" -4.270982 -5.058289 -3.854405 8.081731 5.529865 3.746095
$hbox 4 "Bip01 L UpperArm" -1.610166 -4.276872 -4.744977 11.042576 4.223232 2.318115
$hbox 4 "Bip01 L Forearm" 0 -2.948693 -3.645515 18.094149 2.861243 2.158247
$hbox 4 "Bip01 L Hand" -0.225452 -1.417199 -3.084612 8.777149 1.836764 1.832233
$hbox 5 "Bip01 R UpperArm" -1.488911 -4.266035 -2.38323 11.134511 4.233364 4.679332
$hbox 5 "Bip01 R Forearm" -0.325295 -2.920955 -2.223563 18.182428 2.888967 3.58014
$hbox 5 "Bip01 R Hand" -0.057691 -1.296515 -3.232237 8.87183 1.750022 2.957505
$hbox 6 "Bip01 L Thigh" -1.953781 -5.597171 -5.987708 18.514685 8.15381 5.636359
$hbox 6 "Bip01 L Calf" 0 -3.696386 -4.02523 22.058874 11.196197 4.092879
$hbox 6 "Bip01 L Foot" -3.952829 -3.083885 -3.978183 4.105767 8.064012 3.307723
$hbox 7 "Bip01 R Thigh" -1.951771 -5.59717 -5.523103 18.516672 8.15381 6.100965
$hbox 7 "Bip01 R Calf" -0.714434 -3.861904 -3.979778 22.060535 11.196293 4.138414
$hbox 7 "Bip01 R Foot" -3.074903 -2.717395 -3.194591 4.1058 10.832308 4.091305

$sequence "ragdoll" {
	"shopkeeper_santa_monica_a_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fps 30
}

$includemodel "character/shared/male/npc_allsequences.mdl"

$collisionjoints "shopkeeper_santa_monica_a_physics.smd"
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
