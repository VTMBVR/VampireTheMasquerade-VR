// Created by Crowbar 0.71

$modelname "scenery/furniture/computer/flatscreen_monitor.mdl"

$bodygroup "Body"
{
	studio "flatscreen_monitor_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\computer\"

$cbox 0 0 0 0 0 0

$bbox -6.745 -13 0 3.283 13 26.619

$sequence "only_sequence" {
	"flatscreen_monitor_anim_only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "flatscreen_monitor_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
