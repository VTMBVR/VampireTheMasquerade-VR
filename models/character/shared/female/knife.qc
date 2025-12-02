// Created by Crowbar 0.74

$modelname "/character/shared/female/knife.mdl"

$bodygroup "sharedbones"
{
	studio "sharedbones"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\error\"

$attachment "0" "Bip01 R Hand" 0 0.000002 0

$cbox 0 0 0 0 0 0

$bbox -40.221 -55.325 -9.154 29.79 34.712 81.05

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
$hbox 5 "Bip01 R Hand" 0 -0.693911 -1.429807 3.497827 1.109895 1.508166
$hbox 6 "Bip01 L Thigh" 0 -1.586619 -1.587608 18.385206 1.476555 1.899763
$hbox 6 "Bip01 L Calf" 0 -1.585488 -1.658666 18.080185 1.508031 1.447099
$hbox 6 "Bip01 L Foot" 0 0 -1.048964 3.639622 4.452506 1.04894
$hbox 7 "Bip01 R Thigh" 0 -1.586626 -1.899765 18.38521 1.47655 1.587598
$hbox 7 "Bip01 R Calf" 0 -1.585403 -1.446941 18.080187 1.507822 1.658523
$hbox 7 "Bip01 R Foot" 0 0 -1.071496 3.639623 4.458592 1.071409

$sequence "knife_ready" {
	"knife_anims\knife_ready.smd"
	activity "ACT_READY_KNIFE" 1
	fps 30
}
$sequence "knife_dodge" {
	"knife_anims\knife_dodge.smd"
	activity "ACT_DODGE_KNIFE" 1
	fps 30
}
$sequence "knife_block" {
	"knife_anims\knife_block.smd"
	activity "ACT_BLOCK_knife" 1
	fps 30
}
$sequence "knife_block_heavy" {
	"knife_anims\knife_block_heavy.smd"
	activity "ACT_BLOCK_HEAVY_knife" 1
	fps 30
}
$sequence "knife_preblock" {
	"knife_anims\knife_preblock.smd"
	activity "ACT_PREBLOCK_knife" 1
	fps 30
}
$sequence "knife_blocked_reaction_left" {
	"knife_anims\knife_blocked_reaction_left.smd"
	activity "ACT_BLOCKED_REACTION_LEFT_knife" 1
	fps 30
}
$sequence "knife_blocked_reaction_right" {
	"knife_anims\knife_blocked_reaction_right.smd"
	activity "ACT_BLOCKED_REACTION_RIGHT_knife" 1
	fps 30
}
$sequence "Knife_hunt_walk" {
	"knife_anims\Knife_hunt_walk.smd"
	activity "ACT_HUNT_WALK_Knife" 100
	fps 30
}
$sequence "Knife_hunt_walk_lookleft" {
	"knife_anims\Knife_hunt_walk_lookleft.smd"
	activity "ACT_HUNT_WALK_LOOKLEFT_Knife" 100
	fps 30
}
$sequence "Knife_hunt_walk_lookright" {
	"knife_anims\Knife_hunt_walk_lookright.smd"
	activity "ACT_HUNT_WALK_LOOKRIGHT_Knife" 100
	fps 30
}
$sequence "Knife_alert_fidget_agro_lookaround" {
	"knife_anims\Knife_alert_fidget_agro_lookaround.smd"
	activity "ACT_ALERT_FIDGET_AGRO_LOOKAROUND_Knife" 100
	fps 30
}
$sequence "Knife_alert_front_into" {
	"knife_anims\Knife_alert_front_into.smd"
	activity "ACT_ALERT_FRONT_INTO_Knife" 100
	fps 30
}
$sequence "Knife_alert_l90_into" {
	"knife_anims\Knife_alert_l90_into.smd"
	activity "ACT_ALERT_L90_INTO_Knife" 100
	fps 30
}
$sequence "Knife_alert_r90_into" {
	"knife_anims\Knife_alert_r90_into.smd"
	activity "ACT_ALERT_R90_INTO_Knife" 100
	fps 30
}
$sequence "Knife_alert_180_into" {
	"knife_anims\Knife_alert_180_into.smd"
	activity "ACT_ALERT_180_INTO_Knife" 100
	fps 30
}
$sequence "Knife_alert_front_outof" {
	"knife_anims\Knife_alert_front_outof.smd"
	activity "ACT_ALERT_FRONT_OUTOF_Knife" 100
	fps 30
}
$sequence "Knife_alert_l90_outof" {
	"knife_anims\Knife_alert_l90_outof.smd"
	activity "ACT_ALERT_L90_OUTOF_Knife" 100
	fps 30
}
$sequence "Knife_alert_r90_outof" {
	"knife_anims\Knife_alert_r90_outof.smd"
	activity "ACT_ALERT_R90_OUTOF_Knife" 100
	fps 30
}
$sequence "Knife_alert_180_outof" {
	"knife_anims\Knife_alert_180_outof.smd"
	activity "ACT_ALERT_180_OUTOF_Knife" 100
	fps 30
}
$sequence "knife_attack_Slash2" {
	"knife_anims\knife_attack_Slash2.smd"
	activity "ACT_MELEE_ATTACK_KNIFE" 4
	fps 30
}
$sequence "knife_attack_med2" {
	"knife_anims\knife_attack_med2.smd"
	activity "ACT_MELEE_ATTACK_KNIFE" 3
	fps 30
}
$sequence "Knife_air" {
	"knife_anims\Knife_air.smd"
	activity "ACT_MELEE_AIR_ATTACK_KNIFE" 1
	fps 30
}
$sequence "knife_dodge_attack" {
	"knife_anims\knife_dodge_attack.smd"
	activity "ACT_DODGE_ATTACK_knife" 1
	fps 30
}
$sequence "knife_attack_med" {
	"knife_anims\knife_attack_med.smd"
	activity "ACT_MELEE_ATTACK_KNIFE" 3
	fps 30
}
$sequence "knife_attack_Slash" {
	"knife_anims\knife_attack_Slash.smd"
	activity "ACT_MELEE_ATTACK_KNIFE" 4
	fps 30
}
$sequence "Knife_attack_Kick_Spin" {
	"knife_anims\knife_attack_Kick_Spin.smd"
	activity "ACT_MELEE_ATTACK_KNIFE" 2
	fps 30
}
$sequence "Knife_attack_W1" {
	"knife_anims\Knife_attack_W1.smd"
	activity "ACT_MELEE_ATTACK_KNIFE" 1
	fps 30
}
$sequence "knife_attack_low" {
	"knife_anims\knife_attack_low.smd"
	activity "ACT_MELEE_ATTACK_KNIFE" 0
	fps 30
}
$sequence "knife_attack_far" {
	"knife_anims\knife_attack_far.smd"
	activity "ACT_MELEE_ATTACK_KNIFE" 2
	fps 30
}
$sequence "knife_attack_npc_Slash" {
	"knife_anims\knife_attack_npc_Slash.smd"
	activity "ACT_MELEE_ATTACK_KNIFE" 2
	fps 30
}
$sequence "knife_attack_jump" {
	"knife_anims\knife_attack_jump.smd"
	activity "ACT_MELEE_ATTACK_KNIFE" 4
	fps 30
}
$sequence "knife_attack_medcombo" {
	"knife_anims\knife_attack_medcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_KNIFE" 2
	fps 30
}
$sequence "knife_attack_lowcombo" {
	"knife_anims\knife_attack_lowcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_KNIFE" 0
	fps 30
}
$sequence "knife_attack_farcombo" {
	"knife_anims\knife_attack_farcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_KNIFE" 3
	fps 30
}
$sequence "knife_attack_jumpcombo" {
	"knife_anims\knife_attack_jumpcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_KNIFE" 3
	fps 30
}
$sequence "knife_attack_heavy" {
	"knife_anims\knife_attack_heavy.smd"
	activity "ACT_MELEE_ATTACK_HEAVY_KNIFE" 4
	fps 30
}
$sequence "knife_idle" {
	"knife_anims\knife_idle.smd"
	activity "ACT_IDLE_KNIFE" 20
	fps 30
}
$sequence "knife_fidget" {
	"knife_anims\knife_fidget.smd"
	activity "ACT_IDLE_KNIFE" 1
	fps 30
}
$sequence "stealth_success_attacker_shortvictim" {
	"knife_anims\stealth_success_attacker_shortvictim.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_SHORTVICTIM_KNIFE" 1
	fps 30
}
$sequence "stealth_success_attacker_tallvictim" {
	"knife_anims\stealth_success_attacker_tallvictim.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_TALLVICTIM_KNIFE" 1
	fps 30
}
$sequence "stealth_success_victim_shortattacker" {
	"knife_anims\stealth_success_victim_shortattacker.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_SHORTATTACKER_KNIFE" 1
	fps 30
}
$sequence "stealth_success_victim_tallattacker" {
	"knife_anims\stealth_success_victim_tallattacker.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_TALLATTACKER_KNIFE" 1
	fps 30
}
$sequence "stealth_failure_attacker_shortvictim" {
	"knife_anims\stealth_failure_attacker_shortvictim.smd"
	activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_SHORTVICTIM_KNIFE" 1
	fps 30
}
$sequence "stealth_failure_attacker_tallvictim" {
	"knife_anims\stealth_failure_attacker_tallvictim.smd"
	activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_TALLVICTIM_KNIFE" 1
	fps 30
}
$sequence "stealth_failure_victim_shortattacker" {
	"knife_anims\stealth_failure_victim_shortattacker.smd"
	activity "ACT_SNEAKATTACK_FAILURE_VICTIM_SHORTATTACKER_KNIFE" 1
	fps 30
}
$sequence "stealth_failure_victim_tallattacker" {
	"knife_anims\stealth_failure_victim_tallattacker.smd"
	activity "ACT_SNEAKATTACK_FAILURE_VICTIM_TALLATTACKER_KNIFE" 1
	fps 30
}
