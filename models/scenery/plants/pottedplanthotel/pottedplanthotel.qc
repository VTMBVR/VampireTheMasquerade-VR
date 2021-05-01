// Created by Crowbar 0.71

$modelname "scenery/plants/pottedplanthotel/pottedplanthotel.mdl"

$bodygroup "Body"
{
	studio "pottedplanthotel_lod_r"
}

$lod 20
{
	replacemodel "pottedplanthotel_lod_r.smd" "pottedplanthotel_lod_r_lod1.smd"
}

$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\plants\pottedplanthotel\"

$cbox 0 0 0 0 0 0

$bbox -12.902 -11.402 -0.06 14.074 13.32 81.375

$sequence "only_sequence" {
	"pottedplanthotel_anims\only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "pottedplanthotel_physics.smd"
{
	$mass 100
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
