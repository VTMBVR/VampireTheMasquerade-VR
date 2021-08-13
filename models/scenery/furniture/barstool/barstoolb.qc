// Created by Crowbar 0.71

$modelname "scenery/furniture/barstool/barstoolb.mdl"

$bodygroup "Body"
{
	studio "barstoolb"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\barstool\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -7.827 -7.988 -16.91 7.77 8.01 15.573

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -7.8273 -7.9882 -16.9097 7.7698 8.01 15.5729

$sequence "idle" {
	"barstoolb_anims\idle.smd"
	fps 5
}

$collisionmodel "barstoolb_physics.smd"
{
	$mass 100
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
