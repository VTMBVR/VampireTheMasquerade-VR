$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\decompiled_models\character\shared\male"
$modelname "/character/shared/male/sledgehammer.mdl"
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
$hbox 5 "Bip01 R Hand" -0.13221143 -2.204826 -1.8937808 5.006474 2.2049015 1.8906114
$hbox 6 "Bip01 L Thigh" 0.0 -1.4409108 -1.601701 17.830053 1.784456 2.0012174
$hbox 6 "Bip01 L Calf" 0.0 -1.5497423 -1.4710296 17.69693 1.7330478 1.5289794
$hbox 6 "Bip01 L Foot" 0.0 0.0 -1.5000432 4.1503754 7.381025 1.4999694
$hbox 7 "Bip01 R Thigh" 0.0 -1.4409144 -2.0011532 17.830051 1.7844461 1.6016423
$hbox 7 "Bip01 R Calf" 0.0 -1.5497509 -1.5290955 17.696934 1.7330395 1.4709138
$hbox 7 "Bip01 R Foot" 0.0 0.0 -1.500109 4.1503887 7.381025 1.4999036
$sequence "sledgehammer_ready" "sledgehammer_sledgehammer_ready" activity "ACT_READY_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "sledgehammer_dodge" "sledgehammer_sledgehammer_dodge" activity "ACT_DODGE_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "sledgehammer_block" "sledgehammer_sledgehammer_block" activity "ACT_BLOCK_sledgehammer" 1.0 fps 30.0
$sequence "sledgehammer_block_heavy" "sledgehammer_sledgehammer_block_heavy" activity "ACT_BLOCK_HEAVY_sledgehammer" 1.0 fps 30.0
$sequence "sledgehammer_preblock" "sledgehammer_sledgehammer_preblock" activity "ACT_PREBLOCK_sledgehammer" 1.0 fps 30.0
$sequence "sledgehammer_blocked_reaction_left" "sledgehammer_sledgehammer_blocked_reaction_left" activity "ACT_BLOCKED_REACTION_LEFT_sledgehammer" 1.0 fps 30.0
$sequence "sledgehammer_blocked_reaction_right" "sledgehammer_sledgehammer_blocked_reaction_right" activity "ACT_BLOCKED_REACTION_RIGHT_sledgehammer" 1.0 fps 30.0
$sequence "sledgehammer_dodge_attack" "sledgehammer_sledgehammer_dodge_attack" activity "ACT_DODGE_ATTACK_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "Sledgehammer_air" "sledgehammer_Sledgehammer_air" activity "ACT_MELEE_AIR_ATTACK_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "Sledgehammer_attack_W1" "sledgehammer_Sledgehammer_attack_W1" activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 1.0 fps 25.0
$sequence "sledgehammer_attack_SwingRight" "sledgehammer_sledgehammer_attack_SwingRight" activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 1.0 fps 35.0
$sequence "sledgehammer_attack_SwingRight_2nd" "sledgehammer_sledgehammer_attack_SwingRight_2nd" activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "sledgehammer_attack_SwingRight_3rd" "sledgehammer_sledgehammer_attack_SwingRight_3rd" activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "sledgehammer_attack_midright" "sledgehammer_sledgehammer_attack_midright" activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "sledgehammer_attack_med" "sledgehammer_sledgehammer_attack_med" activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 1.0 fps 38.0
$sequence "sledgehammer_attack_low" "sledgehammer_sledgehammer_attack_low" activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "sledgehammer_attack_far" "sledgehammer_sledgehammer_attack_far" activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 1.0 fps 35.0
$sequence "sledgehammer_attack_jump" "sledgehammer_sledgehammer_attack_jump" activity "ACT_MELEE_ATTACK_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "sledgehammer_attack_shortmedcombo" "sledgehammer_sledgehammer_attack_shortmedcombo" activity "ACT_MELEE_ATTACK_2COMBO_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "sledgehammer_attack_medcombo" "sledgehammer_sledgehammer_attack_medcombo" activity "ACT_MELEE_ATTACK_2COMBO_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "sledgehammer_attack_lowcombo" "sledgehammer_sledgehammer_attack_lowcombo" activity "ACT_MELEE_ATTACK_2COMBO_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "sledgehammer_attack_farcombo" "sledgehammer_sledgehammer_attack_farcombo" activity "ACT_MELEE_ATTACK_2COMBO_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "sledgehammer_attack_jumpcombo" "sledgehammer_sledgehammer_attack_jumpcombo" activity "ACT_MELEE_ATTACK_2COMBO_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "sledgehammer_attack_heavy" "sledgehammer_sledgehammer_attack_heavy" activity "ACT_MELEE_ATTACK_HEAVY_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "sledgehammer_combo_A1" "sledgehammer_sledgehammer_attack_med" activity "ACT_MELEE_ATTACK_sledgehammer" 1.0 fps 38.0
$sequence "sledgehammer_combo_A2" "sledgehammer_sledgehammer_combo_A2" activity "ACT_MELEE_ATTACK_sledgehammer" 1.0 fps 30.0
$sequence "sledgehammer_combo_A3" "sledgehammer_sledgehammer_combo_A3" activity "ACT_MELEE_ATTACK_sledgehammer" 1.0 fps 30.0
$sequence "sledgehammer_combo_B1" "sledgehammer_sledgehammer_combo_B1" activity "ACT_MELEE_ATTACK_sledgehammer" 1.0 fps 30.0
$sequence "sledgehammer_combo_B2" "sledgehammer_sledgehammer_combo_B2" activity "ACT_MELEE_ATTACK_sledgehammer" 1.0 fps 30.0
$sequence "sledgehammer_combo_B3" "sledgehammer_sledgehammer_combo_B3" activity "ACT_MELEE_ATTACK_sledgehammer" 1.0 fps 30.0
$sequence "sledgehammer_combo_C2" "sledgehammer_sledgehammer_combo_C2" activity "ACT_MELEE_ATTACK_sledgehammer" 1.0 fps 30.0
$sequence "sledgehammer_combo_C3" "sledgehammer_sledgehammer_combo_C3" activity "ACT_MELEE_ATTACK_sledgehammer" 1.0 fps 30.0
$sequence "sledgehammer_combo_D1" "sledgehammer_sledgehammer_combo_D1" activity "ACT_MELEE_ATTACK_sledgehammer" 1.0 fps 30.0
$sequence "sledgehammer_idle" "sledgehammer_sledgehammer_idle" activity "ACT_IDLE_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "sledgehammer_fidget" "sledgehammer_sledgehammer_fidget" activity "ACT_IDLE_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "stealth_success_attacker_shortvictim" "sledgehammer_stealth_success_attacker_shortvictim" activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_SHORTVICTIM_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "stealth_success_attacker_tallvictim" "sledgehammer_stealth_success_attacker_tallvictim" activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_TALLVICTIM_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "stealth_success_victim_shortattacker" "sledgehammer_stealth_success_victim_shortattacker" activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_SHORTATTACKER_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "stealth_success_victim_tallattacker" "sledgehammer_stealth_success_victim_tallattacker" activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_TALLATTACKER_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "stealth_failure_attacker_shortvictim" "sledgehammer_stealth_failure_attacker" activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_SHORTVICTIM_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "stealth_failure_attacker_tallvictim" "sledgehammer_stealth_failure_attacker" activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_TALLVICTIM_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "stealth_failure_victim_shortattacker" "sledgehammer_stealth_failure_victim" activity "ACT_SNEAKATTACK_FAILURE_VICTIM_SHORTATTACKER_SLEDGEHAMMER" 1.0 fps 30.0
$sequence "stealth_failure_victim_tallattacker" "sledgehammer_stealth_failure_victim" activity "ACT_SNEAKATTACK_FAILURE_VICTIM_TALLATTACKER_SLEDGEHAMMER" 1.0 fps 30.0

