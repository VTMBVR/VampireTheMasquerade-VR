
$modelname "scenery/furniture/asstatue/asstatue.mdl"

$bodygroup "Body"
{
	studio "asstatue"
}

$lod 30
{
	replacemodel "asstatue.smd" "asstatue_lod1.smd"
}
$lod 60
{
	replacemodel "asstatue.smd" "asstatue_lod2.smd"
}

$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\asstatue\"

$cbox 0 0 0 0 0 0

$bbox -14.271 -10.632 -96.089 14.095 10.63 83.807

$sequence "idle" {
	"asstatue_anim_idle.smd"
	fps 5
}
