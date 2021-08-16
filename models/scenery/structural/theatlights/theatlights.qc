// Created by Crowbar 0.71

$modelname "scenery/structural/theatlights/theatlights.mdl"

$bodygroup "Body"
{
	studio "theatlights"
}


$staticprop

$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\structural\theatlights\"

$texturegroup "skinfamilies"
{
	{ "lighta"    }
	{ "lightaoff" }
}

$cbox 0 0 0 0 0 0

$bbox -2.049 -20.03 -3.043 2.07 19.955 3.07

$sequence "idle" {
	"theatlights_anim_idle.smd"
	activity "act_idle" 1
	fps 30
}
