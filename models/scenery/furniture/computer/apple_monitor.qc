// Created by Crowbar 0.71

$modelname "scenery/furniture/computer/apple_monitor.mdl"

$bodygroup "Body"
{
	studio "apple_monitor_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\computer\"

$cbox 0 0 0 0 0 0

$bbox -0.891 -7.464 0 14.869 7.464 12.487

$sequence "only_sequence" {
	"apple_monitor_anim_only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "apple_monitor_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
