$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\decompiled_models\character\shared\male"
$modelname "/character/shared/male/tireiron.mdl"
$cdmaterials "models/error/"
$attachment 0 "Bip01 R Hand" 0.000000 0.000000 0.000000 rotate 0.000000 0.000000 0.000000
$surfaceprop ""
$model "sharedbones" "sharedbones.smd"{
}
$hboxset "default"
$hbox 0 "Bip01 Spine2" 1.0 0.0 0.0 5.0 6.0 6.0
$hbox 3 "Bip01 Spine" -1.8392218 -2.6165888 -1.5000509 5.168398 1.5988239 1.5000592
$hbox 2 "Bip01 Spine1" 0.0 -1.7042682 -1.5000625 6.087786 1.704197 1.4999477
$hbox 2 "Bip01 Spine2" 0.0 -1.1811162 -1.5000762 7.5619273 2.4150543 1.499934
$hbox 1 "Bip01 Neck" -0.033278085 -1.9809995 -1.727836 3.89553 1.9810663 1.727836
$hbox 1 "Bip01 Head" -0.12581238 -3.663472 -3.330523 7.6258163 3.8180983 3.3294983
$hbox 4 "Bip01 L UpperArm" 0.0 -1.4855056 -2.4199007 10.293986 1.8998917 2.0104074
$hbox 4 "Bip01 L Forearm" 0.0 -1.9495274 -2.093008 9.198424 1.8951516 2.336775
$hbox 4 "Bip01 L Hand" -0.13241261 -2.2049384 -1.8905884 5.006375 2.2047124 1.8906196
$hbox 5 "Bip01 R UpperArm" 0.0 -1.4852589 -2.0101194 10.293987 1.8996915 2.4196527
$hbox 5 "Bip01 R Forearm" 0.0 -1.9494574 -2.3367174 9.198427 1.8951273 2.0930524
$hbox 5 "Bip01 R Hand" -0.13221143 -2.204826 -1.8937805 5.006474 2.2049015 1.8906114
$hbox 6 "Bip01 L Thigh" 0.0 -1.4409108 -1.601701 17.830053 1.784456 2.0012174
$hbox 6 "Bip01 L Calf" 0.0 -1.5497423 -1.4710296 17.69693 1.7330478 1.5289794
$hbox 6 "Bip01 L Foot" 0.0 0.0 -1.5000432 4.1503754 7.381025 1.4999694
$hbox 7 "Bip01 R Thigh" 0.0 -1.4409144 -2.0011532 17.830051 1.7844461 1.6016423
$hbox 7 "Bip01 R Calf" 0.0 -1.5497509 -1.5290955 17.696934 1.7330395 1.4709138
$hbox 7 "Bip01 R Foot" 0.0 0.0 -1.500109 4.1503887 7.381025 1.4999036
$sequence "tireiron_ready" "tireiron_tireiron_ready" activity "ACT_READY_TIREIRON" 1.0 fps 30.0
$sequence "tireiron_dodge" "tireiron_tireiron_dodge" activity "ACT_DODGE_TIREIRON" 1.0 fps 30.0
$sequence "TireIron_hunt_walk" "tireiron_TireIron_hunt_walk" activity "ACT_HUNT_WALK_TireIron" 1.0 fps 30.0
$sequence "TireIron_hunt_walk_lookleft" "tireiron_TireIron_hunt_walk_lookleft" activity "ACT_HUNT_WALK_LOOKLEFT_TireIron" 1.0 fps 30.0
$sequence "TireIron_hunt_walk_lookright" "tireiron_TireIron_hunt_walk_lookright" activity "ACT_HUNT_WALK_LOOKRIGHT_TireIron" 1.0 fps 30.0
$sequence "TireIron_alert_fidget_agro_lookaround" "tireiron_TireIron_alert_fidget_agro_lookaround" activity "ACT_ALERT_FIDGET_AGRO_LOOKAROUND_TireIron" 1.0 fps 30.0
$sequence "TireIron_alert_front_into" "tireiron_TireIron_alert_front_into" activity "ACT_ALERT_FRONT_INTO_TireIron" 1.0 fps 30.0
$sequence "TireIron_alert_l90_into" "tireiron_TireIron_alert_l90_into" activity "ACT_ALERT_L90_INTO_TireIron" 1.0 fps 30.0
$sequence "TireIron_alert_r90_into" "tireiron_TireIron_alert_r90_into" activity "ACT_ALERT_R90_INTO_TireIron" 1.0 fps 30.0
$sequence "TireIron_alert_180_into" "tireiron_TireIron_alert_180_into" activity "ACT_ALERT_180_INTO_TireIron" 1.0 fps 30.0
$sequence "TireIron_alert_front_outof" "tireiron_TireIron_alert_front_outof" activity "ACT_ALERT_FRONT_OUTOF_TireIron" 1.0 fps 30.0
$sequence "TireIron_alert_l90_outof" "tireiron_TireIron_alert_l90_outof" activity "ACT_ALERT_L90_OUTOF_TireIron" 1.0 fps 30.0
$sequence "TireIron_alert_r90_outof" "tireiron_TireIron_alert_r90_outof" activity "ACT_ALERT_R90_OUTOF_TireIron" 1.0 fps 30.0
$sequence "TireIron_alert_180_outof" "tireiron_TireIron_alert_180_outof" activity "ACT_ALERT_180_OUTOF_TireIron" 1.0 fps 30.0
$sequence "tireiron_attack_hack" "tireiron_tireiron_attack_hack" activity "ACT_MELEE_ATTACK_TIREIRON" 1.0 fps 30.0
$sequence "tireiron_attack_slash" "tireiron_tireiron_attack_slash" activity "ACT_MELEE_ATTACK_TIREIRON" 1.0 fps 30.0
$sequence "tireiron_attack_heavy" "tireiron_tireiron_attack_heavy" activity "ACT_MELEE_ATTACK_HEAVY_TIREIRON" 1.0 fps 30.0
$sequence "tireiron_attack_slash2" "tireiron_tireiron_attack_slash2" activity "ACT_MELEE_ATTACK_TIREIRON" 1.0 fps 30.0
$sequence "tireiron_attack_hack2" "tireiron_tireiron_attack_hack" activity "ACT_MELEE_ATTACK_TIREIRON" 1.0 fps 30.0
$sequence "Tireiron_air" "tireiron_tireiron_air" activity "ACT_MELEE_AIR_ATTACK_TIREIRON" 1.0 fps 30.0
$sequence "tireiron_attack_W1" "tireiron_tireiron_attack_W1" activity "ACT_MELEE_ATTACK_TIREIRON" 1.0 fps 30.0
$sequence "tireiron_attack_W2" "tireiron_tireiron_attack_W2" activity "ACT_MELEE_ATTACK_TIREIRON" 1.0 fps 30.0
$sequence "tireiron_attack_jump" "tireiron_tireiron_attack_jump" activity "ACT_MELEE_ATTACK_TIREIRON" 1.0 fps 30.0
$sequence "tireiron_attack_medcombo" "tireiron_tireiron_attack_medcombo" activity "ACT_MELEE_ATTACK_2COMBO_TIREIRON" 1.0 fps 30.0
$sequence "tireiron_attack_lowcombo" "tireiron_tireiron_attack_lowcombo" activity "ACT_MELEE_ATTACK_2COMBO_TIREIRON" 1.0 fps 30.0
$sequence "tireiron_idle" "tireiron_tireiron_idle" activity "ACT_IDLE_TIREIRON" 1.0 fps 30.0
$sequence "tireiron_fidget" "tireiron_tireiron_fidget" activity "ACT_IDLE_TIREIRON" 1.0 fps 30.0
$sequence "tireiron_preblock" "tireiron_tireiron_preblock" activity "ACT_PREBLOCK_TIREIRON" 1.0 fps 30.0
$sequence "tireiron_block_heavy" "tireiron_tireiron_block_heavy" activity "ACT_BLOCK_HEAVY_TIREIRON" 1.0 fps 30.0
$sequence "tireiron_block" "tireiron_tireiron_block" activity "ACT_BLOCK_TIREIRON" 1.0 fps 30.0
$sequence "tireiron_blocked_reaction_left" "tireiron_tireiron_blocked_reaction_left" activity "ACT_BLOCKED_REACTION_LEFT" 1.0 fps 30.0
$sequence "tireiron_blocked_reaction_right" "tireiron_tireiron_blocked_reaction_right" activity "ACT_BLOCKED_REACTION_RIGHT" 1.0 fps 30.0
$sequence "tireiron_dodge_attack" "tireiron_tireiron_dodge_attack" activity "ACT_DODGE_ATTACK_TIREIRON" 1.0 fps 30.0
$sequence "stealth_success_attacker_shortvictim" "tireiron_stealth_success_attacker_shortvictim" activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_SHORTVICTIM_TIREIRON" 1.0 fps 30.0
$sequence "stealth_success_attacker_tallvictim" "tireiron_stealth_success_attacker_tallvictim" activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_TALLVICTIM_TIREIRON" 1.0 fps 30.0
$sequence "stealth_success_victim_shortattacker" "tireiron_stealth_success_victim_shortattacker" activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_SHORTATTACKER_TIREIRON" 1.0 fps 30.0
$sequence "stealth_success_victim_tallattacker" "tireiron_stealth_success_victim_tallattacker" activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_TALLATTACKER_TIREIRON" 1.0 fps 30.0
$sequence "stealth_failure_attacker_shortvictim" "tireiron_stealth_failure_attacker_shortvictim" activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_SHORTVICTIM_TIREIRON" 1.0 fps 30.0
$sequence "stealth_failure_attacker_tallvictim" "tireiron_stealth_failure_attacker_tallvictim" activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_TALLVICTIM_TIREIRON" 1.0 fps 30.0
$sequence "stealth_failure_victim_shortattacker" "tireiron_stealth_failure_victim_shortattacker" activity "ACT_SNEAKATTACK_FAILURE_VICTIM_SHORTATTACKER_TIREIRON" 1.0 fps 30.0
$sequence "stealth_failure_victim_tallattacker" "tireiron_stealth_failure_victim_tallattacker" activity "ACT_SNEAKATTACK_FAILURE_VICTIM_TALLATTACKER_TIREIRON" 1.0 fps 30.0

