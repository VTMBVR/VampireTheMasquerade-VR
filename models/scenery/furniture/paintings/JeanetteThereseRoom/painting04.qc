// Created by Crowbar 0.71

$modelname "scenery/furniture/Paintings/JeanetteThereseRoom/Painting04.mdl"

$bodygroup "Body"
{
	studio "Painting04_REF"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$surfaceprop "wood"

$cdmaterials "models\scenery\furniture\Paintings\JeanetteThereseRoom\\"
$cdmaterials "models\scenery\furniture\Paintings\\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -0.205 -26.911 -20.86 0.143 26.904 21.056

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"

$sequence "idle" {
	"painting04_anims\idle.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "painting04_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
