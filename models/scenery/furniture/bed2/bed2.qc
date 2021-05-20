// Created by Crowbar 0.71

$modelname "scenery/furniture/bed2/bed2.mdl"

$bodygroup "Body"
{
	studio "bed2_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\bed2\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -38.504 -86.571 -32.192 5.848 25.182 32.192

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -38.503719 -86.571098 -32.192162 5.847679 25.18195 32.192162

$sequence "only_sequence" {
	"bed2_anims\only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "bed2_physics.smd"
{
	$mass 60
	$inertia 1
	$damping 1
	$rotdamping 1
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
