
$modelname "scenery/furniture/bartable/bartable.mdl"

$bodygroup "Body"
{
	studio "bartable"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\bartable\"

$texturegroup "skinfamilies"
{
	{ "bartable"       }
	{ "bartable_snake" }
}

$cbox 0 0 0 0 0 0

$bbox -15.66 -15.901 -18.387 15.66 15.901 18.387

$sequence "idle" {
	"bartable_anim_idle.smd"
	fps 5
}
