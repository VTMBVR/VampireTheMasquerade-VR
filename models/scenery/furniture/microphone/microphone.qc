
$modelname "scenery/furniture/microphone/microphone.mdl"

$bodygroup "Body"
{
	studio "microphone"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\microphone\"

$cbox 0 0 0 0 0 0

$bbox -5.472 -5.96 -16.936 6.58 5.916 45.082

$sequence "idle" {
	"microphone_anim_idle.smd"
	fps 5
}

$collisionmodel "microphone_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
