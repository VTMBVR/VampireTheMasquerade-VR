// Created by Crowbar 0.71

$modelname "scenery/furniture/Paintings/JeanetteThereseRoom/Painting03.mdl"

$bodygroup "Body"
{
	studio "Painting03_REF"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$surfaceprop "wood"

$cdmaterials "models\scenery\furniture\Paintings\JeanetteThereseRoom\\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -0.205 -26.911 -22.86 0.143 26.904 23.056

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"

$sequence "idle" {
	"painting03_anims\idle.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "painting03_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
