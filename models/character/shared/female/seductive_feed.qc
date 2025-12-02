// Created by Crowbar 0.74

$modelname "character/shared/female/seductive_feed.mdl"

$bodygroup "sharedbones"
{
	studio "sharedbones"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\error\"

$attachment "0" "Bip01 R Hand" 0 0.000002 0

$cbox 0 0 0 0 0 0

$bbox -73.156 -58.183 -5.72 37.611 45.269 105.707

$hboxset "default"
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 3 "Bip01 Spine" -2.321735 -2.017924 -1.500012 5.537524 1.726916 1.499999
$hbox 2 "Bip01 Spine1" 0 -1.420009 -1.229515 5.672616 1.420059 1.229489
$hbox 2 "Bip01 Spine2" 0 -1.059931 -4.032217 4.187233 1.875137 4.032186
$hbox 1 "Bip01 Neck" -0.966692 -0.918467 -1.200015 3.278767 0.918489 1.199985
$hbox 1 "Bip01 Head" -0.134687 -2.790778 -2.642133 5.077952 3.43943 2.685879
$hbox 4 "Bip01 L UpperArm" 0 -0.976229 -1.493653 9.487508 1.123536 1.236663
$hbox 4 "Bip01 L Forearm" 0 -0.921435 -1.145984 9.767428 0.914308 1.279667
$hbox 4 "Bip01 L Hand" 0 -0.755993 -1.508253 3.497797 1.102922 1.335726
$hbox 5 "Bip01 R UpperArm" 0 -1.01801 -1.28972 9.487507 1.170455 1.55585
$hbox 5 "Bip01 R Forearm" 0 -0.963359 -1.33512 9.767428 0.956262 1.201495
$hbox 5 "Bip01 R Hand" 0 -0.693911 -1.335819 3.497827 1.109895 1.508166
$hbox 6 "Bip01 L Thigh" 0 -1.586619 -1.587608 18.385206 1.476555 1.899763
$hbox 6 "Bip01 L Calf" 0 -1.585488 -1.658666 18.080185 1.508031 1.447099
$hbox 6 "Bip01 L Foot" 0 0 -1.048964 3.639622 4.452506 1.04894
$hbox 7 "Bip01 R Thigh" 0 -1.586626 -1.899765 18.38521 1.47655 1.587598
$hbox 7 "Bip01 R Calf" 0 -1.585403 -1.446941 18.080187 1.507822 1.658523
$hbox 7 "Bip01 R Foot" 0 0 -1.071496 3.639623 4.458592 1.071409

$sequence "seductive_attacker_shortvictim_front_engage" {
	"seductive_feed_anims\seductive_attacker_shortvictim_front_engage.smd"
	activity "ACT_SEDUCTIVE_ENGAGE_ATTACKER_SHORTVICTIM_FRONT" 1
	fps 30
}
$sequence "seductive_attacker_shortvictim_front_feed_loop" {
	"seductive_feed_anims\seductive_attacker_shortvictim_front_feed_loop.smd"
	activity "ACT_SEDUCTIVE_LOOP_ATTACKER_SHORTVICTIM_FRONT" 1
	fps 30
}
$sequence "seductive_attacker_shortvictim_front_release" {
	"seductive_feed_anims\seductive_attacker_shortvictim_front_release.smd"
	activity "ACT_SEDUCTIVE_RELEASE_ATTACKER_SHORTVICTIM_FRONT" 1
	fps 30
}
$sequence "seductive_attacker_shortvictim_front_release_standing" {
	"seductive_feed_anims\seductive_attacker_shortvictim_front_release_standing.smd"
	activity "ACT_SEDUCTIVE_RELEASE_TO_MEZ_ATTACKER_SHORTVICTIM_FRONT" 1
	fps 30
}
$sequence "seductive_attacker_tallvictim_front_engage" {
	"seductive_feed_anims\seductive_attacker_tallvictim_front_engage.smd"
	activity "ACT_SEDUCTIVE_ENGAGE_ATTACKER_TALLVICTIM_FRONT" 1
	fps 30
}
$sequence "seductive_attacker_tallvictim_front_feed_loop" {
	"seductive_feed_anims\seductive_attacker_tallvictim_front_feed_loop.smd"
	activity "ACT_SEDUCTIVE_LOOP_ATTACKER_TALLVICTIM_FRONT" 1
	fps 30
}
$sequence "seductive_attacker_tallvictim_front_release" {
	"seductive_feed_anims\seductive_attacker_tallvictim_front_release.smd"
	activity "ACT_SEDUCTIVE_RELEASE_ATTACKER_TALLVICTIM_FRONT" 1
	fps 30
}
$sequence "seductive_attacker_tallvictim_front_release_standing" {
	"seductive_feed_anims\seductive_attacker_tallvictim_front_release_standing.smd"
	activity "ACT_SEDUCTIVE_RELEASE_TO_MEZ_ATTACKER_TALLVICTIM_FRONT" 1
	fps 30
}
$sequence "seductive_victim_shortattacker_front_engage" {
	"seductive_feed_anims\seductive_victim_shortattacker_front_engage.smd"
	activity "ACT_SEDUCTIVE_ENGAGE_VICTIM_SHORTATTACKER_FRONT" 1
	fps 30
}
$sequence "seductive_victim_shortattacker_front_feed_loop" {
	"seductive_feed_anims\seductive_victim_shortattacker_front_feed_loop.smd"
	activity "ACT_SEDUCTIVE_LOOP_VICTIM_SHORTATTACKER_FRONT" 1
	fps 30
}
$sequence "seductive_victim_shortattacker_front_release" {
	"seductive_feed_anims\seductive_victim_shortattacker_front_release.smd"
	activity "ACT_SEDUCTIVE_RELEASE_VICTIM_SHORTATTACKER_FRONT" 1
	fps 30
}
$sequence "seductive_victim_shortattacker_front_release_standing" {
	"seductive_feed_anims\seductive_victim_shortattacker_front_release_standing.smd"
	activity "ACT_SEDUCTIVE_RELEASE_TO_MEZ_VICTIM_SHORTATTACKER_FRONT" 1
	fps 30
}
$sequence "seductive_victim_tallattacker_front_engage" {
	"seductive_feed_anims\seductive_victim_tallattacker_front_engage.smd"
	activity "ACT_SEDUCTIVE_ENGAGE_VICTIM_TALLATTACKER_FRONT" 1
	fps 30
}
$sequence "seductive_victim_tallattacker_front_feed_loop" {
	"seductive_feed_anims\seductive_victim_tallattacker_front_feed_loop.smd"
	activity "ACT_SEDUCTIVE_LOOP_VICTIM_TALLATTACKER_FRONT" 1
	fps 30
}
$sequence "seductive_victim_tallattacker_front_release" {
	"seductive_feed_anims\seductive_victim_tallattacker_front_release.smd"
	activity "ACT_SEDUCTIVE_RELEASE_VICTIM_TALLATTACKER_FRONT" 1
	fps 30
}
$sequence "seductive_victim_tallattacker_front_release_standing" {
	"seductive_feed_anims\seductive_victim_tallattacker_front_release_standing.smd"
	activity "ACT_SEDUCTIVE_RELEASE_TO_MEZ_VICTIM_TALLATTACKER_FRONT" 1
	fps 30
}
$sequence "seductive_released_idle_attacker" {
	"seductive_feed_anims\seductive_released_idle_attacker.smd"
	activity "ACT_SEDUCTIVE_RELEASED_IDLE_ATTACKER" 1
	fps 30
}
