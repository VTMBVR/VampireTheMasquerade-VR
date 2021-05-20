// Created by Crowbar 0.71

$modelname "scenery/furniture/chair/office_chair.mdl"

$bodygroup "Body"
{
	studio "office_chair_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\chair\\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -15.328 -15.328 0 15.328 15.328 42.896

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -15.32779 -15.32779 -0.00049 15.32779 15.32779 42.895851

$sequence "only_sequence" {
	"office_chair_anims\only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "office_chair_physics.smd"
{
	$mass 10
	$inertia 10
	$damping 1
	$rotdamping 0.01
	$rootbone " "

}
