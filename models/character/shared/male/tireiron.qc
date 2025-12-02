// Created by Crowbar 0.74

$modelname "/character/shared/male/tireiron.mdl"

$bodygroup "sharedbones"
{
	studio "sharedbones"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\error\"

$attachment "0" "Bip01 R Hand" 0 0 0

$cbox 0 0 0 0 0 0

$bbox -55.102 -71.172 -14.729 68.215 30.5 71.435

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

$sequence "tireiron_ready" {
	"tireiron_anims\tireiron_ready.smd"
	activity "ACT_READY_TIREIRON" 1
	fps 30
}
$sequence "tireiron_dodge" {
	"tireiron_anims\tireiron_dodge.smd"
	activity "ACT_DODGE_TIREIRON" 1
	fps 30
}
$sequence "TireIron_hunt_walk" {
	"tireiron_anims\TireIron_hunt_walk.smd"
	activity "ACT_HUNT_WALK_TireIron" 100
	fps 30
}
$sequence "TireIron_hunt_walk_lookleft" {
	"tireiron_anims\TireIron_hunt_walk_lookleft.smd"
	activity "ACT_HUNT_WALK_LOOKLEFT_TireIron" 100
	fps 30
}
$sequence "TireIron_hunt_walk_lookright" {
	"tireiron_anims\TireIron_hunt_walk_lookright.smd"
	activity "ACT_HUNT_WALK_LOOKRIGHT_TireIron" 100
	fps 30
}
$sequence "TireIron_alert_fidget_agro_lookaround" {
	"tireiron_anims\TireIron_alert_fidget_agro_lookaround.smd"
	activity "ACT_ALERT_FIDGET_AGRO_LOOKAROUND_TireIron" 100
	fps 30
}
$sequence "TireIron_alert_front_into" {
	"tireiron_anims\TireIron_alert_front_into.smd"
	activity "ACT_ALERT_FRONT_INTO_TireIron" 100
	fps 30
}
$sequence "TireIron_alert_l90_into" {
	"tireiron_anims\TireIron_alert_l90_into.smd"
	activity "ACT_ALERT_L90_INTO_TireIron" 100
	fps 30
}
$sequence "TireIron_alert_r90_into" {
	"tireiron_anims\TireIron_alert_r90_into.smd"
	activity "ACT_ALERT_R90_INTO_TireIron" 100
	fps 30
}
$sequence "TireIron_alert_180_into" {
	"tireiron_anims\TireIron_alert_180_into.smd"
	activity "ACT_ALERT_180_INTO_TireIron" 100
	fps 30
}
$sequence "TireIron_alert_front_outof" {
	"tireiron_anims\TireIron_alert_front_outof.smd"
	activity "ACT_ALERT_FRONT_OUTOF_TireIron" 100
	fps 30
}
$sequence "TireIron_alert_l90_outof" {
	"tireiron_anims\TireIron_alert_l90_outof.smd"
	activity "ACT_ALERT_L90_OUTOF_TireIron" 100
	fps 30
}
$sequence "TireIron_alert_r90_outof" {
	"tireiron_anims\TireIron_alert_r90_outof.smd"
	activity "ACT_ALERT_R90_OUTOF_TireIron" 100
	fps 30
}
$sequence "TireIron_alert_180_outof" {
	"tireiron_anims\TireIron_alert_180_outof.smd"
	activity "ACT_ALERT_180_OUTOF_TireIron" 100
	fps 30
}
$sequence "tireiron_attack_hack" {
	"tireiron_anims\tireiron_attack_hack.smd"
	activity "ACT_MELEE_ATTACK_TIREIRON" 3
	fps 30
}
$sequence "tireiron_attack_slash" {
	"tireiron_anims\tireiron_attack_slash.smd"
	activity "ACT_MELEE_ATTACK_TIREIRON" 3
	fps 30
}
$sequence "tireiron_attack_heavy" {
	"tireiron_anims\tireiron_attack_heavy.smd"
	activity "ACT_MELEE_ATTACK_HEAVY_TIREIRON" 4
	fps 30
}
$sequence "tireiron_attack_slash2" {
	"tireiron_anims\tireiron_attack_slash2.smd"
	activity "ACT_MELEE_ATTACK_TIREIRON" 3
	fps 30
}
$sequence "tireiron_attack_hack2" {
	"tireiron_anims\tireiron_attack_hack.smd"
	activity "ACT_MELEE_ATTACK_TIREIRON" 3
	fps 30
}
$sequence "Tireiron_air" {
	"tireiron_anims\tireiron_air.smd"
	activity "ACT_MELEE_AIR_ATTACK_TIREIRON" 1
	fps 30
}
$sequence "tireiron_attack_W1" {
	"tireiron_anims\tireiron_attack_W1.smd"
	activity "ACT_MELEE_ATTACK_TIREIRON" 1
	fps 30
}
$sequence "tireiron_attack_W2" {
	"tireiron_anims\tireiron_attack_W2.smd"
	activity "ACT_MELEE_ATTACK_TIREIRON" 1
	fps 30
}
$sequence "tireiron_attack_jump" {
	"tireiron_anims\tireiron_attack_jump.smd"
	activity "ACT_MELEE_ATTACK_TIREIRON" 0
	fps 30
}
$sequence "tireiron_attack_medcombo" {
	"tireiron_anims\tireiron_attack_medcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_TIREIRON" 1
	fps 30
}
$sequence "tireiron_attack_lowcombo" {
	"tireiron_anims\tireiron_attack_lowcombo.smd"
	activity "ACT_MELEE_ATTACK_2COMBO_TIREIRON" 4
	fps 30
}
$sequence "tireiron_idle" {
	"tireiron_anims\tireiron_idle.smd"
	activity "ACT_IDLE_TIREIRON" 20
	fps 30
}
$sequence "tireiron_fidget" {
	"tireiron_anims\tireiron_fidget.smd"
	activity "ACT_IDLE_TIREIRON" 1
	fps 30
}
$sequence "tireiron_preblock" {
	"tireiron_anims\tireiron_preblock.smd"
	activity "ACT_PREBLOCK_TIREIRON" 1
	fps 30
}
$sequence "tireiron_block_heavy" {
	"tireiron_anims\tireiron_block_heavy.smd"
	activity "ACT_BLOCK_HEAVY_TIREIRON" 1
	fps 30
}
$sequence "tireiron_block" {
	"tireiron_anims\tireiron_block.smd"
	activity "ACT_BLOCK_TIREIRON" 1
	fps 30
}
$sequence "tireiron_blocked_reaction_left" {
	"tireiron_anims\tireiron_blocked_reaction_left.smd"
	activity "ACT_BLOCKED_REACTION_LEFT" 1
	fps 30
}
$sequence "tireiron_blocked_reaction_right" {
	"tireiron_anims\tireiron_blocked_reaction_right.smd"
	activity "ACT_BLOCKED_REACTION_RIGHT" 1
	fps 30
}
$sequence "tireiron_dodge_attack" {
	"tireiron_anims\tireiron_dodge_attack.smd"
	activity "ACT_DODGE_ATTACK_TIREIRON" 1
	fps 30
}
$sequence "stealth_success_attacker_shortvictim" {
	"tireiron_anims\stealth_success_attacker_shortvictim.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_SHORTVICTIM_TIREIRON" 1
	fps 30
}
$sequence "stealth_success_attacker_tallvictim" {
	"tireiron_anims\stealth_success_attacker_tallvictim.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_TALLVICTIM_TIREIRON" 1
	fps 30
}
$sequence "stealth_success_victim_shortattacker" {
	"tireiron_anims\stealth_success_victim_shortattacker.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_SHORTATTACKER_TIREIRON" 1
	fps 30
}
$sequence "stealth_success_victim_tallattacker" {
	"tireiron_anims\stealth_success_victim_tallattacker.smd"
	activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_TALLATTACKER_TIREIRON" 1
	fps 30
}
$sequence "stealth_failure_attacker_shortvictim" {
	"tireiron_anims\stealth_failure_attacker_shortvictim.smd"
	activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_SHORTVICTIM_TIREIRON" 1
	fps 30
}
$sequence "stealth_failure_attacker_tallvictim" {
	"tireiron_anims\stealth_failure_attacker_tallvictim.smd"
	activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_TALLVICTIM_TIREIRON" 1
	fps 30
}
$sequence "stealth_failure_victim_shortattacker" {
	"tireiron_anims\stealth_failure_victim_shortattacker.smd"
	activity "ACT_SNEAKATTACK_FAILURE_VICTIM_SHORTATTACKER_TIREIRON" 1
	fps 30
}
$sequence "stealth_failure_victim_tallattacker" {
	"tireiron_anims\stealth_failure_victim_tallattacker.smd"
	activity "ACT_SNEAKATTACK_FAILURE_VICTIM_TALLATTACKER_TIREIRON" 1
	fps 30
}
