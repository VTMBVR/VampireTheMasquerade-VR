// Created by Crowbar 0.71

$modelname "scenery/furniture/computer/monitor_useable.mdl"

$bodygroup "Body"
{
	studio "monitor_useable_r"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\computer\"

$texturegroup "skinfamilies"
{
	{ }
	{ }
}

$attachment "screen" "screen" 0 0 0
$attachment "screen_axis" "screen_axis" -0.000001 0 0

$cbox 0 0 0 0 0 0

$bbox -14.432 -11.732 0 10.372 11.732 24.152

$sequence "only_sequence" {
	"monitor_useable_anim_only_sequence.smd"
	fps 30
}

$collisionmodel "monitor_useable_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
