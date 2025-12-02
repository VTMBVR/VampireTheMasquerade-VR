// Created by Crowbar 0.74

$modelname "character/shared/female/meleeshared_onehand.mdl"

$bodygroup "sharedbones"
{
	studio "sharedbones"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\error\"

$attachment "0" "Bip01 R Hand" 0 0.000002 0

$cbox 0 0 0 0 0 0

$bbox -43.503 -63.014 -14.949 42.533 34.595 79.197

$hboxset "default"
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 3 "Bip01 Spine" -2.321735 -2.017924 -1.500012 5.537524 1.726916 1.499999
$hbox 2 "Bip01 Spine1" 0 -1.420009 -1.229515 5.672616 1.420059 1.229489
$hbox 2 "Bip01 Spine2" 0 -1.059931 -4.032217 4.187233 1.875137 4.032186
$hbox 1 "Bip01 Neck" -0.966692 -0.918467 -1.200015 3.278767 0.918489 1.199985
$hbox 1 "Bip01 Head" -0.134687 -2.790778 -2.642133 5.077952 3.43943 2.685879
$hbox 4 "Bip01 L UpperArm" 0 -0.976229 -1.493653 9.487508 1.123536 1.236663
$hbox 4 "Bip01 L Forearm" 0 -0.921435 -1.145984 9.767428 0.914308 1.279667
$hbox 4 "Bip01 L Hand" 0 -0.755993 -1.508253 3.497797 1.102922 1.335726
$hbox 5 "Bip01 R UpperArm" 0 -1.01801 -1.28972 9.487507 1.170455 1.55585
$hbox 5 "Bip01 R Forearm" 0 -0.963359 -1.33512 9.767428 0.956262 1.201495
$hbox 5 "Bip01 R Hand" 0 -0.693911 -1.335819 3.497827 1.109895 1.508166
$hbox 6 "Bip01 L Thigh" 0 -1.586619 -1.587608 18.385206 1.476555 1.899763
$hbox 6 "Bip01 L Calf" 0 -1.585488 -1.658666 18.080185 1.508031 1.447099
$hbox 6 "Bip01 L Foot" 0 0 -1.048964 3.639622 4.452506 1.04894
$hbox 7 "Bip01 R Thigh" 0 -1.586626 -1.899765 18.38521 1.47655 1.587598
$hbox 7 "Bip01 R Calf" 0 -1.585403 -1.446941 18.080187 1.507822 1.658523
$hbox 7 "Bip01 R Foot" 0 0 -1.071496 3.639623 4.458592 1.071409

$sequence "knockback_smalllow" {
	"meleeshared_onehand_anims\knockback_smalllow.smd"
	activity "ACT_KNOCKBACK_SMALLLOW_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "knockback_biglow" {
	"meleeshared_onehand_anims\knockback_biglow.smd"
	activity "ACT_KNOCKBACK_BIGLOW_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "knockback_lowcombo" {
	"meleeshared_onehand_anims\knockback_lowcombo.smd"
	activity "ACT_KNOCKBACK_LOWCOMBO_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "knockback_smallhigh" {
	"meleeshared_onehand_anims\knockback_smallhigh.smd"
	activity "ACT_KNOCKBACK_SMALLHIGH_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "knockback_bighighleft" {
	"meleeshared_onehand_anims\knockback_bighighleft.smd"
	activity "ACT_KNOCKBACK_BIGHIGHLEFT_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "knockback_bighighright" {
	"meleeshared_onehand_anims\knockback_bighighright.smd"
	activity "ACT_KNOCKBACK_BIGHIGHRIGHT_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "knockback_biguppercut" {
	"meleeshared_onehand_anims\knockback_biguppercut.smd"
	activity "ACT_KNOCKBACK_BIGUPPERCUT_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "knockback_biguppercutleft" {
	"meleeshared_onehand_anims\knockback_biguppercutleft.smd"
	activity "ACT_KNOCKBACK_BIGUPPERCUTLEFT_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "knockback_biguppercutright" {
	"meleeshared_onehand_anims\knockback_biguppercutright.smd"
	activity "ACT_KNOCKBACK_BIGUPPERCUTRIGHT_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "knockback_smallhighright" {
	"meleeshared_onehand_anims\knockback_smallhighright.smd"
	activity "ACT_KNOCKBACK_SMALLHIGHRIGHT_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "knockback_smallhighleft" {
	"meleeshared_onehand_anims\knockback_smallhighleft.smd"
	activity "ACT_KNOCKBACK_SMALLHIGHLEFT_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "knockback_smalldazed" {
	"meleeshared_onehand_anims\knockback_smalldazed.smd"
	activity "ACT_KNOCKBACK_SMALLDAZED_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "knockback_small_low_back" {
	"meleeshared_onehand_anims\knockback_smalllow.smd"
	activity "ACT_KNOCKBACK_SMALL_LOW_BACK" 1
	fps 30
}
$sequence "knockback_small_high_forward" {
	"meleeshared_onehand_anims\knockback_smallhighfront.smd"
	activity "ACT_KNOCKBACK_SMALL_HIGH_FORWARD" 1
	fps 30
}
$sequence "knockback_small_high_right" {
	"meleeshared_onehand_anims\knockback_smallhighright.smd"
	activity "ACT_KNOCKBACK_SMALL_HIGH_RIGHT" 1
	fps 30
}
$sequence "knockback_small_high_left" {
	"meleeshared_onehand_anims\knockback_smallhighleft.smd"
	activity "ACT_KNOCKBACK_SMALL_HIGH_LEFT" 1
	fps 30
}
$sequence "knockback_small_high_back" {
	"meleeshared_onehand_anims\knockback_smallhigh.smd"
	activity "ACT_KNOCKBACK_SMALL_HIGH_BACK" 1
	fps 30
}
$sequence "knockback_normal_low_back" {
	"meleeshared_onehand_anims\knockback_biglow.smd"
	activity "ACT_KNOCKBACK_NORMAL_LOW_BACK" 1
	fps 30
}
$sequence "knockback_normal_high_forward" {
	"meleeshared_onehand_anims\knockback_smallhighfront.smd"
	activity "ACT_KNOCKBACK_NORMAL_HIGH_FORWARD" 1
	fps 30
}
$sequence "knockback_normal_high_right" {
	"meleeshared_onehand_anims\knockback_smallhighright.smd"
	activity "ACT_KNOCKBACK_NORMAL_HIGH_RIGHT" 1
	fps 30
}
$sequence "knockback_normal_high_left" {
	"meleeshared_onehand_anims\knockback_smallhighleft.smd"
	activity "ACT_KNOCKBACK_NORMAL_HIGH_LEFT" 1
	fps 30
}
$sequence "knockback_normal_high_back" {
	"meleeshared_onehand_anims\knockback_bighighright.smd"
	activity "ACT_KNOCKBACK_NORMAL_HIGH_BACK" 1
	fps 30
}
$sequence "knockback_flying_into_back" {
	"meleeshared_onehand_anims\knockback_flying_into_back.smd"
	activity "ACT_KNOCKBACK_FLYING_INTO_BACK" 1
	fps 30
}
$sequence "knockback_flying_into_right" {
	"meleeshared_onehand_anims\knockback_flying_into_back.smd"
	activity "ACT_KNOCKBACK_FLYING_INTO_RIGHT" 1
	fps 30
}
$sequence "knockback_flying_into_left" {
	"meleeshared_onehand_anims\knockback_flying_into_back.smd"
	activity "ACT_KNOCKBACK_FLYING_INTO_LEFT" 1
	fps 30
}
$sequence "knockback_flying_into_front" {
	"meleeshared_onehand_anims\knockback_flying_into_back.smd"
	activity "ACT_KNOCKBACK_FLYING_INTO_FORWARD" 1
	fps 30
}
$sequence "knockback_flying_idle" {
	"meleeshared_onehand_anims\knockback_flying_idle.smd"
	activity "ACT_KNOCKBACK_FLYING_IDLE" 1
	fps 30
}
$sequence "knockback_flying_land" {
	"meleeshared_onehand_anims\knockback_flying_land.smd"
	activity "ACT_KNOCKBACK_FLYING_LAND" 1
	fps 30
}
$sequence "knockback_flying_wall_hit" {
	"meleeshared_onehand_anims\knockback_flying_wall_hit.smd"
	activity "ACT_KNOCKBACK_FLYING_WALL_HIT" 1
	fps 30
}
$sequence "knockback_flying_wall_fall" {
	"meleeshared_onehand_anims\knockback_flying_wall_fall.smd"
	activity "ACT_KNOCKBACK_FLYING_WALL_FALL" 1
	fps 30
}
$sequence "knockback_flying_wall_land" {
	"meleeshared_onehand_anims\knockback_flying_wall_land.smd"
	activity "ACT_KNOCKBACK_FLYING_WALL_LAND" 1
	fps 30
}
$sequence "knockback_flyinggut_wall_hit" {
	"meleeshared_onehand_anims\knockback_flyingGut_wall_hit.smd"
	activity "ACT_KNOCKBACK_FLYING_WALL_HIT" 1
	fps 30
}
$sequence "knockback_flyinggut_wall_fall" {
	"meleeshared_onehand_anims\knockback_flyingGut_wall_fall.smd"
	activity "ACT_KNOCKBACK_FLYING_WALL_FALL" 1
	fps 30
}
$sequence "knockback_flyinggut_wall_land" {
	"meleeshared_onehand_anims\knockback_flyingGut_wall_land.smd"
	activity "ACT_KNOCKBACK_FLYING_WALL_LAND" 1
	fps 30
}
$sequence "knockback_flyinggut_into_back" {
	"meleeshared_onehand_anims\knockback_flyinggut_into_back.smd"
	activity "ACT_KNOCKBACK_FLYING_INTO_BACK" 1
	fps 30
}
$sequence "knockback_flyinggut_into_right" {
	"meleeshared_onehand_anims\knockback_flyinggut_into_back.smd"
	activity "ACT_KNOCKBACK_FLYING_INTO_RIGHT" 1
	fps 30
}
$sequence "knockback_flyinggut_into_left" {
	"meleeshared_onehand_anims\knockback_flyinggut_into_back.smd"
	activity "ACT_KNOCKBACK_FLYING_INTO_LEFT" 1
	fps 30
}
$sequence "knockback_flyinggut_into_front" {
	"meleeshared_onehand_anims\knockback_flyinggut_into_back.smd"
	activity "ACT_KNOCKBACK_FLYING_INTO_FORWARD" 1
	fps 30
}
$sequence "knockback_flyinggut_idle" {
	"meleeshared_onehand_anims\knockback_flyinggut_idle_back.smd"
	activity "ACT_KNOCKBACK_FLYING_IDLE" 1
	fps 30
}
$sequence "knockback_flyinggut_land_back" {
	"meleeshared_onehand_anims\knockback_flyinggut_land_back.smd"
	activity "ACT_KNOCKBACK_FLYING_LAND" 1
	fps 30
}
$sequence "kick_short" {
	"meleeshared_onehand_anims\kick_short.smd"
	activity "ACT_KICK_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "kick_long" {
	"meleeshared_onehand_anims\kick_long.smd"
	activity "ACT_KICK_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "dodge_stepback" {
	"meleeshared_onehand_anims\dodge_stepback.smd"
	activity "ACT_STEPBACK_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "dodge_stepback_Right" {
	"meleeshared_onehand_anims\dodge_stepback_Right.smd"
	activity "ACT_STEPBACK_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "dodge_stepback_Left" {
	"meleeshared_onehand_anims\dodge_stepback_Left.smd"
	activity "ACT_STEPBACK_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "dodge_duck" {
	"meleeshared_onehand_anims\dodge_duck.smd"
	activity "ACT_DODGE_DUCK_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "combatmove" {
	"meleeshared_onehand_anims\combatmove_180.smd"
	"meleeshared_onehand_anims\combatmove_225.smd"
	"meleeshared_onehand_anims\combatmove_270.smd"
	"meleeshared_onehand_anims\combatmove_315.smd"
	"meleeshared_onehand_anims\combatmove_0.smd"
	"meleeshared_onehand_anims\combatmove_45.smd"
	"meleeshared_onehand_anims\combatmove_90.smd"
	"meleeshared_onehand_anims\combatmove_135.smd"
	"meleeshared_onehand_anims\combatmove_180.smd"
	activity "ACT_COMBATMOVE_MELEESHARED_ONEHAND" 100
	fps 30
}
