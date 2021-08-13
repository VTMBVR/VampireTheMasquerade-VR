// Created by Crowbar 0.71

$modelname "scenery/structural/ashandrail/ashandrail.mdl"

$bodygroup "Body"
{
	studio "ashandrail"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\structural\handraila\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -317.922 -135.577 -75.986 317.855 135.53 76.031

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -317.921997 -135.577316 -75.985901 317.855194 135.5298 76.031303

$sequence "idle" {
	"ashandrail_anims\idle.smd"
	fps 5
}

$collisionmodel "ashandrail_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
