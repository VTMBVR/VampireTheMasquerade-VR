// Created by Crowbar 0.71

$modelname "scenery/furniture/toileta/toileta.mdl"

$bodygroup "Body"
{
	studio "toileta"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\toileta\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -19.087 -16.837 -19.194 19.404 16.64 20.039

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -19.0868 -16.8374 -19.1938 19.404499 16.640301 20.039301

$sequence "idle" {
	"toileta_anims\idle.smd"
	fps 5
}

$collisionmodel "toileta_physics.smd"
{
	$mass 80
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 4

}
