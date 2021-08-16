// Created by Crowbar 0.71

$modelname "scenery/furniture/computer/printer.mdl"

$bodygroup "Body"
{
	studio "printer"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$surfaceprop "plastic"

$cdmaterials "models\scenery\furniture\computer\"

$cbox 0 0 0 0 0 0

$bbox -7.281 -6.9 -1.551 12.545 6.9 13.113

$sequence "idle_off" {
	"printer_anim_idle_off.smd"
	fps 15
}
$sequence "activate" {
	"printer_anim_activate.smd"
	fps 15
}
$sequence "deactivate" {
	"printer_anim_deactivate.smd"
	fps 15
}
$sequence "idle_on" {
	"printer_anim_idle_on.smd"
	fps 15
}
