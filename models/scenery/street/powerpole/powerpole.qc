// Created by Crowbar 0.71

$modelname "scenery/street/powerpole/powerpole.mdl"

$bodygroup "Body"
{
	studio "powerpole"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\street\powerpole\"

$cbox 0 0 0 0 0 0

$bbox -48.334 -10.191 -201.04 49.349 9.527 239.932

$sequence "idle" {
	"powerpole_anims\idle.smd"
	fps 5
}

$collisionmodel "powerpole_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 2

}
