// Created by Crowbar 0.74

$modelname "character/shared/male/meleeshared_onehand.mdl"

$bodygroup "sharedbones"
{
	studio "sharedbones"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\error\"

$attachment "0" "Bip01 R Hand" 0 0 0

$cbox 0 0 0 0 0 0

$bbox -47.099 -61.554 -14.971 43.579 32.521 81.67

$hboxset "default"
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 3 "Bip01 Spine" -1.839222 -2.616589 -1.500051 5.168398 1.598824 1.500059
$hbox 2 "Bip01 Spine1" 0 -1.704268 -1.500062 6.087786 1.704197 1.499948
$hbox 2 "Bip01 Spine2" 0 -1.181116 -1.500076 7.561927 2.415054 1.499934
$hbox 1 "Bip01 Neck" -0.033278 -1.980999 -1.727836 3.89553 1.981066 1.727836
$hbox 1 "Bip01 Head" -0.125812 -3.663472 -3.330523 7.625816 3.818098 3.329498
$hbox 4 "Bip01 L UpperArm" 0 -1.485506 -2.419901 10.293986 1.899892 2.010407
$hbox 4 "Bip01 L Forearm" 0 -1.949527 -2.093008 9.198424 1.895152 2.336775
$hbox 4 "Bip01 L Hand" -0.132413 -2.204938 -1.890588 5.006375 2.204712 1.89062
$hbox 5 "Bip01 R UpperArm" 0 -1.485259 -2.010119 10.293987 1.899691 2.419653
$hbox 5 "Bip01 R Forearm" 0 -1.949457 -2.336717 9.198427 1.895127 2.093052
$hbox 5 "Bip01 R Hand" -0.132211 -2.204826 -1.890597 5.006474 2.204901 1.890611
$hbox 6 "Bip01 L Thigh" 0 -1.440911 -1.601701 17.830053 1.784456 2.001217
$hbox 6 "Bip01 L Calf" 0 -1.549742 -1.47103 17.69693 1.733048 1.528979
$hbox 6 "Bip01 L Foot" 0 0 -1.500043 4.150375 7.381025 1.499969
$hbox 7 "Bip01 R Thigh" 0 -1.440914 -2.001153 17.830051 1.784446 1.601642
$hbox 7 "Bip01 R Calf" 0 -1.549751 -1.529096 17.696934 1.733039 1.470914
$hbox 7 "Bip01 R Foot" 0 0 -1.500109 4.150389 7.381025 1.499904

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
	"meleeshared_onehand_anims\knockback_flyingGut_into_back.smd"
	activity "ACT_KNOCKBACK_FLYING_INTO_BACK" 1
	fps 30
}
$sequence "knockback_flyinggut_into_right" {
	"meleeshared_onehand_anims\knockback_flyingGut_into_back.smd"
	activity "ACT_KNOCKBACK_FLYING_INTO_RIGHT" 1
	fps 30
}
$sequence "knockback_flyinggut_into_left" {
	"meleeshared_onehand_anims\knockback_flyingGut_into_back.smd"
	activity "ACT_KNOCKBACK_FLYING_INTO_LEFT" 1
	fps 30
}
$sequence "knockback_flyinggut_into_front" {
	"meleeshared_onehand_anims\knockback_flyingGut_into_back.smd"
	activity "ACT_KNOCKBACK_FLYING_INTO_FORWARD" 1
	fps 30
}
$sequence "knockback_flyinggut_idle" {
	"meleeshared_onehand_anims\knockback_flyingGut_idle_back.smd"
	activity "ACT_KNOCKBACK_FLYING_IDLE" 1
	fps 30
}
$sequence "knockback_flyinggut_land_back" {
	"meleeshared_onehand_anims\knockback_flyingGut_land_back.smd"
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
