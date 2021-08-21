
$modelname "scenery/structural/ceilinglight/ceilinglight.mdl"

$bodygroup "Body"
{
	studio "ceilinglight"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\structural\ceilinglight\"

$texturegroup "skinfamilies"
{
	{ "ceilinglight"    }
	{ "ceilinglightoff" }
}

$cbox 0 0 0 0 0 0

$bbox -4.965 -5.073 0 4.938 5.084 1.5

$sequence "idle" {
	"ceilinglight_anim_idle.smd"
	fps 5
}
