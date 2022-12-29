$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\models\character\monster\gargoyle"
$modelname "character/monster/gargoyle/gargoyle.mdl"
$cdmaterials "models/character/monster/gargoyle/"
$cdmaterials "models/character/teeth/"
$surfaceprop "gargoyle"
$model "Body" "gargoyle_ref.smd"{
}
$hboxset "default"
$hbox 0 "Bip01 Pelvis" -15.863575 -12.379696 -11.3099985 12.266831 10.085002 11.310002
$hbox 3 "Bip01 Spine" -10.987078 -9.981192 -12.199221 11.5969715 9.815257 12.199178
$hbox 2 "Bip01 Spine1" -3.9139585 -9.644752 -13.395025 14.822837 9.281041 13.395173
$hbox 2 "Bip01 Spine2" -4.3979115 -9.465358 -13.395025 12.343716 9.349666 13.395173
$hbox 1 "Bip01 Neck" -7.3367143 -7.039298 -8.239151 3.950733 7.8255277 7.90755
$hbox 1 "Bip01 Head" -5.7355456 -9.4119 -10.268048 18.146307 9.584957 10.267951
$hbox 4 "Bip01 L UpperArm" -3.1956074 -9.254189 -8.850924 22.524054 8.20581 9.755395
$hbox 4 "Bip01 L Forearm" -1.8167588 -5.9525266 -5.7665563 23.84471 4.947337 5.3513846
$hbox 4 "Bip01 L Hand" -1.3179698 -1.5189468 -3.9729798 9.175187 3.2311723 3.5664926
$hbox 5 "Bip01 R UpperArm" -5.1936255 -7.7595644 -9.755418 22.426746 8.205842 6.814748
$hbox 5 "Bip01 R Forearm" -1.8167057 -5.9524603 -5.3513765 23.648067 4.947398 5.766547
$hbox 5 "Bip01 R Hand" -1.3179066 -1.521893 -3.5724585 9.175248 3.2311099 3.9728694
$hbox 6 "Bip01 L Thigh" -2.8082807 -11.855596 -10.594296 29.531296 10.528143 6.574584
$hbox 6 "Bip01 L Calf" -1.617919 -7.8076835 -7.6507607 23.484243 7.007108 6.0481944
$hbox 6 "Bip01 L Foot" -2.022196 -4.275152 -5.9288435 10.260405 11.063983 5.2068343
$hbox 7 "Bip01 R Thigh" -2.8082705 -11.8555975 -6.5743957 29.531301 10.528031 10.594074
$hbox 7 "Bip01 R Calf" -2.2151847 -7.8077965 -6.0481496 23.484255 7.0069957 7.650782
$hbox 7 "Bip01 R Foot" -2.0221856 -4.2751784 -5.206859 10.260416 11.063967 5.928719
$sequence "gargoyle_walk" "gargoyle_@gargoyle_walk" activity "ACT_WALK" 1.0 fps 38.0
$sequence "gargoyle_stepBackward" "gargoyle_@gargoyle_stepBackward" activity "ACT_STEPBACK" 1.0 fps 38.0
$sequence "gargoyle_rAttack" "gargoyle_@gargoyle_rAttack" activity "ACT_MELEE_ATTACK" 1.0 fps 30.0
$sequence "gargoyle_lAttack" "gargoyle_@gargoyle_lAttack" activity "ACT_MELEE_ATTACK" 1.0 fps 30.0
$sequence "gargoyle_chargeAtk" "gargoyle_@gargoyle_chargeAtk" activity "ACT_MELEE_ATTACK" 1.0 fps 30.0
$sequence "gargoyle_chargeAtkOppSide" "gargoyle_@gargoyle_chargeAtkOppSide" activity "ACT_MELEE_ATTACK" 1.0 fps 30.0
$sequence "gargoyle_pillarCrush" "gargoyle_@gargoyle_pillarCrush" activity "ACT_SPECIAL_ATTACK1" 1.0 fps 30.0
$sequence "gargoyle_rStomp" "gargoyle_@gargoyle_rStomp" activity "ACT_MELEE_ATTACK" 1.0 fps 30.0
$sequence "gargoyle_lStomp" "gargoyle_@gargoyle_lStomp" activity "ACT_MELEE_ATTACK" 1.0 fps 30.0
$sequence "hit_head_front" "gargoyle_@hit_head_front" activity "ACT_HIT_HEAD" 1.0 fps 30.0
$sequence "hit_head_right" "gargoyle_@hit_head_right" activity "ACT_HIT_HEAD" 1.0 fps 30.0
$sequence "hit_head_left" "gargoyle_@hit_head_left" activity "ACT_HIT_HEAD" 1.0 fps 30.0
$sequence "hit_head_back" "gargoyle_@hit_head_back" activity "ACT_HIT_HEAD" 1.0 fps 30.0
$sequence "hit_torso_back" "gargoyle_@hit_torso_back" activity "ACT_HIT_TORSO" 1.0 fps 30.0
$sequence "hit_torso_back_left" "gargoyle_@hit_torso_back_left" activity "ACT_HIT_TORSO" 1.0 fps 30.0
$sequence "hit_torso_back_right" "gargoyle_@hit_torso_back_right" activity "ACT_HIT_TORSO" 1.0 fps 30.0
$sequence "hit_torso_front" "gargoyle_@hit_torso_front" activity "ACT_HIT_TORSO" 1.0 fps 30.0
$sequence "hit_torso_front_left" "gargoyle_@hit_torso_front_left" activity "ACT_HIT_TORSO" 1.0 fps 30.0
$sequence "hit_torso_front_right" "gargoyle_@hit_torso_front_right" activity "ACT_HIT_TORSO" 1.0 fps 30.0
$sequence "hit_torso_left" "gargoyle_@hit_torso_left" activity "ACT_HIT_TORSO" 1.0 fps 30.0
$sequence "hit_torso_right" "gargoyle_@hit_torso_right" activity "ACT_HIT_TORSO" 1.0 fps 30.0
$sequence "gargoyle_rTurn45" "gargoyle_@gargoyle_rTurn45" activity "ACT_TURN_RIGHT" 1.0 fps 30.0
$sequence "gargoyle_rTurn90" "gargoyle_@gargoyle_rTurn90" activity "ACT_90_RIGHT" 1.0 fps 30.0
$sequence "gargoyle_rTurn135" "gargoyle_@gargoyle_rTurn135" activity "ACT_135_RIGHT" 1.0 fps 30.0
$sequence "gargoyle_rTurn180" "gargoyle_@gargoyle_rTurn180" activity "ACT_180_RIGHT" 1.0 fps 30.0
$sequence "gargoyle_lTurn45" "gargoyle_@gargoyle_lTurn45" activity "ACT_TURN_LEFT" 1.0 fps 30.0
$sequence "gargoyle_lTurn90" "gargoyle_@gargoyle_lTurn90" activity "ACT_90_LEFT" 1.0 fps 30.0
$sequence "gargoyle_lTurn135" "gargoyle_@gargoyle_lTurn135" activity "ACT_135_LEFT" 1.0 fps 30.0
$sequence "gargoyle_lTurn180" "gargoyle_@gargoyle_lTurn180" activity "ACT_180_LEFT" 1.0 fps 30.0
$sequence "gargoyle_run" "gargoyle_@gargoyle_run" activity "ACT_RUN" 1.0 fps 38.0
$sequence "gargoyle_combat" "gargoyle_@gargoyle_combat" activity "ACT_SNARL" 1.0 fps 30.0
$sequence "gargoyle_concealed" "gargoyle_@gargoyle_concealed" activity "" 1.0 fps 30.0
$sequence "gargoyle_unconceal" "gargoyle_@gargoyle_unconceal" activity "ACT_GETUP_FRONT" 1.0 fps 30.0
$sequence "gargoyle_death" "gargoyle_@gargoyle_death" activity "ACT_DIESIMPLE" 1.0 fps 30.0
$sequence "gargoyle_idle" "gargoyle_@gargoyle_idle" activity "ACT_IDLE" 1.0 fps 30.0
$sequence "gargoyle_disoriented" "gargoyle_@gargoyle_disoriented" activity "ACT_DISORIENTED" 1.0 fps 30.0
$sequence "knockback_smalllow" "gargoyle_@knockback_smalllow" activity "ACT_KNOCKBACK_SMALLLOW" 1.0 fps 30.0
$sequence "knockback_biglow" "gargoyle_@knockback_biglow" activity "ACT_KNOCKBACK_BIGLOW" 1.0 fps 30.0
$sequence "knockback_smallhigh" "gargoyle_@knockback_smallhigh" activity "ACT_KNOCKBACK_SMALLHIGH" 1.0 fps 30.0
$sequence "knockback_smallhighright" "gargoyle_@knockback_smallhighright" activity "ACT_KNOCKBACK_SMALLHIGHRIGHT" 1.0 fps 30.0
$sequence "knockback_smallhighleft" "gargoyle_@knockback_smallhighleft" activity "ACT_KNOCKBACK_SMALLHIGHLEFT" 1.0 fps 30.0
$sequence "knockback_bighighleft" "gargoyle_@knockback_bighighleft" activity "ACT_KNOCKBACK_BIGHIGHLEFT" 1.0 fps 30.0
$sequence "knockback_bighighright" "gargoyle_@knockback_bighighright" activity "ACT_KNOCKBACK_BIGHIGHRIGHT" 1.0 fps 30.0
$sequence "knockback_biguppercut" "gargoyle_@knockback_biguppercut" activity "ACT_KNOCKBACK_BIGUPPERCUT" 1.0 fps 30.0
$sequence "knockback_biguppercutleft" "gargoyle_@knockback_biguppercutleft" activity "ACT_KNOCKBACK_BIGUPPERCUTLEFT" 1.0 fps 30.0
$sequence "knockback_biguppercutright" "gargoyle_@knockback_biguppercutright" activity "ACT_KNOCKBACK_BIGUPPERCUTRIGHT" 1.0 fps 30.0
$sequence "knockback_smalldazed" "gargoyle_@knockback_smalldazed" activity "ACT_KNOCKBACK_SMALLDAZED" 1.0 fps 30.0
$sequence "Disc_PartialResistDem" "gargoyle_@Disc_PartialResistDem" activity "ACT_PARTIAL_RESIST_DEM" 1.0 fps 30.0
$sequence "Disc_PartialResistDom" "gargoyle_@Disc_PartialResistDom" activity "ACT_PARTIAL_RESIST_DOM" 1.0 fps 30.0
$sequence "Disc_PartialResistThaum" "gargoyle_@Disc_PartialResistThaum" activity "ACT_PARTIAL_RESIST_THAUM" 1.0 fps 30.0
$sequence "Disc_FullResistDem" "gargoyle_@Disc_FullResistDem" activity "ACT_FULL_RESIST_DEM" 1.0 fps 30.0
$sequence "Disc_FullResistDom" "gargoyle_@Disc_FullResistDom" activity "ACT_FULL_RESIST_DOM" 1.0 fps 30.0
$sequence "Disc_FullResistThaum" "gargoyle_@Disc_FullResistThaum" activity "ACT_FULL_RESIST_THAUM" 1.0 fps 30.0
$sequence "Dem_VeilofMadnessPre" "gargoyle_@Dem_VeilofMadnessPre" activity "ACT_MADNESS_PRE_INTO" 1.0 fps 30.0
$sequence "Dem_VeilofMadness" "gargoyle_@Dem_VeilofMadness" activity "ACT_LAUGH_INTO" 1.0 fps 30.0
$sequence "Dem_HauntingPre" "gargoyle_@Dem_HauntingPre" activity "ACT_SOBBING_PRE_INTO" 1.0 fps 30.0
$sequence "Dem_Haunting" "gargoyle_@Dem_Haunting" activity "ACT_SOBBING_INTO" 1.0 fps 30.0
$sequence "Dem_VoiceofMadnessPre" "gargoyle_@Dem_VoiceofMadnessPre" activity "ACT_MADNESS_PRE_INTO" 1.0 fps 30.0
$sequence "Dem_VoiceofMadness" "gargoyle_@Dem_VoiceofMadness" activity "ACT_MADNESS_INTO" 1.0 fps 30.0
$sequence "Dem_WakingNightmarePre" "gargoyle_@Dem_WakingNightmarePre" activity "ACT_COMATOSE_PRE_INTO" 1.0 fps 30.0
$sequence "Dem_WakingNightmare" "gargoyle_@Dem_WakingNightmare" activity "ACT_COMATOSE_INTO" 1.0 fps 30.0
$sequence "Dem_TotalInsanityPre" "gargoyle_@Dem_TotalInsanityPre" activity "ACT_INSANITY_PRE" 1.0 fps 30.0
$sequence "Dom_Dance" "gargoyle_@Dom_Dance" activity "ACT_DANCE" 1.0 fps 30.0
$sequence "Dom_Follow" "gargoyle_@Dom_Follow" activity "ACT_LOST" 1.0 fps 30.0
$sequence "Dom_HideInto" "gargoyle_@Dom_HideInto" activity "ACT_COWER_INTO" 1.0 fps 30.0
$sequence "Dom_Hide" "gargoyle_@Dom_Hide" activity "ACT_COWER" 1.0 fps 30.0
$sequence "Dom_Jump" "gargoyle_@Dom_Jump" activity "ACT_JUMP_TO_DEATH" 1.0 fps 30.0
$sequence "Dom_MesmerizePre" "gargoyle_@Dom_MesmerizePre" activity "ACT_DISPOSITION_MESMERIZED_PRE_INTO" 1.0 fps 30.0
$sequence "Dom_Mesmerize" "gargoyle_@Dom_Mesmerize" activity "ACT_DISPOSITION_MESMERIZED" 1.0 fps 30.0
$sequence "Dom_SleepPre" "gargoyle_@Dom_SleepPre" activity "ACT_SLEEP_PRE_FALL_INTO" 1.0 fps 30.0
$sequence "Dom_Sleep" "gargoyle_@Dom_Sleep" activity "ACT_SLEEP_FALL_INTO" 1.0 fps 30.0
$sequence "Dom_ImposeWill" "gargoyle_@Dom_ImposeWill" activity "ACT_PRE_CHOKING" 1.0 fps 30.0
$sequence "Dom_PossessionPre" "gargoyle_@Dom_PossessionPre" activity "ACT_POSSESSION_PRE_INTO" 1.0 fps 30.0
$sequence "Thaum1_BloodMaladyPre" "gargoyle_@Thaum1_BloodMaladyPre" activity "ACT_BLOOD_MALADY_PRE" 1.0 fps 30.0
$sequence "Thaum2_BloodMaladySpell" "gargoyle_@Thaum2_BloodMaladySpell" activity "ACT_HIT_SPELL" 1.0 fps 30.0
$sequence "Thaum3_BloodyEyePre" "gargoyle_@Thaum3_BloodyEyePre" activity "ACT_BLEEDINGEYES_PRE_INTO" 1.0 fps 30.0
$sequence "Thaum4_BloodyEyeInto" "gargoyle_@Thaum4_BloodyEyeInto" activity "ACT_BLEEDINGEYES_INTO" 1.0 fps 30.0
$sequence "Thaum5_TheftPre" "gargoyle_@Thaum5_TheftPre" activity "ACT_THEFTPAIN_PRE_INTO" 1.0 fps 30.0
$sequence "Thaum6_TheftInto" "gargoyle_@Thaum6_TheftInto" activity "ACT_THEFTPAIN_INTO" 1.0 fps 30.0
$sequence "Thaum7_PurgeBloodPre" "gargoyle_@Thaum7_PurgeBloodPre" activity "ACT_VOMIT_PRE_INTO" 1.0 fps 30.0
$sequence "Thaum8_PurgeBloodInto" "gargoyle_@Thaum8_PurgeBloodInto" activity "ACT_VOMIT_INTO" 1.0 fps 30.0
$sequence "Thaum9_BloodBoilPre" "gargoyle_@Thaum9_BloodBoilPre" activity "ACT_CAULDRON_PRE" 1.0 fps 30.0
$sequence "Thaum10_BloodBoilDeath" "gargoyle_@Thaum10_BloodBoilDeath" activity "ACT_CAULDRON_DEATH" 1.0 fps 30.0
$sequence "Thaum11_BloodBoilPain" "gargoyle_@Thaum11_BloodBoilPain" activity "ACT_CAULDRON_PAIN" 1.0 fps 30.0
$sequence "gargoyle_line171_col_E" "gargoyle_@gargoyle_line171_col_E" activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1.0 fps 30.0

