// Created by Crowbar 0.71

$modelname "scenery/furniture/computer/apple.mdl"

$bodygroup "Body"
{
	studio "apple_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\computer\"

$cbox 0 0 0 0 0 0

$bbox -10.447 -7.182 -0.381 8.691 14.457 4.387

$sequence "only_sequence" {
	"apple_anim_only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "apple_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
