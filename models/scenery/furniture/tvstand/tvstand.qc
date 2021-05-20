// Created by Crowbar 0.71

$modelname "scenery/furniture/TVStand/TVStand.mdl"

$bodygroup "Body"
{
	studio "TVStand_REF"
}

$lod 25
{
	replacemodel "TVStand_REF.smd" "TVStand_REF_lod1.smd"
}

$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$surfaceprop "wood"

$cdmaterials "models\scenery\furniture\Dresser\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -14.626 -23.39 -18.145 14.624 23.338 18.04

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -14.626401 -23.3904 -18.145201 14.623601 23.337601 18.0401

$sequence "idle" {
	"tvstand_anims\idle.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "tvstand_physics.smd"
{
	$mass 100
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
