// Created by Crowbar 0.71

$modelname "scenery/furniture/computer/apple_stick.mdl"

$bodygroup "Body"
{
	studio "apple_stick_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\computer\"

$cbox 0 0 0 0 0 0

$bbox -1.553 -1.553 0 3.553 3.553 6.362

$sequence "only_sequence" {
	"apple_stick_anim_only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "apple_stick_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
