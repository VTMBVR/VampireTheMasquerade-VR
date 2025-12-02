// Created by Crowbar 0.74

$modelname "/character/shared/female/tireiron.mdl"

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
