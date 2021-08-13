// Created by Crowbar 0.71

$modelname "scenery/furniture/fancystandinglamp/fancystandinglamp.mdl"

$bodygroup "Body"
{
	studio "fancystandinglamp_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\fancystandinglamp\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -12.742 -12.742 -0.184 12.742 12.742 97.523

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -12.741981 -12.741981 -0.18437 12.741981 12.741981 97.52256

$sequence "idle" {
	"fancystandinglamp_anim_idle.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "fancystandinglamp_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
