// Created by Crowbar 0.74

$modelname "/character/shared/male/bushhook.mdl"

$bodygroup "sharedbones"
{
	studio "sharedbones"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\error\"

$attachment "0" "Bip01 R Hand" 0 0 0

$cbox 0 0 0 0 0 0

$bbox -38.997 -42.384 -7.869 40.845 51.536 91.352

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
$hbox 5 "Bip01 R Hand" -0.132211 -2.204826 -1.893781 5.006474 2.204901 1.890611
$hbox 6 "Bip01 L Thigh" 0 -1.440911 -1.601701 17.830053 1.784456 2.001217
$hbox 6 "Bip01 L Calf" 0 -1.549742 -1.47103 17.69693 1.733048 1.528979
$hbox 6 "Bip01 L Foot" 0 0 -1.500043 4.150375 7.381025 1.499969
$hbox 7 "Bip01 R Thigh" 0 -1.440914 -2.001153 17.830051 1.784446 1.601642
$hbox 7 "Bip01 R Calf" 0 -1.549751 -1.529096 17.696934 1.733039 1.470914
$hbox 7 "Bip01 R Foot" 0 0 -1.500109 4.150389 7.381025 1.499904

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
