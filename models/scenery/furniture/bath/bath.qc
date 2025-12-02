// Created by Crowbar 0.74

$modelname "scenery/furniture/bath/bath.mdl"

$bodygroup "Body"
{
	studio "bath"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\bath\"

$cbox 0 0 0 0 0 0

$bbox -71.555 -43.626 -0.094 41.907 71.391 43.509

$sequence "only_sequence" {
	"bath_anims\only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "bath_physics.smd"
{
	$mass 300
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 5

}
