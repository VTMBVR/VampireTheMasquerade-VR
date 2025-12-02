// Created by Crowbar 0.74

$modelname "/character/shared/male/claws.mdl"

$bodygroup "sharedbones"
{
	studio "sharedbones"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\error\"

$attachment "0" "Bip01 R Hand" 0 0 0

$cbox 0 0 0 0 0 0

$bbox -35.435 -35.764 -8.722 35.84 34.467 85.731

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

$sequence "claws_ready" {
	"claws_anims\claws_ready.smd"
	activity "ACT_READY_CLAWS" 1
	fps 30
}
$sequence "claws_dodge" {
	"claws_anims\claws_dodge.smd"
	activity "ACT_DODGE_CLAWS" 1
	fps 30
}
$sequence "claws_block" {
	"claws_anims\claws_block.smd"
	activity "ACT_BLOCK_claws" 1
	fps 30
}
$sequence "claws_block_heavy" {
	"claws_anims\claws_block_heavy.smd"
	activity "ACT_BLOCK_HEAVY_claws" 1
	fps 30
}
$sequence "claws_preblock" {
	"claws_anims\claws_preblock.smd"
	activity "ACT_PREBLOCK_claws" 1
	fps 30
}
$sequence "claws_blocked_reaction_left" {
	"claws_anims\claws_blocked_reaction_left.smd"
	activity "ACT_BLOCKED_REACTION_LEFT_claws" 1
	fps 30
}
$sequence "claws_blocked_reaction_right" {
	"claws_anims\claws_blocked_reaction_right.smd"
	activity "ACT_BLOCKED_REACTION_RIGHT_claws" 1
	fps 30
}
$sequence "Claws_hunt_walk" {
	"claws_anims\Claws_hunt_walk.smd"
	activity "ACT_HUNT_WALK_Claws" 100
	fps 30
}
$sequence "Claws_hunt_walk_lookleft" {
	"claws_anims\Claws_hunt_walk_lookleft.smd"
	activity "ACT_HUNT_WALK_LOOKLEFT_Claws" 100
	fps 30
}
$sequence "Claws_hunt_walk_lookright" {
	"claws_anims\Claws_hunt_walk_lookright.smd"
	activity "ACT_HUNT_WALK_LOOKRIGHT_Claws" 100
	fps 30
}
$sequence "Claws_alert_fidget_agro_lookaround" {
	"claws_anims\Claws_alert_fidget_agro_lookaround.smd"
	activity "ACT_ALERT_FIDGET_AGRO_LOOKAROUND_Claws" 100
	fps 30
}
$sequence "Claws_alert_front_into" {
	"claws_anims\Claws_alert_front_into.smd"
	activity "ACT_ALERT_FRONT_INTO_Claws" 100
	fps 30
}
$sequence "Claws_alert_l90_into" {
	"claws_anims\Claws_alert_l90_into.smd"
	activity "ACT_ALERT_L90_INTO_Claws" 100
	fps 30
}
$sequence "Claws_alert_r90_into" {
	"claws_anims\Claws_alert_r90_into.smd"
	activity "ACT_ALERT_R90_INTO_Claws" 100
	fps 30
}
$sequence "Claws_alert_180_into" {
	"claws_anims\Claws_alert_180_into.smd"
	activity "ACT_ALERT_180_INTO_Claws" 100
	fps 30
}
$sequence "Claws_alert_front_outof" {
	"claws_anims\Claws_alert_front_outof.smd"
	activity "ACT_ALERT_FRONT_OUTOF_Claws" 100
	fps 30
}
$sequence "Claws_alert_l90_outof" {
	"claws_anims\Claws_alert_l90_outof.smd"
	activity "ACT_ALERT_L90_OUTOF_Claws" 100
	fps 30
}
$sequence "Claws_alert_r90_outof" {
	"claws_anims\Claws_alert_r90_outof.smd"
	activity "ACT_ALERT_R90_OUTOF_Claws" 100
	fps 30
}
$sequence "Claws_alert_180_outof" {
	"claws_anims\Claws_alert_180_outof.smd"
	activity "ACT_ALERT_180_OUTOF_Claws" 100
	fps 30
}
$sequence "Claws_air" {
	"claws_anims\claws_air.smd"
	activity "ACT_MELEE_AIR_ATTACK_CLAWS" 1
	fps 30
}
$sequence "claws_dodge_attack" {
	"claws_anims\claws_dodge_attack.smd"
	activity "ACT_DODGE_ATTACK_claws" 1
	fps 30
}
$sequence "claws_attack_med" {
	"claws_anims\claws_attack_med.smd"
	activity "ACT_MELEE_ATTACK_CLAWS" 1
	fps 30
}
$sequence "claws_attack_far" {
	"claws_anims\claws_attack_far.smd"
	activity "ACT_MELEE_ATTACK_CLAWS" 1
	fps 30
}
$sequence "claws_attack_med_right" {
	"claws_anims\claws_attack_med_right.smd"
	activity "ACT_MELEE_ATTACK_CLAWS" 1
	fps 30
}
$sequence "claws_attack_far_left" {
	"claws_anims\claws_attack_far_left.smd"
	activity "ACT_MELEE_ATTACK_CLAWS" 1
	fps 30
}
$sequence "claws_attack_heavy" {
	"claws_anims\claws_attack_heavy.smd"
	activity "ACT_MELEE_ATTACK_HEAVY_CLAWS" 1
	fps 30
}
$sequence "claws_attack_low" {
	"claws_anims\claws_attack_low.smd"
	activity "ACT_MELEE_ATTACK_CLAWS" 0
	fps 30
}
$sequence "claws_attack_jump" {
	"claws_anims\claws_attack_jump.smd"
	activity "ACT_MELEE_ATTACK_CLAWS" 5
	fps 30
}
$sequence "claws_attack_medcombo" {
	"claws_anims\claws_attack_medcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_CLAWS" 2
	fps 30
}
$sequence "claws_attack_lowcombo" {
	"claws_anims\claws_attack_lowcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_CLAWS" 0
	fps 30
}
$sequence "claws_attack_farcombo" {
	"claws_anims\claws_attack_farcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_CLAWS" 3
	fps 30
}
$sequence "claws_attack_jumpcombo" {
	"claws_anims\claws_attack_jumpcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_CLAWS" 5
	fps 30
}
$sequence "claws_idle" {
	"claws_anims\claws_idle.smd"
	activity "ACT_IDLE_CLAWS" 20
	fps 30
}
$sequence "claws_fidget" {
	"claws_anims\claws_fidget.smd"
	activity "ACT_IDLE_CLAWS" 1
	fps 30
}
$sequence "stealth_success_attacker_shortvictim" {
	"claws_anims\stealth_success_attacker_shortvictim.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_SHORTVICTIM_CLAWS" 1
	fps 30
}
$sequence "stealth_success_attacker_tallvictim" {
	"claws_anims\stealth_success_attacker_tallvictim.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_TALLVICTIM_CLAWS" 1
	fps 30
}
$sequence "stealth_success_victim_shortattacker" {
	"claws_anims\stealth_success_victim_shortattacker.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_SHORTATTACKER_CLAWS" 1
	fps 30
}
$sequence "stealth_success_victim_tallattacker" {
	"claws_anims\stealth_success_victim_tallattacker.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_TALLATTACKER_CLAWS" 1
	fps 30
}
$sequence "stealth_failure_attacker_shortvictim" {
	"claws_anims\stealth_failure_attacker.smd"
	activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_SHORTVICTIM_CLAWS" 1
	fps 30
}
$sequence "stealth_failure_attacker_tallvictim" {
	"claws_anims\stealth_failure_attacker.smd"
	activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_TALLVICTIM_CLAWS" 1
	fps 30
}
$sequence "stealth_failure_victim_shortattacker" {
	"claws_anims\stealth_failure_victim.smd"
	activity "ACT_SNEAKATTACK_FAILURE_VICTIM_SHORTATTACKER_CLAWS" 1
	fps 30
}
$sequence "stealth_failure_victim_tallattacker" {
	"claws_anims\stealth_failure_victim.smd"
	activity "ACT_SNEAKATTACK_FAILURE_VICTIM_TALLATTACKER_CLAWS" 1
	fps 30
}
