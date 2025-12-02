// Created by Crowbar 0.74

$modelname "/character/shared/female/fists.mdl"

$bodygroup "sharedbones"
{
	studio "sharedbones"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\error\"

$attachment "0" "Bip01 R Hand" 0 0.000002 0

$cbox 0 0 0 0 0 0

$bbox -28.326 -55.315 -2.457 58.998 45.651 102.954

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

$sequence "fists_ready" {
	"fists_anims\fists_ready.smd"
	activity "ACT_READY_FISTS" 1
	fps 30
}
$sequence "fists_dodge" {
	"fists_anims\fists_dodge.smd"
	activity "ACT_DODGE_FISTS" 1
	fps 30
}
$sequence "fists_block" {
	"fists_anims\fists_block.smd"
	activity "ACT_BLOCK_fists" 1
	fps 30
}
$sequence "fists_block_heavy" {
	"fists_anims\fists_block_heavy.smd"
	activity "ACT_BLOCK_HEAVY_fists" 1
	fps 30
}
$sequence "fists_preblock" {
	"fists_anims\fists_preblock.smd"
	activity "ACT_PREBLOCK_fists" 1
	fps 30
}
$sequence "fists_blocked_reaction_left" {
	"fists_anims\fists_blocked_reaction_left.smd"
	activity "ACT_BLOCKED_REACTION_LEFT_fists" 1
	fps 30
}
$sequence "fists_blocked_reaction_right" {
	"fists_anims\fists_blocked_reaction_right.smd"
	activity "ACT_BLOCKED_REACTION_RIGHT_fists" 1
	fps 30
}
$sequence "fists_hunt_walk" {
	"fists_anims\fists_hunt_walk.smd"
	activity "ACT_HUNT_WALK_FISTS" 100
	fps 30
}
$sequence "fists_hunt_walk_lookleft" {
	"fists_anims\fists_hunt_walk_lookleft.smd"
	activity "ACT_HUNT_WALK_LOOKLEFT_FISTS" 100
	fps 30
}
$sequence "fists_hunt_walk_lookright" {
	"fists_anims\fists_hunt_walk_lookright.smd"
	activity "ACT_HUNT_WALK_LOOKRIGHT_FISTS" 100
	fps 30
}
$sequence "fists_alert_fidget_agro_lookaround" {
	"fists_anims\fists_alert_fidget_agro_lookaround.smd"
	activity "ACT_ALERT_FIDGET_AGRO_LOOKAROUND_FISTS" 100
	fps 30
}
$sequence "Fists_air" {
	"fists_anims\Fists_air.smd"
	activity "ACT_MELEE_AIR_ATTACK_FISTS" 1
	fps 30
}
$sequence "Fists_attack_W1" {
	"fists_anims\fists_attack_W1.smd"
	activity "ACT_MELEE_ATTACK_FISTS" 1
	fps 30
}
$sequence "Fists_attack_W2" {
	"fists_anims\fists_attack_W2.smd"
	activity "ACT_MELEE_ATTACK_FISTS" 1
	fps 30
}
$sequence "fists_dodge_attack" {
	"fists_anims\fists_dodge_attack.smd"
	activity "ACT_DODGE_ATTACK_fists" 1
	fps 30
}
$sequence "fists_attack_JabLeft" {
	"fists_anims\fists_attack_Jableft.smd"
	activity "ACT_MELEE_ATTACK_FISTS" 1
	fps 30
}
$sequence "fists_attack_longright" {
	"fists_anims\fists_attack_longright.smd"
	activity "ACT_MELEE_ATTACK_FISTS" 0
	fps 30
}
$sequence "fists_attack_Roundhouse" {
	"fists_anims\fists_attack_RoundHouse.smd"
	activity "ACT_MELEE_ATTACK_FISTS" 1
	fps 30
}
$sequence "fists_attack_JabRight" {
	"fists_anims\fists_attack_Jabright.smd"
	activity "ACT_MELEE_ATTACK_FISTS" 1
	fps 30
}
$sequence "fists_attack_JabLeftw" {
	"fists_anims\fists_attack_W2.smd"
	activity "ACT_MELEE_ATTACK_FISTS" 1
	fps 30
}
$sequence "fists_attack_JabRightw" {
	"fists_anims\fists_attack_Jabright.smd"
	activity "ACT_MELEE_ATTACK_FISTS" 1
	fps 30
}
$sequence "fists_attack_shortright" {
	"fists_anims\fists_attack_shortright.smd"
	activity "ACT_MELEE_ATTACK_FISTS" 1
	fps 30
}
$sequence "fists_attack_right" {
	"fists_anims\fists_attack_right.smd"
	activity "ACT_MELEE_ATTACK_FISTS" 4
	fps 30
}
$sequence "fists_attack_med" {
	"fists_anims\fists_attack_med.smd"
	activity "ACT_MELEE_ATTACK_FISTS" 3
	fps 30
}
$sequence "fists_attack_low" {
	"fists_anims\fists_attack_low.smd"
	activity "ACT_MELEE_ATTACK_FISTS" 0
	fps 30
}
$sequence "fists_attack_far" {
	"fists_anims\fists_attack_far.smd"
	activity "ACT_MELEE_ATTACK_FISTS" 0
	fps 30
}
$sequence "fists_attack_far_right" {
	"fists_anims\fists_attack_far_right.smd"
	activity "ACT_MELEE_ATTACK_FISTS" 1
	fps 30
}
$sequence "fists_attack_jump" {
	"fists_anims\fists_attack_jump.smd"
	activity "ACT_MELEE_ATTACK_FISTS" 2
	fps 30
}
$sequence "fists_attack_medcombo" {
	"fists_anims\fists_attack_medcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_FISTS" 2
	fps 30
}
$sequence "fists_attack_lowcombo" {
	"fists_anims\fists_attack_lowcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_FISTS" 0
	fps 30
}
$sequence "fists_attack_farcombo" {
	"fists_anims\fists_attack_farcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_FISTS" 4
	fps 30
}
$sequence "fists_attack_jumpcombo" {
	"fists_anims\fists_attack_jumpcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_FISTS" 2
	fps 30
}
$sequence "fists_attack_heavy" {
	"fists_anims\fists_attack_heavy.smd"
	activity "ACT_MELEE_ATTACK_HEAVY_FISTS" 0
	fps 30
}
$sequence "fists_attack_heavy_old" {
	"fists_anims\fists_attack_heavy_old.smd"
	activity "ACT_MELEE_ATTACK_HEAVY_OLD_FISTS" 0
	fps 30
}
$sequence "kick_short" {
	"fists_anims\kick_short.smd"
	activity "ACT_KICK_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "kick_long" {
	"fists_anims\kick_long.smd"
	activity "ACT_KICK_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "stealth_success_attacker_shortvictim" {
	"fists_anims\stealth_success_attacker_shortvictim.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_SHORTVICTIM_FISTS" 1
	fps 30
}
$sequence "stealth_success_attacker_tallvictim" {
	"fists_anims\stealth_success_attacker_tallvictim.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_TALLVICTIM_FISTS" 1
	fps 30
}
$sequence "stealth_success_victim_shortattacker" {
	"fists_anims\stealth_success_victim_shortattacker.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_SHORTATTACKER_FISTS" 1
	fps 30
}
$sequence "stealth_success_victim_tallattacker" {
	"fists_anims\stealth_success_victim_tallattacker.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_TALLATTACKER_FISTS" 1
	fps 30
}
$sequence "stealth_failure_attacker_shortvictim" {
	"fists_anims\stealth_failure_attacker_shortvictim.smd"
	activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_SHORTVICTIM_FISTS" 1
	fps 30
}
$sequence "stealth_failure_attacker_tallvictim" {
	"fists_anims\stealth_failure_attacker_tallvictim.smd"
	activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_TALLVICTIM_FISTS" 1
	fps 30
}
$sequence "stealth_failure_victim_shortattacker" {
	"fists_anims\stealth_failure_victim_shortattacker.smd"
	activity "ACT_SNEAKATTACK_FAILURE_VICTIM_SHORTATTACKER_FISTS" 1
	fps 30
}
$sequence "stealth_failure_victim_tallattacker" {
	"fists_anims\stealth_failure_victim_tallattacker.smd"
	activity "ACT_SNEAKATTACK_FAILURE_VICTIM_TALLATTACKER_FISTS" 1
	fps 30
}
