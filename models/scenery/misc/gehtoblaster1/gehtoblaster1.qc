// Created by Crowbar 0.71

$modelname "scenery/misc/GehtoBlaster1/GehtoBlaster1.mdl"

$bodygroup "Body"
{
	studio "GehtoBlaster1_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\misc\GehtoBlaster1\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -5.326 -17.561 0 5.326 17.528 13.818

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -5.32587 -17.56135 0 5.325871 17.528339 13.8176

$sequence "only_sequence" {
	"gehtoblaster1_anims\only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "gehtoblaster1_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
