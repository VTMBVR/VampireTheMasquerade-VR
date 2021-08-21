
$modelname "scenery/misc/cash_register/cash_register.mdl"

$bodygroup "Body"
{
	studio "cashregister_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\misc\cash_register\\"

$cbox 0 0 0 0 0 0

$bbox -11.059 -8.536 -8.841 12.632 8.536 6.476

$sequence "only_sequence" {
	"cash_register_anim_only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "cash_register_physics.smd"
{
	$mass 50
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
