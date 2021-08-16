// Created by Crowbar 0.71

$modelname "scenery/misc/drums/drum1.mdl"

$bodygroup "Body"
{
	studio "drum1_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\misc\drums\"
$cdmaterials "models\scenery\furniture\drum_kit\"

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -24.926 -36.196 -0.253 24.926 36.196 51.191

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -24.92606 -36.195541 -0.25335 24.926062 36.195541 51.191078

$sequence "only_sequence" {
	"drum1_anim_only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "drum1_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
