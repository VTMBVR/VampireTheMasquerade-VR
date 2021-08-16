// Created by Crowbar 0.71

$modelname "scenery/furniture/MirrorMetal/MirrorMetal.mdl"

$bodygroup "Body"
{
	studio "MirrorMetal_REF"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$surfaceprop "metal"

$cdmaterials "models\scenery\furniture\MirrorMetal\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -0.713 -11.524 -26.117 0.787 11.361 25.954

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -0.7134 -11.5236 -26.116699 0.7866 11.3608 25.9543

$sequence "idle" {
	"mirrormetal_anim_idle.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "mirrormetal_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
