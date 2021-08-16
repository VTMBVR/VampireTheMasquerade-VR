// Created by Crowbar 0.71

$modelname "scenery/furniture/computer/computer_monitor.mdl"

$bodygroup "Body"
{
	studio "computer_monitor_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\computer\"

$texturegroup "skinfamilies"
{
	{ "computer_monitor"  }
	{ "computer_monitorb" }
}

$cbox 0 0 0 0 0 0

$bbox -14.432 -11.732 0 10.372 11.732 24.152

$sequence "only_sequence" {
	"computer_monitor_anim_only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "computer_monitor_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
