// Created by Crowbar 0.71

$modelname "scenery/furniture/computer/keyboard.mdl"

$bodygroup "Body"
{
	studio "keyboard_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\computer\"

$cbox 0 0 0 0 0 0

$bbox -8.437 -3.146 0 8.437 3.146 1.373

$sequence "only_sequence" {
	"keyboard_anim_only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "keyboard_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
