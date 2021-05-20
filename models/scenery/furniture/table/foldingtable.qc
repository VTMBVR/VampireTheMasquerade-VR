// Created by Crowbar 0.71

$modelname "scenery/furniture/table/foldingtable.mdl"

$bodygroup "Body"
{
	studio "foldingtable_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\table\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -16.507 -36.148 0 16.507 36.148 33.481

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -16.507261 -36.148071 0 16.507261 36.14806 33.48074

$sequence "idle" {
	"foldingtable_anims\idle.smd"
	fps 5
}

$collisionmodel "foldingtable_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
