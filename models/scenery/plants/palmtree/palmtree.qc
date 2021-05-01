// Created by Crowbar 0.71

$modelname "scenery/plants/palmtree/palmtree.mdl"

$bodygroup "Body"
{
	studio "palmtree"
}

$lod 65
{
	replacemodel "palmtree.smd" "palmtree_lod1.smd"
}
$lod 90
{
	replacemodel "palmtree.smd" "palmtree_lod2.smd"
}

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$surfaceprop "wood"

$cdmaterials "models\scenery\plants\palmtree\"

$cbox 0 0 0 0 0 0

$bbox -97.468 -80.385 -121.093 57.99 57.052 251.545

$sequence "idle" {
	"palmtree_anims\idle.smd"
	fps 30
}

$collisionmodel "palmtree_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
