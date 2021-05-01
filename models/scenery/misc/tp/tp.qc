// Created by Crowbar 0.71

$modelname "scenery/misc/tp/tp.mdl"

$bodygroup "Body"
{
	studio "tp_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\misc\tp\"

$cbox 0 0 0 0 0 0

$bbox 0 -3.381 -5.56 4.184 3.377 5.56

$sequence "only_sequence" {
	"tp_anims\only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "tp_physics.smd"
{
	$mass 1.4
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
