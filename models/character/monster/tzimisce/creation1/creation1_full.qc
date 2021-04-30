// Created by Crowbar 0.71

$modelname "character/monster/tzimisce/creation1/creation1_full.mdl"

$bodygroup "Body"
{
	studio "TC1_aFULL_REF"
}

$lod 15
{
	replacemodel "TC1_aFULL_REF.smd" "TC1_aFULL_REF_lod1.smd"
}
$lod 25
{
	replacemodel "TC1_aFULL_REF.smd" "TC1_aFULL_REF_lod2.smd"
}
$lod 45
{
	replacemodel "TC1_aFULL_REF.smd" "TC1_aFULL_REF_lod3.smd"
}
$lod 55
{
	replacemodel "TC1_aFULL_REF.smd" "TC1_aFULL_REF_lod4.smd"
}
$lod 65
{
	replacemodel "TC1_aFULL_REF.smd" "TC1_aFULL_REF_lod5.smd"
}

$illumposition 0 0 100

$eyeposition 0.5 -0.5 0.5

$surfaceprop "flesh"

$cdmaterials "models\character\monster\tzimisce\creation1\"
$cdmaterials "models\character\monster\tzimisce\creation2\"
$cdmaterials "models\character\eyes\"
$cdmaterials "models\character\pc\female\malkavian\armor0\"

$cbox 0 0 0 0 0 0

$bbox -61.231 -72.337 -35.315 87.835 72.398 48.037

$sequence "ragdoll" {
	"creation1_full_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fps 30
}
$sequence "Whole_Idle" {
	"creation1_full_anims\Whole_Idle.smd"
	activity "ACT_IDLE" 90
	fps 30
}
$sequence "Whole_Fidget" {
	"creation1_full_anims\Whole_Fidget.smd"
	activity "ACT_IDLE" 10
	fps 30
}
$sequence "Whole_Attack01" {
	"creation1_full_anims\Whole_Attack01.smd"
	activity "ACT_MELEE_ATTACK" 60
	fps 30
}
$sequence "Whole_Attack02" {
	"creation1_full_anims\Whole_Attack02.smd"
	activity "ACT_MELEE_ATTACK" 40
	fps 30
}
$sequence "Whole_Pounce" {
	"creation1_full_anims\Whole_Pounce.smd"
	activity "ACT_POUNCE" 100
	fps 30
}
$sequence "Whole_Biped_Scaled_pounce1" {
	"creation1_full_anims\Whole_Biped_Scaled_pounce1.smd"
	activity "ACT_POUNCE1" 100
	fps 30
}
$sequence "Whole_Biped_Scaled_pounce2" {
	"creation1_full_anims\Whole_Biped_Scaled_pounce2.smd"
	activity "ACT_POUNCE2" 100
	fps 30
}
$sequence "Whole_Biped_Scaled_pounce3" {
	"creation1_full_anims\Whole_Biped_Scaled_pounce3.smd"
	activity "ACT_POUNCE3" 100
	fps 30
}
$sequence "Whole_Walk_Fast" {
	"creation1_full_anims\Whole_Walk_Fast.smd"
	activity "ACT_WALK" 90
	fps 30
}
$sequence "Whole_RunAllSixes" {
	"creation1_full_anims\Whole_RunAllSixes.smd"
	activity "ACT_RUN" 70
	fps 30
}
$sequence "Whole_RunAllSixes2" {
	"creation1_full_anims\Whole_RunAllSixes2.smd"
	activity "ACT_RUN" 30
	fps 30
}
$sequence "DeathSplit_Part1" {
	"creation1_full_anims\DeathSplit_Part1.smd"
	activity "ACT_TZIM_DEATH_SPLIT1" 100
	fps 30
}
$sequence "DeathSplit_Part2Upper" {
	"creation1_full_anims\DeathSplit_Part2Upper.smd"
	activity "ACT_TZIM_DEATH_SPLIT2" 100
	fps 30
}
$sequence "Whole_Pickup_H" {
	"creation1_full_anims\Whole_Pickup_H.smd"
	activity "ACT_PICKUP_BODY_NORMAL" 100
	fps 30
}
$sequence "Whole_Pickup_H_rev" {
	"creation1_full_anims\Whole_Pickup_H_rev.smd"
	activity "ACT_PICKUP_BODY_REVERSE" 100
	fps 30
}
$sequence "Whole_Pickup_L" {
	"creation1_full_anims\Whole_Pickup_L.smd"
	activity "ACT_PICKUP_BODY_NORMAL_L" 100
	fps 30
}
$sequence "Whole_Pickup_L_rev" {
	"creation1_full_anims\Whole_Pickup_L_rev.smd"
	activity "ACT_PICKUP_BODY_REVERSE_L" 100
	fps 30
}
$sequence "Whole_Idle_H" {
	"creation1_full_anims\Whole_Idle_H.smd"
	activity "ACT_IDLE_BODY" 100
	fps 30
}
$sequence "Whole_Idle_L" {
	"creation1_full_anims\Whole_Idle_L.smd"
	activity "ACT_IDLE_BODY_L" 100
	fps 30
}
$sequence "Whole_Throw_H" {
	"creation1_full_anims\Whole_Throw_H.smd"
	activity "ACT_THROW_BODY" 100
	fps 30
}
$sequence "Whole_Throw_L" {
	"creation1_full_anims\Whole_Throw_L.smd"
	activity "ACT_THROW_BODY_L" 100
	fps 30
}
$sequence "Whole_Throw_H_Fake" {
	"creation1_full_anims\Whole_Throw_H_Fake.smd"
	activity "ACT_THROW_BODY_FAKE" 100
	fps 30
}
$sequence "Whole_Throw_L_Fake" {
	"creation1_full_anims\Whole_Throw_L_Fake.smd"
	activity "ACT_THROW_BODY_L_FAKE" 100
	fps 30
}
$sequence "Whole_Carry_H" {
	"creation1_full_anims\Whole_Carry_H.smd"
	activity "ACT_WALK_BODY" 100
	fps 30
}
$sequence "Whole_Carry_L" {
	"creation1_full_anims\Whole_Carry_L.smd"
	activity "ACT_WALK_BODY_L" 100
	fps 30
}
$sequence "Whole_LandLight" {
	"creation1_full_anims\Whole_LandLight.smd"
	activity "ACT_LAND" 100
	fps 30
}
$sequence "Whole_ICU_L" {
	"creation1_full_anims\Whole_ICU_L.smd"
	activity "ACT_ROAR_LONG" 100
	fps 30
}
$sequence "Whole_ICU_S" {
	"creation1_full_anims\Whole_ICU_S.smd"
	activity "ACT_ROAR_SHORT" 100
	fps 30
}
$sequence "Whole_Turn_45L" {
	"creation1_full_anims\Whole_Turn_45L.smd"
	activity "ACT_TURN_LEFT" 100
	fps 30
}
$sequence "Whole_Turn_45R" {
	"creation1_full_anims\Whole_Turn_45R.smd"
	activity "ACT_TURN_RIGHT" 100
	fps 30
}
$sequence "Whole_Turn_90L" {
	"creation1_full_anims\Whole_Turn_90L.smd"
	activity "ACT_90_LEFT" 100
	fps 30
}
$sequence "Whole_Turn_90R" {
	"creation1_full_anims\Whole_Turn_90R.smd"
	activity "ACT_90_RIGHT" 100
	fps 30
}
$sequence "Whole_Turn_180L" {
	"creation1_full_anims\Whole_Turn_180L.smd"
	activity "ACT_180_LEFT" 100
	fps 30
}
$sequence "Whole_drop_idle" {
	"creation1_full_anims\Whole_drop_idle.smd"
	activity "ACT_DROP_DOWN_IDLE" 100
	fps 1
}
$sequence "Whole_drop" {
	"creation1_full_anims\Whole_drop.smd"
	activity "ACT_DROP_DOWN" 100
	fps 30
}
$sequence "Whole_Reacharound_L" {
	"creation1_full_anims\Whole_Reacharound_L.smd"
	activity "ACT_CLAW_LEFT" 100
	fps 30
}
$sequence "Whole_Reacharound_R" {
	"creation1_full_anims\Whole_Reacharound_R.smd"
	activity "ACT_CLAW_RIGHT" 100
	fps 30
}

$collisionjoints "creation1_full_physics.smd"
{
	$mass 200
	$inertia 5
	$damping 0.01
	$rotdamping 1.5
	$rootbone " "


	$jointconstrain "Bip01 Spine1" x limit -25 25 1
	$jointconstrain "Bip01 Spine1" y limit -25 25 1
	$jointconstrain "Bip01 Spine1" z limit -25 15 1

	$jointconstrain "Bip01 Spine3" x limit 0 0 0
	$jointconstrain "Bip01 Spine3" y limit 0 0 0
	$jointconstrain "Bip01 Spine3" z limit 0 0 0

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

	$jointmassbias "Bip01 R UpperArm" 2
	$jointconstrain "Bip01 R UpperArm" x limit -20 20 1
	$jointconstrain "Bip01 R UpperArm" y limit -45 76 1
	$jointconstrain "Bip01 R UpperArm" z limit 0 0 0

	$jointmassbias "Bip01 R Forearm" 3
	$jointconstrain "Bip01 R Forearm" x limit 0 0 0
	$jointconstrain "Bip01 R Forearm" y limit 0 0 0
	$jointconstrain "Bip01 R Forearm" z limit -120 4 1

	$jointmassbias "Bip01 R Hand" 2
	$jointconstrain "Bip01 R Hand" x limit 0 0 0
	$jointconstrain "Bip01 R Hand" y limit 0 0 0
	$jointconstrain "Bip01 R Hand" z limit -35 60 1

	$jointconstrain "Bip02" x limit 0 0 0
	$jointconstrain "Bip02" y limit 0 0 0
	$jointconstrain "Bip02" z limit 0 0 0

	$jointconstrain "Bip02 Spine2" x limit -25 25 1
	$jointconstrain "Bip02 Spine2" y limit -25 25 1
	$jointconstrain "Bip02 Spine2" z limit -25 15 1

	$jointmassbias "Bip02 R UpperArm" 2
	$jointconstrain "Bip02 R UpperArm" x limit -20 20 1
	$jointconstrain "Bip02 R UpperArm" y limit -45 76 1
	$jointconstrain "Bip02 R UpperArm" z limit 0 0 0

	$jointmassbias "Bip02 L UpperArm" 2
	$jointconstrain "Bip02 L UpperArm" x limit -20 20 1
	$jointconstrain "Bip02 L UpperArm" y limit -76 30 1
	$jointconstrain "Bip02 L UpperArm" z limit 0 0 0

	$jointmassbias "Bip02 L Forearm" 3
	$jointconstrain "Bip02 L Forearm" x limit 0 0 0
	$jointconstrain "Bip02 L Forearm" y limit 0 0 0
	$jointconstrain "Bip02 L Forearm" z limit -120 4 1

	$jointmassbias "Bip02 L Hand" 2
	$jointconstrain "Bip02 L Hand" x limit 0 0 0
	$jointconstrain "Bip02 L Hand" y limit 0 0 0
	$jointconstrain "Bip02 L Hand" z limit -35 60 1

	$jointmassbias "Bip02 R Forearm" 3
	$jointconstrain "Bip02 R Forearm" x limit 0 0 0
	$jointconstrain "Bip02 R Forearm" y limit 0 0 0
	$jointconstrain "Bip02 R Forearm" z limit -120 4 1

	$jointmassbias "Bip02 R Hand" 2
	$jointconstrain "Bip02 R Hand" x limit 0 0 0
	$jointconstrain "Bip02 R Hand" y limit 0 0 0
	$jointconstrain "Bip02 R Hand" z limit -35 60 1

	$jointconstrain "Bip03" x limit 0 0 0
	$jointconstrain "Bip03" y limit 0 0 0
	$jointconstrain "Bip03" z limit 0 0 0

	$jointconstrain "Bip03 Spine2" x limit 0 0 0
	$jointconstrain "Bip03 Spine2" y limit 0 0 0
	$jointconstrain "Bip03 Spine2" z limit 0 0 0

	$jointmassbias "Bip03 R UpperArm" 2
	$jointconstrain "Bip03 R UpperArm" x limit -20 20 1
	$jointconstrain "Bip03 R UpperArm" y limit -45 76 1
	$jointconstrain "Bip03 R UpperArm" z limit 0 0 0

	$jointmassbias "Bip03 L UpperArm" 2
	$jointconstrain "Bip03 L UpperArm" x limit -20 20 1
	$jointconstrain "Bip03 L UpperArm" y limit -76 30 1
	$jointconstrain "Bip03 L UpperArm" z limit 0 0 0

	$jointmassbias "Bip03 L Forearm" 3
	$jointconstrain "Bip03 L Forearm" x limit 0 0 0
	$jointconstrain "Bip03 L Forearm" y limit 0 0 0
	$jointconstrain "Bip03 L Forearm" z limit -120 4 1

	$jointmassbias "Bip03 L Hand" 2
	$jointconstrain "Bip03 L Hand" x limit 0 0 0
	$jointconstrain "Bip03 L Hand" y limit 0 0 0
	$jointconstrain "Bip03 L Hand" z limit -35 60 1

	$jointmassbias "Bip03 R Forearm" 3
	$jointconstrain "Bip03 R Forearm" x limit 0 0 0
	$jointconstrain "Bip03 R Forearm" y limit 0 0 0
	$jointconstrain "Bip03 R Forearm" z limit -120 4 1

	$jointmassbias "Bip03 R Hand" 2
	$jointconstrain "Bip03 R Hand" x limit 0 0 0
	$jointconstrain "Bip03 R Hand" y limit 0 0 0
	$jointconstrain "Bip03 R Hand" z limit -35 60 1

	$jointrotdamping "Bip03 Head" 5
	$jointconstrain "Bip03 Head" x limit -20 20 1
	$jointconstrain "Bip03 Head" y limit -25 25 1
	$jointconstrain "Bip03 Head" z limit -13 30 1

	$jointrotdamping "Bip01 Head" 5
	$jointconstrain "Bip01 Head" x limit -20 20 1
	$jointconstrain "Bip01 Head" y limit -25 25 1
	$jointconstrain "Bip01 Head" z limit -13 30 1
}
