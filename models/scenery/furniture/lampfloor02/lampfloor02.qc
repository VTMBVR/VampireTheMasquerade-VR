// Created by Crowbar 0.71

$modelname "scenery/furniture/LampFloor02/LampFloor02.mdl"

$bodygroup "Body"
{
	studio "LampFloor02_REF"
}

$lod 25
{
	replacemodel "LampFloor02_REF.smd" "LampFloor02_REF_lod1.smd"
}

$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$surfaceprop "metal"

$cdmaterials "models\scenery\furniture\LampFloor02\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -8.957 -8.846 -31.39 9.038 9.149 31.458

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -8.9571 -8.8463 -31.390499 9.0381 9.1489 31.457899

$sequence "idle" {
	"lampfloor02_anim_idle.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "lampfloor02_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
