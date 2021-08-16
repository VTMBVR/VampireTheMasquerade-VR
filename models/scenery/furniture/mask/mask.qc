// Created by Crowbar 0.71

$modelname "scenery/furniture/Mask/Mask.mdl"

$bodygroup "Body"
{
	studio "Mask_REF"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$surfaceprop "metal"

$cdmaterials "models\scenery\furniture\Mask\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -2.054 -5.675 -10.433 2.023 5.778 10.42

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -2.0543 -5.6746 -10.4327 2.0229 5.7777 10.42

$sequence "idle" {
	"mask_anim_idle.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "mask_physics.smd"
{
	$mass 2
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
