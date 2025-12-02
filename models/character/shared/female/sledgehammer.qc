// Created by Crowbar 0.74

$modelname "/character/shared/female/sledgehammer.mdl"

$bodygroup "sharedbones"
{
	studio "sharedbones"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\error\"

$attachment "0" "Bip01 R Hand" 0 -0.000001 0

$cbox 0 0 0 0 0 0

$bbox -27.524 -27.608 -2.412 32.387 34.577 80.285

$hboxset "default"
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 0 "Bip01 Pelvis" -0.243584 -0.822245 -3.236931 3.681291 0.846108 3.448031
$hbox 3 "Bip01 Spine" -2.321735 -2.017924 -1.500012 5.539246 1.726917 1.499999
$hbox 2 "Bip01 Spine1" 0 -1.420009 -1.229514 5.673751 1.42006 1.229489
$hbox 2 "Bip01 Spine2" 0 -1.059932 -4.032217 4.187234 1.875136 4.032186
$hbox 1 "Bip01 Neck" -0.966693 -0.918467 -1.200015 3.278769 0.918489 1.199985
$hbox 4 "Bip01 L UpperArm" 0 -0.976229 -1.493651 9.487505 1.123536 1.236666
$hbox 4 "Bip01 L Forearm" 0 -0.921436 -1.145982 9.767432 0.914306 1.27967
$hbox 4 "Bip01 L Hand" 0 -0.755992 -1.508253 3.497796 1.102921 1.335727
$hbox 5 "Bip01 R UpperArm" 0 -1.018009 -1.289718 9.487509 1.170455 1.555851
$hbox 5 "Bip01 R Forearm" 0 -0.963358 -1.335119 9.767432 0.956263 1.201495
$hbox 5 "Bip01 R Hand" 0 -0.69391 -1.429807 3.497828 1.109894 1.508167
$hbox 1 "Bip01 Head" -0.134689 -2.790777 -2.642133 5.077954 3.439429 2.685879
$hbox 6 "Bip01 L Thigh" 0 -1.586619 -1.587608 18.38521 1.476555 1.899763
$hbox 6 "Bip01 L Calf" 0 -1.585488 -1.658665 18.080187 1.508031 1.4471
$hbox 6 "Bip01 L Foot" 0 0 -1.048964 3.639623 4.452506 1.04894
$hbox 7 "Bip01 R Thigh" 0 -1.586626 -1.899765 18.38521 1.47655 1.587598
$hbox 7 "Bip01 R Calf" 0 -1.585403 -1.446942 18.080187 1.507822 1.658523
$hbox 7 "Bip01 R Foot" 0 0 -1.071496 3.639623 4.458593 1.071409

$sequence "sledgehammer_ready" {
	"sledgehammer_anims\sledgehammer_ready.smd"
	activity "ACT_READY_SLEDGEHAMMER" 1
	fps 30
}
$sequence "sledgehammer_dodge" {
	"sledgehammer_anims\sledgehammer_dodge.smd"
	activity "ACT_DODGE_SLEDGEHAMMER" 1
	fps 30
}
$sequence "sledgehammer_block" {
	"sledgehammer_anims\sledgehammer_block.smd"
	activity "ACT_BLOCK_sledgehammer" 1
	fps 30
}
$sequence "sledgehammer_block_heavy" {
	"sledgehammer_anims\sledgehammer_block_heavy.smd"
	activity "ACT_BLOCK_HEAVY_sledgehammer" 1
	fps 30
}
$sequence "sledgehammer_preblock" {
	"sledgehammer_anims\sledgehammer_preblock.smd"
	activity "ACT_PREBLOCK_sledgehammer" 1
	fps 30
}
$sequence "sledgehammer_blocked_reaction_left" {
	"sledgehammer_anims\sledgehammer_blocked_reaction_left.smd"
	activity "ACT_BLOCKED_REACTION_LEFT_sledgehammer" 1
	fps 30
}
$sequence "sledgehammer_blocked_reaction_right" {
	"sledgehammer_anims\sledgehammer_blocked_reaction_right.smd"
	activity "ACT_BLOCKED_REACTION_RIGHT_sledgehammer" 1
	fps 30
}
$sequence "sledgehammer_dodge_attack" {
	"sledgehammer_anims\sledgehammer_dodge_attack.smd"
	activity "ACT_DODGE_ATTACK_SLEDGEHAMMER" 1
	fps 30
}
$sequence "Sledgehammer_air" {
	"sledgehammer_anims\Sledgehammer_air.smd"
	activity "ACT_MELEE_AIR_ATTACK_SLEDGEHAMMER" 1
	fps 30
}
$sequence "Sledgehammer_attack_W1" {
	"sledgehammer_anims\Sledgehammer_attack_W1.smd"
	activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 1
	fps 25
}
$sequence "sledgehammer_attack_SwingRight" {
	"sledgehammer_anims\sledgehammer_attack_SwingRight.smd"
	activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 1
	fps 35
}
$sequence "sledgehammer_attack_SwingRight_2nd" {
	"sledgehammer_anims\sledgehammer_attack_SwingRight_2nd.smd"
	activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 1
	fps 30
}
$sequence "sledgehammer_attack_SwingRight_3rd" {
	"sledgehammer_anims\sledgehammer_attack_SwingRight_3rd.smd"
	activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 1
	fps 30
}
$sequence "sledgehammer_attack_midright" {
	"sledgehammer_anims\sledgehammer_attack_midright.smd"
	activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 1
	fps 30
}
$sequence "sledgehammer_attack_med" {
	"sledgehammer_anims\sledgehammer_attack_med.smd"
	activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 0
	fps 38
}
$sequence "sledgehammer_attack_low" {
	"sledgehammer_anims\sledgehammer_attack_low.smd"
	activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 1
	fps 30
}
$sequence "sledgehammer_attack_far" {
	"sledgehammer_anims\sledgehammer_attack_far.smd"
	activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 1
	fps 35
}
$sequence "sledgehammer_attack_jump" {
	"sledgehammer_anims\sledgehammer_attack_jump.smd"
	activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 4
	fps 30
}
$sequence "sledgehammer_attack_shortmedcombo" {
	"sledgehammer_anims\sledgehammer_attack_shortmedcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_SLEDGEHAMMER" 2
	fps 30
}
$sequence "sledgehammer_attack_medcombo" {
	"sledgehammer_anims\sledgehammer_attack_medcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_SLEDGEHAMMER" 1
	fps 30
}
$sequence "sledgehammer_attack_lowcombo" {
	"sledgehammer_anims\sledgehammer_attack_lowcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_SLEDGEHAMMER" 0
	fps 30
}
$sequence "sledgehammer_attack_farcombo" {
	"sledgehammer_anims\sledgehammer_attack_farcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_SLEDGEHAMMER" 3
	fps 30
}
$sequence "sledgehammer_attack_jumpcombo" {
	"sledgehammer_anims\sledgehammer_attack_jumpcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_SLEDGEHAMMER" 5
	fps 30
}
$sequence "sledgehammer_attack_heavy" {
	"sledgehammer_anims\sledgehammer_attack_heavy.smd"
	activity "ACT_MELEE_ATTACK_HEAVY_SLEDGEHAMMER" 5
	fps 30
}
$sequence "sledgehammer_combo_A1" {
	"sledgehammer_anims\sledgehammer_attack_med.smd"
	activity "ACT_MELEE_ATTACK_sledgehammer" 2
	fps 38
}
$sequence "sledgehammer_combo_A2" {
	"sledgehammer_anims\sledgehammer_combo_A2.smd"
	activity "ACT_MELEE_ATTACK_sledgehammer" 2
	fps 30
}
$sequence "sledgehammer_combo_A3" {
	"sledgehammer_anims\sledgehammer_combo_A3.smd"
	activity "ACT_MELEE_ATTACK_sledgehammer" 2
	fps 30
}
$sequence "sledgehammer_combo_B1" {
	"sledgehammer_anims\sledgehammer_combo_B1.smd"
	activity "ACT_MELEE_ATTACK_sledgehammer" 2
	fps 35
}
$sequence "sledgehammer_combo_B2" {
	"sledgehammer_anims\sledgehammer_combo_B2.smd"
	activity "ACT_MELEE_ATTACK_sledgehammer" 2
	fps 30
}
$sequence "sledgehammer_combo_B3" {
	"sledgehammer_anims\sledgehammer_combo_B3.smd"
	activity "ACT_MELEE_ATTACK_sledgehammer" 2
	fps 30
}
$sequence "sledgehammer_combo_C2" {
	"sledgehammer_anims\sledgehammer_combo_C2.smd"
	activity "ACT_MELEE_ATTACK_sledgehammer" 2
	fps 30
}
$sequence "sledgehammer_combo_C3" {
	"sledgehammer_anims\sledgehammer_combo_C3.smd"
	activity "ACT_MELEE_ATTACK_sledgehammer" 2
	fps 30
}
$sequence "sledgehammer_combo_D1" {
	"sledgehammer_anims\sledgehammer_combo_D1.smd"
	activity "ACT_MELEE_ATTACK_sledgehammer" 2
	fps 30
}
$sequence "sledgehammer_idle" {
	"sledgehammer_anims\sledgehammer_idle.smd"
	activity "ACT_IDLE_SLEDGEHAMMER" 20
	fps 30
}
$sequence "sledgehammer_fidget" {
	"sledgehammer_anims\sledgehammer_fidget.smd"
	activity "ACT_IDLE_SLEDGEHAMMER" 1
	fps 30
}
$sequence "stealth_success_attacker_shortvictim" {
	"sledgehammer_anims\stealth_success_attacker_shortvictim.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_SHORTVICTIM_SLEDGEHAMMER" 1
	fps 30
}
$sequence "stealth_success_attacker_tallvictim" {
	"sledgehammer_anims\stealth_success_attacker_tallvictim.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_TALLVICTIM_SLEDGEHAMMER" 1
	fps 30
}
$sequence "stealth_success_victim_shortattacker" {
	"sledgehammer_anims\stealth_success_victim_shortattacker.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_SHORTATTACKER_SLEDGEHAMMER" 1
	fps 30
}
$sequence "stealth_success_victim_tallattacker" {
	"sledgehammer_anims\stealth_success_victim_tallattacker.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_TALLATTACKER_SLEDGEHAMMER" 1
	fps 30
}
$sequence "stealth_failure_attacker_shortvictim" {
	"sledgehammer_anims\stealth_failure_attacker.smd"
	activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_SHORTVICTIM_SLEDGEHAMMER" 1
	fps 30
}
$sequence "stealth_failure_attacker_tallvictim" {
	"sledgehammer_anims\stealth_failure_attacker.smd"
	activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_TALLVICTIM_SLEDGEHAMMER" 1
	fps 30
}
$sequence "stealth_failure_victim_shortattacker" {
	"sledgehammer_anims\stealth_failure_victim.smd"
	activity "ACT_SNEAKATTACK_FAILURE_VICTIM_SHORTATTACKER_SLEDGEHAMMER" 1
	fps 30
}
$sequence "stealth_failure_victim_tallattacker" {
	"sledgehammer_anims\stealth_failure_victim.smd"
	activity "ACT_SNEAKATTACK_FAILURE_VICTIM_TALLATTACKER_SLEDGEHAMMER" 1
	fps 30
}
