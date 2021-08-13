// Created by Crowbar 0.71

$modelname "character/npc/unique/Santa_Monica/Jeanette/Jeanette.mdl"

$bodygroup "girl"
{
	studio "JeanetteR2_REF"
}


$illumposition 0 0 64.678

$eyeposition 0.5 -0.5 0.5

$surfaceprop "flesh"

$cdmaterials "models\character\npc\unique\Santa_Monica\Jeanette\"
$cdmaterials "models\character\npc\unique\Santa_Monica\Tourette\"
$cdmaterials "models\character\teeth\"

$attachment "mouth" "Bip01 Head" 1.4 4.5 0
$attachment "eyes" "Bip01 Head" 3.800002 3.5 0
$attachment "0" "Bip01 R Hand" 0 -0.000001 0

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -13 -13 0 13 13 72

// Hitbox info. Used for damage-based collision.
$hboxset "default"
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 0 "Bip01 Pelvis" -3.558086 -9.157333 -11.923504 8.252213 11.045268 11.923496
$hbox 3 "Bip01 Spine" -0.485054 -3.738443 -4.814708 8.289912 3.948306 4.814692
$hbox 6 "Bip01 L Thigh" -3.586395 -7.565912 -4.210726 20.357199 9.145288 3.666227
$hbox 6 "Bip01 L Calf" -3.021858 -2.421363 -2.275343 21.022978 2.94822 2.235752
$hbox 6 "Bip01 L Foot" -1.381075 -1.452518 -2.172688 5.969927 6.759589 1.383415
$hbox 7 "Bip01 R Thigh" -3.586385 -7.487103 -3.666034 20.357208 9.145069 4.21064
$hbox 7 "Bip01 R Calf" -3.021845 -2.421373 -2.235784 21.022985 2.948208 2.275294
$hbox 7 "Bip01 R Foot" -1.381071 -1.452533 -1.38349 5.969932 6.759571 2.172609
$hbox 2 "Bip01 Spine1" -1.273281 -4.296925 -7.148718 8.306213 4.54145 7.148881
$hbox 2 "Bip01 Spine2" -0.474323 -3.903449 -6.995918 7.860804 3.120492 6.995681
$hbox 1 "Bip01 Neck" -1.813877 -1.989092 -2.128821 2.679598 2.773588 2.305079
$hbox 1 "Bip01 Head" -1.470574 -5.139718 -3.528274 7.69427 4.758306 3.511637
$hbox 4 "Bip01 L UpperArm" -1.925814 -2.553094 -2.326504 12.269641 1.899508 1.509106
$hbox 4 "Bip01 L Forearm" -0.406733 -1.599095 -1.639568 11.571059 1.461416 1.253679
$hbox 4 "Bip01 L Hand" -0.886672 -0.886236 -2.007144 4.245706 0.985391 1.291928
$hbox 5 "Bip01 R UpperArm" -1.925896 -2.553376 -1.509478 12.269691 1.899686 2.326558
$hbox 5 "Bip01 R Forearm" -0.406735 -1.599448 -1.253947 11.571091 1.461761 1.639855
$hbox 5 "Bip01 R Hand" -0.886724 -0.886215 -3.171222 4.245736 0.985411 2.007069

$sequence "Jeanette_Line1_Col_E" {
	"jeanette_anim_Jeanette_Line1_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line1_Col_F" {
	"jeanette_anim_Jeanette_Line1_Col_F.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line11_Col_E" {
	"jeanette_anim_Jeanette_Line11_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line21_Col_E" {
	"jeanette_anim_Jeanette_Line21_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line31_Col_E" {
	"jeanette_anim_Jeanette_Line31_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line41_Col_E" {
	"jeanette_anim_Jeanette_Line41_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line41_Col_F" {
	"jeanette_anim_Jeanette_Line41_Col_F.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line51_Col_E" {
	"jeanette_anim_Jeanette_Line51_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line61_Col_E" {
	"jeanette_anim_Jeanette_Line61_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line71_Col_E" {
	"jeanette_anim_Jeanette_Line71_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line81_Col_E" {
	"jeanette_anim_Jeanette_Line81_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line91_Col_E" {
	"jeanette_anim_Jeanette_Line91_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line131_Col_E" {
	"jeanette_anim_Jeanette_Line131_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line191_Col_E" {
	"jeanette_anim_Jeanette_Line191_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line271_Col_E" {
	"jeanette_anim_Jeanette_Line271_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line311_Col_E" {
	"jeanette_anim_Jeanette_Line311_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line351_Col_E" {
	"jeanette_anim_Jeanette_Line351_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line361_Col_E" {
	"jeanette_anim_Jeanette_Line361_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line511_Col_E" {
	"jeanette_anim_Jeanette_Line511_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line571_Col_E" {
	"jeanette_anim_Jeanette_Line571_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "Jeanette_Line811_Col_E" {
	"jeanette_anim_Jeanette_Line811_Col_E.smd"
	activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1
	fps 30
}
$sequence "ragdoll" {
	"jeanette_anim_ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fps 30
}

$includemodel "character/shared/female/npc_allsequences.mdl"

$collisionjoints "jeanette_physics.smd"
{
	$mass 60
	$inertia 5
	$damping 0.01
	$rotdamping 1.5
	$rootbone " "


	$jointconstrain "Bip01 Spine1" x limit -25 25 1
	$jointconstrain "Bip01 Spine1" y limit -25 25 1
	$jointconstrain "Bip01 Spine1" z limit -25 15 1

	$jointmassbias "Bip01 R UpperArm" 2
	$jointconstrain "Bip01 R UpperArm" x limit -20 20 1
	$jointconstrain "Bip01 R UpperArm" y limit -40 35 1
	$jointconstrain "Bip01 R UpperArm" z limit -60 30 1

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

	$jointmassbias "Bip01 R Forearm" 3
	$jointconstrain "Bip01 R Forearm" x limit 0 0 0
	$jointconstrain "Bip01 R Forearm" y limit 0 0 0
	$jointconstrain "Bip01 R Forearm" z limit -120 4 1

	$jointmassbias "Bip01 R Hand" 2
	$jointconstrain "Bip01 R Hand" x limit 0 0 0
	$jointconstrain "Bip01 R Hand" y limit 0 0 0
	$jointconstrain "Bip01 R Hand" z limit -35 60 1

	$jointmassbias "Bip01 R Thigh" 2
	$jointconstrain "Bip01 R Thigh" x limit -25 20 1
	$jointconstrain "Bip01 R Thigh" y limit -40 20 1
	$jointconstrain "Bip01 R Thigh" z limit -37 63 1

	$jointconstrain "Bip01 R Calf" x limit 0 0 0
	$jointconstrain "Bip01 R Calf" y limit 0 0 0
	$jointconstrain "Bip01 R Calf" z limit -95 4 1

	$jointrotdamping "Bip01 Head" 5
	$jointconstrain "Bip01 Head" x limit -20 20 1
	$jointconstrain "Bip01 Head" y limit -25 25 1
	$jointconstrain "Bip01 Head" z limit -13 30 1

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

	$jointconstrain "Bip01 R Foot" x limit 0 0 0
	$jointconstrain "Bip01 R Foot" y limit 0 0 0
	$jointconstrain "Bip01 R Foot" z limit -15 35 1
}
