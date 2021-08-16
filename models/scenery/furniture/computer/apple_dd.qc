// Created by Crowbar 0.71

$modelname "scenery/furniture/computer/apple_dd.mdl"

$bodygroup "Body"
{
	studio "apple_dd_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\computer\"

$cbox 0 0 0 0 0 0

$bbox -3 -4.107 0 3 4.107 2.845

$sequence "only_sequence" {
	"apple_dd_anim_only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "apple_dd_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
