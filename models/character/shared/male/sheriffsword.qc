// Created by Crowbar 0.74

$modelname "/character/shared/male/sheriffsword.mdl"

$bodygroup "sharedbones"
{
	studio "sharedbones"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\error\"

$attachment "0" "Bip01 R Hand" 0 0 0

$cbox 0 0 0 0 0 0

$bbox -35.435 -55.448 -8.722 36.178 32.275 85.731

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
$hbox 5 "Bip01 R Hand" -0.132211 -2.204826 -1.89378 5.006474 2.204901 1.890611
$hbox 6 "Bip01 L Thigh" 0 -1.440911 -1.601701 17.830053 1.784456 2.001217
$hbox 6 "Bip01 L Calf" 0 -1.549742 -1.47103 17.69693 1.733048 1.528979
$hbox 6 "Bip01 L Foot" 0 0 -1.500043 4.150375 7.381025 1.499969
$hbox 7 "Bip01 R Thigh" 0 -1.440914 -2.001153 17.830051 1.784446 1.601642
$hbox 7 "Bip01 R Calf" 0 -1.549751 -1.529096 17.696934 1.733039 1.470914
$hbox 7 "Bip01 R Foot" 0 0 -1.500109 4.150389 7.381025 1.499904

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
