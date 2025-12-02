// Created by Crowbar 0.74

$modelname "/character/shared/male/fists.mdl"

$bodygroup "sharedbones"
{
	studio "sharedbones"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\error\"

$attachment "0" "Bip01 R Hand" 0 0 0

$cbox 0 0 0 0 0 0

$bbox -17.348 -48.811 -6.844 39.907 41.504 107.675

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
