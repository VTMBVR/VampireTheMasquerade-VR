$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\decompiled_models\character\shared\female"
$modelname "/character/shared/female/claws.mdl"
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
$hbox 5 "Bip01 R Hand" 0.0 -0.69391143 -1.4298068 3.910311 1.1098946 1.508166
$hbox 6 "Bip01 L Thigh" 0.0 -1.5866185 -1.5876079 18.385206 1.4765553 1.8997625
$hbox 6 "Bip01 L Calf" 0.0 -1.5854882 -1.6586657 18.080185 1.508031 1.4470992
$hbox 6 "Bip01 L Foot" 0.0 0.0 -1.0489641 3.6396224 4.4525056 1.04894
$hbox 7 "Bip01 R Thigh" 0.0 -1.586626 -1.8997654 18.38521 1.4765499 1.5875978
$hbox 7 "Bip01 R Calf" 0.0 -1.5854033 -1.4469415 18.080187 1.507822 1.6585226
$hbox 7 "Bip01 R Foot" 0.0 0.0 -1.0714962 3.639623 4.4585924 1.0714092
$sequence "claws_ready" "claws_claws_ready" activity "ACT_READY_CLAWS" 1.0 fps 30.0
$sequence "claws_dodge" "claws_claws_dodge" activity "ACT_DODGE_CLAWS" 1.0 fps 30.0
$sequence "claws_block" "claws_claws_block" activity "ACT_BLOCK_claws" 1.0 fps 30.0
$sequence "claws_block_heavy" "claws_claws_block_heavy" activity "ACT_BLOCK_HEAVY_claws" 1.0 fps 30.0
$sequence "claws_preblock" "claws_claws_preblock" activity "ACT_PREBLOCK_claws" 1.0 fps 30.0
$sequence "claws_blocked_reaction_left" "claws_claws_blocked_reaction_left" activity "ACT_BLOCKED_REACTION_LEFT_claws" 1.0 fps 30.0
$sequence "claws_blocked_reaction_right" "claws_claws_blocked_reaction_right" activity "ACT_BLOCKED_REACTION_RIGHT_claws" 1.0 fps 30.0
$sequence "Claws_hunt_walk" "claws_Claws_hunt_walk" activity "ACT_HUNT_WALK_Claws" 1.0 fps 30.0
$sequence "Claws_hunt_walk_lookleft" "claws_Claws_hunt_walk_lookleft" activity "ACT_HUNT_WALK_LOOKLEFT_Claws" 1.0 fps 30.0
$sequence "Claws_hunt_walk_lookright" "claws_Claws_hunt_walk_lookright" activity "ACT_HUNT_WALK_LOOKRIGHT_Claws" 1.0 fps 30.0
$sequence "Claws_alert_fidget_agro_lookaround" "claws_Claws_alert_fidget_agro_lookaround" activity "ACT_ALERT_FIDGET_AGRO_LOOKAROUND_Claws" 1.0 fps 30.0
$sequence "Claws_alert_front_into" "claws_Claws_alert_front_into" activity "ACT_ALERT_FRONT_INTO_Claws" 1.0 fps 30.0
$sequence "Claws_alert_l90_into" "claws_Claws_alert_l90_into" activity "ACT_ALERT_L90_INTO_Claws" 1.0 fps 30.0
$sequence "Claws_alert_r90_into" "claws_Claws_alert_r90_into" activity "ACT_ALERT_R90_INTO_Claws" 1.0 fps 30.0
$sequence "Claws_alert_180_into" "claws_Claws_alert_180_into" activity "ACT_ALERT_180_INTO_Claws" 1.0 fps 30.0
$sequence "Claws_alert_front_outof" "claws_Claws_alert_front_outof" activity "ACT_ALERT_FRONT_OUTOF_Claws" 1.0 fps 30.0
$sequence "Claws_alert_l90_outof" "claws_Claws_alert_l90_outof" activity "ACT_ALERT_L90_OUTOF_Claws" 1.0 fps 30.0
$sequence "Claws_alert_r90_outof" "claws_Claws_alert_r90_outof" activity "ACT_ALERT_R90_OUTOF_Claws" 1.0 fps 30.0
$sequence "Claws_alert_180_outof" "claws_Claws_alert_180_outof" activity "ACT_ALERT_180_OUTOF_Claws" 1.0 fps 30.0
$sequence "Claws_air" "claws_claws_air" activity "ACT_MELEE_AIR_ATTACK_CLAWS" 1.0 fps 30.0
$sequence "claws_dodge_attack" "claws_claws_dodge_attack" activity "ACT_DODGE_ATTACK_claws" 1.0 fps 30.0
$sequence "claws_attack_med" "claws_claws_attack_med" activity "ACT_MELEE_ATTACK_CLAWS" 1.0 fps 30.0
$sequence "claws_attack_far" "claws_claws_attack_far" activity "ACT_MELEE_ATTACK_CLAWS" 1.0 fps 30.0
$sequence "claws_attack_med_right" "claws_claws_attack_med_right" activity "ACT_MELEE_ATTACK_CLAWS" 1.0 fps 30.0
$sequence "claws_attack_far_left" "claws_claws_attack_far_left" activity "ACT_MELEE_ATTACK_CLAWS" 1.0 fps 30.0
$sequence "claws_attack_heavy" "claws_claws_attack_heavy" activity "ACT_MELEE_ATTACK_HEAVY_CLAWS" 1.0 fps 30.0
$sequence "claws_attack_low" "claws_claws_attack_low" activity "ACT_MELEE_ATTACK_CLAWS" 1.0 fps 30.0
$sequence "claws_attack_jump" "claws_claws_attack_jump" activity "ACT_MELEE_ATTACK_CLAWS" 1.0 fps 30.0
$sequence "claws_attack_medcombo" "claws_claws_attack_medcombo" activity "ACT_MELEE_ATTACK_2COMBO_CLAWS" 1.0 fps 30.0
$sequence "claws_attack_lowcombo" "claws_claws_attack_lowcombo" activity "ACT_MELEE_ATTACK_2COMBO_CLAWS" 1.0 fps 30.0
$sequence "claws_attack_farcombo" "claws_claws_attack_farcombo" activity "ACT_MELEE_ATTACK_2COMBO_CLAWS" 1.0 fps 30.0
$sequence "claws_attack_jumpcombo" "claws_claws_attack_jumpcombo" activity "ACT_MELEE_ATTACK_2COMBO_CLAWS" 1.0 fps 30.0
$sequence "claws_idle" "claws_claws_idle" activity "ACT_IDLE_CLAWS" 1.0 fps 30.0
$sequence "claws_fidget" "claws_claws_fidget" activity "ACT_IDLE_CLAWS" 1.0 fps 30.0
$sequence "stealth_success_attacker_shortvictim" "claws_stealth_success_attacker_shortvictim" activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_SHORTVICTIM_CLAWS" 1.0 fps 30.0
$sequence "stealth_success_attacker_tallvictim" "claws_stealth_success_attacker_tallvictim" activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_TALLVICTIM_CLAWS" 1.0 fps 30.0
$sequence "stealth_success_victim_shortattacker" "claws_stealth_success_victim_shortattacker" activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_SHORTATTACKER_CLAWS" 1.0 fps 30.0
$sequence "stealth_success_victim_tallattacker" "claws_stealth_success_victim_tallattacker" activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_TALLATTACKER_CLAWS" 1.0 fps 30.0
$sequence "stealth_failure_attacker_shortvictim" "claws_stealth_failure_attacker" activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_SHORTVICTIM_CLAWS" 1.0 fps 30.0
$sequence "stealth_failure_attacker_tallvictim" "claws_stealth_failure_attacker" activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_TALLVICTIM_CLAWS" 1.0 fps 30.0
$sequence "stealth_failure_victim_shortattacker" "claws_stealth_failure_victim" activity "ACT_SNEAKATTACK_FAILURE_VICTIM_SHORTATTACKER_CLAWS" 1.0 fps 30.0
$sequence "stealth_failure_victim_tallattacker" "claws_stealth_failure_victim" activity "ACT_SNEAKATTACK_FAILURE_VICTIM_TALLATTACKER_CLAWS" 1.0 fps 30.0

