$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\decompiled_models\character\shared\female"
$modelname "/character/shared/female/katana.mdl"
$cdmaterials "models/error/"
$attachment 0 "Bip01 R Hand" 0.000000 0.000002 0.000000 rotate 0.000000 0.000000 0.000000
$surfaceprop ""
$model "sharedbones" "sharedbones.smd"{
}
$hboxset "default"
$hbox 0 "Bip01 Spine2" 1.0 0.0 0.0 5.0 6.0 6.0
$hbox 3 "Bip01 Spine" -2.3217351 -2.017924 -1.500012 5.5375237 1.7269163 1.4999988
$hbox 2 "Bip01 Spine1" 0.0 -1.4200087 -1.2295146 5.672616 1.4200591 1.2294891
$hbox 2 "Bip01 Spine2" 0.0 -1.059931 -4.032217 4.187233 1.8751367 4.0321856
$hbox 1 "Bip01 Neck" -0.9666923 -0.9184665 -1.2000154 3.2787673 0.91848916 1.1999847
$hbox 1 "Bip01 Head" -0.13468745 -2.790778 -2.6421335 5.0779524 3.4394298 2.6858785
$hbox 4 "Bip01 L UpperArm" 0.0 -0.9762288 -1.4936526 9.487508 1.1235359 1.2366635
$hbox 4 "Bip01 L Forearm" 0.0 -0.9214345 -1.1459843 9.767428 0.9143084 1.279667
$hbox 4 "Bip01 L Hand" 0.0 -0.7559927 -1.5082531 3.497797 1.1029222 1.3357265
$hbox 5 "Bip01 R UpperArm" 0.0 -1.0180097 -1.2897198 9.487507 1.1704552 1.55585
$hbox 5 "Bip01 R Forearm" 0.0 -0.96335876 -1.3351197 9.767428 0.95626193 1.201495
$hbox 5 "Bip01 R Hand" 0.0 -0.69391143 -1.4298068 3.497827 1.1098946 1.508166
$hbox 6 "Bip01 L Thigh" 0.0 -1.5866185 -1.5876079 18.385206 1.4765553 1.8997625
$hbox 6 "Bip01 L Calf" 0.0 -1.5854882 -1.6586657 18.080185 1.508031 1.4470992
$hbox 6 "Bip01 L Foot" 0.0 0.0 -1.0489641 3.6396224 4.4525056 1.04894
$hbox 7 "Bip01 R Thigh" 0.0 -1.586626 -1.8997654 18.38521 1.4765499 1.5875978
$hbox 7 "Bip01 R Calf" 0.0 -1.5854033 -1.4469415 18.080187 1.507822 1.6585226
$hbox 7 "Bip01 R Foot" 0.0 0.0 -1.0714962 3.639623 4.4585924 1.0714092
$sequence "katana_ready" "katana_katana_ready" activity "ACT_READY_KATANA" 1.0 fps 30.0
$sequence "katana_dodge" "katana_katana_dodge" activity "ACT_DODGE_KATANA" 1.0 fps 30.0
$sequence "katana_block" "katana_katana_block" activity "ACT_BLOCK_KATANA" 1.0 fps 30.0
$sequence "katana_block_heavy" "katana_katana_block_heavy" activity "ACT_BLOCK_HEAVY_KATANA" 1.0 fps 30.0
$sequence "katana_preblock" "katana_katana_preblock" activity "ACT_PREBLOCK_KATANA" 1.0 fps 30.0
$sequence "katana_blocked_reaction_left" "katana_katana_blocked_reaction_left" activity "ACT_BLOCKED_REACTION_LEFT_KATANA" 1.0 fps 30.0
$sequence "katana_blocked_reaction_right" "katana_katana_blocked_reaction_right" activity "ACT_BLOCKED_REACTION_RIGHT_KATANA" 1.0 fps 30.0
$sequence "Katana_hunt_walk" "katana_Katana_hunt_walk" activity "ACT_HUNT_WALK_Katana" 1.0 fps 30.0
$sequence "Katana_hunt_walk_lookleft" "katana_Katana_hunt_walk_lookleft" activity "ACT_HUNT_WALK_LOOKLEFT_Katana" 1.0 fps 30.0
$sequence "Katana_hunt_walk_lookright" "katana_Katana_hunt_walk_lookright" activity "ACT_HUNT_WALK_LOOKRIGHT_Katana" 1.0 fps 30.0
$sequence "Katana_alert_fidget_agro_lookaround" "katana_Katana_alert_fidget_agro_lookaround" activity "ACT_ALERT_FIDGET_AGRO_LOOKAROUND_Katana" 1.0 fps 30.0
$sequence "Katana_alert_front_into" "katana_Katana_alert_front_into" activity "ACT_ALERT_FRONT_INTO_Katana" 1.0 fps 30.0
$sequence "Katana_alert_l90_into" "katana_Katana_alert_l90_into" activity "ACT_ALERT_L90_INTO_Katana" 1.0 fps 30.0
$sequence "Katana_alert_r90_into" "katana_Katana_alert_r90_into" activity "ACT_ALERT_R90_INTO_Katana" 1.0 fps 30.0
$sequence "Katana_alert_180_into" "katana_Katana_alert_180_into" activity "ACT_ALERT_180_INTO_Katana" 1.0 fps 30.0
$sequence "Katana_alert_front_outof" "katana_Katana_alert_front_outof" activity "ACT_ALERT_FRONT_OUTOF_Katana" 1.0 fps 30.0
$sequence "Katana_alert_l90_outof" "katana_Katana_alert_l90_outof" activity "ACT_ALERT_L90_OUTOF_Katana" 1.0 fps 30.0
$sequence "Katana_alert_r90_outof" "katana_Katana_alert_r90_outof" activity "ACT_ALERT_R90_OUTOF_Katana" 1.0 fps 30.0
$sequence "Katana_alert_180_outof" "katana_Katana_alert_180_outof" activity "ACT_ALERT_180_OUTOF_Katana" 1.0 fps 30.0
$sequence "katana_attack_med" "katana_katana_attack_med" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_attack_Left_Right2" "katana_katana_attack_Left_Right" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_attack_low" "katana_katana_attack_low" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_attack_heavy" "katana_katana_attack_heavy" activity "ACT_MELEE_ATTACK_HEAVY_KATANA" 1.0 fps 30.0
$sequence "katana_combo_A1" "katana_katana_combo_A1" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_combo_A2" "katana_katana_combo_A2" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_combo_A3" "katana_katana_combo_A3" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_combo_B1" "katana_katana_combo_B1" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_combo_B2" "katana_katana_combo_B2" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_combo_B3" "katana_katana_combo_B3" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_combo_C1" "katana_katana_combo_C1" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_combo_C2" "katana_katana_combo_C2" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_combo_C3" "katana_katana_combo_C3" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_combo_D1" "katana_katana_combo_D1" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_combo_D2" "katana_katana_combo_D2" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_combo_D3" "katana_katana_combo_D3" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_air" "katana_katana_air" activity "ACT_MELEE_AIR_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_attack_Left_Right" "katana_katana_attack_Left_Right" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_attack_far" "katana_katana_attack_far" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_attack_far_roll" "katana_katana_attack_far_roll" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_attack_far_spin" "katana_katana_attack_far_Spin" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_attack_jump" "katana_katana_attack_jump" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_attack_Run" "katana_katana_attack_Run" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_attack_SweepKickCombo" "katana_katana_attack_SweepKickCombo" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_attack_medcombo" "katana_katana_attack_medcombo" activity "ACT_MELEE_ATTACK_2COMBO_KATANA" 1.0 fps 30.0
$sequence "katana_attack_lowcombo" "katana_katana_attack_lowcombo" activity "ACT_MELEE_ATTACK_2COMBO_KATANA" 1.0 fps 30.0
$sequence "katana_attack_farcombo" "katana_katana_attack_farcombo" activity "ACT_MELEE_ATTACK_2COMBO_KATANA" 1.0 fps 30.0
$sequence "katana_attack_jumpcombo" "katana_katana_attack_jumpcombo" activity "ACT_MELEE_ATTACK_2COMBO_KATANA" 1.0 fps 30.0
$sequence "katana_running_attack" "katana_katana_running_attack" activity "ACT_MELEE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_dodge_attack" "katana_katana_dodge_attack" activity "ACT_DODGE_ATTACK_KATANA" 1.0 fps 30.0
$sequence "katana_idle" "katana_katana_idle" activity "ACT_IDLE_KATANA" 1.0 fps 30.0
$sequence "katana_fidget" "katana_katana_fidget" activity "ACT_IDLE_KATANA" 1.0 fps 30.0
$sequence "stealth_success_attacker_shortvictim" "katana_stealth_success_attacker_shortvictim" activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_SHORTVICTIM_KATANA" 1.0 fps 30.0
$sequence "stealth_success_attacker_tallvictim" "katana_stealth_success_attacker_tallvictim" activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_TALLVICTIM_KATANA" 1.0 fps 30.0
$sequence "stealth_success_victim_shortattacker" "katana_stealth_success_victim_shortattacker" activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_SHORTATTACKER_KATANA" 1.0 fps 30.0
$sequence "stealth_success_victim_tallattacker" "katana_stealth_success_victim_tallattacker" activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_TALLATTACKER_KATANA" 1.0 fps 30.0
$sequence "stealth_failure_attacker_shortvictim" "katana_stealth_failure_attacker_shortvictim" activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_SHORTVICTIM_KATANA" 1.0 fps 30.0
$sequence "stealth_failure_attacker_tallvictim" "katana_stealth_failure_attacker_tallvictim" activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_TALLVICTIM_KATANA" 1.0 fps 30.0
$sequence "stealth_failure_victim_shortattacker" "katana_stealth_failure_victim_shortattacker" activity "ACT_SNEAKATTACK_FAILURE_VICTIM_SHORTATTACKER_KATANA" 1.0 fps 30.0
$sequence "stealth_failure_victim_tallattacker" "katana_stealth_failure_victim_tallattacker" activity "ACT_SNEAKATTACK_FAILURE_VICTIM_TALLATTACKER_KATANA" 1.0 fps 30.0

