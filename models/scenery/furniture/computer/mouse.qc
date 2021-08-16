// Created by Crowbar 0.71

$modelname "scenery/furniture/computer/mouse.mdl"

$bodygroup "Body"
{
	studio "mouse_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\computer\"

$cbox 0 0 0 0 0 0

$bbox -1.64 -2.308 0 1.64 2.484 1.096

$sequence "only_sequence" {
	"mouse_anim_only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "mouse_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
