// Created by Crowbar 0.71

$modelname "character/monster/tzimisce/creation3/tzim3.mdl"

$bodygroup "Body"
{
	studio "tzim3_ref"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$surfaceprop "flesh"

$cdmaterials "models\character\monster\tzimisce\creation3\"

$cbox 0 0 0 0 0 0

$bbox -56.912 -78.608 -157.157 63.566 36.008 37.04

$sequence "tzim3_idle" {
	"tzim3_anims\tzim3_idle.smd"
	activity "ACT_IDLE" 1
	fps 30
}
$sequence "tzim3_idle_LR" {
	"tzim3_anims\tzim3_idle_LR.smd"
	activity "ACT_IDLE" 1
	fps 30
}
$sequence "tzim3_idle_LL" {
	"tzim3_anims\tzim3_idle_LL.smd"
	activity "ACT_IDLE" 1
	fps 30
}
$sequence "tzim3_idle_roar" {
	"tzim3_anims\tzim3_idle_roar.smd"
	activity "ACT_IDLE" 1
	fps 30
}
$sequence "Tzim3_Lookaround" {
	"tzim3_anims\Tzim3_Lookaround.smd"
	activity "ACT_FIDGET" 1
	fps 30
}
$sequence "scripted_jumping_down_attack" {
	"tzim3_anims\scripted_jumping_down_attack.smd"
	activity "ACT_TZIM_JUMPDOWN_ATTACK" 1
	fps 30
}
$sequence "Walk" {
	"tzim3_anims\Walk.smd"
	activity "ACT_WALK" 1
	fps 30
}
$sequence "Run" {
	"tzim3_anims\Run.smd"
	activity "ACT_WALK" 1
	fps 30
}
$sequence "idle2" {
	"tzim3_anims\idle2.smd"
	activity "ACT_TZ_IDLE2" 1
	fps 30
}
$sequence "Lookaround2" {
	"tzim3_anims\Lookaround2.smd"
	activity "ACT_TZ_FIDGET2" 1
	fps 30
}
$sequence "Walk2" {
	"tzim3_anims\Walk2.smd"
	activity "ACT_TZ_WALK2" 1
	fps 30
}
$sequence "Run2" {
	"tzim3_anims\Run2.smd"
	activity "ACT_TZ_RUN2" 1
	fps 30
}
$sequence "knockback" {
	"tzim3_anims\knockback.smd"
	activity "ACT_KNOCKBACK_BIGUPPERCUT" 1
	fps 30
}
$sequence "HideIdle" {
	"tzim3_anims\HideIdle.smd"
	activity "ACT_TZ_HIDE_IDLE" 1
	fps 30
}
$sequence "DropDnIdle" {
	"tzim3_anims\DropDnIdle.smd"
	activity "ACT_DROP_DOWN_IDLE" 1
	fps 30
}
$sequence "hit_head" {
	"tzim3_anims\hit_head_top_left.smd"
	"tzim3_anims\hit_head_top_center.smd"
	"tzim3_anims\hit_head_top_right.smd"
	"tzim3_anims\hit_head_left.smd"
	"tzim3_anims\hit_head_right.smd"
	"tzim3_anims\hit_head_bottom_left.smd"
	"tzim3_anims\hit_head_bottem_center.smd"
	"tzim3_anims\hit_head_bottem_right.smd"
	"tzim3_anims\hit_head_top_left.smd"
	activity "ACT_HIT_HEAD" 1
	fps 30
}
$sequence "Jump1" {
	"tzim3_anims\Jump1.smd"
	activity "ACT_MELEE_ATTACK" 1
	fps 30
}
$sequence "Jump2" {
	"tzim3_anims\Jump2.smd"
	activity "ACT_MELEE_ATTACK" 1
	fps 30
}
$sequence "Jump4" {
	"tzim3_anims\Jump4.smd"
	activity "ACT_MELEE_ATTACK" 4
	fps 30
}
$sequence "Jump5" {
	"tzim3_anims\Jump5.smd"
	activity "ACT_MELEE_ATTACK" 2
	fps 30
}
$sequence "Jump6" {
	"tzim3_anims\Jump6.smd"
	activity "ACT_MELEE_ATTACK" 4
	fps 30
}
$sequence "Rocket1" {
	"tzim3_anims\Rocket1.smd"
	activity "ACT_MELEE_ATTACK" 4
	fps 30
}
$sequence "Rocket2" {
	"tzim3_anims\Rocket2.smd"
	activity "ACT_MELEE_ATTACK" 4
	fps 30
}
$sequence "Rocket3" {
	"tzim3_anims\Rocket3.smd"
	activity "ACT_MELEE_ATTACK" 4
	fps 30
}
$sequence "attack_dog" {
	"tzim3_anims\attack_dog.smd"
	activity "ACT_MELEE_ATTACK" 4
	fps 30
}
$sequence "Roll1" {
	"tzim3_anims\Roll1.smd"
	activity "ACT_MELEE_ATTACK_HEAVY" 1
	fps 30
}
$sequence "Roll2" {
	"tzim3_anims\Roll2.smd"
	activity "ACT_MELEE_ATTACK_HEAVY" 2
	fps 30
}
$sequence "role_attack_dog" {
	"tzim3_anims\role_attack_dog.smd"
	activity "ACT_MELEE_ATTACK" 4
	fps 30
}
$sequence "Disc_PartialResistDem" {
	"tzim3_anims\Disc_PartialResistDem.smd"
	activity "ACT_PARTIAL_RESIST_DEM" 1
	fps 30
}
$sequence "Disc_PartialResistDom" {
	"tzim3_anims\Disc_PartialResistDom.smd"
	activity "ACT_PARTIAL_RESIST_DOM" 1
	fps 30
}
$sequence "Disc_PartialResistThaum" {
	"tzim3_anims\Disc_PartialResistThaum.smd"
	activity "ACT_PARTIAL_RESIST_THAUM" 1
	fps 30
}
$sequence "Disc_FullResistDem" {
	"tzim3_anims\Disc_FullResistDem.smd"
	activity "ACT_FULL_RESIST_DEM" 1
	fps 30
}
$sequence "Disc_FullResistDom" {
	"tzim3_anims\Disc_FullResistDom.smd"
	activity "ACT_FULL_RESIST_DOM" 1
	fps 30
}
$sequence "Disc_FullResistThaum" {
	"tzim3_anims\Disc_FullResistThaum.smd"
	activity "ACT_FULL_RESIST_THAUM" 1
	fps 30
}
$sequence "Dem_VeilofMadnessPre" {
	"tzim3_anims\Dem_VeilofMadnessPre.smd"
	activity "ACT_MADNESS_PRE_INTO" 1
	fps 30
}
$sequence "Dem_VeilofMadness" {
	"tzim3_anims\Dem_VeilofMadness.smd"
	activity "ACT_LAUGH_INTO" 1
	fps 30
}
$sequence "Dem_HauntingPre" {
	"tzim3_anims\Dem_HauntingPre.smd"
	activity "ACT_SOBBING_PRE_INTO" 1
	fps 30
}
$sequence "Dem_Haunting" {
	"tzim3_anims\Dem_Haunting.smd"
	activity "ACT_SOBBING_INTO" 1
	fps 30
}
$sequence "Dem_VoiceofMadnessPre" {
	"tzim3_anims\Dem_VoiceofMadnessPre.smd"
	activity "ACT_MADNESS_PRE_INTO" 1
	fps 30
}
$sequence "Dem_VoiceofMadness" {
	"tzim3_anims\Dem_VoiceofMadness.smd"
	activity "ACT_MADNESS_INTO" 1
	fps 30
}
$sequence "Dem_WakingNightmarePre" {
	"tzim3_anims\Dem_WakingNightmarePre.smd"
	activity "ACT_COMATOSE_PRE_INTO" 1
	fps 30
}
$sequence "Dem_WakingNightmare" {
	"tzim3_anims\Dem_WakingNightmare.smd"
	activity "ACT_COMATOSE_INTO" 1
	fps 30
}
$sequence "Dem_TotalInsanityPre" {
	"tzim3_anims\Dem_TotalInsanityPre.smd"
	activity "ACT_INSANITY_PRE" 1
	fps 30
}
$sequence "Dom_Dance" {
	"tzim3_anims\Dom_Dance.smd"
	activity "ACT_DANCE" 1
	fps 30
}
$sequence "Dom_Follow" {
	"tzim3_anims\Dom_Follow.smd"
	activity "ACT_LOST" 1
	fps 30
}
$sequence "Dom_HideInto" {
	"tzim3_anims\Dom_HideInto.smd"
	activity "ACT_COWER_INTO" 1
	fps 30
}
$sequence "Dom_Hide" {
	"tzim3_anims\Dom_Hide.smd"
	activity "ACT_COWER" 1
	fps 30
}
$sequence "Dom_Jump" {
	"tzim3_anims\Dom_Jump.smd"
	activity "ACT_JUMP_TO_DEATH" 1
	fps 30
}
$sequence "Dom_MesmerizePre" {
	"tzim3_anims\Dom_MesmerizePre.smd"
	activity "ACT_DISPOSITION_MESMERIZED_PRE_INTO" 1
	fps 30
}
$sequence "Dom_Mesmerize" {
	"tzim3_anims\Dom_Mesmerize.smd"
	activity "ACT_DISPOSITION_MESMERIZED" 1
	fps 30
}
$sequence "Dom_SleepPre" {
	"tzim3_anims\Dom_SleepPre.smd"
	activity "ACT_SLEEP_PRE_FALL_INTO" 1
	fps 30
}
$sequence "Dom_Sleep" {
	"tzim3_anims\Dom_Sleep.smd"
	activity "ACT_SLEEP_FALL_INTO" 1
	fps 30
}
$sequence "Dom_ImposeWill" {
	"tzim3_anims\Dom_ImposeWill.smd"
	activity "ACT_PRE_CHOKING" 1
	fps 30
}
$sequence "Dom_PossessionPre" {
	"tzim3_anims\Dom_PossessionPre.smd"
	activity "ACT_POSSESSION_PRE_INTO" 1
	fps 30
}
$sequence "Thaum1_BloodMaladyPre" {
	"tzim3_anims\Thaum1_BloodMaladyPre.smd"
	activity "ACT_BLOOD_MALADY_PRE" 1
	fps 30
}
$sequence "Thaum2_BloodMaladySpell" {
	"tzim3_anims\Thaum2_BloodMaladySpell.smd"
	activity "ACT_HIT_SPELL" 1
	fps 30
}
$sequence "Thaum3_BloodyEyePre" {
	"tzim3_anims\Thaum3_BloodyEyePre.smd"
	activity "ACT_BLEEDINGEYES_PRE_INTO" 1
	fps 30
}
$sequence "Thaum4_BloodyEyeInto" {
	"tzim3_anims\Thaum4_BloodyEyeInto.smd"
	activity "ACT_BLEEDINGEYES_INTO" 1
	fps 30
}
$sequence "Thaum5_TheftPre" {
	"tzim3_anims\Thaum5_TheftPre.smd"
	activity "ACT_THEFTPAIN_PRE_INTO" 1
	fps 30
}
$sequence "Thaum6_TheftInto" {
	"tzim3_anims\Thaum6_TheftInto.smd"
	activity "ACT_THEFTPAIN_INTO" 1
	fps 30
}
$sequence "Thaum7_PurgeBloodPre" {
	"tzim3_anims\Thaum7_PurgeBloodPre.smd"
	activity "ACT_VOMIT_PRE_INTO" 1
	fps 30
}
$sequence "Thaum8_PurgeBloodInto" {
	"tzim3_anims\Thaum8_PurgeBloodInto.smd"
	activity "ACT_VOMIT_INTO" 1
	fps 30
}
$sequence "Thaum9_BloodBoilPre" {
	"tzim3_anims\Thaum9_BloodBoilPre.smd"
	activity "ACT_CAULDRON_PRE" 1
	fps 30
}
$sequence "Thaum10_BloodBoilDeath" {
	"tzim3_anims\Thaum10_BloodBoilDeath.smd"
	activity "ACT_CAULDRON_DEATH" 1
	fps 30
}
$sequence "Thaum11_BloodBoilPain" {
	"tzim3_anims\Thaum11_BloodBoilPain.smd"
	activity "ACT_CAULDRON_PAIN" 1
	fps 30
}
$sequence "ragdoll" {
	"tzim3_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fps 30
}

$collisionjoints "tzim3_physics.smd"
{
	$mass 40
	$inertia 5
	$damping 0.1
	$rotdamping 2.5
	$rootbone " "


	$jointconstrain "Bip01 Spine1" x limit -25 25 1
	$jointconstrain "Bip01 Spine1" y limit -25 25 1
	$jointconstrain "Bip01 Spine1" z limit -25 15 1

	$jointconstrain "Bip01 R UpperArm" x limit -20 20 1
	$jointconstrain "Bip01 R UpperArm" y limit -40 35 1
	$jointconstrain "Bip01 R UpperArm" z limit -60 30 1

	$jointconstrain "Bip01 L UpperArm" x limit -20 20 1
	$jointconstrain "Bip01 L UpperArm" y limit -35 40 1
	$jointconstrain "Bip01 L UpperArm" z limit -60 30 1

	$jointmassbias "Bip01 L Forearm" 3
	$jointconstrain "Bip01 L Forearm" x limit 0 0 0
	$jointconstrain "Bip01 L Forearm" y limit 0 0 0
	$jointconstrain "Bip01 L Forearm" z limit -120 4 1

	$jointmassbias "Bip01 L Hand" 2
	$jointconstrain "Bip01 L Hand" x limit 0 0 0
	$jointconstrain "Bip01 L Hand" y limit 0 0 0
	$jointconstrain "Bip01 L Hand" z limit -35 60 1

	$jointmassbias "Bip01 R Forearm" 3
	$jointconstrain "Bip01 R Forearm" x limit 0 0 0
	$jointconstrain "Bip01 R Forearm" y limit 0 0 0
	$jointconstrain "Bip01 R Forearm" z limit -120 4 1

	$jointmassbias "Bip01 R Hand" 2
	$jointconstrain "Bip01 R Hand" x limit 0 0 0
	$jointconstrain "Bip01 R Hand" y limit 0 0 0
	$jointconstrain "Bip01 R Hand" z limit -35 60 1

	$jointrotdamping "Bip01 Head" 5
	$jointconstrain "Bip01 Head" x limit -20 20 1
	$jointconstrain "Bip01 Head" y limit -25 25 1
	$jointconstrain "Bip01 Head" z limit -13 30 1
}
