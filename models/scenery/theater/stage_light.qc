// Created by Crowbar 0.71

$modelname "scenery/theater/stage_light.mdl"

$bodygroup "Body"
{
	studio "stage_light"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\theater\\"

$texturegroup "skinfamilies"
{
	{ "stage_light"     }
	{ "stage_light_off" }
}

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -13.689 -13.917 -15.904 13.68 13.942 15.904

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -13.6891 -13.9175 -15.9038 13.6804 13.9422 15.9038

$sequence "idle" {
	"stage_light_anim_idle.smd"
	fps 5
}
