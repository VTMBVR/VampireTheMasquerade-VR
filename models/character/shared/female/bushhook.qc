// Created by Crowbar 0.74

$modelname "/character/shared/female/bushhook.mdl"

$bodygroup "sharedbones"
{
	studio "sharedbones"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\error\"

$attachment "0" "Bip01 R Hand" 0 0.000002 0

$cbox 0 0 0 0 0 0

$bbox -25.686 -42.141 -8.115 44.387 51.242 89.147

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

$sequence "bushhook_ready" {
	"bushhook_anims\bushhook_ready.smd"
	activity "ACT_READY_BUSHHOOK" 1
	fps 30
}
$sequence "bushhook_dodge" {
	"bushhook_anims\bushhook_dodge.smd"
	activity "ACT_DODGE_BUSHHOOK" 1
	fps 30
}
$sequence "bushhook_block" {
	"bushhook_anims\bushhook_block.smd"
	activity "ACT_BLOCK_BUSHHOOK" 1
	fps 30
}
$sequence "bushhook_block_heavy" {
	"bushhook_anims\bushhook_block_heavy.smd"
	activity "ACT_BLOCK_HEAVY_BUSHHOOK" 1
	fps 30
}
$sequence "bushhook_preblock" {
	"bushhook_anims\bushhook_preblock.smd"
	activity "ACT_PREBLOCK_BUSHHOOK" 1
	fps 30
}
$sequence "bushhook_blocked_reaction_left" {
	"bushhook_anims\bushhook_blocked_reaction_left.smd"
	activity "ACT_BLOCKED_REACTION_LEFT_BUSHHOOK" 1
	fps 30
}
$sequence "bushhook_blocked_reaction_right" {
	"bushhook_anims\bushhook_blocked_reaction_right.smd"
	activity "ACT_BLOCKED_REACTION_RIGHT_BUSHHOOK" 1
	fps 30
}
$sequence "bushhook_attack_W1" {
	"bushhook_anims\bushhook_attack_W1.smd"
	activity "ACT_MELEE_ATTACK_BUSHHOOK" 1
	fps 20
}
$sequence "bushhook_attack_W2" {
	"bushhook_anims\bushhook_attack_W2.smd"
	activity "ACT_MELEE_ATTACK_BUSHHOOK" 1
	fps 30
}
$sequence "BushHook_air" {
	"bushhook_anims\bushhook_air.smd"
	activity "ACT_MELEE_AIR_ATTACK_BUSHHOOK" 1
	fps 30
}
$sequence "bushhook_dodge_attack" {
	"bushhook_anims\bushhook_dodge_attack.smd"
	activity "ACT_DODGE_ATTACK_BUSHHOOK" 1
	fps 30
}
$sequence "Bushhook_attack_SwingRight" {
	"bushhook_anims\bushhook_attack_SwingRight.smd"
	activity "ACT_MELEE_ATTACK_BUSHHOOK" 1
	fps 35
}
$sequence "BushHook_attack_SwingRight_2nd" {
	"bushhook_anims\bushhook_attack_SwingRight_2nd.smd"
	activity "ACT_MELEE_ATTACK_BUSHHOOK" 1
	fps 30
}
$sequence "BushHook_attack_SwingRight_3rd" {
	"bushhook_anims\bushhook_attack_SwingRight_3rd.smd"
	activity "ACT_MELEE_ATTACK_BUSHHOOK" 1
	fps 30
}
$sequence "bushhook_attack_shortmed" {
	"bushhook_anims\bushhook_attack_shortmed.smd"
	activity "ACT_MELEE_ATTACK_BUSHHOOK" 1
	fps 30
}
$sequence "bushhook_attack_midright" {
	"bushhook_anims\bushhook_attack_midright.smd"
	activity "ACT_MELEE_ATTACK_BUSHHOOK" 1
	fps 30
}
$sequence "bushhook_attack_med" {
	"bushhook_anims\bushhook_attack_med.smd"
	activity "ACT_MELEE_ATTACK_BUSHHOOK" 0
	fps 38
}
$sequence "bushhook_attack_low" {
	"bushhook_anims\bushhook_attack_low.smd"
	activity "ACT_MELEE_ATTACK_BUSHHOOK" 0
	fps 30
}
$sequence "bushhook_attack_far" {
	"bushhook_anims\bushhook_attack_far.smd"
	activity "ACT_MELEE_ATTACK_BUSHHOOK" 1
	fps 35
}
$sequence "bushhook_attack_far2" {
	"bushhook_anims\bushhook_attack_far.smd"
	activity "ACT_MELEE_ATTACK_BUSHHOOK" 1
	fps 35
}
$sequence "bushhook_attack_jump" {
	"bushhook_anims\bushhook_attack_jump.smd"
	activity "ACT_MELEE_ATTACK_BUSHHOOK" 4
	fps 30
}
$sequence "bushhook_attack_shortmedcombo" {
	"bushhook_anims\bushhook_attack_shortmedcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_BUSHHOOK" 2
	fps 30
}
$sequence "bushhook_attack_medcombo" {
	"bushhook_anims\bushhook_attack_medcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_BUSHHOOK" 1
	fps 30
}
$sequence "bushhook_attack_lowcombo" {
	"bushhook_anims\bushhook_attack_lowcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_BUSHHOOK" 0
	fps 30
}
$sequence "bushhook_attack_farcombo" {
	"bushhook_anims\bushhook_attack_farcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_BUSHHOOK" 3
	fps 30
}
$sequence "bushhook_attack_jumpcombo" {
	"bushhook_anims\bushhook_attack_jumpcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_BUSHHOOK" 5
	fps 30
}
$sequence "bushhook_attack_heavy" {
	"bushhook_anims\bushhook_attack_heavy.smd"
	activity "ACT_MELEE_ATTACK_HEAVY_BUSHHOOK" 5
	fps 30
}
$sequence "bushhook_idle" {
	"bushhook_anims\bushhook_idle.smd"
	activity "ACT_IDLE_BUSHHOOK" 20
	fps 30
}
$sequence "bushhook_fidget" {
	"bushhook_anims\bushhook_fidget.smd"
	activity "ACT_IDLE_BUSHHOOK" 1
	fps 30
}
$sequence "stealth_success_attacker_shortvictim" {
	"bushhook_anims\stealth_success_attacker_shortvictim.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_SHORTVICTIM_BUSHHOOK" 1
	fps 30
}
$sequence "stealth_success_attacker_tallvictim" {
	"bushhook_anims\stealth_success_attacker_tallvictim.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_TALLVICTIM_BUSHHOOK" 1
	fps 30
}
$sequence "stealth_success_victim_shortattacker" {
	"bushhook_anims\stealth_success_victim_shortattacker.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_SHORTATTACKER_BUSHHOOK" 1
	fps 30
}
$sequence "stealth_success_victim_tallattacker" {
	"bushhook_anims\stealth_success_victim_tallattacker.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_TALLATTACKER_BUSHHOOK" 1
	fps 30
}
$sequence "stealth_failure_attacker_shortvictim" {
	"bushhook_anims\stealth_failure_attacker.smd"
	activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_SHORTVICTIM_BUSHHOOK" 1
	fps 30
}
$sequence "stealth_failure_attacker_tallvictim" {
	"bushhook_anims\stealth_failure_attacker.smd"
	activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_TALLVICTIM_BUSHHOOK" 1
	fps 30
}
$sequence "stealth_failure_victim_shortattacker" {
	"bushhook_anims\stealth_failure_victim.smd"
	activity "ACT_SNEAKATTACK_FAILURE_VICTIM_SHORTATTACKER_BUSHHOOK" 1
	fps 30
}
$sequence "stealth_failure_victim_tallattacker" {
	"bushhook_anims\stealth_failure_victim.smd"
	activity "ACT_SNEAKATTACK_FAILURE_VICTIM_TALLATTACKER_BUSHHOOK" 1
	fps 30
}
