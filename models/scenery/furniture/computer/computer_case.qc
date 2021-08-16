// Created by Crowbar 0.71

$modelname "scenery/furniture/computer/computer_case.mdl"

$bodygroup "Body"
{
	studio "computer_case_r"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\computer\"

$cbox 0 0 0 0 0 0

$bbox -15.71 -5.208 0 12.143 5.208 23.989

$sequence "only_sequence" {
	"computer_case_anim_only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "computer_case_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
