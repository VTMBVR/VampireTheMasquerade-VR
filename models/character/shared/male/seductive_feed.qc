// Created by Crowbar 0.74

$modelname "character/shared/male/seductive_feed.mdl"

$bodygroup "sharedbones"
{
	studio "sharedbones"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\error\"

$attachment "0" "Bip01 R Hand" 0 0 0

$cbox 0 0 0 0 0 0

$bbox -74.368 -61.411 -6.847 37.071 46.182 110.052

$hboxset "default"
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 3 "Bip01 Spine" -1.839222 -2.616589 -1.500051 5.168398 1.598824 1.500059
$hbox 2 "Bip01 Spine1" 0 -1.704268 -1.500062 6.087786 1.704197 1.499948
$hbox 2 "Bip01 Spine2" 0 -1.181116 -1.500076 7.561927 2.415054 1.499934
$hbox 1 "Bip01 Neck" -0.033278 -1.980999 -1.727836 3.89553 1.981066 1.727836
$hbox 1 "Bip01 Head" -0.125812 -3.663472 -3.330523 7.625816 3.818098 3.329498
$hbox 4 "Bip01 L UpperArm" 0 -1.485506 -2.419901 10.293986 1.899892 2.010407
$hbox 4 "Bip01 L Forearm" 0 -1.949527 -2.093008 9.198424 1.895152 2.336775
$hbox 4 "Bip01 L Hand" -0.132413 -2.204938 -1.890588 5.006375 2.204712 1.89062
$hbox 5 "Bip01 R UpperArm" 0 -1.485259 -2.010119 10.293987 1.899691 2.419653
$hbox 5 "Bip01 R Forearm" 0 -1.949457 -2.336717 9.198427 1.895127 2.093052
$hbox 5 "Bip01 R Hand" -0.132211 -2.204826 -1.890597 5.006474 2.204901 1.890611
$hbox 6 "Bip01 L Thigh" 0 -1.440911 -1.601701 17.830053 1.784456 2.001217
$hbox 6 "Bip01 L Calf" 0 -1.549742 -1.47103 17.69693 1.733048 1.528979
$hbox 6 "Bip01 L Foot" 0 0 -1.500043 4.150375 7.381025 1.499969
$hbox 7 "Bip01 R Thigh" 0 -1.440914 -2.001153 17.830051 1.784446 1.601642
$hbox 7 "Bip01 R Calf" 0 -1.549751 -1.529096 17.696934 1.733039 1.470914
$hbox 7 "Bip01 R Foot" 0 0 -1.500109 4.150389 7.381025 1.499904

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
