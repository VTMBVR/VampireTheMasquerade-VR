// Created by Crowbar 0.71

$modelname "scenery/furniture/MailBoxes/MailBox.mdl"

$bodygroup "Body"
{
	studio "MailBox_REF"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$surfaceprop "metal"

$cdmaterials "models\scenery\furniture\MailBoxes\"

$texturegroup "skinfamilies"
{
	{ "MBDoor_505" }
	{ "MBDoor_506" }
	{ "MBDoor_507" }
	{ "MBDoor_508" }
	{ "MBDoor_1"   }
	{ "MBDoor_2"   }
	{ "MBDoor_3"   }
	{ "MBDoor_4"   }
	{ "MBDoor_5"   }
	{ "MBDoor_6"   }
}

$cbox 0 0 0 0 0 0

$bbox -6.295 -3.99 -3.983 6.342 4.01 4.017

$sequence "idle" {
	"mailbox_anims\idle.smd"
	activity "ACT_IDLE" 1
	fps 30
}
$sequence "Open" {
	"mailbox_anims\Open.smd"
	activity "ACT_Open" 1
	fps 30
}
$sequence "Close" {
	"mailbox_anims\Close.smd"
	activity "ACT_Close" 1
	fps 30
}

$collisionmodel "mailbox_physics.smd"
{
	$mass 100
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
