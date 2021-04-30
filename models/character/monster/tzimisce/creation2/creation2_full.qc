// Created by Crowbar 0.71

$modelname "character/monster/tzimisce/creation2/creation2_full.mdl"

$bodygroup "mainbody"
{
	studio "TC2_REF"
}


$illumposition 0 0 65

$eyeposition 0.5 -0.5 0.5

$surfaceprop "flesh"

$cdmaterials "models\character\monster\tzimisce\creation1\"
$cdmaterials "models\character\monster\tzimisce\creation2\"
$cdmaterials "models\character\eyes\"

$cbox 0 0 0 0 0 0

$bbox -52.479 -73.743 -9.124 64.192 74.565 97.034

$sequence "Idle" {
	"creation2_full_anims\Idle.smd"
	activity "ACT_IDLE" 1
	fps 30
}
$sequence "Fidget" {
	"creation2_full_anims\Fidget.smd"
	activity "ACT_FIDGET" 1
	fps 30
}
$sequence "Walk" {
	"creation2_full_anims\Walk.smd"
	activity "ACT_TZ_WALK2" 1
	fps 30
}
$sequence "Falling" {
	"creation2_full_anims\Falling.smd"
	activity "ACT_FALLING" 1
	fps 30
}
$sequence "GetupBack" {
	"creation2_full_anims\GetupBack.smd"
	activity "ACT_GETUPBACK" 1
	fps 30
}
$sequence "GetupFront" {
	"creation2_full_anims\GetupFront.smd"
	activity "ACT_GETUPFRONT" 1
	fps 30
}
$sequence "Roar" {
	"creation2_full_anims\Roar.smd"
	activity "ACT_ROAR" 1
	fps 30
}
$sequence "HeadHandAttack" {
	"creation2_full_anims\HeadHandAttack.smd"
	activity "ACT_HEADATTACK" 1
	fps 30
}
$sequence "HeadHandIdle" {
	"creation2_full_anims\HeadHandIdle.smd"
	activity "ACT_HEADIDLE" 1
	fps 30
}
$sequence "Jump" {
	"creation2_full_anims\Jump.smd"
	activity "ACT_JUMP" 1
	fps 30
}
$sequence "LandLight" {
	"creation2_full_anims\LandLight.smd"
	activity "ACT_LANDLITE" 1
	fps 30
}
$sequence "WalkAggressive" {
	"creation2_full_anims\WalkAggressive.smd"
	activity "ACT_TZ_WALK2" 1
	fps 40
}
$sequence "TC2_KnockBack_SmallLow" {
	"creation2_full_anims\TC2_KnockBack_SmallLow.smd"
	activity "ACT_KNOCKBACK_SMALLLOW" 1
	fps 30
}
$sequence "TC2_knockback_biglow" {
	"creation2_full_anims\TC2_knockback_biglow.smd"
	activity "ACT_KNOCKBACK_BIGLOW" 1
	fps 30
}
$sequence "TC2_knockback_lowcombo" {
	"creation2_full_anims\TC2_knockback_lowcombo.smd"
	activity "ACT_KNOCKBACK_LOWCOMBO" 1
	fps 30
}
$sequence "TC2_knockback_smallhigh" {
	"creation2_full_anims\TC2_knockback_smallhigh.smd"
	activity "ACT_KNOCKBACK_SMALLHIGH" 1
	fps 30
}
$sequence "TC2_knockback_bighighleft" {
	"creation2_full_anims\TC2_knockback_bighighleft.smd"
	activity "ACT_KNOCKBACK_BIGHIGHLEFT" 1
	fps 30
}
$sequence "TC2_knockback_bighighright" {
	"creation2_full_anims\TC2_knockback_bighighright.smd"
	activity "ACT_KNOCKBACK_BIGHIGHRIGHT" 1
	fps 30
}
$sequence "TC2_knockback_biguppercut" {
	"creation2_full_anims\TC2_knockback_biguppercut.smd"
	activity "ACT_KNOCKBACK_BIGUPPERCUT" 1
	fps 30
}
$sequence "TC2_knockback_biguppercutleft" {
	"creation2_full_anims\TC2_knockback_biguppercutleft.smd"
	activity "ACT_KNOCKBACK_BIGUPPERCUTLEFT" 1
	fps 30
}
$sequence "TC2_knockback_biguppercutright" {
	"creation2_full_anims\TC2_knockback_biguppercutright.smd"
	activity "ACT_KNOCKBACK_BIGUPPERCUTRIGHT" 1
	fps 30
}
$sequence "TC2_knockback_smallhighleft" {
	"creation2_full_anims\TC2_knockback_smallhighleft.smd"
	activity "ACT_KNOCKBACK_SMALLHIGHLEFT" 1
	fps 30
}
$sequence "hit_head_front" {
	"creation2_full_anims\hit_head_front.smd"
	activity "ACT_HIT_HEAD" 1
	fps 30
}
$sequence "hit_head_right" {
	"creation2_full_anims\hit_head_right.smd"
	activity "ACT_HIT_HEAD" 1
	fps 30
}
$sequence "hit_head_left" {
	"creation2_full_anims\hit_head_left.smd"
	activity "ACT_HIT_HEAD" 1
	fps 30
}
$sequence "hit_head_back" {
	"creation2_full_anims\hit_head_back.smd"
	activity "ACT_HIT_HEAD" 1
	fps 30
}
$sequence "hit_torso_back" {
	"creation2_full_anims\hit_torso_back.smd"
	activity "ACT_HIT_TORSO" 1
	fps 30
}
$sequence "hit_torso_back_left" {
	"creation2_full_anims\hit_torso_back_left.smd"
	activity "ACT_HIT_TORSO" 1
	fps 30
}
$sequence "hit_torso_back_right" {
	"creation2_full_anims\hit_torso_back_right.smd"
	activity "ACT_HIT_TORSO" 1
	fps 30
}
$sequence "hit_torso_front" {
	"creation2_full_anims\hit_torso_front.smd"
	activity "ACT_HIT_TORSO" 1
	fps 30
}
$sequence "hit_torso_front_left" {
	"creation2_full_anims\hit_torso_front_left.smd"
	activity "ACT_HIT_TORSO" 1
	fps 30
}
$sequence "hit_torso_front_right" {
	"creation2_full_anims\hit_torso_front_right.smd"
	activity "ACT_HIT_TORSO" 1
	fps 30
}
$sequence "hit_torso_left" {
	"creation2_full_anims\hit_torso_left.smd"
	activity "ACT_HIT_TORSO" 1
	fps 30
}
$sequence "hit_torso_right" {
	"creation2_full_anims\hit_torso_right.smd"
	activity "ACT_HIT_TORSO" 1
	fps 30
}
$sequence "Disc_PartialResistDem" {
	"creation2_full_anims\Disc_PartialResistDem.smd"
	activity "ACT_PARTIAL_RESIST_DEM" 1
	fps 30
}
$sequence "Disc_PartialResistDom" {
	"creation2_full_anims\Disc_PartialResistDom.smd"
	activity "ACT_PARTIAL_RESIST_DOM" 1
	fps 30
}
$sequence "Disc_PartialResistThaum" {
	"creation2_full_anims\Disc_PartialResistThaum.smd"
	activity "ACT_PARTIAL_RESIST_THAUM" 1
	fps 30
}
$sequence "Disc_FullResistDem" {
	"creation2_full_anims\Disc_FullResistDem.smd"
	activity "ACT_FULL_RESIST_DEM" 1
	fps 30
}
$sequence "Disc_FullResistDom" {
	"creation2_full_anims\Disc_FullResistDom.smd"
	activity "ACT_FULL_RESIST_DOM" 1
	fps 30
}
$sequence "Disc_FullResistThaum" {
	"creation2_full_anims\Disc_FullResistThaum.smd"
	activity "ACT_FULL_RESIST_THAUM" 1
	fps 30
}
$sequence "Dem_VeilofMadnessPre" {
	"creation2_full_anims\Dem_VeilofMadnessPre.smd"
	activity "ACT_MADNESS_PRE_INTO" 1
	fps 30
}
$sequence "Dem_VeilofMadness" {
	"creation2_full_anims\Dem_VeilofMadness.smd"
	activity "ACT_LAUGH_INTO" 1
	fps 30
}
$sequence "Dem_HauntingPre" {
	"creation2_full_anims\Dem_HauntingPre.smd"
	activity "ACT_SOBBING_PRE_INTO" 1
	fps 30
}
$sequence "Dem_Haunting" {
	"creation2_full_anims\Dem_Haunting.smd"
	activity "ACT_SOBBING_INTO" 1
	fps 30
}
$sequence "Dem_VoiceofMadnessPre" {
	"creation2_full_anims\Dem_VoiceofMadnessPre.smd"
	activity "ACT_MADNESS_PRE_INTO" 1
	fps 30
}
$sequence "Dem_VoiceofMadness" {
	"creation2_full_anims\Dem_VoiceofMadness.smd"
	activity "ACT_MADNESS_INTO" 1
	fps 30
}
$sequence "Dem_WakingNightmarePre" {
	"creation2_full_anims\Dem_WakingNightmarePre.smd"
	activity "ACT_COMATOSE_PRE_INTO" 1
	fps 30
}
$sequence "Dem_WakingNightmare" {
	"creation2_full_anims\Dem_WakingNightmare.smd"
	activity "ACT_COMATOSE_INTO" 1
	fps 30
}
$sequence "Dem_TotalInsanityPre" {
	"creation2_full_anims\Dem_TotalInsanityPre.smd"
	activity "ACT_INSANITY_PRE" 1
	fps 30
}
$sequence "Dom_Dance" {
	"creation2_full_anims\Dom_Dance.smd"
	activity "ACT_DANCE" 1
	fps 30
}
$sequence "Dom_Follow" {
	"creation2_full_anims\Dom_Follow.smd"
	activity "ACT_LOST" 1
	fps 30
}
$sequence "Dom_HideInto" {
	"creation2_full_anims\Dom_HideInto.smd"
	activity "ACT_COWER_INTO" 1
	fps 30
}
$sequence "Dom_Hide" {
	"creation2_full_anims\Dom_Hide.smd"
	activity "ACT_COWER" 1
	fps 30
}
$sequence "Dom_Jump" {
	"creation2_full_anims\Dom_Jump.smd"
	activity "ACT_JUMP_TO_DEATH" 1
	fps 30
}
$sequence "Dom_MesmerizePre" {
	"creation2_full_anims\Dom_MesmerizePre.smd"
	activity "ACT_DISPOSITION_MESMERIZED_PRE_INTO" 1
	fps 30
}
$sequence "Dom_Mesmerize" {
	"creation2_full_anims\Dom_Mesmerize.smd"
	activity "ACT_DISPOSITION_MESMERIZED" 1
	fps 30
}
$sequence "Dom_SleepPre" {
	"creation2_full_anims\Dom_SleepPre.smd"
	activity "ACT_SLEEP_PRE_FALL_INTO" 1
	fps 30
}
$sequence "Dom_Sleep" {
	"creation2_full_anims\Dom_Sleep.smd"
	activity "ACT_SLEEP_FALL_INTO" 1
	fps 30
}
$sequence "Dom_ImposeWill" {
	"creation2_full_anims\Dom_ImposeWill.smd"
	activity "ACT_PRE_CHOKING" 1
	fps 30
}
$sequence "Dom_PossessionPre" {
	"creation2_full_anims\Dom_PossessionPre.smd"
	activity "ACT_POSSESSION_PRE_INTO" 1
	fps 30
}
$sequence "Dom_Possession" {
	"creation2_full_anims\Dom_Possession.smd"
	activity "ACT_SLEEP_IDLE" 1
	fps 30
}
$sequence "Thaum1_BloodMaladyPre" {
	"creation2_full_anims\Thaum1_BloodMaladyPre.smd"
	activity "ACT_BLOOD_MALADY_PRE" 1
	fps 30
}
$sequence "Thaum2_BloodMaladySpell" {
	"creation2_full_anims\Thaum2_BloodMaladySpell.smd"
	activity "ACT_HIT_SPELL" 1
	fps 30
}
$sequence "Thaum3_BloodyEyePre" {
	"creation2_full_anims\Thaum3_BloodyEyePre.smd"
	activity "ACT_BLEEDINGEYES_PRE_INTO" 1
	fps 30
}
$sequence "Thaum4_BloodyEyeInto" {
	"creation2_full_anims\Thaum4_BloodyEyeInto.smd"
	activity "ACT_BLEEDINGEYES_INTO" 1
	fps 30
}
$sequence "Thaum5_TheftPre" {
	"creation2_full_anims\Thaum5_TheftPre.smd"
	activity "ACT_THEFTPAIN_PRE_INTO" 1
	fps 30
}
$sequence "Thaum6_TheftInto" {
	"creation2_full_anims\Thaum6_TheftInto.smd"
	activity "ACT_THEFTPAIN_INTO" 1
	fps 30
}
$sequence "Thaum7_PurgeBloodPre" {
	"creation2_full_anims\Thaum7_PurgeBloodPre.smd"
	activity "ACT_VOMIT_PRE_INTO" 1
	fps 30
}
$sequence "Thaum8_PurgeBloodInto" {
	"creation2_full_anims\Thaum8_PurgeBloodInto.smd"
	activity "ACT_VOMIT_INTO" 1
	fps 30
}
$sequence "Thaum9_BloodBoilPre" {
	"creation2_full_anims\Thaum9_BloodBoilPre.smd"
	activity "ACT_CAULDRON_PRE" 1
	fps 30
}
$sequence "Thaum10_BloodBoilDeath" {
	"creation2_full_anims\Thaum10_BloodBoilDeath.smd"
	activity "ACT_CAULDRON_DEATH" 1
	fps 30
}
$sequence "Thaum11_BloodBoilPain" {
	"creation2_full_anims\Thaum11_BloodBoilPain.smd"
	activity "ACT_CAULDRON_PAIN" 1
	fps 30
}
$sequence "Attack1" {
	"creation2_full_anims\Attack1.smd"
	activity "ACT_MELEE_ATTACK" 1
	fps 30
}
$sequence "Attack2" {
	"creation2_full_anims\Attack2.smd"
	activity "ACT_MELEE_ATTACK" 1
	fps 30
}
$sequence "ChargeAttack" {
	"creation2_full_anims\ChargeAttack.smd"
	activity "ACT_TZHC_CHARGE" 1
	fps 40
}
$sequence "HeadHandFullAttack" {
	"creation2_full_anims\HeadHandFullAttack.smd"
	activity "ACT_RANGE_ATTACK1" 1
	fps 30
}
$sequence "ragdoll" {
	"creation2_full_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fps 30
}

$collisionjoints "creation2_full_physics.smd"
{
	$mass 180
	$inertia 5
	$damping 0.01
	$rotdamping 1.5
	$rootbone " "


	$jointmassbias "Bip01 R Thigh" 2
	$jointconstrain "Bip01 R Thigh" x limit -25 20 1
	$jointconstrain "Bip01 R Thigh" y limit -40 20 1
	$jointconstrain "Bip01 R Thigh" z limit -37 63 1

	$jointconstrain "Bip01 R Calf" x limit 0 0 0
	$jointconstrain "Bip01 R Calf" y limit 0 0 0
	$jointconstrain "Bip01 R Calf" z limit -95 4 1

	$jointmassbias "Bip01 L Thigh" 2
	$jointconstrain "Bip01 L Thigh" x limit -25 20 1
	$jointconstrain "Bip01 L Thigh" y limit -20 40 1
	$jointconstrain "Bip01 L Thigh" z limit -37 63 1

	$jointconstrain "Bip01 L Calf" x limit 0 0 0
	$jointconstrain "Bip01 L Calf" y limit 0 0 0
	$jointconstrain "Bip01 L Calf" z limit -95 4 1

	$jointconstrain "Bip01 L Foot" x limit 0 0 0
	$jointconstrain "Bip01 L Foot" y limit 0 0 0
	$jointconstrain "Bip01 L Foot" z limit -15 35 1

	$jointconstrain "Bip01 Spine1" x limit -25 25 1
	$jointconstrain "Bip01 Spine1" y limit -25 25 1
	$jointconstrain "Bip01 Spine1" z limit -25 15 1

	$jointmassbias "Bip01 R UpperArm" 2
	$jointconstrain "Bip01 R UpperArm" x limit -20 20 1
	$jointconstrain "Bip01 R UpperArm" y limit -45 76 1
	$jointconstrain "Bip01 R UpperArm" z limit 0 0 0

	$jointmassbias "Bip01 R Forearm" 3
	$jointconstrain "Bip01 R Forearm" x limit 0 0 0
	$jointconstrain "Bip01 R Forearm" y limit 0 0 0
	$jointconstrain "Bip01 R Forearm" z limit -120 4 1

	$jointmassbias "Bip01 L UpperArm" 2
	$jointconstrain "Bip01 L UpperArm" x limit -20 20 1
	$jointconstrain "Bip01 L UpperArm" y limit -76 30 1
	$jointconstrain "Bip01 L UpperArm" z limit 0 0 0

	$jointmassbias "Bip01 L Forearm" 3
	$jointconstrain "Bip01 L Forearm" x limit 0 0 0
	$jointconstrain "Bip01 L Forearm" y limit 0 0 0
	$jointconstrain "Bip01 L Forearm" z limit -120 4 1

	$jointmassbias "Bip01 L Hand" 2
	$jointconstrain "Bip01 L Hand" x limit 0 0 0
	$jointconstrain "Bip01 L Hand" y limit 0 0 0
	$jointconstrain "Bip01 L Hand" z limit -35 60 1

	$jointrotdamping "Bip01 Head" 5
	$jointconstrain "Bip01 Head" x limit -20 20 1
	$jointconstrain "Bip01 Head" y limit -25 25 1
	$jointconstrain "Bip01 Head" z limit -13 30 1

	$jointmassbias "Bip01 R Hand" 2
	$jointconstrain "Bip01 R Hand" x limit 0 0 0
	$jointconstrain "Bip01 R Hand" y limit 0 0 0
	$jointconstrain "Bip01 R Hand" z limit -35 60 1

	$jointconstrain "Bip01 R Foot" x limit 0 0 0
	$jointconstrain "Bip01 R Foot" y limit 0 0 0
	$jointconstrain "Bip01 R Foot" z limit -15 35 1
}
