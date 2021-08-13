// Created by Crowbar 0.71

$modelname "scenery/furniture/Paintings/JeanetteThereseRoom/Painting05.mdl"

$bodygroup "Body"
{
	studio "Painting05_REF"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$surfaceprop "wood"

$cdmaterials "models\scenery\furniture\Paintings\JeanetteThereseRoom\\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox 0 -70.74 -95.882 2.455 70.74 95.882

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" 0 -70.739799 -95.8815 2.454803 70.739799 95.8815

$sequence "idle" {
	"painting05_anims\idle.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "painting05_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
