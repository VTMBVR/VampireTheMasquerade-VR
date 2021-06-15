$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\decompiled_models\character\shared\female"
$modelname "/character/shared/female/fists.mdl"
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
$sequence "fists_ready" "fists_fists_ready" activity "ACT_READY_FISTS" 1.0 fps 30.0
$sequence "fists_dodge" "fists_fists_dodge" activity "ACT_DODGE_FISTS" 1.0 fps 30.0
$sequence "fists_block" "fists_fists_block" activity "ACT_BLOCK_fists" 1.0 fps 30.0
$sequence "fists_block_heavy" "fists_fists_block_heavy" activity "ACT_BLOCK_HEAVY_fists" 1.0 fps 30.0
$sequence "fists_preblock" "fists_fists_preblock" activity "ACT_PREBLOCK_fists" 1.0 fps 30.0
$sequence "fists_blocked_reaction_left" "fists_fists_blocked_reaction_left" activity "ACT_BLOCKED_REACTION_LEFT_fists" 1.0 fps 30.0
$sequence "fists_blocked_reaction_right" "fists_fists_blocked_reaction_right" activity "ACT_BLOCKED_REACTION_RIGHT_fists" 1.0 fps 30.0
$sequence "fists_hunt_walk" "fists_fists_hunt_walk" activity "ACT_HUNT_WALK_FISTS" 1.0 fps 30.0
$sequence "fists_hunt_walk_lookleft" "fists_fists_hunt_walk_lookleft" activity "ACT_HUNT_WALK_LOOKLEFT_FISTS" 1.0 fps 30.0
$sequence "fists_hunt_walk_lookright" "fists_fists_hunt_walk_lookright" activity "ACT_HUNT_WALK_LOOKRIGHT_FISTS" 1.0 fps 30.0
$sequence "fists_alert_fidget_agro_lookaround" "fists_fists_alert_fidget_agro_lookaround" activity "ACT_ALERT_FIDGET_AGRO_LOOKAROUND_FISTS" 1.0 fps 30.0
$sequence "Fists_air" "fists_Fists_air" activity "ACT_MELEE_AIR_ATTACK_FISTS" 1.0 fps 30.0
$sequence "Fists_attack_W1" "fists_fists_attack_W1" activity "ACT_MELEE_ATTACK_FISTS" 1.0 fps 30.0
$sequence "Fists_attack_W2" "fists_fists_attack_W2" activity "ACT_MELEE_ATTACK_FISTS" 1.0 fps 30.0
$sequence "fists_dodge_attack" "fists_fists_dodge_attack" activity "ACT_DODGE_ATTACK_fists" 1.0 fps 30.0
$sequence "fists_attack_JabLeft" "fists_fists_attack_Jableft" activity "ACT_MELEE_ATTACK_FISTS" 1.0 fps 30.0
$sequence "fists_attack_longright" "fists_fists_attack_longright" activity "ACT_MELEE_ATTACK_FISTS" 1.0 fps 30.0
$sequence "fists_attack_Roundhouse" "fists_fists_attack_RoundHouse" activity "ACT_MELEE_ATTACK_FISTS" 1.0 fps 30.0
$sequence "fists_attack_JabRight" "fists_fists_attack_Jabright" activity "ACT_MELEE_ATTACK_FISTS" 1.0 fps 30.0
$sequence "fists_attack_JabLeftw" "fists_fists_attack_W2" activity "ACT_MELEE_ATTACK_FISTS" 1.0 fps 30.0
$sequence "fists_attack_JabRightw" "fists_fists_attack_Jabright" activity "ACT_MELEE_ATTACK_FISTS" 1.0 fps 30.0
$sequence "fists_attack_shortright" "fists_fists_attack_shortright" activity "ACT_MELEE_ATTACK_FISTS" 1.0 fps 30.0
$sequence "fists_attack_right" "fists_fists_attack_right" activity "ACT_MELEE_ATTACK_FISTS" 1.0 fps 30.0
$sequence "fists_attack_med" "fists_fists_attack_med" activity "ACT_MELEE_ATTACK_FISTS" 1.0 fps 30.0
$sequence "fists_attack_low" "fists_fists_attack_low" activity "ACT_MELEE_ATTACK_FISTS" 1.0 fps 30.0
$sequence "fists_attack_far" "fists_fists_attack_far" activity "ACT_MELEE_ATTACK_FISTS" 1.0 fps 30.0
$sequence "fists_attack_far_right" "fists_fists_attack_far_right" activity "ACT_MELEE_ATTACK_FISTS" 1.0 fps 30.0
$sequence "fists_attack_jump" "fists_fists_attack_jump" activity "ACT_MELEE_ATTACK_FISTS" 1.0 fps 30.0
$sequence "fists_attack_medcombo" "fists_fists_attack_medcombo" activity "ACT_MELEE_ATTACK_2COMBO_FISTS" 1.0 fps 30.0
$sequence "fists_attack_lowcombo" "fists_fists_attack_lowcombo" activity "ACT_MELEE_ATTACK_2COMBO_FISTS" 1.0 fps 30.0
$sequence "fists_attack_farcombo" "fists_fists_attack_farcombo" activity "ACT_MELEE_ATTACK_2COMBO_FISTS" 1.0 fps 30.0
$sequence "fists_attack_jumpcombo" "fists_fists_attack_jumpcombo" activity "ACT_MELEE_ATTACK_2COMBO_FISTS" 1.0 fps 30.0
$sequence "fists_attack_heavy" "fists_fists_attack_heavy" activity "ACT_MELEE_ATTACK_HEAVY_FISTS" 1.0 fps 30.0
$sequence "fists_attack_heavy_old" "fists_fists_attack_heavy_old" activity "ACT_MELEE_ATTACK_HEAVY_OLD_FISTS" 1.0 fps 30.0
$sequence "kick_short" "fists_kick_short" activity "ACT_KICK_MELEESHARED_ONEHAND" 1.0 fps 30.0
$sequence "kick_long" "fists_kick_long" activity "ACT_KICK_MELEESHARED_ONEHAND" 1.0 fps 30.0
$sequence "stealth_success_attacker_shortvictim" "fists_stealth_success_attacker_shortvictim" activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_SHORTVICTIM_FISTS" 1.0 fps 30.0
$sequence "stealth_success_attacker_tallvictim" "fists_stealth_success_attacker_tallvictim" activity "ACT_SNEAKATTACK_SUCCESS_ATTACKER_TALLVICTIM_FISTS" 1.0 fps 30.0
$sequence "stealth_success_victim_shortattacker" "fists_stealth_success_victim_shortattacker" activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_SHORTATTACKER_FISTS" 1.0 fps 30.0
$sequence "stealth_success_victim_tallattacker" "fists_stealth_success_victim_tallattacker" activity "ACT_SNEAKATTACK_SUCCESS_VICTIM_TALLATTACKER_FISTS" 1.0 fps 30.0
$sequence "stealth_failure_attacker_shortvictim" "fists_stealth_failure_attacker_shortvictim" activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_SHORTVICTIM_FISTS" 1.0 fps 30.0
$sequence "stealth_failure_attacker_tallvictim" "fists_stealth_failure_attacker_tallvictim" activity "ACT_SNEAKATTACK_FAILURE_ATTACKER_TALLVICTIM_FISTS" 1.0 fps 30.0
$sequence "stealth_failure_victim_shortattacker" "fists_stealth_failure_victim_shortattacker" activity "ACT_SNEAKATTACK_FAILURE_VICTIM_SHORTATTACKER_FISTS" 1.0 fps 30.0
$sequence "stealth_failure_victim_tallattacker" "fists_stealth_failure_victim_tallattacker" activity "ACT_SNEAKATTACK_FAILURE_VICTIM_TALLATTACKER_FISTS" 1.0 fps 30.0

