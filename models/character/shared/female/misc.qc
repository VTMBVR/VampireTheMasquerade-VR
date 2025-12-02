// Created by Crowbar 0.74

$modelname "character/shared/female/misc.mdl"

$bodygroup "sharedbones"
{
	studio "sharedbones"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\error\"

$attachment "0" "Bip01 R Hand" 0 0.000002 0

$cbox 0 0 0 0 0 0

$bbox -48.077 -53.44 -6.33 57.429 41.197 93.44

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

$sequence "hit_head" {
	"misc_anims\hit_head_back.smd"
	"misc_anims\hit_head_left.smd"
	"misc_anims\hit_head_front.smd"
	"misc_anims\hit_head_right.smd"
	"misc_anims\hit_head_back.smd"
	activity "ACT_HIT_HEAD" 1
	fps 30
}
$sequence "hit_torso" {
	"misc_anims\hit_torso_back.smd"
	"misc_anims\hit_torso_back_left.smd"
	"misc_anims\hit_torso_left.smd"
	"misc_anims\hit_torso_front_left.smd"
	"misc_anims\hit_torso_front.smd"
	"misc_anims\hit_torso_front_right.smd"
	"misc_anims\hit_torso_right.smd"
	"misc_anims\hit_torso_back_right.smd"
	"misc_anims\hit_torso_back.smd"
	activity "ACT_HIT_TORSO" 1
	fps 30
}
$sequence "hit_stepback" {
	"misc_anims\hit_stepback.smd"
	activity "ACT_HIT_STEPBACK" 1
	fps 30
}
$sequence "panic_run" {
	"misc_anims\panic_run.smd"
	activity "ACT_PANIC_RUN" 100
	fps 20
}
$sequence "panic_run_trip" {
	"misc_anims\panic_run_trip.smd"
	activity "ACT_PANIC_RUN_TRIP" 100
	fps 20
}
$sequence "panic_run_lookleft" {
	"misc_anims\panic_run_lookleft.smd"
	activity "ACT_PANIC_RUN_LOOKLEFT" 100
	fps 20
}
$sequence "panic_run_lookright" {
	"misc_anims\panic_run_lookright.smd"
	activity "ACT_PANIC_RUN_LOOKRIGHT" 100
	fps 20
}
$sequence "dance01" {
	"misc_anims\dance01.smd"
	activity "ACT_DANCE" 10
	fps 30
}
$sequence "dance02" {
	"misc_anims\dance02.smd"
	activity "ACT_DANCE" 10
	fps 30
}
$sequence "dance03" {
	"misc_anims\dance03.smd"
	activity "ACT_DANCE" 10
	fps 30
}
$sequence "disposition_beatendown" {
	"misc_anims\disposition_beatendown.smd"
	activity "ACT_DISPOSITION_AFRAID" 1
	fps 30
}
$sequence "disposition_coy" {
	"misc_anims\disposition_coy.smd"
	activity "ACT_DISPOSITION_COY" 1
	fps 30
}
$sequence "disposition_jittery" {
	"misc_anims\disposition_jittery.smd"
	activity "ACT_DISPOSITION_NERVOUS" 1
	fps 30
}
$sequence "disposition_pissed" {
	"misc_anims\disposition_pissed.smd"
	activity "ACT_DISPOSITION_ANGRY" 1
	fps 30
}
$sequence "sobbing" {
	"misc_anims\sobbing.smd"
	activity "ACT_DISPOSITION_CRYING" 1
	fps 30
}
$sequence "stunned" {
	"misc_anims\stunned.smd"
	activity "ACT_DISPOSITION_STUNNED" 1
	fps 30
}
$sequence "stunned_recover" {
	"misc_anims\stunned_recover.smd"
	fps 30
}
$sequence "mesmerized_pre_into" {
	"misc_anims\shared_pre_into.smd"
	activity "ACT_DISPOSITION_MESMERIZED_PRE_INTO" 1
	fps 30
}
$sequence "mesmerized" {
	"misc_anims\mesmerized.smd"
	activity "ACT_DISPOSITION_MESMERIZED" 1
	fps 30
}
$sequence "sleep_pre_fall_into" {
	"misc_anims\shared_pre_into.smd"
	activity "ACT_SLEEP_PRE_FALL_INTO" 1
	fps 30
}
$sequence "sleep_fall_into" {
	"misc_anims\sleep_fall_into.smd"
	activity "ACT_SLEEP_FALL_INTO" 1
	fps 30
}
$sequence "sleep_idle" {
	"misc_anims\sleep_idle.smd"
	activity "ACT_SLEEP_IDLE" 1
	fps 30
}
$sequence "sleep_getup" {
	"misc_anims\sleep_getup.smd"
	activity "ACT_SLEEP_GETUP" 1
	fps 30
}
$sequence "pre_choking" {
	"misc_anims\pre_choking.smd"
	activity "ACT_PRE_CHOKING" 1
	fps 30
}
$sequence "choking" {
	"misc_anims\choking.smd"
	activity "ACT_CHOKING" 1
	fps 30
}
$sequence "madness_pre_into" {
	"misc_anims\madness_pre_into.smd"
	activity "ACT_MADNESS_PRE_INTO" 1
	fps 30
}
$sequence "madness_into" {
	"misc_anims\madness_into.smd"
	activity "ACT_MADNESS_INTO" 1
	fps 30
}
$sequence "madness_idle" {
	"misc_anims\madness_idle.smd"
	activity "ACT_MADNESS_IDLE" 1
	fps 30
}
$sequence "madness_getout" {
	"misc_anims\madness_getout.smd"
	activity "ACT_MADNESS_GETOUT" 1
	fps 30
}
$sequence "comatose_pre_into" {
	"misc_anims\comatose_pre_into.smd"
	activity "ACT_COMATOSE_PRE_INTO" 1
	fps 30
}
$sequence "comatose_into" {
	"misc_anims\comatose_into.smd"
	activity "ACT_COMATOSE_INTO" 1
	fps 30
}
$sequence "comatose_idle" {
	"misc_anims\comatose_idle.smd"
	activity "ACT_COMATOSE_IDLE" 1
	fps 30
}
$sequence "comatose_getout" {
	"misc_anims\comatose_getout.smd"
	activity "ACT_COMATOSE_GETOUT" 1
	fps 30
}
$sequence "sobbing_pre_into" {
	"misc_anims\shared_pre_into.smd"
	activity "ACT_SOBBING_PRE_INTO" 1
	fps 30
}
$sequence "sobbing_into" {
	"misc_anims\sobbing_into.smd"
	activity "ACT_SOBBING_INTO" 1
	fps 30
}
$sequence "sobbing_idle" {
	"misc_anims\sobbing_idle.smd"
	activity "ACT_SOBBING_IDLE" 1
	fps 30
}
$sequence "sobbing_outof" {
	"misc_anims\sobbing_outof.smd"
	activity "ACT_SOBBING_GETOUT" 1
	fps 30
}
$sequence "theft_pre_into" {
	"misc_anims\theft_pre_into.smd"
	activity "ACT_THEFTPAIN_PRE_INTO" 1
	fps 30
}
$sequence "theft_into" {
	"misc_anims\theft_into.smd"
	activity "ACT_THEFTPAIN_INTO" 1
	fps 30
}
$sequence "theft_idle" {
	"misc_anims\theft_idle.smd"
	activity "ACT_THEFTPAIN_IDLE" 1
	fps 30
}
$sequence "theft_outof" {
	"misc_anims\theft_outof.smd"
	activity "ACT_THEFTPAIN_GETOUT" 1
	fps 30
}
$sequence "cauldron" {
	"misc_anims\cauldron.smd"
	activity "ACT_CAULDRON_PAIN" 1
	fps 30
}
$sequence "cauldron_pre" {
	"misc_anims\shared_pre_into.smd"
	activity "ACT_CAULDRON_PRE" 1
	fps 30
}
$sequence "cauldron_death" {
	"misc_anims\cauldron_death.smd"
	activity "ACT_CAULDRON_DEATH" 1
	fps 30
}
$sequence "burning_into" {
	"misc_anims\burning_into.smd"
	activity "ACT_BURNING_INTO" 1
	fps 30
}
$sequence "burning_loop" {
	"misc_anims\burning_loop.smd"
	activity "ACT_BURNING_LOOP" 1
	fps 30
}
$sequence "burning_outof" {
	"misc_anims\burning_outof.smd"
	activity "ACT_BURNING_OUTOF" 1
	fps 30
}
$sequence "laugh_pre_into" {
	"misc_anims\shared_pre_into.smd"
	activity "ACT_LAUGH_PRE_INTO" 1
	fps 30
}
$sequence "laugh_into" {
	"misc_anims\laugh_into.smd"
	activity "ACT_LAUGH_INTO" 1
	fps 30
}
$sequence "laugh_idle" {
	"misc_anims\laugh_idle.smd"
	activity "ACT_LAUGH_IDLE" 1
	fps 30
}
$sequence "laugh_getout" {
	"misc_anims\laugh_getout.smd"
	activity "ACT_LAUGH_GETOUT" 1
	fps 30
}
$sequence "bleedingeyes_pre_into" {
	"misc_anims\bleedingeyes_pre_into.smd"
	activity "ACT_BLEEDINGEYES_PRE_INTO" 1
	fps 30
}
$sequence "bleedingeyes_into" {
	"misc_anims\bleedingeyes_into.smd"
	activity "ACT_BLEEDINGEYES_INTO" 1
	fps 30
}
$sequence "bleedingeyes_idle" {
	"misc_anims\bleedingeyes_idle.smd"
	activity "ACT_BLEEDINGEYES_IDLE" 1
	fps 30
}
$sequence "bleedingeyes_getout" {
	"misc_anims\bleedingeyes_getout.smd"
	activity "ACT_BLEEDINGEYES_GETOUT" 1
	fps 30
}
$sequence "berserk_into" {
	"misc_anims\bleedingeyes_into.smd"
	activity "ACT_BERSERK_INTO" 1
	fps 30
}
$sequence "vomit_pre_into" {
	"misc_anims\shared_pre_into.smd"
	activity "ACT_VOMIT_PRE_INTO" 1
	fps 30
}
$sequence "vomit_into" {
	"misc_anims\vomit_into.smd"
	activity "ACT_VOMIT_INTO" 1
	fps 30
}
$sequence "vomit_idle" {
	"misc_anims\vomit_idle.smd"
	activity "ACT_VOMIT_IDLE" 1
	fps 30
}
$sequence "vomit_getout" {
	"misc_anims\vomit_getout.smd"
	activity "ACT_VOMIT_GETOUT" 1
	fps 30
}
$sequence "disoriented" {
	"misc_anims\disoriented.smd"
	activity "ACT_DISORIENTED" 1
	fps 30
}
$sequence "lost" {
	"misc_anims\lost.smd"
	activity "ACT_LOST" 1
	fps 30
}
$sequence "comfort_into" {
	"misc_anims\comfort_into.smd"
	activity "ACT_COMFORT_INTO" 1
	fps 30
}
$sequence "comfort_idle" {
	"misc_anims\comfort_idle.smd"
	activity "ACT_COMFORT_IDLE" 1
	fps 30
}
$sequence "comfort_outof" {
	"misc_anims\comfort_outof.smd"
	activity "ACT_COMFORT_OUTOF" 1
	fps 30
}
$sequence "comfort2_into" {
	"misc_anims\comfort_into.smd"
	activity "ACT_COMFORT2_INTO" 1
	fps 30
}
$sequence "comfort2_idle" {
	"misc_anims\comfort_idle.smd"
	activity "ACT_COMFORT2_IDLE" 1
	fps 30
}
$sequence "comfort2_outof" {
	"misc_anims\comfort_outof.smd"
	activity "ACT_COMFORT2_OUTOF" 1
	fps 30
}
$sequence "blood_malady_pre" {
	"misc_anims\shared_pre_into.smd"
	activity "ACT_BLOOD_MALADY_PRE" 1
	fps 30
}
$sequence "blood_malady_loop" {
	"misc_anims\mesmerized.smd"
	activity "ACT_BLOOD_MALADY_LOOP" 1
	fps 30
}
$sequence "possession_pre" {
	"misc_anims\shared_pre_into.smd"
	activity "ACT_POSSESSION_PRE" 1
	fps 30
}
$sequence "insanity_pre" {
	"misc_anims\madness_pre_into.smd"
	activity "ACT_INSANITY_PRE" 1
	fps 30
}
$sequence "presence" {
	"misc_anims\presence.smd"
	activity "ACT_PRESENCE_DAZED" 1
	fps 30
}
$sequence "vision_of_death" {
	"misc_anims\vision_of_death.smd"
	activity "ACT_VISION_OF_DEATH" 1
	fps 30
}
$sequence "howl" {
	"misc_anims\howl.smd"
	activity "ACT_HOWL" 1
	fps 30
}
$sequence "fidget01" {
	"misc_anims\fidget01.smd"
	activity "ACT_IDLE" 1
	fps 30
}
$sequence "fidget02" {
	"misc_anims\fidget02.smd"
	activity "ACT_IDLE" 1
	fps 30
}
$sequence "fidget03" {
	"misc_anims\fidget03.smd"
	activity "ACT_IDLE" 1
	fps 30
}
$sequence "getup_back" {
	"misc_anims\getup_back.smd"
	fps 30
}
$sequence "getup_front" {
	"misc_anims\getup_front.smd"
	fps 30
}
$sequence "idle01" {
	"misc_anims\idle01.smd"
	activity "ACT_IDLE" 30
	fps 30
}
$sequence "cower_into" {
	"misc_anims\cower_into.smd"
	activity "ACT_COWER_INTO" 100
	fps 60
}
$sequence "cower_idle" {
	"misc_anims\cower_idle.smd"
	activity "ACT_COWER" 100
	fps 30
}
$sequence "cower_outof" {
	"misc_anims\cower_outof.smd"
	activity "ACT_COWER_OUTOF" 100
	fps 30
}
$sequence "cower2_into" {
	"misc_anims\cower2_into.smd"
	activity "ACT_COWER2_INTO" 100
	fps 60
}
$sequence "cower2_idle" {
	"misc_anims\cower2_idle.smd"
	activity "ACT_COWER2" 100
	fps 30
}
$sequence "cower2_outof" {
	"misc_anims\cower2_outof.smd"
	activity "ACT_COWER2_OUTOF" 100
	fps 30
}
$sequence "cower3_into" {
	"misc_anims\cower3_into.smd"
	activity "ACT_COWER3_INTO" 100
	fps 30
}
$sequence "cower3_idle" {
	"misc_anims\cower3_idle.smd"
	activity "ACT_COWER3" 100
	fps 30
}
$sequence "cower3_outof" {
	"misc_anims\cower3_outof.smd"
	activity "ACT_COWER3_OUTOF" 100
	fps 30
}
$sequence "alert_front_into" {
	"misc_anims\alert_front_into.smd"
	activity "ACT_ALERT_FRONT_INTO" 100
	fps 30
}
$sequence "alert_l45_into" {
	"misc_anims\alert_l45_into.smd"
	activity "ACT_ALERT_L45_INTO" 100
	fps 30
}
$sequence "alert_l90_into" {
	"misc_anims\alert_l90_into.smd"
	activity "ACT_ALERT_L90_INTO" 100
	fps 30
}
$sequence "alert_l135_into" {
	"misc_anims\alert_l135_into.smd"
	activity "ACT_ALERT_L135_INTO" 100
	fps 30
}
$sequence "alert_r45_into" {
	"misc_anims\alert_r45_into.smd"
	activity "ACT_ALERT_R45_INTO" 100
	fps 30
}
$sequence "alert_r90_into" {
	"misc_anims\alert_r90_into.smd"
	activity "ACT_ALERT_R90_INTO" 100
	fps 30
}
$sequence "alert_r135_into" {
	"misc_anims\alert_r135_into.smd"
	activity "ACT_ALERT_R135_INTO" 100
	fps 30
}
$sequence "alert_180_into" {
	"misc_anims\alert_180_into.smd"
	activity "ACT_ALERT_180_INTO" 100
	fps 30
}
$sequence "alert_front_outof" {
	"misc_anims\alert_front_outof.smd"
	activity "ACT_ALERT_FRONT_OUTOF" 100
	fps 30
}
$sequence "alert_l45_outof" {
	"misc_anims\alert_l45_outof.smd"
	activity "ACT_ALERT_L45_OUTOF" 100
	fps 30
}
$sequence "alert_l90_outof" {
	"misc_anims\alert_l90_outof.smd"
	activity "ACT_ALERT_L90_OUTOF" 100
	fps 30
}
$sequence "alert_l135_outof" {
	"misc_anims\alert_l135_outof.smd"
	activity "ACT_ALERT_L135_OUTOF" 100
	fps 30
}
$sequence "alert_r45_outof" {
	"misc_anims\alert_r45_outof.smd"
	activity "ACT_ALERT_R45_OUTOF" 100
	fps 30
}
$sequence "alert_r90_outof" {
	"misc_anims\alert_r90_outof.smd"
	activity "ACT_ALERT_R90_OUTOF" 100
	fps 30
}
$sequence "alert_r135_outof" {
	"misc_anims\alert_r135_outof.smd"
	activity "ACT_ALERT_R135_OUTOF" 100
	fps 30
}
$sequence "alert_180_outof" {
	"misc_anims\alert_180_outof.smd"
	activity "ACT_ALERT_180_OUTOF" 100
	fps 30
}
$sequence "alert_fidget_lookaround" {
	"misc_anims\alert_fidget_lookaround.smd"
	activity "ACT_ALERT_FIDGET_LOOKAROUND" 100
	fps 30
}
$sequence "jump" {
	"misc_anims\jump.smd"
	fps 30
}
$sequence "jump_long" {
	"misc_anims\jump_long.smd"
	fps 30
}
$sequence "hop" {
	"misc_anims\hop.smd"
	activity "ACT_HOP" 1
	fps 30
}
$sequence "hop_up" {
	"misc_anims\hop_up.smd"
	activity "ACT_HOP_UP" 1
	fps 30
}
$sequence "hop_down" {
	"misc_anims\hop_down.smd"
	activity "ACT_HOP_DOWN" 1
	fps 30
}
$sequence "leap" {
	"misc_anims\jump_forward.smd"
	activity "ACT_LEAP" 1
	fps 30
}
$sequence "leap_ascend" {
	"misc_anims\leap_ascend.smd"
	activity "ACT_LEAP_ASCEND" 1
	fps 30
}
$sequence "leap_descend" {
	"misc_anims\leap_descend.smd"
	activity "ACT_LEAP_DESCEND" 1
	fps 30
}
$sequence "falling" {
	"misc_anims\falling.smd"
	activity "ACT_FALLING" 1
	fps 30
}
$sequence "land" {
	"misc_anims\land.smd"
	activity "ACT_LAND" 1
	fps 30
}
$sequence "land_hard" {
	"misc_anims\land_hard.smd"
	activity "ACT_LAND_HARD" 1
	fps 30
}
$sequence "jump_to_death" {
	"misc_anims\jump_to_death.smd"
	activity "ACT_JUMP_TO_DEATH" 1
	fps 30
}
$sequence "lockpick" {
	"misc_anims\lockpick.smd"
	activity "ACT_TOOL_LOCKPICK" 1
	fps 30
}
$sequence "stake_target" {
	"misc_anims\stake_target.smd"
	activity "ACT_TOOL_STAKE" 1
	fps 30
}
$sequence "operate_computer" {
	"misc_anims\operate_computer.smd"
	activity "ACT_TOOL_KEYBOARD" 1
	fps 30
}
$sequence "operate_panel" {
	"misc_anims\operate_panel.smd"
	activity "ACT_TOOL_HACKPANEL" 1
	fps 30
}
$sequence "place_bomb" {
	"misc_anims\place_bomb.smd"
	activity "ACT_PLACE_BOMB" 1
	fps 30
}
$sequence "swim" {
	"misc_anims\swim.smd"
	activity "ACT_SWIM" 1
	fps 30
}
$sequence "treadwater" {
	"misc_anims\treadwater.smd"
	activity "ACT_TREADWATER" 1
	fps 30
}
$sequence "spellhit" {
	"misc_anims\spellhit.smd"
	activity "ACT_HIT_SPELL" 1
	fps 30
}
$sequence "doorknock" {
	"misc_anims\doorknock.smd"
	activity "ACT_DOORKNOCK" 1
	fps 30
}
$sequence "pray" {
	"misc_anims\pray.smd"
	activity "ACT_PRAY" 1
	fps 30
}
$sequence "praying_begin" {
	"misc_anims\praying_begin.smd"
	activity "ACT_PRAYING_BEGIN" 1
	fps 30
}
$sequence "praying_idle" {
	"misc_anims\praying_idle.smd"
	activity "ACT_PRAYING_IDLE" 1
	fps 30
}
$sequence "praying_end" {
	"misc_anims\praying_end.smd"
	activity "ACT_PRAYING_END" 1
	fps 30
}
$sequence "ladder_down" {
	"misc_anims\ladder_down.smd"
	activity "ACT_CLIMB_DOWN" 1
	fps 30
}
$sequence "ladder_up" {
	"misc_anims\ladder_up.smd"
	activity "ACT_CLIMB_UP" 1
	fps 30
}
$sequence "dive_left" {
	"misc_anims\dive_left.smd"
	activity "ACT_DIVE_LEFT" 100
	fps 30
}
$sequence "dive_right" {
	"misc_anims\dive_right.smd"
	activity "ACT_DIVE_RIGHT" 100
	fps 30
}
$sequence "hunt_walk" {
	"misc_anims\hunt_walk.smd"
	activity "ACT_HUNT_WALK" 100
	fps 30
}
$sequence "hunt_walk_lookleft" {
	"misc_anims\hunt_walk_lookleft.smd"
	activity "ACT_HUNT_WALK_LOOKLEFT" 100
	fps 30
}
$sequence "hunt_walk_lookright" {
	"misc_anims\hunt_walk_lookright.smd"
	activity "ACT_HUNT_WALK_LOOKRIGHT" 100
	fps 30
}
$sequence "payphone_pickup" {
	"misc_anims\payphone_pickup.smd"
	activity "ACT_PAY_PHONE_PICKUP" 1
	fps 30
}
$sequence "payphone_idle" {
	"misc_anims\payphone_idle.smd"
	activity "ACT_PAY_PHONE_IDLE" 1
	fps 30
}
$sequence "payphone_hangup" {
	"misc_anims\payphone_hangup.smd"
	activity "ACT_PAY_PHONE_HANGUP" 1
	fps 30
}
$sequence "payphone_pickup_1" {
	"misc_anims\payphone_pickup.smd"
	activity "ACT_PAYPHONE_PICKUP_ATTACKER_SHORTVICTIM_FRONT" 1
	fps 30
}
$sequence "payphone_pickup_2" {
	"misc_anims\payphone_pickup.smd"
	activity "ACT_PAYPHONE_PICKUP_ATTACKER_TALLVICTIM_FRONT" 1
	fps 30
}
$sequence "payphone_idle_1" {
	"misc_anims\payphone_idle.smd"
	activity "ACT_PAYPHONE_IDLE_ATTACKER_SHORTVICTIM_FRONT" 1
	fps 30
}
$sequence "payphone_idle_2" {
	"misc_anims\payphone_idle.smd"
	activity "ACT_PAYPHONE_IDLE_ATTACKER_TALLVICTIM_FRONT" 1
	fps 30
}
$sequence "payphone_hangup_1" {
	"misc_anims\payphone_hangup.smd"
	activity "ACT_PAYPHONE_HANGUP_ATTACKER_SHORTVICTIM_FRONT" 1
	fps 30
}
$sequence "payphone_hangup_2" {
	"misc_anims\payphone_hangup.smd"
	activity "ACT_PAYPHONE_HANGUP_ATTACKER_TALLVICTIM_FRONT" 1
	fps 30
}
$sequence "cellphone" {
	"misc_anims\cellphone.smd"
	activity "ACT_CELLPHONE" 1
	fps 30
}
$sequence "cellphone_into" {
	"misc_anims\cellphone_into.smd"
	activity "ACT_CELLPHONE_INTO" 1
	fps 30
}
$sequence "cellphone_idle" {
	"misc_anims\cellphone_idle.smd"
	activity "ACT_CELLPHONE_IDLE" 1
	fps 30
}
$sequence "cellphone_outof" {
	"misc_anims\cellphone_outof.smd"
	activity "ACT_CELLPHONE_OUTOF" 1
	fps 30
}
$sequence "cigarette_Into" {
	"misc_anims\Cigarette_Into.smd"
	activity "ACT_CIGARETTE_INTO" 1
	fps 30
}
$sequence "cigarette_Idle" {
	"misc_anims\Cigarette_Idle.smd"
	activity "ACT_CIGARETTE_IDLE" 5
	fps 30
}
$sequence "cigarette_Inhale" {
	"misc_anims\Cigarette_Inhale.smd"
	activity "ACT_CIGARETTE_IDLE" 1
	fps 30
}
$sequence "piss_into" {
	"misc_anims\Piss_Into.smd"
	activity "ACT_PISS_INTO" 1
	fps 30
}
$sequence "piss_idle" {
	"misc_anims\Piss_Idle.smd"
	activity "ACT_PISS_IDLE" 1
	fps 30
}
$sequence "piss_outof" {
	"misc_anims\Piss_Outof.smd"
	activity "ACT_PISS_OUTOF" 1
	fps 30
}
$sequence "Drag_FromBehind" {
	"misc_anims\Drag_FromBehind.smd"
	activity "ACT_DRAG_FROMBEHIND" 1
	fps 30
}
$sequence "Scripted_BackHit" {
	"misc_anims\Scripted_BackHit.smd"
	activity "ACT_SCRIPTEDBACKHIT" 1
	fps 30
}
$sequence "ArmsCrossed_Idle" {
	"misc_anims\ArmsCrossed_Idle.smd"
	activity "ACT_ARMSCROSSED_IDLE" 1
	fps 30
}
$sequence "ArmsCrossed_Fidget" {
	"misc_anims\ArmsCrossed_Fidget.smd"
	activity "ACT_ARMSCROSSED_FIDGET" 1
	fps 30
}
$sequence "whistling_Idle" {
	"misc_anims\whistling_Idle.smd"
	activity "ACT_WHISTLING_IDLE" 1
	fps 30
}
$sequence "whistling_Fidget" {
	"misc_anims\whistling_Fidget.smd"
	activity "ACT_WHISTLING_FIDGET" 1
	fps 30
}
$sequence "wall_lean_into" {
	"misc_anims\Wall_Lean_into.smd"
	activity "ACT_WALL_LEAN_INTO" 1
	fps 30
}
$sequence "wall_lean_idle_01" {
	"misc_anims\Wall_Lean_idle_01.smd"
	activity "ACT_WALL_LEAN_IDLE" 1
	fps 30
}
$sequence "wall_lean_outof" {
	"misc_anims\Wall_Lean_outof.smd"
	activity "ACT_WALL_LEAN_OUTOF" 1
	fps 30
}
$sequence "CouchTV_Into" {
	"misc_anims\CouchTV_Into.smd"
	activity "ACT_COUCH_SIT_INTO" 1
	fps 30
}
$sequence "CouchTV_idle_01" {
	"misc_anims\CouchTV_Idle_01.smd"
	activity "ACT_COUCH_SIT_IDLE" 20
	fps 30
}
$sequence "CouchTV_idle_02" {
	"misc_anims\CouchTV_Idle_02.smd"
	activity "ACT_COUCH_SIT_IDLE" 1
	fps 30
}
$sequence "CouchTV_outof" {
	"misc_anims\CouchTV_outof.smd"
	activity "ACT_COUCH_SIT_OUTOF" 1
	fps 30
}
$sequence "Drink_Into" {
	"misc_anims\Drink_Into.smd"
	activity "ACT_DRINK_INTO" 1
	fps 30
}
$sequence "Drink_Idle" {
	"misc_anims\Drink_Idle.smd"
	activity "ACT_DRINK_IDLE" 1
	fps 30
}
$sequence "Drink_Take" {
	"misc_anims\Drink_Take.smd"
	activity "ACT_DRINK_TAKE" 1
	fps 30
}
$sequence "Drink_LookAround" {
	"misc_anims\Drink_LookAround.smd"
	activity "ACT_DRINK_LOOKAROUND" 1
	fps 30
}
$sequence "Drink_Outof" {
	"misc_anims\Drink_Outof.smd"
	activity "ACT_DRINK_OUTOF" 1
	fps 30
}
$sequence "sitback_idle_left" {
	"misc_anims\sitback_idle_left.smd"
	activity "ACT_SITBACK_IDLE_LEFT" 100
	fps 30
}
$sequence "sitback_idle_left_deep" {
	"misc_anims\sitback_idle_left_deep.smd"
	activity "ACT_SITBACK_IDLE_LEFT_DEEP" 100
	fps 30
}
$sequence "sitback_idle_right" {
	"misc_anims\sitback_idle_right.smd"
	activity "ACT_SITBACK_IDLE_RIGHT" 100
	fps 30
}
$sequence "sitback_idle_right_deep" {
	"misc_anims\sitback_idle_right_deep.smd"
	activity "ACT_SITBACK_IDLE_RIGHT_DEEP" 100
	fps 30
}
$sequence "sitback_left" {
	"misc_anims\sitback_left.smd"
	activity "ACT_SITBACK_LEFT" 100
	fps 30
}
$sequence "sitback_left_deep" {
	"misc_anims\sitback_left_deep.smd"
	activity "ACT_SITBACK_LEFT_DEEP" 100
	fps 30
}
$sequence "sitback_right" {
	"misc_anims\sitback_right.smd"
	activity "ACT_SITBACK_RIGHT" 100
	fps 30
}
$sequence "sitback_right_deep" {
	"misc_anims\sitback_right_deep.smd"
	activity "ACT_SITBACK_RIGHT_DEEP" 100
	fps 30
}
$sequence "sitback_upfast_left" {
	"misc_anims\sitback_upfast_left.smd"
	activity "ACT_SITBACK_UPFAST_LEFT" 100
	fps 30
}
$sequence "sitback_upfast_left_deep" {
	"misc_anims\sitback_upfast_left_deep.smd"
	activity "ACT_SITBACK_UPFAST_LEFT_DEEP" 100
	fps 30
}
$sequence "sitback_upfast_right" {
	"misc_anims\sitback_upfast_right.smd"
	activity "ACT_SITBACK_UPFAST_RIGHT" 100
	fps 30
}
$sequence "sitback_upfast_right_deep" {
	"misc_anims\sitback_upfast_right_deep.smd"
	activity "ACT_SITBACK_UPFAST_RIGHT_DEEP" 100
	fps 30
}
$sequence "sitforward_idle_left" {
	"misc_anims\sitforward_idle_left.smd"
	activity "ACT_SITFORWARD_IDLE_LEFT" 100
	fps 30
}
$sequence "sitforward_idle_left_deep" {
	"misc_anims\sitforward_idle_left_deep.smd"
	activity "ACT_SITFORWARD_IDLE_LEFT_DEEP" 100
	fps 30
}
$sequence "sitforward_idle_right" {
	"misc_anims\sitforward_idle_right.smd"
	activity "ACT_SITFORWARD_IDLE_RIGHT" 100
	fps 30
}
$sequence "sitforward_idle_right_deep" {
	"misc_anims\sitforward_idle_right_deep.smd"
	activity "ACT_SITFORWARD_IDLE_RIGHT_DEEP" 100
	fps 30
}
$sequence "sitforward_left" {
	"misc_anims\sitforward_left.smd"
	activity "ACT_SITFORWARD_LEFT" 100
	fps 30
}
$sequence "sitforward_left_deep" {
	"misc_anims\sitforward_left_deep.smd"
	activity "ACT_SITFORWARD_LEFT_DEEP" 100
	fps 30
}
$sequence "sitforward_right" {
	"misc_anims\sitforward_right.smd"
	activity "ACT_SITFORWARD_RIGHT" 100
	fps 30
}
$sequence "sitforward_right_deep" {
	"misc_anims\sitforward_right_deep.smd"
	activity "ACT_SITFORWARD_RIGHT_DEEP" 100
	fps 30
}
$sequence "sitforward_upfast_left" {
	"misc_anims\sitforward_upfast_left.smd"
	activity "ACT_SITFORWARD_UPFAST_LEFT" 100
	fps 30
}
$sequence "sitforward_upfast_left_deep" {
	"misc_anims\sitforward_upfast_left_deep.smd"
	activity "ACT_SITFORWARD_UPFAST_LEFT_DEEP" 100
	fps 30
}
$sequence "sitforward_upfast_right" {
	"misc_anims\sitforward_upfast_right.smd"
	activity "ACT_SITFORWARD_UPFAST_RIGHT" 100
	fps 30
}
$sequence "sitforward_upfast_right_deep" {
	"misc_anims\sitforward_upfast_right_deep.smd"
	activity "ACT_SITFORWARD_UPFAST_RIGHT_DEEP" 100
	fps 30
}
$sequence "Cards_sitforward_Left_Idle" {
	"misc_anims\Cards_sitforward_Left_Idle.smd"
	activity "ACT_CARDS_SITFORWARD_LEFT_IDLE" 100
	fps 30
}
$sequence "Cards_sitforward_Left_Fidget" {
	"misc_anims\Cards_sitforward_Left_Fidget.smd"
	activity "ACT_CARDS_SITFORWARD_LEFT_FIDGET" 100
	fps 30
}
$sequence "Cards_sitforward_Left_Play" {
	"misc_anims\Cards_sitforward_Left_Play.smd"
	activity "ACT_CARDS_SITFORWARD_LEFT_Play" 100
	fps 30
}
$sequence "Cards_sitforward_Right_Idle" {
	"misc_anims\Cards_sitforward_Right_Idle.smd"
	activity "ACT_CARDS_SITFORWARD_RIGHT_IDLE" 100
	fps 30
}
$sequence "Cards_sitforward_Right_Fidget" {
	"misc_anims\Cards_sitforward_Right_Fidget.smd"
	activity "ACT_CARDS_SITFORWARD_RIGHT_FIDGET" 100
	fps 30
}
$sequence "Cards_sitforward_Right_Play" {
	"misc_anims\Cards_sitforward_Right_Play.smd"
	activity "ACT_CARDS_SITFORWARD_RIGHT_PLAY" 100
	fps 30
}
$sequence "Bed_Left_Idle" {
	"misc_anims\Bed_Left_Idle.smd"
	activity "ACT_BED_LEFT" 1
	fps 30
}
$sequence "Bed_Left_OutOf" {
	"misc_anims\Bed_Left_Outof.smd"
	activity "ACT_BED_LEFT_OUTOF" 1
	fps 30
}
$sequence "Bed_Right_Idle" {
	"misc_anims\Bed_Right_Idle.smd"
	activity "ACT_BED_RIGHT" 1
	fps 30
}
$sequence "Bed_Right_Outof" {
	"misc_anims\Bed_Right_Outof.smd"
	activity "ACT_BED_RIGHT_OUTOF" 1
	fps 30
}
$sequence "CoinMachine" {
	"misc_anims\CoinMachine.smd"
	activity "ACT_COINMACHINE" 100
	fps 30
}
$sequence "pinball_into" {
	"misc_anims\pinball_into.smd"
	activity "ACT_PINBALL_INTO" 1
	fps 30
}
$sequence "pinball_idle01" {
	"misc_anims\pinball_idle01.smd"
	activity "ACT_PINBALL_IDLE" 1
	fps 30
}
$sequence "pinball_idle02" {
	"misc_anims\pinball_idle02.smd"
	activity "ACT_PINBALL_IDLE" 1
	fps 30
}
$sequence "pinball_outof" {
	"misc_anims\pinball_outof.smd"
	activity "ACT_PINBALL_OUTOF" 1
	fps 30
}
$sequence "waveover01" {
	"misc_anims\waveover01.smd"
	activity "ACT_WAVEOVER" 1
	fps 30
}
$sequence "waveover02" {
	"misc_anims\waveover02.smd"
	activity "ACT_WAVEOVER" 1
	fps 30
}
$sequence "forgetit" {
	"misc_anims\forgetit.smd"
	activity "ACT_FORGETIT" 1
	fps 30
}
$sequence "idle_player_in_face" {
	"misc_anims\idle_player_in_face.smd"
	activity "ACT_IDLE_PLAYER_IN_FACE" 100
	fps 30
}
$sequence "onehanded_crouch_relaxed" {
	"misc_anims\onehanded_crouch_relaxed.smd"
	activity "ACT_ONEHANDED_CROUCH_IDLE" 100
	fps 30
}
$sequence "twohanded_crouch_relaxed" {
	"misc_anims\twohanded_crouch_relaxed.smd"
	activity "ACT_TWOHANDED_CROUCH_IDLE" 100
	fps 30
}
$sequence "sit_barstool_into" {
	"misc_anims\sit_barstool_into.smd"
	activity "ACT_SIT_BARSTOOL_INTO" 1
	fps 30
}
$sequence "sit_barstool_into_alt" {
	"misc_anims\sit_barstool_into_alt.smd"
	activity "ACT_SIT_BARSTOOL_INTO_ALT" 1
	fps 30
}
$sequence "sit_barstool_idle" {
	"misc_anims\sit_barstool_idle.smd"
	activity "ACT_SIT_BARSTOOL_IDLE" 1
	fps 30
}
$sequence "sit_barstool_outof" {
	"misc_anims\sit_barstool_outof.smd"
	activity "ACT_SIT_BARSTOOL_OUTOF" 1
	fps 30
}
$sequence "party_talk_idle1" {
	"misc_anims\party_talk_idle1.smd"
	activity "ACT_PARTY_TALK_IDLE" 1
	fps 30
}
$sequence "party_listen_idle1" {
	"misc_anims\party_listen_idle1.smd"
	activity "ACT_PARTY_LISTEN_IDLE" 1
	fps 30
}
$sequence "party_listen_idle2" {
	"misc_anims\party_listen_idle2.smd"
	activity "ACT_PARTY_LISTEN_IDLE" 1
	fps 30
}
$sequence "party_listen_idle3" {
	"misc_anims\party_listen_idle3.smd"
	activity "ACT_PARTY_LISTEN_IDLE" 1
	fps 30
}
$sequence "party_laugh" {
	"misc_anims\party_laugh.smd"
	activity "ACT_PARTY_LAUGH" 1
	fps 30
}
$sequence "wine_drink" {
	"misc_anims\wine_drink.smd"
	activity "ACT_WINE_DRINK" 1
	fps 30
}
$sequence "party_drinking" {
	"misc_anims\party_drinking.smd"
	activity "ACT_PARTY_DRINKING" 1
	fps 30
}
$sequence "party_idle" {
	"misc_anims\party_idle.smd"
	activity "ACT_PARTY_IDLE" 1
	fps 30
}
$sequence "party_look_around" {
	"misc_anims\party_look_around.smd"
	activity "ACT_PARTY_LOOK_AROUND" 1
	fps 30
}
$sequence "look_out_window" {
	"misc_anims\look_out_window.smd"
	activity "ACT_LOOK_OUT_WINDOW" 1
	fps 30
}
$sequence "animalism_ravens_into" {
	"misc_anims\animalism_ravens_into.smd"
	activity "ACT_RAVENS_INTO" 1
	fps 30
}
$sequence "animalism_ravens_idle" {
	"misc_anims\animalism_ravens_idle.smd"
	activity "ACT_RAVENS_IDLE" 1
	fps 30
}
$sequence "animalism_ravens_outof" {
	"misc_anims\animalism_ravens_outof.smd"
	activity "ACT_RAVENS_OUTOF" 1
	fps 30
}
$sequence "animalism_bats" {
	"misc_anims\animalism_bats.smd"
	activity "ACT_BLOODSUCKERS_COMMUNION" 1
	fps 30
}
$sequence "animalism_spectralwolves_into" {
	"misc_anims\animalism_spectralwolves_into.smd"
	activity "ACT_SPECTRAL_WOLF_INTO" 1
	fps 30
}
$sequence "animalism_spectralwolves_idle" {
	"misc_anims\animalism_spectralwolves_idle.smd"
	activity "ACT_SPECTRAL_WOLF_IDLE" 1
	fps 30
}
$sequence "animalism_spectralwolves_outof" {
	"misc_anims\animalism_spectralwolves_outof.smd"
	activity "ACT_SPECTRAL_WOLF_OUTOF" 1
	fps 30
}
$sequence "animalism_spectralwolves_break" {
	"misc_anims\animalism_spectralwolves_break.smd"
	activity "ACT_SPECTRAL_WOLF_BREAK" 1
	fps 30
}
$sequence "animalism_pestilence_into" {
	"misc_anims\animalism_pestilence_into.smd"
	activity "ACT_PESTILENCE_INTO" 1
	fps 30
}
$sequence "animalism_pestilence_idle" {
	"misc_anims\animalism_pestilence_idle.smd"
	activity "ACT_PESTILENCE_IDLE" 1
	fps 30
}
$sequence "animalism_pestilence_outof" {
	"misc_anims\animalism_pestilence_outof.smd"
	activity "ACT_PESTILENCE_OUTOF" 1
	fps 30
}
