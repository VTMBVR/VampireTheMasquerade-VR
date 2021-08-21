
$modelname "scenery/misc/Cash_Register/Cash_Registerdrawr.mdl"

$bodygroup "Body"
{
	studio "cash_registerdrawr_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\misc\Cash_Register\"

$cbox 0 0 0 0 0 0

$bbox -7.08 -7.967 -8.245 12.632 7.967 0

$sequence "only_sequence" {
	"cash_registerdrawr_anim_only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "cash_registerdrawr_physics.smd"
{
	$mass 0
	$inertia 1
	$damping 1
	$rotdamping 1
	$rootbone " "

}
