// Created by Crowbar 0.71

$modelname "scenery/furniture/computer/computer_monitor_dane.mdl"

$bodygroup "Body"
{
	studio "computer_monitor_dane_r"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\scenery\furniture\computer\"

$texturegroup "skinfamilies"
{
	{ "screendane01"  }
	{ "ScreenDane02"  }
	{ "ScreenDane03"  }
	{ "ScreenDaneOFF" }
}

$cbox 0 0 0 0 0 0

$bbox -20.285 -11.732 0 4.519 11.732 24.152

$sequence "only_sequence" {
	"computer_monitor_dane_anim_only_sequence.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$collisionmodel "computer_monitor_dane_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
