// Created by Crowbar 0.74

$modelname "/character/shared/female/baseball.mdl"

$bodygroup "sharedbones"
{
	studio "sharedbones"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\error\"

$attachment "0" "Bip01 R Hand" 0 0.000002 0

$cbox 0 0 0 0 0 0

$bbox -36.361 -55.157 -9.154 29.79 34.712 81.05

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
$hbox 5 "Bip01 R Hand" 0 -0.693911 -2.620956 3.497827 1.109895 1.508166
$hbox 6 "Bip01 L Thigh" 0 -1.586619 -1.587608 18.385206 1.476555 1.899763
$hbox 6 "Bip01 L Calf" 0 -1.585488 -1.658666 18.080185 1.508031 1.447099
$hbox 6 "Bip01 L Foot" 0 0 -1.048964 3.639622 4.452506 1.04894
$hbox 7 "Bip01 R Thigh" 0 -1.586626 -1.899765 18.38521 1.47655 1.587598
$hbox 7 "Bip01 R Calf" 0 -1.585403 -1.446941 18.080187 1.507822 1.658523
$hbox 7 "Bip01 R Foot" 0 0 -1.071496 3.639623 4.458592 1.071409

$sequence "baseballbat_ready" {
	"baseball_anims\baseballbat_ready.smd"
	activity "ACT_READY_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_dodge" {
	"baseball_anims\baseballbat_dodge.smd"
	activity "ACT_DODGE_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_block" {
	"baseball_anims\baseballbat_block.smd"
	activity "ACT_BLOCK_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_block_heavy" {
	"baseball_anims\baseballbat_block_heavy.smd"
	activity "ACT_BLOCK_HEAVY_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_preblock" {
	"baseball_anims\baseballbat_preblock.smd"
	activity "ACT_PREBLOCK_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_blocked_reaction_left" {
	"baseball_anims\baseballbat_blocked_reaction_left.smd"
	activity "ACT_BLOCKED_REACTION_LEFT_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_blocked_reaction_right" {
	"baseball_anims\baseballbat_blocked_reaction_right.smd"
	activity "ACT_BLOCKED_REACTION_RIGHT_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_dodge_attack" {
	"baseball_anims\baseballbat_dodge_attack.smd"
	fps 30
}
$sequence "baseballbat_hunt_walk" {
	"baseball_anims\baseballbat_hunt_walk.smd"
	activity "ACT_HUNT_WALK_baseballbat" 100
	fps 30
}
$sequence "baseballbat_hunt_walk_lookleft" {
	"baseball_anims\baseballbat_hunt_walk_lookleft.smd"
	activity "ACT_HUNT_WALK_LOOKLEFT_baseballbat" 100
	fps 30
}
$sequence "baseballbat_hunt_walk_lookright" {
	"baseball_anims\baseballbat_hunt_walk_lookright.smd"
	activity "ACT_HUNT_WALK_LOOKRIGHT_baseballbat" 100
	fps 30
}
$sequence "baseballbat_alert_fidget_agro_lookaround" {
	"baseball_anims\baseballbat_alert_fidget_agro_lookaround.smd"
	activity "ACT_ALERT_FIDGET_AGRO_LOOKAROUND_baseballbat" 100
	fps 30
}
$sequence "baseballbat_alert_front_into" {
	"baseball_anims\baseballbat_alert_front_into.smd"
	activity "ACT_ALERT_FRONT_INTO_baseballbat" 100
	fps 30
}
$sequence "baseballbat_alert_l90_into" {
	"baseball_anims\baseballbat_alert_l90_into.smd"
	activity "ACT_ALERT_L90_INTO_baseballbat" 100
	fps 30
}
$sequence "baseballbat_alert_r90_into" {
	"baseball_anims\baseballbat_alert_r90_into.smd"
	activity "ACT_ALERT_R90_INTO_baseballbat" 100
	fps 30
}
$sequence "baseballbat_alert_180_into" {
	"baseball_anims\baseballbat_alert_180_into.smd"
	activity "ACT_ALERT_180_INTO_baseballbat" 100
	fps 30
}
$sequence "baseballbat_alert_front_outof" {
	"baseball_anims\baseballbat_alert_front_outof.smd"
	activity "ACT_ALERT_FRONT_OUTOF_baseballbat" 100
	fps 30
}
$sequence "baseballbat_alert_l90_outof" {
	"baseball_anims\baseballbat_alert_l90_outof.smd"
	activity "ACT_ALERT_L90_OUTOF_baseballbat" 100
	fps 30
}
$sequence "baseballbat_alert_r90_outof" {
	"baseball_anims\baseballbat_alert_r90_outof.smd"
	activity "ACT_ALERT_R90_OUTOF_baseballbat" 100
	fps 30
}
$sequence "baseballbat_alert_180_outof" {
	"baseball_anims\baseballbat_alert_180_outof.smd"
	activity "ACT_ALERT_180_OUTOF_baseballbat" 100
	fps 30
}
$sequence "baseballbat_attack_W1" {
	"baseball_anims\baseballbat_attack_W1.smd"
	activity "ACT_MELEE_ATTACK_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_attack_W2" {
	"baseball_anims\baseballbat_attack_W2.smd"
	activity "ACT_MELEE_ATTACK_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_attack_W3" {
	"baseball_anims\baseballbat_attack_W3.smd"
	activity "ACT_MELEE_ATTACK_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_attack_A1" {
	"baseball_anims\baseballbat_attack_A1.smd"
	activity "ACT_MELEE_ATTACK_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_attack_A2" {
	"baseball_anims\baseballbat_attack_A2.smd"
	activity "ACT_MELEE_ATTACK_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_attack_heavy_a" {
	"baseball_anims\baseballbat_attack_heavy_a.smd"
	activity "ACT_MELEE_ATTACK_HEAVY_BASEBALLBAT" 4
	fps 30
}
$sequence "baseballbat_attack_Center1" {
	"baseball_anims\baseballbat_attack_Center1.smd"
	activity "ACT_MELEE_ATTACK_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_attack_Center2" {
	"baseball_anims\baseballbat_attack_Center2.smd"
	activity "ACT_MELEE_ATTACK_BASEBALLBAT" 1
	fps 30
}
$sequence "BaseballBat_air" {
	"baseball_anims\baseballbat_air.smd"
	activity "ACT_MELEE_AIR_ATTACK_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_attack_med" {
	"baseball_anims\baseballbat_attack_med.smd"
	activity "ACT_MELEE_ATTACK_BASEBALLBAT" 2
	fps 30
}
$sequence "baseballbat_attack_low" {
	"baseball_anims\baseballbat_attack_low.smd"
	activity "ACT_MELEE_ATTACK_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_attack_far" {
	"baseball_anims\baseballbat_attack_far.smd"
	activity "ACT_MELEE_ATTACK_BASEBALLBAT" 0
	fps 30
}
$sequence "baseballbat_attack_jump" {
	"baseball_anims\baseballbat_attack_jump.smd"
	activity "ACT_MELEE_ATTACK_BASEBALLBAT" 4
	fps 30
}
$sequence "baseballbat_attack_medcombo" {
	"baseball_anims\baseballbat_attack_medcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_BASEBALLBAT" 4
	fps 30
}
$sequence "baseballbat_attack_lowcombo" {
	"baseball_anims\baseballbat_attack_lowcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_attack_farcombo" {
	"baseball_anims\baseballbat_attack_farcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_BASEBALLBAT" 3
	fps 30
}
$sequence "baseballbat_attack_jumpcombo" {
	"baseball_anims\baseballbat_attack_jumpcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_BASEBALLBAT" 3
	fps 30
}
$sequence "baseballbat_attack_heavy" {
	"baseball_anims\baseballbat_attack_heavy.smd"
	activity "ACT_MELEE_ATTACK_HEAVY_BASEBALLBAT" 4
	fps 30
}
$sequence "baseballbat_idle" {
	"baseball_anims\baseballbat_idle.smd"
	activity "ACT_IDLE_BASEBALLBAT" 20
	fps 30
}
$sequence "stealth_success_attacker_shortvictim" {
	"baseball_anims\stealth_success_attacker_shortvictim.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_SHORTVICTIM_BASEBALLBAT" 1
	fps 30
}
$sequence "stealth_success_attacker_tallvictim" {
	"baseball_anims\stealth_success_attacker_tallvictim.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_TALLVICTIM_BASEBALLBAT" 1
	fps 30
}
$sequence "stealth_success_victim_shortattacker" {
	"baseball_anims\stealth_success_victim_shortattacker.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_SHORTATTACKER_BASEBALLBAT" 1
	fps 30
}
$sequence "stealth_success_victim_tallattacker" {
	"baseball_anims\stealth_success_victim_tallattacker.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_TALLATTACKER_BASEBALLBAT" 1
	fps 30
}
$sequence "stealth_failure_attacker_shortvictim" {
	"baseball_anims\stealth_failure_attacker_shortvictim.smd"
	activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_SHORTVICTIM_BASEBALLBAT" 1
	fps 30
}
$sequence "stealth_failure_attacker_tallvictim" {
	"baseball_anims\stealth_failure_attacker_tallvictim.smd"
	activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_TALLVICTIM_BASEBALLBAT" 1
	fps 30
}
$sequence "stealth_failure_victim_shortattacker" {
	"baseball_anims\stealth_failure_victim_shortattacker.smd"
	activity "ACT_SNEAKATTACK_FAILURE_VICTIM_SHORTATTACKER_BASEBALLBAT" 1
	fps 30
}
$sequence "stealth_failure_victim_tallattacker" {
	"baseball_anims\stealth_failure_victim_tallattacker.smd"
	activity "ACT_SNEAKATTACK_FAILURE_VICTIM_TALLATTACKER_BASEBALLBAT" 1
	fps 30
}
