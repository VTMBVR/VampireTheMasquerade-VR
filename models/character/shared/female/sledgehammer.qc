$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\decompiled_models\character\shared\female"
$modelname "/character/shared/female/sledgehammer.mdl"
$cdmaterials "models/error/"
$attachment 0 "Bip01 R Hand" 0.000000 -0.000001 0.000000 rotate 0.000000 0.000000 0.000000
$surfaceprop ""
$model "sharedbones" "sharedbones.smd"{
}
$hboxset "default"
$hbox 0 "Bip01 Spine2" 1.0 0.0 0.0 5.0 6.0 6.0
$hbox 0 "Bip01 Pelvis" -0.24358425 -0.82224476 -3.2369308 3.681291 0.84610754 3.4480307
$hbox 3 "Bip01 Spine" -2.3217351 -2.0179243 -1.5000118 5.539246 1.7269166 1.4999989
$hbox 2 "Bip01 Spine1" 0.0 -1.4200093 -1.2295145 5.6737514 1.4200598 1.2294894
$hbox 2 "Bip01 Spine2" 0.0 -1.0599319 -4.0322165 4.187234 1.8751359 4.032186
$hbox 1 "Bip01 Neck" -0.9666925 -0.9184665 -1.2000154 3.2787688 0.9184889 1.1999849
$hbox 4 "Bip01 L UpperArm" 0.0 -0.9762288 -1.4936508 9.487505 1.1235365 1.2366663
$hbox 4 "Bip01 L Forearm" 0.0 -0.92143637 -1.145982 9.767432 0.91430604 1.2796702
$hbox 4 "Bip01 L Hand" 0.0 -0.7559919 -1.5082527 3.4977963 1.1029209 1.3357275
$hbox 5 "Bip01 R UpperArm" 0.0 -1.0180093 -1.2897179 9.487509 1.1704546 1.5558513
$hbox 5 "Bip01 R Forearm" 0.0 -0.96335775 -1.335119 9.767432 0.9562626 1.2014946
$hbox 5 "Bip01 R Hand" 0.0 -0.6939096 -1.4298071 3.497828 1.1098943 1.5081667
$hbox 1 "Bip01 Head" -0.13468897 -2.790777 -2.6421335 5.0779543 3.4394293 2.6858788
$hbox 6 "Bip01 L Thigh" 0.0 -1.586619 -1.5876076 18.38521 1.4765555 1.8997627
$hbox 6 "Bip01 L Calf" 0.0 -1.5854881 -1.6586654 18.080187 1.5080311 1.4470998
$hbox 6 "Bip01 L Foot" 0.0 0.0 -1.0489639 3.639623 4.452506 1.0489404
$hbox 7 "Bip01 R Thigh" 0.0 -1.586626 -1.8997654 18.38521 1.4765502 1.5875982
$hbox 7 "Bip01 R Calf" 0.0 -1.5854031 -1.4469416 18.080187 1.507822 1.6585233
$hbox 7 "Bip01 R Foot" 0.0 0.0 -1.0714957 3.639623 4.458593 1.0714093
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
$sequence "sledgehammer_combo_B1" "sledgehammer_sledgehammer_combo_B1" activity "ACT_MELEE_ATTACK_sledgehammer" 1.0 fps 35.0
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

