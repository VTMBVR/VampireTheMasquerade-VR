// Created by Crowbar 0.71

$modelname "scenery/furniture/Paintings/JeanetteThereseRoom/Painting01.mdl"

$bodygroup "Body"
{
	studio "Painting01_REF"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$surfaceprop "wood"

$cdmaterials "models\scenery\furniture\Paintings\JeanetteThereseRoom\\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -0.205 -19.663 -25.812 0.143 19.656 26.007

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"

$sequence "idle" {
	"painting01_anims\idle.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "painting01_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
