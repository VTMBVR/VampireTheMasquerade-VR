// Created by Crowbar 0.71

$modelname "scenery/furniture/guitar_mockingbird/guitar_mockingbird.mdl"

$bodygroup "Body"
{
	studio "guitar_moc_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\guitar_mockingbird\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -6.659 -8.62 0 7.03 7.595 53.196

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -6.65865 -8.62012 0 7.03011 7.59469 53.195728

$sequence "only_sequence" {
	"guitar_mockingbird_anim_only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "guitar_mockingbird_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
