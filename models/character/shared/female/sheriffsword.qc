// Created by Crowbar 0.74

$modelname "/character/shared/female/sheriffsword.mdl"

$bodygroup "sharedbones"
{
	studio "sharedbones"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\error\"

$attachment "0" "Bip01 R Hand" 0 0.000002 0

$cbox 0 0 0 0 0 0

$bbox -36.362 -55.157 -9.154 29.79 34.712 81.05

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

$sequence "sheriffsword_ready" {
	"sheriffsword_anims\sheriffsword_ready.smd"
	activity "ACT_READY_SHERIFFSWORD" 1
	fps 30
}
$sequence "sheriffsword_dodge" {
	"sheriffsword_anims\sheriffsword_dodge.smd"
	activity "ACT_DODGE_SHERIFFSWORD" 1
	fps 30
}
$sequence "sheriffsword_block" {
	"sheriffsword_anims\sheriffsword_block.smd"
	activity "ACT_BLOCK_SHERIFFSWORD" 1
	fps 30
}
$sequence "sheriffsword_block_heavy" {
	"sheriffsword_anims\sheriffsword_block_heavy.smd"
	activity "ACT_BLOCK_HEAVY_SHERIFFSWORD" 1
	fps 30
}
$sequence "sheriffsword_preblock" {
	"sheriffsword_anims\sheriffsword_preblock.smd"
	activity "ACT_PREBLOCK_SHERIFFSWORD" 1
	fps 30
}
$sequence "sheriffsword_blocked_reaction_left" {
	"sheriffsword_anims\sheriffsword_blocked_reaction_left.smd"
	activity "ACT_BLOCKED_REACTION_LEFT_SHERIFFSWORD" 1
	fps 30
}
$sequence "sheriffsword_blocked_reaction_right" {
	"sheriffsword_anims\sheriffsword_blocked_reaction_right.smd"
	activity "ACT_BLOCKED_REACTION_RIGHT_SHERIFFSWORD" 1
	fps 30
}
$sequence "sheriffsword_dodge_attack" {
	"sheriffsword_anims\sheriffsword_dodge_attack.smd"
	activity "ACT_DODGE_ATTACK_SHERIFFSWORD" 1
	fps 30
}
$sequence "sheriffsword_attack_med" {
	"sheriffsword_anims\sheriffsword_attack_med.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 3
	fps 30
}
$sequence "sheriffsword_attack_Left_Right2" {
	"sheriffsword_anims\sheriffsword_attack_Left_Right.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 3
	fps 30
}
$sequence "sheriffsword_attack_low" {
	"sheriffsword_anims\sheriffsword_attack_low.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 0
	fps 30
}
$sequence "sheriffsword_attack_heavy" {
	"sheriffsword_anims\sheriffsword_attack_heavy.smd"
	activity "ACT_MELEE_ATTACK_HEAVY_SHERIFFSWORD" 4
	fps 30
}
$sequence "sheriffsword_combo_A1" {
	"sheriffsword_anims\sheriffsword_combo_A1.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 2
	fps 30
}
$sequence "sheriffsword_combo_A2" {
	"sheriffsword_anims\sheriffsword_combo_A2.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 2
	fps 30
}
$sequence "sheriffsword_combo_A3" {
	"sheriffsword_anims\sheriffsword_combo_A3.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 2
	fps 30
}
$sequence "sheriffsword_combo_B1" {
	"sheriffsword_anims\sheriffsword_combo_B1.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 2
	fps 30
}
$sequence "sheriffsword_combo_B2" {
	"sheriffsword_anims\sheriffsword_combo_B2.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 2
	fps 30
}
$sequence "sheriffsword_combo_B3" {
	"sheriffsword_anims\sheriffsword_combo_B3.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 2
	fps 30
}
$sequence "sheriffsword_combo_C1" {
	"sheriffsword_anims\sheriffsword_combo_C1.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 2
	fps 30
}
$sequence "sheriffsword_combo_C2" {
	"sheriffsword_anims\sheriffsword_combo_C2.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 2
	fps 30
}
$sequence "sheriffsword_combo_C3" {
	"sheriffsword_anims\sheriffsword_combo_C3.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 2
	fps 30
}
$sequence "sheriffsword_combo_D1" {
	"sheriffsword_anims\sheriffsword_combo_D1.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 2
	fps 30
}
$sequence "sheriffsword_combo_D2" {
	"sheriffsword_anims\sheriffsword_combo_D2.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 2
	fps 30
}
$sequence "sheriffsword_combo_D3" {
	"sheriffsword_anims\sheriffsword_combo_D3.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 2
	fps 30
}
$sequence "sheriffsword_attack_Left_Right" {
	"sheriffsword_anims\sheriffsword_attack_Left_Right.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 3
	fps 30
}
$sequence "sheriffsword_attack_far" {
	"sheriffsword_anims\sheriffsword_attack_far.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 0
	fps 30
}
$sequence "sheriffsword_attack_far_roll" {
	"sheriffsword_anims\sheriffsword_attack_far_roll.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 2
	fps 30
}
$sequence "sheriffsword_attack_far_spin" {
	"sheriffsword_anims\sheriffsword_attack_far_Spin.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 4
	fps 30
}
$sequence "sheriffsword_attack_jump" {
	"sheriffsword_anims\sheriffsword_attack_jump.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 2
	fps 30
}
$sequence "sheriffsword_attack_Run" {
	"sheriffsword_anims\sheriffsword_attack_Run.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 4
	fps 30
}
$sequence "sheriffsword_attack_SweepKickCombo" {
	"sheriffsword_anims\sheriffsword_attack_SweepKickCombo.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 3
	fps 30
}
$sequence "sheriffsword_attack_medcombo" {
	"sheriffsword_anims\sheriffsword_attack_medcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_SHERIFFSWORD" 4
	fps 30
}
$sequence "sheriffsword_attack_lowcombo" {
	"sheriffsword_anims\sheriffsword_attack_lowcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_SHERIFFSWORD" 0
	fps 30
}
$sequence "sheriffsword_attack_farcombo" {
	"sheriffsword_anims\sheriffsword_attack_farcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_SHERIFFSWORD" 0
	fps 30
}
$sequence "sheriffsword_attack_jumpcombo" {
	"sheriffsword_anims\sheriffsword_attack_jumpcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_SHERIFFSWORD" 1
	fps 30
}
$sequence "sheriffsword_running_attack" {
	"sheriffsword_anims\sheriffsword_running_attack.smd"
	activity "ACT_MELEE_ATTACK_SHERIFFSWORD" 1
	fps 30
}
$sequence "sheriffsword_idle" {
	"sheriffsword_anims\sheriffsword_idle.smd"
	activity "ACT_IDLE_SHERIFFSWORD" 20
	fps 30
}
$sequence "sheriffsword_fidget" {
	"sheriffsword_anims\sheriffsword_fidget.smd"
	activity "ACT_IDLE_SHERIFFSWORD" 1
	fps 30
}
$sequence "stealth_success_attacker_shortvictim" {
	"sheriffsword_anims\stealth_success_attacker_shortvictim.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_SHORTVICTIM_SHERIFFSWORD" 1
	fps 30
}
$sequence "stealth_success_attacker_tallvictim" {
	"sheriffsword_anims\stealth_success_attacker_tallvictim.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_TALLVICTIM_SHERIFFSWORD" 1
	fps 30
}
$sequence "stealth_success_victim_shortattacker" {
	"sheriffsword_anims\stealth_success_victim_shortattacker.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_SHORTATTACKER_SHERIFFSWORD" 1
	fps 30
}
$sequence "stealth_success_victim_tallattacker" {
	"sheriffsword_anims\stealth_success_victim_tallattacker.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_TALLATTACKER_SHERIFFSWORD" 1
	fps 30
}
$sequence "stealth_failure_attacker_shortvictim" {
	"sheriffsword_anims\stealth_failure_attacker_shortvictim.smd"
	activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_SHORTVICTIM_SHERIFFSWORD" 1
	fps 30
}
$sequence "stealth_failure_attacker_tallvictim" {
	"sheriffsword_anims\stealth_failure_attacker_tallvictim.smd"
	activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_TALLVICTIM_SHERIFFSWORD" 1
	fps 30
}
$sequence "stealth_failure_victim_shortattacker" {
	"sheriffsword_anims\stealth_failure_victim_shortattacker.smd"
	activity "ACT_SNEAKATTACK_FAILURE_VICTIM_SHORTATTACKER_SHERIFFSWORD" 1
	fps 30
}
$sequence "stealth_failure_victim_tallattacker" {
	"sheriffsword_anims\stealth_failure_victim_tallattacker.smd"
	activity "ACT_SNEAKATTACK_FAILURE_VICTIM_TALLATTACKER_SHERIFFSWORD" 1
	fps 30
}
