// Created by Crowbar 0.74

$modelname "character/shared/male/move_and_ranged.mdl"

$bodygroup "sharedbones"
{
	studio "sharedbones"
}
$bodygroup "sharedbones"
{
	studio "sharedbones_2"
}
$bodygroup "sharedbones"
{
	studio "sharedbones_3"
}
$bodygroup "sharedbones"
{
	studio "sharedbones_4"
}
$bodygroup "sharedbones"
{
	studio "sharedbones_5"
}
$bodygroup "sharedbones"
{
	studio "sharedbones_6"
}


$illumposition 0 0 0

$eyeposition 0.5 -0.5 0.5

$cdmaterials "models\error\"
$cdmaterials "models\error\"
$cdmaterials "models\error\"
$cdmaterials "models\error\"
$cdmaterials "models\error\"
$cdmaterials "models\error\"

$attachment "0" "Bip01 R Hand" 0 0 0
$attachment "0" "Bip01 R Hand" 0 0 0
$attachment "0" "Bip01 R Hand" 0 0 0
$attachment "0" "Bip01 R Hand" 0 0 0
$attachment "0" "Bip01 R Hand" 0 0 0
$attachment "0" "Bip01 R Hand" 0 0 0

$cbox 0 0 0 0 0 0

$bbox -44.97 -46.325 -4.568 28.477 46.535 81.49

$hboxset "default"
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
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
$hbox 5 "Bip01 R Hand" -0.132211 -2.204826 -3.232237 5.006474 2.204901 1.890611
$hbox 6 "Bip01 L Thigh" 0 -1.440911 -1.601701 17.830053 1.784456 2.001217
$hbox 6 "Bip01 L Calf" 0 -1.549742 -1.47103 17.69693 1.733048 1.528979
$hbox 6 "Bip01 L Foot" 0 0 -1.500043 4.150375 7.381025 1.499969
$hbox 7 "Bip01 R Thigh" 0 -1.440914 -2.001153 17.830051 1.784446 1.601642
$hbox 7 "Bip01 R Calf" 0 -1.549751 -1.529096 17.696934 1.733039 1.470914
$hbox 7 "Bip01 R Foot" 0 0 -1.500109 4.150389 7.381025 1.499904

$sequence "walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK" 1
	fps 30
}
$sequence "run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN" 1
	fps 18
}
$sequence "sneak" {
	"move_and_ranged_anims\sneak_180.smd"
	"move_and_ranged_anims\sneak_225.smd"
	"move_and_ranged_anims\sneak_270.smd"
	"move_and_ranged_anims\sneak_315.smd"
	"move_and_ranged_anims\sneak_0.smd"
	"move_and_ranged_anims\sneak_45.smd"
	"move_and_ranged_anims\sneak_90.smd"
	"move_and_ranged_anims\sneak_135.smd"
	"move_and_ranged_anims\sneak_180.smd"
	activity "ACT_SNEAK" 1
	fps 30
}
$sequence "crouch" {
	"move_and_ranged_anims\crouch.smd"
	activity "ACT_CROUCH" 30
	fps 30
}
$sequence "lookback_left_layer" {
	"move_and_ranged_anims\lookback_left_layer.smd"
	activity "ACT_LOOKBACK_LEFT" 100
	fps 30
}
$sequence "lookback_right_layer" {
	"move_and_ranged_anims\lookback_right_layer.smd"
	activity "ACT_LOOKBACK_RIGHT" 100
	fps 30
}
$sequence "baseballbat_bobble_layer" {
	"move_and_ranged_anims\baseballbat_bobble_layer.smd"
	fps 30
}
$sequence "baseballbat_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_aggressive_run" {
	"move_and_ranged_anims\run_180.smd"
	"move_and_ranged_anims\run_225.smd"
	"move_and_ranged_anims\run_270.smd"
	"move_and_ranged_anims\run_315.smd"
	"move_and_ranged_anims\run_0.smd"
	"move_and_ranged_anims\run_45.smd"
	"move_and_ranged_anims\run_90.smd"
	"move_and_ranged_anims\run_135.smd"
	"move_and_ranged_anims\run_180.smd"
	activity "ACT_RUN_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_relaxed_move_layer" {
	"move_and_ranged_anims\baseballbat_relaxed_move_layer.smd"
	fps 30
}
$sequence "baseballbat_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_BASEBALLBAT" 1
	fps 30
}
$sequence "baseballbat_relaxed_run" {
	"move_and_ranged_anims\run_180.smd"
	"move_and_ranged_anims\run_225.smd"
	"move_and_ranged_anims\run_270.smd"
	"move_and_ranged_anims\run_315.smd"
	"move_and_ranged_anims\run_0.smd"
	"move_and_ranged_anims\run_45.smd"
	"move_and_ranged_anims\run_90.smd"
	"move_and_ranged_anims\run_135.smd"
	"move_and_ranged_anims\run_180.smd"
	activity "ACT_RUN_RELAXED_BASEBALLBAT" 1
	fps 30
}
$sequence "bushhook_bobble_layer" {
	"move_and_ranged_anims\bushhook_bobble_layer.smd"
	fps 30
}
$sequence "bushhook_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_BUSHHOOK" 1
	fps 30
}
$sequence "bushhook_aggressive_run" {
	"move_and_ranged_anims\run_180.smd"
	"move_and_ranged_anims\run_225.smd"
	"move_and_ranged_anims\run_270.smd"
	"move_and_ranged_anims\run_315.smd"
	"move_and_ranged_anims\run_0.smd"
	"move_and_ranged_anims\run_45.smd"
	"move_and_ranged_anims\run_90.smd"
	"move_and_ranged_anims\run_135.smd"
	"move_and_ranged_anims\run_180.smd"
	activity "ACT_RUN_BUSHHOOK" 1
	fps 30
}
$sequence "bushhook_relaxed_move_layer" {
	"move_and_ranged_anims\bushhook_relaxed_move_layer.smd"
	fps 30
}
$sequence "bushhook_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_BUSHHOOK" 1
	fps 30
}
$sequence "bushhook_relaxed_run" {
	"move_and_ranged_anims\run_180.smd"
	"move_and_ranged_anims\run_225.smd"
	"move_and_ranged_anims\run_270.smd"
	"move_and_ranged_anims\run_315.smd"
	"move_and_ranged_anims\run_0.smd"
	"move_and_ranged_anims\run_45.smd"
	"move_and_ranged_anims\run_90.smd"
	"move_and_ranged_anims\run_135.smd"
	"move_and_ranged_anims\run_180.smd"
	activity "ACT_RUN_RELAXED_BUSHHOOK" 1
	fps 30
}
$sequence "claws_aggressive_walk_layer" {
	"move_and_ranged_anims\claws_aggressive_walk_layer.smd"
	fps 30
}
$sequence "claws_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\claws_aggressive_walk.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_CLAWS" 1
	fps 30
}
$sequence "claws_aggressive_run" {
	"move_and_ranged_anims\claws_run_180.smd"
	"move_and_ranged_anims\claws_run_225.smd"
	"move_and_ranged_anims\claws_run_270.smd"
	"move_and_ranged_anims\claws_run_315.smd"
	"move_and_ranged_anims\claws_run_0.smd"
	"move_and_ranged_anims\claws_run_45.smd"
	"move_and_ranged_anims\claws_run_90.smd"
	"move_and_ranged_anims\claws_run_135.smd"
	"move_and_ranged_anims\claws_run_180.smd"
	activity "ACT_RUN_CLAWS" 7
	fps 30
}
$sequence "claws_aggressive_run_alt1" {
	"move_and_ranged_anims\claws_run_180.smd"
	"move_and_ranged_anims\claws_run_225.smd"
	"move_and_ranged_anims\claws_run_270.smd"
	"move_and_ranged_anims\claws_run_315.smd"
	"move_and_ranged_anims\claws_run_0_alt1.smd"
	"move_and_ranged_anims\claws_run_45.smd"
	"move_and_ranged_anims\claws_run_90.smd"
	"move_and_ranged_anims\claws_run_135.smd"
	"move_and_ranged_anims\claws_run_180.smd"
	activity "ACT_RUN_CLAWS" 3
	fps 30
}
$sequence "claws_aggressive_run_alt2" {
	"move_and_ranged_anims\claws_run_180.smd"
	"move_and_ranged_anims\claws_run_225.smd"
	"move_and_ranged_anims\claws_run_270.smd"
	"move_and_ranged_anims\claws_run_315.smd"
	"move_and_ranged_anims\claws_run_0_alt2.smd"
	"move_and_ranged_anims\claws_run_45.smd"
	"move_and_ranged_anims\claws_run_90.smd"
	"move_and_ranged_anims\claws_run_135.smd"
	"move_and_ranged_anims\claws_run_180.smd"
	activity "ACT_RUN_CLAWS" 3
	fps 30
}
$sequence "katana_bobble_layer" {
	"move_and_ranged_anims\katana_bobble_layer.smd"
	fps 30
}
$sequence "katana_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_KATANA" 1
	fps 30
}
$sequence "katana_aggressive_run" {
	"move_and_ranged_anims\run_180.smd"
	"move_and_ranged_anims\run_225.smd"
	"move_and_ranged_anims\run_270.smd"
	"move_and_ranged_anims\run_315.smd"
	"move_and_ranged_anims\run_0.smd"
	"move_and_ranged_anims\run_45.smd"
	"move_and_ranged_anims\run_90.smd"
	"move_and_ranged_anims\run_135.smd"
	"move_and_ranged_anims\run_180.smd"
	activity "ACT_RUN_KATANA" 1
	fps 30
}
$sequence "katana_relaxed_move_layer" {
	"move_and_ranged_anims\katana_relaxed_move_layer.smd"
	fps 30
}
$sequence "katana_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_KATANA" 1
	fps 30
}
$sequence "katana_relaxed_run" {
	"move_and_ranged_anims\run_180.smd"
	"move_and_ranged_anims\run_225.smd"
	"move_and_ranged_anims\run_270.smd"
	"move_and_ranged_anims\run_315.smd"
	"move_and_ranged_anims\run_0.smd"
	"move_and_ranged_anims\run_45.smd"
	"move_and_ranged_anims\run_90.smd"
	"move_and_ranged_anims\run_135.smd"
	"move_and_ranged_anims\run_180.smd"
	activity "ACT_RUN_RELAXED_KATANA" 1
	fps 30
}
$sequence "knife_bobble_layer" {
	"move_and_ranged_anims\knife_bobble_layer.smd"
	fps 30
}
$sequence "knife_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_KNIFE" 1
	fps 30
}
$sequence "knife_aggressive_run" {
	"move_and_ranged_anims\run_180.smd"
	"move_and_ranged_anims\run_225.smd"
	"move_and_ranged_anims\run_270.smd"
	"move_and_ranged_anims\run_315.smd"
	"move_and_ranged_anims\run_0.smd"
	"move_and_ranged_anims\run_45.smd"
	"move_and_ranged_anims\run_90.smd"
	"move_and_ranged_anims\run_135.smd"
	"move_and_ranged_anims\run_180.smd"
	activity "ACT_RUN_KNIFE" 1
	fps 30
}
$sequence "knife_relaxed_move_layer" {
	"move_and_ranged_anims\knife_relaxed_move_layer.smd"
	fps 30
}
$sequence "knife_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_KNIFE" 1
	fps 30
}
$sequence "knife_relaxed_run" {
	"move_and_ranged_anims\run_180.smd"
	"move_and_ranged_anims\run_225.smd"
	"move_and_ranged_anims\run_270.smd"
	"move_and_ranged_anims\run_315.smd"
	"move_and_ranged_anims\run_0.smd"
	"move_and_ranged_anims\run_45.smd"
	"move_and_ranged_anims\run_90.smd"
	"move_and_ranged_anims\run_135.smd"
	"move_and_ranged_anims\run_180.smd"
	activity "ACT_RUN_RELAXED_KNIFE" 1
	fps 30
}
$sequence "sledgehammer_bobble_layer" {
	"move_and_ranged_anims\sledgehammer_bobble_layer.smd"
	fps 30
}
$sequence "sledgehammer_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_SLEDGEHAMMER" 1
	fps 30
}
$sequence "sledgehammer_aggressive_run" {
	"move_and_ranged_anims\run_180.smd"
	"move_and_ranged_anims\run_225.smd"
	"move_and_ranged_anims\run_270.smd"
	"move_and_ranged_anims\run_315.smd"
	"move_and_ranged_anims\run_0.smd"
	"move_and_ranged_anims\run_45.smd"
	"move_and_ranged_anims\run_90.smd"
	"move_and_ranged_anims\run_135.smd"
	"move_and_ranged_anims\run_180.smd"
	activity "ACT_RUN_SLEDGEHAMMER" 1
	fps 30
}
$sequence "sledgehammer_relaxed_move_layer" {
	"move_and_ranged_anims\sledgehammer_relaxed_move_layer.smd"
	fps 30
}
$sequence "sledgehammer_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_SLEDGEHAMMER" 1
	fps 30
}
$sequence "sledgehammer_relaxed_run" {
	"move_and_ranged_anims\run_180.smd"
	"move_and_ranged_anims\run_225.smd"
	"move_and_ranged_anims\run_270.smd"
	"move_and_ranged_anims\run_315.smd"
	"move_and_ranged_anims\run_0.smd"
	"move_and_ranged_anims\run_45.smd"
	"move_and_ranged_anims\run_90.smd"
	"move_and_ranged_anims\run_135.smd"
	"move_and_ranged_anims\run_180.smd"
	activity "ACT_RUN_RELAXED_SLEDGEHAMMER" 1
	fps 30
}
$sequence "stake_bobble_layer" {
	"move_and_ranged_anims\stake_bobble_layer.smd"
	fps 30
}
$sequence "stake_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_STAKE" 1
	fps 30
}
$sequence "stake_aggressive_run" {
	"move_and_ranged_anims\run_180.smd"
	"move_and_ranged_anims\run_225.smd"
	"move_and_ranged_anims\run_270.smd"
	"move_and_ranged_anims\run_315.smd"
	"move_and_ranged_anims\run_0.smd"
	"move_and_ranged_anims\run_45.smd"
	"move_and_ranged_anims\run_90.smd"
	"move_and_ranged_anims\run_135.smd"
	"move_and_ranged_anims\run_180.smd"
	activity "ACT_RUN_STAKE" 1
	fps 30
}
$sequence "stake_relaxed_move_layer" {
	"move_and_ranged_anims\stake_relaxed_move_layer.smd"
	fps 30
}
$sequence "stake_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_STAKE" 1
	fps 30
}
$sequence "stake_relaxed_run" {
	"move_and_ranged_anims\run_180.smd"
	"move_and_ranged_anims\run_225.smd"
	"move_and_ranged_anims\run_270.smd"
	"move_and_ranged_anims\run_315.smd"
	"move_and_ranged_anims\run_0.smd"
	"move_and_ranged_anims\run_45.smd"
	"move_and_ranged_anims\run_90.smd"
	"move_and_ranged_anims\run_135.smd"
	"move_and_ranged_anims\run_180.smd"
	activity "ACT_RUN_RELAXED_STAKE" 1
	fps 30
}
$sequence "tireiron_bobble_layer" {
	"move_and_ranged_anims\tireiron_bobble_layer.smd"
	fps 30
}
$sequence "tireiron_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_TIREIRON" 1
	fps 30
}
$sequence "tireiron_aggressive_run" {
	"move_and_ranged_anims\run_180.smd"
	"move_and_ranged_anims\run_225.smd"
	"move_and_ranged_anims\run_270.smd"
	"move_and_ranged_anims\run_315.smd"
	"move_and_ranged_anims\run_0.smd"
	"move_and_ranged_anims\run_45.smd"
	"move_and_ranged_anims\run_90.smd"
	"move_and_ranged_anims\run_135.smd"
	"move_and_ranged_anims\run_180.smd"
	activity "ACT_RUN_TIREIRON" 1
	fps 30
}
$sequence "tireiron_relaxed_move_layer" {
	"move_and_ranged_anims\tireiron_relaxed_move_layer.smd"
	fps 30
}
$sequence "tireiron_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_TIREIRON" 1
	fps 30
}
$sequence "tireiron_relaxed_run" {
	"move_and_ranged_anims\run_180.smd"
	"move_and_ranged_anims\run_225.smd"
	"move_and_ranged_anims\run_270.smd"
	"move_and_ranged_anims\run_315.smd"
	"move_and_ranged_anims\run_0.smd"
	"move_and_ranged_anims\run_45.smd"
	"move_and_ranged_anims\run_90.smd"
	"move_and_ranged_anims\run_135.smd"
	"move_and_ranged_anims\run_180.smd"
	activity "ACT_RUN_RELAXED_TIREIRON" 1
	fps 30
}
$sequence "onehand_sneak_layer" {
	"move_and_ranged_anims\onehand_sneak_layer.smd"
	fps 30
}
$sequence "onehand_sneak" {
	"move_and_ranged_anims\sneak_180.smd"
	"move_and_ranged_anims\sneak_225.smd"
	"move_and_ranged_anims\sneak_270.smd"
	"move_and_ranged_anims\sneak_315.smd"
	"move_and_ranged_anims\onehand_sneak.smd"
	"move_and_ranged_anims\sneak_45.smd"
	"move_and_ranged_anims\sneak_90.smd"
	"move_and_ranged_anims\sneak_135.smd"
	"move_and_ranged_anims\sneak_180.smd"
	activity "ACT_SNEAK_MELEESHARED_ONEHAND" 1
	fps 30
}
$sequence "twohand_sneak_layer" {
	"move_and_ranged_anims\twohand_sneak_layer.smd"
	fps 30
}
$sequence "twohand_sneak" {
	"move_and_ranged_anims\sneak_180.smd"
	"move_and_ranged_anims\sneak_225.smd"
	"move_and_ranged_anims\sneak_270.smd"
	"move_and_ranged_anims\sneak_315.smd"
	"move_and_ranged_anims\twohand_sneak.smd"
	"move_and_ranged_anims\sneak_45.smd"
	"move_and_ranged_anims\sneak_90.smd"
	"move_and_ranged_anims\sneak_135.smd"
	"move_and_ranged_anims\sneak_180.smd"
	activity "ACT_SNEAK_MELEESHARED_TWOHAND" 1
	fps 30
}
$sequence "anaconda_aim_layer" {
	"move_and_ranged_anims\anaconda_aim_UR.smd"
	"move_and_ranged_anims\anaconda_aim_UC.smd"
	"move_and_ranged_anims\anaconda_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "anaconda_bobble_delta" {
	"move_and_ranged_anims\anaconda_bobble_delta.smd"
	fps 30
}
$sequence "anaconda_attack_delta" {
	"move_and_ranged_anims\anaconda_attack_delta.smd"
	fps 30
}
$sequence "anaconda_dryfire_delta" {
	"move_and_ranged_anims\anaconda_dryfire_delta.smd"
	fps 30
}
$sequence "anaconda_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_ANACONDA" 1
	fps 30
}
$sequence "anaconda_aggressive_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_ANACONDA" 1
	fps 18
}
$sequence "anaconda_sneak" {
	"move_and_ranged_anims\sneak_180.smd"
	"move_and_ranged_anims\sneak_225.smd"
	"move_and_ranged_anims\sneak_270.smd"
	"move_and_ranged_anims\sneak_315.smd"
	"move_and_ranged_anims\sneak_0.smd"
	"move_and_ranged_anims\sneak_45.smd"
	"move_and_ranged_anims\sneak_90.smd"
	"move_and_ranged_anims\sneak_135.smd"
	"move_and_ranged_anims\sneak_180.smd"
	activity "ACT_SNEAK_ANACONDA" 1
	fps 30
}
$sequence "anaconda_crouch" {
	"move_and_ranged_anims\crouch.smd"
	activity "ACT_CROUCH_ANACONDA" 1
	fps 30
}
$sequence "anaconda_ready" {
	"move_and_ranged_anims\anaconda_ready.smd"
	activity "ACT_AIM_ANACONDA" 1
	fps 30
}
$sequence "anaconda_dodge" {
	"move_and_ranged_anims\anaconda_dodge.smd"
	activity "ACT_DODGE_ANACONDA" 1
	fps 30
}
$sequence "anaconda_attack" {
	"move_and_ranged_anims\anaconda_attack.smd"
	activity "ACT_RANGE_ATTACK_ANACONDA" 1
	fps 30
}
$sequence "anaconda_dryfire" {
	"move_and_ranged_anims\anaconda_dryfire.smd"
	activity "ACT_DRYFIRE_ANACONDA" 1
	fps 30
}
$sequence "anaconda_reload" {
	"move_and_ranged_anims\anaconda_reload.smd"
	activity "ACT_RELOAD_ANACONDA" 1
	fps 30
}
$sequence "anaconda_attack_layer" {
	"move_and_ranged_anims\anaconda_attack_layer.smd"
	activity "ACT_RANGE_ATTACK_LAYER_ANACONDA" 1
	fps 30
}
$sequence "anaconda_dryfire_layer" {
	"move_and_ranged_anims\anaconda_dryfire_layer.smd"
	activity "ACT_DRYFIRE_LAYER_ANACONDA" 1
	fps 30
}
$sequence "anaconda_reload_layer" {
	"move_and_ranged_anims\anaconda_reload_layer.smd"
	activity "ACT_RELOAD_LAYER_ANACONDA" 1
	fps 30
}
$sequence "anaconda_idle" {
	"move_and_ranged_anims\anaconda_idle.smd"
	activity "ACT_IDLE_ANACONDA" 20
	fps 30
}
$sequence "anaconda_fidget" {
	"move_and_ranged_anims\anaconda_fidget.smd"
	activity "ACT_IDLE_ANACONDA" 1
	fps 30
}
$sequence "anaconda_corner_cover_idle" {
	"move_and_ranged_anims\anaconda_corner_cover_idle.smd"
	activity "ACT_CORNER_COVER_IDLE_ANACONDA" 100
	fps 30
}
$sequence "anaconda_lean_left_into" {
	"move_and_ranged_anims\anaconda_lean_left_into.smd"
	activity "ACT_LEAN_LEFT_INTO_ANACONDA" 100
	fps 30
}
$sequence "anaconda_lean_left_idle" {
	"move_and_ranged_anims\anaconda_lean_left_idle.smd"
	activity "ACT_LEAN_LEFT_IDLE_ANACONDA" 100
	fps 30
}
$sequence "anaconda_lean_left_outof" {
	"move_and_ranged_anims\anaconda_lean_left_outof.smd"
	activity "ACT_LEAN_LEFT_OUTOF_ANACONDA" 100
	fps 30
}
$sequence "anaconda_attack_leaning_left" {
	"move_and_ranged_anims\anaconda_attack_leaning_left.smd"
	activity "ACT_RANGE_ATTACK_LEANING_LEFT_ANACONDA" 100
	fps 30
}
$sequence "anaconda_lean_right_into" {
	"move_and_ranged_anims\anaconda_lean_right_into.smd"
	activity "ACT_LEAN_RIGHT_INTO_ANACONDA" 100
	fps 30
}
$sequence "anaconda_lean_right_idle" {
	"move_and_ranged_anims\anaconda_lean_right_idle.smd"
	activity "ACT_LEAN_RIGHT_IDLE_ANACONDA" 100
	fps 30
}
$sequence "anaconda_lean_right_outof" {
	"move_and_ranged_anims\anaconda_lean_right_outof.smd"
	activity "ACT_LEAN_RIGHT_OUTOF_ANACONDA" 100
	fps 30
}
$sequence "anaconda_attack_leaning_right" {
	"move_and_ranged_anims\anaconda_attack_leaning_right.smd"
	activity "ACT_RANGE_ATTACK_LEANING_RIGHT_ANACONDA" 100
	fps 30
}
$sequence "crossbow_aim_layer" {
	"move_and_ranged_anims\crossbow_aim_UR.smd"
	"move_and_ranged_anims\crossbow_aim_UC.smd"
	"move_and_ranged_anims\crossbow_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "crossbow_crouch_aim_layer" {
	"move_and_ranged_anims\crossbow_crouch_aim_UR.smd"
	"move_and_ranged_anims\crossbow_crouch_aim_UC.smd"
	"move_and_ranged_anims\crossbow_crouch_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "crossbow_bobble_delta" {
	"move_and_ranged_anims\crossbow_bobble_delta.smd"
	fps 30
}
$sequence "crossbow_attack_delta" {
	"move_and_ranged_anims\crossbow_attack_delta.smd"
	fps 30
}
$sequence "crossbow_dryfire_delta" {
	"move_and_ranged_anims\crossbow_dryfire_delta.smd"
	fps 30
}
$sequence "crossbow_crouch_attack_delta" {
	"move_and_ranged_anims\crossbow_crouch_attack_delta.smd"
	fps 30
}
$sequence "crossbow_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_CROSSBOW" 1
	fps 30
}
$sequence "crossbow_aggressive_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_CROSSBOW" 1
	fps 18
}
$sequence "crossbow_sneak" {
	"move_and_ranged_anims\sneak_180.smd"
	"move_and_ranged_anims\sneak_225.smd"
	"move_and_ranged_anims\sneak_270.smd"
	"move_and_ranged_anims\sneak_315.smd"
	"move_and_ranged_anims\sneak_0.smd"
	"move_and_ranged_anims\sneak_45.smd"
	"move_and_ranged_anims\sneak_90.smd"
	"move_and_ranged_anims\sneak_135.smd"
	"move_and_ranged_anims\sneak_180.smd"
	activity "ACT_SNEAK_CROSSBOW" 1
	fps 30
}
$sequence "crossbow_crouch" {
	"move_and_ranged_anims\crouch.smd"
	activity "ACT_CROUCH_CROSSBOW" 1
	fps 30
}
$sequence "crossbow_ready" {
	"move_and_ranged_anims\crossbow_ready.smd"
	activity "ACT_AIM_CROSSBOW" 1
	fps 30
}
$sequence "crossbow_dodge" {
	"move_and_ranged_anims\crossbow_dodge.smd"
	activity "ACT_DODGE_CROSSBOW" 1
	fps 30
}
$sequence "crossbow_attack" {
	"move_and_ranged_anims\crossbow_attack.smd"
	activity "ACT_RANGE_ATTACK_CROSSBOW" 1
	fps 30
}
$sequence "crossbow_attack_crouched" {
	"move_and_ranged_anims\crossbow_crouch_attack.smd"
	activity "ACT_RANGE_ATTACK_CROUCHED_CROSSBOW" 1
	fps 30
}
$sequence "crossbow_dryfire" {
	"move_and_ranged_anims\crossbow_dryfire.smd"
	activity "ACT_DRYFIRE_CROSSBOW" 1
	fps 30
}
$sequence "crossbow_reload" {
	"move_and_ranged_anims\crossbow_reload.smd"
	activity "ACT_RELOAD_CROSSBOW" 1
	fps 30
}
$sequence "crossbow_attack_layer" {
	"move_and_ranged_anims\crossbow_attack_layer.smd"
	activity "ACT_RANGE_ATTACK_LAYER_CROSSBOW" 1
	fps 30
}
$sequence "crossbow_dryfire_layer" {
	"move_and_ranged_anims\crossbow_dryfire_layer.smd"
	activity "ACT_DRYFIRE_LAYER_CROSSBOW" 1
	fps 30
}
$sequence "crossbow_reload_layer" {
	"move_and_ranged_anims\crossbow_reload_layer.smd"
	activity "ACT_RELOAD_LAYER_CROSSBOW" 1
	fps 30
}
$sequence "crossbow_idle" {
	"move_and_ranged_anims\crossbow_idle.smd"
	activity "ACT_IDLE_CROSSBOW" 20
	fps 30
}
$sequence "crossbow_fidget" {
	"move_and_ranged_anims\crossbow_fidget.smd"
	activity "ACT_IDLE_CROSSBOW" 1
	fps 30
}
$sequence "crossbow_relaxed_move_layer" {
	"move_and_ranged_anims\crossbow_relaxed_move_layer.smd"
	fps 30
}
$sequence "crossbow_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_CROSSBOW" 1
	fps 30
}
$sequence "crossbow_relaxed_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_RELAXED_CROSSBOW" 1
	fps 18
}
$sequence "crossbow_midcrouch_aim_layer" {
	"move_and_ranged_anims\crossbow_midcrouch_aim_UR.smd"
	"move_and_ranged_anims\crossbow_midcrouch_aim_UC.smd"
	"move_and_ranged_anims\crossbow_midcrouch_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "crossbow_midcrouch_attack_delta" {
	"move_and_ranged_anims\crossbow_midcrouch_attack_delta.smd"
	fps 30
}
$sequence "crossbow_midcrouch_idle_delta" {
	"move_and_ranged_anims\crossbow_midcrouch_idle_delta.smd"
	fps 30
}
$sequence "crossbow_midcrouch_idle" {
	"move_and_ranged_anims\crossbow_midcrouch_idle.smd"
	fps 30
}
$sequence "crossbow_midcrouch" {
	"move_and_ranged_anims\crossbow_midcrouch_idle.smd"
	activity "ACT_MIDCROUCH_CROSSBOW" 1
	fps 30
}
$sequence "crossbow_attack_midcrouched" {
	"move_and_ranged_anims\crossbow_midcrouch_attack.smd"
	activity "ACT_RANGE_ATTACK_MIDCROUCHED_CROSSBOW" 1
	fps 30
}
$sequence "crossbow_midcrunch_into" {
	"move_and_ranged_anims\crossbow_midcrunch_into.smd"
	activity "ACT_MIDCRUNCH_INTO_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_midcrunch_idle" {
	"move_and_ranged_anims\crossbow_midcrunch_idle.smd"
	activity "ACT_MIDCRUNCH_IDLE_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_midcrunch_outof" {
	"move_and_ranged_anims\crossbow_midcrunch_outof.smd"
	activity "ACT_MIDCRUNCH_OUTOF_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_crunch_into" {
	"move_and_ranged_anims\crossbow_crunch_into.smd"
	activity "ACT_CRUNCH_INTO_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_crunch_idle" {
	"move_and_ranged_anims\crossbow_crunch_idle.smd"
	activity "ACT_CRUNCH_IDLE_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_crunch_outof" {
	"move_and_ranged_anims\crossbow_crunch_outof.smd"
	activity "ACT_CRUNCH_OUTOF_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_alert_front_into" {
	"move_and_ranged_anims\crossbow_alert_front_into.smd"
	activity "ACT_ALERT_FRONT_INTO_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_alert_l45_into" {
	"move_and_ranged_anims\crossbow_alert_l45_into.smd"
	activity "ACT_ALERT_L45_INTO_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_alert_r45_into" {
	"move_and_ranged_anims\crossbow_alert_r45_into.smd"
	activity "ACT_ALERT_R45_INTO_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_alert_180_into" {
	"move_and_ranged_anims\crossbow_alert_180_into.smd"
	activity "ACT_ALERT_180_INTO_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_alert_front_outof" {
	"move_and_ranged_anims\crossbow_alert_front_outof.smd"
	activity "ACT_ALERT_FRONT_OUTOF_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_alert_l45_outof" {
	"move_and_ranged_anims\crossbow_alert_l45_outof.smd"
	activity "ACT_ALERT_L45_OUTOF_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_alert_r45_outof" {
	"move_and_ranged_anims\crossbow_alert_r45_outof.smd"
	activity "ACT_ALERT_R45_OUTOF_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_alert_180_outof" {
	"move_and_ranged_anims\crossbow_alert_180_outof.smd"
	activity "ACT_ALERT_180_OUTOF_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_hunt_walk" {
	"move_and_ranged_anims\crossbow_hunt_walk.smd"
	activity "ACT_HUNT_WALK_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_hunt_walk_lookleft" {
	"move_and_ranged_anims\crossbow_hunt_walk_lookleft.smd"
	activity "ACT_HUNT_WALK_LOOKLEFT_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_hunt_walk_lookright" {
	"move_and_ranged_anims\crossbow_hunt_walk_lookright.smd"
	activity "ACT_HUNT_WALK_LOOKRIGHT_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_lean_left_into" {
	"move_and_ranged_anims\crossbow_lean_left_into.smd"
	activity "ACT_LEAN_LEFT_INTO_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_lean_left_idle" {
	"move_and_ranged_anims\crossbow_lean_left_idle.smd"
	activity "ACT_LEAN_LEFT_IDLE_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_lean_left_outof" {
	"move_and_ranged_anims\crossbow_lean_left_outof.smd"
	activity "ACT_LEAN_LEFT_OUTOF_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_attack_leaning_left" {
	"move_and_ranged_anims\crossbow_attack_leaning_left.smd"
	activity "ACT_RANGE_ATTACK_LEANING_LEFT_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_lean_right_into" {
	"move_and_ranged_anims\crossbow_lean_right_into.smd"
	activity "ACT_LEAN_RIGHT_INTO_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_lean_right_idle" {
	"move_and_ranged_anims\crossbow_lean_right_idle.smd"
	activity "ACT_LEAN_RIGHT_IDLE_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_lean_right_outof" {
	"move_and_ranged_anims\crossbow_lean_right_outof.smd"
	activity "ACT_LEAN_RIGHT_OUTOF_CROSSBOW" 100
	fps 30
}
$sequence "crossbow_attack_leaning_right" {
	"move_and_ranged_anims\crossbow_attack_leaning_right.smd"
	activity "ACT_RANGE_ATTACK_LEANING_RIGHT_CROSSBOW" 100
	fps 30
}
$sequence "enfield_aim_layer" {
	"move_and_ranged_anims\enfield_aim_UR.smd"
	"move_and_ranged_anims\enfield_aim_UC.smd"
	"move_and_ranged_anims\enfield_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "enfield_bobble_delta" {
	"move_and_ranged_anims\enfield_bobble_delta.smd"
	fps 30
}
$sequence "enfield_attack_delta" {
	"move_and_ranged_anims\enfield_attack_delta.smd"
	fps 30
}
$sequence "enfield_dryfire_delta" {
	"move_and_ranged_anims\enfield_dryfire_delta.smd"
	fps 30
}
$sequence "enfield_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_ENFIELD" 1
	fps 30
}
$sequence "enfield_aggressive_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_ENFIELD" 1
	fps 18
}
$sequence "enfield_sneak" {
	"move_and_ranged_anims\sneak_180.smd"
	"move_and_ranged_anims\sneak_225.smd"
	"move_and_ranged_anims\sneak_270.smd"
	"move_and_ranged_anims\sneak_315.smd"
	"move_and_ranged_anims\sneak_0.smd"
	"move_and_ranged_anims\sneak_45.smd"
	"move_and_ranged_anims\sneak_90.smd"
	"move_and_ranged_anims\sneak_135.smd"
	"move_and_ranged_anims\sneak_180.smd"
	activity "ACT_SNEAK_ENFIELD" 1
	fps 30
}
$sequence "enfield_crouch" {
	"move_and_ranged_anims\crouch.smd"
	activity "ACT_CROUCH_ENFIELD" 1
	fps 30
}
$sequence "enfield_ready" {
	"move_and_ranged_anims\enfield_ready.smd"
	activity "ACT_AIM_ENFIELD" 1
	fps 30
}
$sequence "enfield_dodge" {
	"move_and_ranged_anims\enfield_dodge.smd"
	activity "ACT_DODGE_ENFIELD" 1
	fps 30
}
$sequence "enfield_attack" {
	"move_and_ranged_anims\enfield_attack.smd"
	activity "ACT_RANGE_ATTACK_ENFIELD" 1
	fps 30
}
$sequence "enfield_dryfire" {
	"move_and_ranged_anims\enfield_dryfire.smd"
	activity "ACT_DRYFIRE_ENFIELD" 1
	fps 30
}
$sequence "enfield_reload" {
	"move_and_ranged_anims\enfield_reload.smd"
	activity "ACT_RELOAD_ENFIELD" 1
	fps 30
}
$sequence "enfield_attack_layer" {
	"move_and_ranged_anims\enfield_attack_layer.smd"
	activity "ACT_RANGE_ATTACK_LAYER_ENFIELD" 1
	fps 30
}
$sequence "enfield_dryfire_layer" {
	"move_and_ranged_anims\enfield_dryfire_layer.smd"
	activity "ACT_DRYFIRE_LAYER_ENFIELD" 1
	fps 30
}
$sequence "enfield_reload_layer" {
	"move_and_ranged_anims\enfield_reload_layer.smd"
	activity "ACT_RELOAD_LAYER_ENFIELD" 1
	fps 30
}
$sequence "enfield_idle" {
	"move_and_ranged_anims\enfield_idle.smd"
	activity "ACT_IDLE_ENFIELD" 20
	fps 30
}
$sequence "enfield_fidget" {
	"move_and_ranged_anims\enfield_fidget.smd"
	activity "ACT_IDLE_ENFIELD" 1
	fps 30
}
$sequence "enfield_relaxed_move_layer" {
	"move_and_ranged_anims\enfield_relaxed_move_layer.smd"
	fps 30
}
$sequence "enfield_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_ENFIELD" 1
	fps 30
}
$sequence "enfield_relaxed_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_RELAXED_ENFIELD" 1
	fps 18
}
$sequence "flamet_aim_layer" {
	"move_and_ranged_anims\flamet_aim_UR.smd"
	"move_and_ranged_anims\flamet_aim_UC.smd"
	"move_and_ranged_anims\flamet_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "flamet_bobble_delta" {
	"move_and_ranged_anims\flamet_bobble_delta.smd"
	fps 30
}
$sequence "flamet_attack_delta" {
	"move_and_ranged_anims\flamet_attack_delta.smd"
	fps 30
}
$sequence "flamet_dryfire_delta" {
	"move_and_ranged_anims\flamet_dryfire_delta.smd"
	fps 30
}
$sequence "flamet_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_FLAMETHROWER" 1
	fps 30
}
$sequence "flamet_aggressive_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_FLAMETHROWER" 1
	fps 18
}
$sequence "flamet_sneak" {
	"move_and_ranged_anims\sneak_180.smd"
	"move_and_ranged_anims\sneak_225.smd"
	"move_and_ranged_anims\sneak_270.smd"
	"move_and_ranged_anims\sneak_315.smd"
	"move_and_ranged_anims\sneak_0.smd"
	"move_and_ranged_anims\sneak_45.smd"
	"move_and_ranged_anims\sneak_90.smd"
	"move_and_ranged_anims\sneak_135.smd"
	"move_and_ranged_anims\sneak_180.smd"
	activity "ACT_SNEAK_FLAMETHROWER" 1
	fps 30
}
$sequence "flamet_crouch" {
	"move_and_ranged_anims\crouch.smd"
	activity "ACT_CROUCH_FLAMETHROWER" 1
	fps 30
}
$sequence "flamet_ready" {
	"move_and_ranged_anims\flamet_ready.smd"
	activity "ACT_AIM_FLAMETHROWER" 1
	fps 30
}
$sequence "flamet_dodge" {
	"move_and_ranged_anims\flamet_dodge.smd"
	activity "ACT_DODGE_FLAMETHROWER" 1
	fps 30
}
$sequence "flamet_attack" {
	"move_and_ranged_anims\flamet_attack.smd"
	activity "ACT_RANGE_ATTACK_FLAMETHROWER" 1
	fps 30
}
$sequence "flamet_dryfire" {
	"move_and_ranged_anims\flamet_dryfire.smd"
	activity "ACT_DRYFIRE_FLAMETHROWER" 1
	fps 30
}
$sequence "flamet_reload" {
	"move_and_ranged_anims\flamet_reload.smd"
	activity "ACT_RELOAD_FLAMETHROWER" 1
	fps 30
}
$sequence "flamet_attack_layer" {
	"move_and_ranged_anims\flamet_attack_layer.smd"
	activity "ACT_RANGE_ATTACK_LAYER_FLAMETHROWER" 1
	fps 30
}
$sequence "flamet_dryfire_layer" {
	"move_and_ranged_anims\flamet_dryfire_layer.smd"
	activity "ACT_DRYFIRE_LAYER_FLAMETHROWER" 1
	fps 30
}
$sequence "flamet_reload_layer" {
	"move_and_ranged_anims\flamet_reload_layer.smd"
	activity "ACT_RELOAD_LAYER_FLAMETHROWER" 1
	fps 30
}
$sequence "flamet_idle" {
	"move_and_ranged_anims\flamet_idle.smd"
	activity "ACT_IDLE_FLAMETHROWER" 20
	fps 30
}
$sequence "flamet_fidget" {
	"move_and_ranged_anims\flamet_fidget.smd"
	activity "ACT_IDLE_FLAMETHROWER" 1
	fps 30
}
$sequence "flamet_relaxed_move_layer" {
	"move_and_ranged_anims\flamet_relaxed_move_layer.smd"
	fps 30
}
$sequence "flamet_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_FLAMETHROWER" 1
	fps 30
}
$sequence "flamet_relaxed_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_RELAXED_FLAMETHROWER" 1
	fps 18
}
$sequence "glock_aim_layer" {
	"move_and_ranged_anims\glock_aim_UR.smd"
	"move_and_ranged_anims\glock_aim_UC.smd"
	"move_and_ranged_anims\glock_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "glock_bobble_delta" {
	"move_and_ranged_anims\glock_bobble_delta.smd"
	fps 30
}
$sequence "glock_attack_delta" {
	"move_and_ranged_anims\glock_attack_delta.smd"
	fps 30
}
$sequence "glock_dryfire_delta" {
	"move_and_ranged_anims\glock_dryfire_delta.smd"
	fps 30
}
$sequence "glock_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_GLOCK" 1
	fps 30
}
$sequence "glock_aggressive_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_GLOCK" 1
	fps 18
}
$sequence "glock_sneak" {
	"move_and_ranged_anims\sneak_180.smd"
	"move_and_ranged_anims\sneak_225.smd"
	"move_and_ranged_anims\sneak_270.smd"
	"move_and_ranged_anims\sneak_315.smd"
	"move_and_ranged_anims\sneak_0.smd"
	"move_and_ranged_anims\sneak_45.smd"
	"move_and_ranged_anims\sneak_90.smd"
	"move_and_ranged_anims\sneak_135.smd"
	"move_and_ranged_anims\sneak_180.smd"
	activity "ACT_SNEAK_GLOCK" 1
	fps 30
}
$sequence "glock_crouch" {
	"move_and_ranged_anims\crouch.smd"
	activity "ACT_CROUCH_GLOCK" 1
	fps 30
}
$sequence "glock_ready" {
	"move_and_ranged_anims\glock_ready.smd"
	activity "ACT_AIM_GLOCK" 1
	fps 30
}
$sequence "glock_dodge" {
	"move_and_ranged_anims\glock_dodge.smd"
	activity "ACT_DODGE_GLOCK" 1
	fps 30
}
$sequence "glock_attack" {
	"move_and_ranged_anims\glock_attack.smd"
	activity "ACT_RANGE_ATTACK_GLOCK" 1
	fps 30
}
$sequence "glock_dryfire" {
	"move_and_ranged_anims\glock_dryfire.smd"
	activity "ACT_DRYFIRE_GLOCK" 1
	fps 30
}
$sequence "glock_reload" {
	"move_and_ranged_anims\glock_reload.smd"
	activity "ACT_RELOAD_GLOCK" 1
	fps 30
}
$sequence "glock_attack_layer" {
	"move_and_ranged_anims\glock_attack_layer.smd"
	activity "ACT_RANGE_ATTACK_LAYER_GLOCK" 1
	fps 30
}
$sequence "glock_dryfire_layer" {
	"move_and_ranged_anims\glock_dryfire_layer.smd"
	activity "ACT_DRYFIRE_LAYER_GLOCK" 1
	fps 30
}
$sequence "glock_reload_layer" {
	"move_and_ranged_anims\glock_reload_layer.smd"
	activity "ACT_RELOAD_LAYER_GLOCK" 1
	fps 30
}
$sequence "glock_idle" {
	"move_and_ranged_anims\glock_idle.smd"
	activity "ACT_IDLE_GLOCK" 20
	fps 30
}
$sequence "glock_fidget" {
	"move_and_ranged_anims\glock_fidget.smd"
	activity "ACT_IDLE_GLOCK" 1
	fps 30
}
$sequence "glock_relaxed_move_layer" {
	"move_and_ranged_anims\glock_relaxed_move_layer.smd"
	fps 30
}
$sequence "glock_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_GLOCK" 1
	fps 30
}
$sequence "glock_relaxed_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_RELAXED_GLOCK" 1
	fps 18
}
$sequence "m37_aim_layer" {
	"move_and_ranged_anims\m37_aim_UR.smd"
	"move_and_ranged_anims\m37_aim_UC.smd"
	"move_and_ranged_anims\m37_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "m37_bobble_delta" {
	"move_and_ranged_anims\m37_bobble_delta.smd"
	fps 30
}
$sequence "m37_attack_delta" {
	"move_and_ranged_anims\m37_attack_delta.smd"
	fps 30
}
$sequence "m37_dryfire_delta" {
	"move_and_ranged_anims\m37_dryfire_delta.smd"
	fps 30
}
$sequence "m37_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_M37" 1
	fps 30
}
$sequence "m37_aggressive_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_M37" 1
	fps 18
}
$sequence "m37_sneak" {
	"move_and_ranged_anims\sneak_180.smd"
	"move_and_ranged_anims\sneak_225.smd"
	"move_and_ranged_anims\sneak_270.smd"
	"move_and_ranged_anims\sneak_315.smd"
	"move_and_ranged_anims\sneak_0.smd"
	"move_and_ranged_anims\sneak_45.smd"
	"move_and_ranged_anims\sneak_90.smd"
	"move_and_ranged_anims\sneak_135.smd"
	"move_and_ranged_anims\sneak_180.smd"
	activity "ACT_SNEAK_M37" 1
	fps 30
}
$sequence "m37_crouch" {
	"move_and_ranged_anims\crouch.smd"
	activity "ACT_CROUCH_M37" 1
	fps 30
}
$sequence "m37_ready" {
	"move_and_ranged_anims\m37_ready.smd"
	activity "ACT_AIM_M37" 1
	fps 30
}
$sequence "m37_dodge" {
	"move_and_ranged_anims\m37_dodge.smd"
	activity "ACT_DODGE_M37" 1
	fps 30
}
$sequence "m37_attack" {
	"move_and_ranged_anims\m37_attack.smd"
	activity "ACT_RANGE_ATTACK_M37" 1
	fps 30
}
$sequence "m37_dryfire" {
	"move_and_ranged_anims\m37_dryfire.smd"
	activity "ACT_DRYFIRE_M37" 1
	fps 30
}
$sequence "m37_reload" {
	"move_and_ranged_anims\m37_reload.smd"
	activity "ACT_RELOAD_M37" 1
	fps 30
}
$sequence "m37_attack_layer" {
	"move_and_ranged_anims\m37_attack_layer.smd"
	activity "ACT_RANGE_ATTACK_LAYER_M37" 1
	fps 30
}
$sequence "m37_dryfire_layer" {
	"move_and_ranged_anims\m37_dryfire_layer.smd"
	activity "ACT_DRYFIRE_LAYER_M37" 1
	fps 30
}
$sequence "m37_reload_layer" {
	"move_and_ranged_anims\m37_reload_layer.smd"
	activity "ACT_RELOAD_LAYER_M37" 1
	fps 30
}
$sequence "m37_idle" {
	"move_and_ranged_anims\m37_idle.smd"
	activity "ACT_IDLE_M37" 20
	fps 30
}
$sequence "m37_fidget" {
	"move_and_ranged_anims\m37_fidget.smd"
	activity "ACT_IDLE_M37" 1
	fps 30
}
$sequence "m37_relaxed_move_layer" {
	"move_and_ranged_anims\m37_relaxed_move_layer.smd"
	fps 30
}
$sequence "m37_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_M37" 1
	fps 30
}
$sequence "m37_relaxed_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_RELAXED_M37" 1
	fps 18
}
$sequence "m37_walkb" {
	"move_and_ranged_anims\combat_walk_180.smd"
	activity "ACT_WALKB_M37" 100
	fps 60
}
$sequence "pistol_relaxed_walk_layer" {
	"move_and_ranged_anims\pistol_relaxed_walk_layer.smd"
	fps 30
}
$sequence "pistol_relaxed_run_layer" {
	"move_and_ranged_anims\pistol_relaxed_run_layer.smd"
	fps 30
}
$sequence "pistol_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_PISTOL" 1
	fps 30
}
$sequence "pistol_relaxed_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_RELAXED_PISTOL" 1
	fps 18
}
$sequence "pistol_crouch_aim_layer" {
	"move_and_ranged_anims\pistol_crouch_aim_UR.smd"
	"move_and_ranged_anims\pistol_crouch_aim_UC.smd"
	"move_and_ranged_anims\pistol_crouch_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "pistol_crouch_attack_delta" {
	"move_and_ranged_anims\pistol_crouch_attack_delta.smd"
	fps 30
}
$sequence "pistol_crouch_idle_delta" {
	"move_and_ranged_anims\pistol_crouch_idle_delta.smd"
	fps 30
}
$sequence "pistol_crouch_idle" {
	"move_and_ranged_anims\pistol_crouch_idle.smd"
	fps 30
}
$sequence "pistol_crouch" {
	"move_and_ranged_anims\crouch.smd"
	activity "ACT_CROUCH_PISTOL" 1
	fps 30
}
$sequence "pistol_attack_crouched" {
	"move_and_ranged_anims\pistol_crouch_attack.smd"
	activity "ACT_RANGE_ATTACK_CROUCHED_PISTOL" 1
	fps 30
}
$sequence "pistol_crunch_into" {
	"move_and_ranged_anims\pistol_crunch_into.smd"
	activity "ACT_CRUNCH_INTO_PISTOL" 100
	fps 30
}
$sequence "pistol_crunch_idle" {
	"move_and_ranged_anims\pistol_crunch_idle.smd"
	activity "ACT_CRUNCH_IDLE_PISTOL" 100
	fps 30
}
$sequence "pistol_crunch_outof" {
	"move_and_ranged_anims\pistol_crunch_outof.smd"
	activity "ACT_CRUNCH_OUTOF_PISTOL" 100
	fps 30
}
$sequence "Pistol_Reload_Fast" {
	"move_and_ranged_anims\Pistol_Reload_Fast.smd"
	activity "ACT_RELOAD_FAST_PISTOL" 100
	fps 30
}
$sequence "pistol_alert_front_into" {
	"move_and_ranged_anims\pistol_alert_front_into.smd"
	activity "ACT_ALERT_FRONT_INTO_PISTOL" 100
	fps 30
}
$sequence "pistol_alert_l45_into" {
	"move_and_ranged_anims\pistol_alert_l45_into.smd"
	activity "ACT_ALERT_L45_INTO_PISTOL" 100
	fps 30
}
$sequence "pistol_alert_l90_into" {
	"move_and_ranged_anims\pistol_alert_l90_into.smd"
	activity "ACT_ALERT_L90_INTO_PISTOL" 100
	fps 30
}
$sequence "pistol_alert_l135_into" {
	"move_and_ranged_anims\pistol_alert_l135_into.smd"
	activity "ACT_ALERT_L135_INTO_PISTOL" 100
	fps 30
}
$sequence "pistol_alert_r45_into" {
	"move_and_ranged_anims\pistol_alert_r45_into.smd"
	activity "ACT_ALERT_R45_INTO_PISTOL" 100
	fps 30
}
$sequence "pistol_alert_r90_into" {
	"move_and_ranged_anims\pistol_alert_r90_into.smd"
	activity "ACT_ALERT_R90_INTO_PISTOL" 100
	fps 30
}
$sequence "pistol_alert_r135_into" {
	"move_and_ranged_anims\pistol_alert_r135_into.smd"
	activity "ACT_ALERT_R135_INTO_PISTOL" 100
	fps 30
}
$sequence "pistol_alert_180_into" {
	"move_and_ranged_anims\pistol_alert_180_into.smd"
	activity "ACT_ALERT_180_INTO_PISTOL" 100
	fps 30
}
$sequence "pistol_alert_front_outof" {
	"move_and_ranged_anims\pistol_alert_front_outof.smd"
	activity "ACT_ALERT_FRONT_OUTOF_PISTOL" 100
	fps 30
}
$sequence "pistol_alert_l45_outof" {
	"move_and_ranged_anims\pistol_alert_l45_outof.smd"
	activity "ACT_ALERT_L45_OUTOF_PISTOL" 100
	fps 30
}
$sequence "pistol_alert_l90_outof" {
	"move_and_ranged_anims\pistol_alert_l90_outof.smd"
	activity "ACT_ALERT_L90_OUTOF_PISTOL" 100
	fps 30
}
$sequence "pistol_alert_l135_outof" {
	"move_and_ranged_anims\pistol_alert_l135_outof.smd"
	activity "ACT_ALERT_L135_OUTOF_PISTOL" 100
	fps 30
}
$sequence "pistol_alert_r45_outof" {
	"move_and_ranged_anims\pistol_alert_r45_outof.smd"
	activity "ACT_ALERT_R45_OUTOF_PISTOL" 100
	fps 30
}
$sequence "pistol_alert_r90_outof" {
	"move_and_ranged_anims\pistol_alert_r90_outof.smd"
	activity "ACT_ALERT_R90_OUTOF_PISTOL" 100
	fps 30
}
$sequence "pistol_alert_r135_outof" {
	"move_and_ranged_anims\pistol_alert_r135_outof.smd"
	activity "ACT_ALERT_R135_OUTOF_PISTOL" 100
	fps 30
}
$sequence "pistol_alert_180_outof" {
	"move_and_ranged_anims\pistol_alert_180_outof.smd"
	activity "ACT_ALERT_180_OUTOF_PISTOL" 100
	fps 30
}
$sequence "pistol_hunt_walk" {
	"move_and_ranged_anims\pistol_hunt_walk.smd"
	activity "ACT_HUNT_WALK_PISTOL" 100
	fps 30
}
$sequence "pistol_hunt_walk_lookleft" {
	"move_and_ranged_anims\pistol_hunt_walk_lookleft.smd"
	activity "ACT_HUNT_WALK_LOOKLEFT_PISTOL" 100
	fps 30
}
$sequence "pistol_hunt_walk_lookright" {
	"move_and_ranged_anims\pistol_hunt_walk_lookright.smd"
	activity "ACT_HUNT_WALK_LOOKRIGHT_PISTOL" 100
	fps 30
}
$sequence "pistol_walkb" {
	"move_and_ranged_anims\combat_walk_180.smd"
	activity "ACT_WALKB_PISTOL" 100
	fps 60
}
$sequence "pistol_alert_fidget_agro_lookaround" {
	"move_and_ranged_anims\pistol_alert_fidget_agro_lookaround.smd"
	activity "ACT_ALERT_FIDGET_AGRO_LOOKAROUND_PISTOL" 100
	fps 30
}
$sequence "pistol_alert_fidget_lookaround" {
	"move_and_ranged_anims\pistol_alert_fidget_lookaround.smd"
	activity "ACT_ALERT_FIDGET_LOOKAROUND_PISTOL" 100
	fps 30
}
$sequence "pistol_midcrouch_aim_layer" {
	"move_and_ranged_anims\pistol_midcrouch_aim_UR.smd"
	"move_and_ranged_anims\pistol_midcrouch_aim_UC.smd"
	"move_and_ranged_anims\pistol_midcrouch_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "pistol_midcrouch_attack_delta" {
	"move_and_ranged_anims\pistol_midcrouch_attack_delta.smd"
	fps 30
}
$sequence "pistol_midcrouch_idle_delta" {
	"move_and_ranged_anims\pistol_midcrouch_idle_delta.smd"
	fps 30
}
$sequence "pistol_midcrouch_idle" {
	"move_and_ranged_anims\pistol_midcrouch_idle.smd"
	fps 30
}
$sequence "pistol_midcrouch" {
	"move_and_ranged_anims\pistol_midcrouch_idle.smd"
	activity "ACT_MIDCROUCH_PISTOL" 1
	fps 30
}
$sequence "pistol_attack_midcrouched" {
	"move_and_ranged_anims\pistol_midcrouch_attack.smd"
	activity "ACT_RANGE_ATTACK_MIDCROUCHED_PISTOL" 1
	fps 30
}
$sequence "pistol_midcrunch_into" {
	"move_and_ranged_anims\pistol_midcrunch_into.smd"
	activity "ACT_MIDCRUNCH_INTO_PISTOL" 100
	fps 30
}
$sequence "pistol_midcrunch_idle" {
	"move_and_ranged_anims\pistol_midcrunch_idle.smd"
	activity "ACT_MIDCRUNCH_IDLE_PISTOL" 100
	fps 30
}
$sequence "pistol_midcrunch_outof" {
	"move_and_ranged_anims\pistol_midcrunch_outof.smd"
	activity "ACT_MIDCRUNCH_OUTOF_PISTOL" 100
	fps 30
}
$sequence "rem700_aim_layer" {
	"move_and_ranged_anims\rem700_aim_UR.smd"
	"move_and_ranged_anims\rem700_aim_UC.smd"
	"move_and_ranged_anims\rem700_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "rem700_bobble_delta" {
	"move_and_ranged_anims\rem700_bobble_delta.smd"
	fps 30
}
$sequence "rem700_attack_delta" {
	"move_and_ranged_anims\rem700_attack_delta.smd"
	fps 30
}
$sequence "rem700_dryfire_delta" {
	"move_and_ranged_anims\rem700_dryfire_delta.smd"
	fps 30
}
$sequence "rem700_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_REM700" 1
	fps 30
}
$sequence "rem700_aggressive_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_REM700" 1
	fps 18
}
$sequence "rem700_sneak" {
	"move_and_ranged_anims\sneak_180.smd"
	"move_and_ranged_anims\sneak_225.smd"
	"move_and_ranged_anims\sneak_270.smd"
	"move_and_ranged_anims\sneak_315.smd"
	"move_and_ranged_anims\sneak_0.smd"
	"move_and_ranged_anims\sneak_45.smd"
	"move_and_ranged_anims\sneak_90.smd"
	"move_and_ranged_anims\sneak_135.smd"
	"move_and_ranged_anims\sneak_180.smd"
	activity "ACT_SNEAK_REM700" 1
	fps 30
}
$sequence "rem700_crouch" {
	"move_and_ranged_anims\crouch.smd"
	activity "ACT_CROUCH_REM700" 1
	fps 30
}
$sequence "rem700_ready" {
	"move_and_ranged_anims\rem700_ready.smd"
	activity "ACT_AIM_REM700" 1
	fps 30
}
$sequence "rem700_dodge" {
	"move_and_ranged_anims\rem700_dodge.smd"
	activity "ACT_DODGE_REM700" 1
	fps 30
}
$sequence "rem700_attack" {
	"move_and_ranged_anims\rem700_attack.smd"
	activity "ACT_RANGE_ATTACK_REM700" 1
	fps 30
}
$sequence "rem700_dryfire" {
	"move_and_ranged_anims\rem700_dryfire.smd"
	activity "ACT_DRYFIRE_REM700" 1
	fps 30
}
$sequence "rem700_reload" {
	"move_and_ranged_anims\rem700_reload.smd"
	activity "ACT_RELOAD_REM700" 1
	fps 30
}
$sequence "rem700_attack_layer" {
	"move_and_ranged_anims\rem700_attack_layer.smd"
	activity "ACT_RANGE_ATTACK_LAYER_REM700" 1
	fps 30
}
$sequence "rem700_dryfire_layer" {
	"move_and_ranged_anims\rem700_dryfire_layer.smd"
	activity "ACT_DRYFIRE_LAYER_REM700" 1
	fps 30
}
$sequence "rem700_reload_layer" {
	"move_and_ranged_anims\rem700_reload_layer.smd"
	activity "ACT_RELOAD_LAYER_REM700" 1
	fps 30
}
$sequence "rem700_idle" {
	"move_and_ranged_anims\rem700_idle.smd"
	activity "ACT_IDLE_REM700" 20
	fps 30
}
$sequence "rem700_fidget" {
	"move_and_ranged_anims\rem700_fidget.smd"
	activity "ACT_IDLE_REM700" 1
	fps 30
}
$sequence "rem700_relaxed_move_layer" {
	"move_and_ranged_anims\rem700_relaxed_move_layer.smd"
	fps 30
}
$sequence "rem700_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_REM700" 1
	fps 30
}
$sequence "rem700_relaxed_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_RELAXED_REM700" 1
	fps 18
}
$sequence "smith_aim_layer" {
	"move_and_ranged_anims\smith_aim_UR.smd"
	"move_and_ranged_anims\smith_aim_UC.smd"
	"move_and_ranged_anims\smith_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "smith_bobble_delta" {
	"move_and_ranged_anims\smith_bobble_delta.smd"
	fps 30
}
$sequence "smith_attack_delta" {
	"move_and_ranged_anims\smith_attack_delta.smd"
	fps 30
}
$sequence "smith_dryfire_delta" {
	"move_and_ranged_anims\smith_dryfire_delta.smd"
	fps 30
}
$sequence "smith_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_SMITH" 1
	fps 30
}
$sequence "smith_aggressive_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_SMITH" 1
	fps 18
}
$sequence "smith_sneak" {
	"move_and_ranged_anims\sneak_180.smd"
	"move_and_ranged_anims\sneak_225.smd"
	"move_and_ranged_anims\sneak_270.smd"
	"move_and_ranged_anims\sneak_315.smd"
	"move_and_ranged_anims\sneak_0.smd"
	"move_and_ranged_anims\sneak_45.smd"
	"move_and_ranged_anims\sneak_90.smd"
	"move_and_ranged_anims\sneak_135.smd"
	"move_and_ranged_anims\sneak_180.smd"
	activity "ACT_SNEAK_SMITH" 1
	fps 30
}
$sequence "smith_crouch" {
	"move_and_ranged_anims\crouch.smd"
	activity "ACT_CROUCH_SMITH" 1
	fps 30
}
$sequence "smith_ready" {
	"move_and_ranged_anims\smith_ready.smd"
	activity "ACT_AIM_SMITH" 1
	fps 30
}
$sequence "smith_dodge" {
	"move_and_ranged_anims\smith_dodge.smd"
	activity "ACT_DODGE_SMITH" 1
	fps 30
}
$sequence "smith_attack" {
	"move_and_ranged_anims\smith_attack.smd"
	activity "ACT_RANGE_ATTACK_SMITH" 1
	fps 30
}
$sequence "smith_dryfire" {
	"move_and_ranged_anims\smith_dryfire.smd"
	activity "ACT_DRYFIRE_SMITH" 1
	fps 30
}
$sequence "smith_reload" {
	"move_and_ranged_anims\smith_reload.smd"
	activity "ACT_RELOAD_SMITH" 1
	fps 30
}
$sequence "smith_attack_layer" {
	"move_and_ranged_anims\smith_attack_layer.smd"
	activity "ACT_RANGE_ATTACK_LAYER_SMITH" 1
	fps 30
}
$sequence "smith_dryfire_layer" {
	"move_and_ranged_anims\smith_dryfire_layer.smd"
	activity "ACT_DRYFIRE_LAYER_SMITH" 1
	fps 30
}
$sequence "smith_reload_layer" {
	"move_and_ranged_anims\smith_reload_layer.smd"
	activity "ACT_RELOAD_LAYER_SMITH" 1
	fps 30
}
$sequence "smith_idle" {
	"move_and_ranged_anims\smith_idle.smd"
	activity "ACT_IDLE_SMITH" 20
	fps 30
}
$sequence "smith_fidget" {
	"move_and_ranged_anims\smith_fidget.smd"
	activity "ACT_IDLE_SMITH" 1
	fps 30
}
$sequence "smith_corner_cover_idle" {
	"move_and_ranged_anims\smith_corner_cover_idle.smd"
	activity "ACT_CORNER_COVER_IDLE_SMITH" 100
	fps 30
}
$sequence "smith_lean_left_into" {
	"move_and_ranged_anims\smith_lean_left_into.smd"
	activity "ACT_LEAN_LEFT_INTO_SMITH" 100
	fps 30
}
$sequence "smith_lean_left_idle" {
	"move_and_ranged_anims\smith_lean_left_idle.smd"
	activity "ACT_LEAN_LEFT_IDLE_SMITH" 100
	fps 30
}
$sequence "smith_lean_left_outof" {
	"move_and_ranged_anims\smith_lean_left_outof.smd"
	activity "ACT_LEAN_LEFT_OUTOF_SMITH" 100
	fps 30
}
$sequence "smith_attack_leaning_left" {
	"move_and_ranged_anims\smith_attack_leaning_left.smd"
	activity "ACT_RANGE_ATTACK_LEANING_LEFT_SMITH" 100
	fps 30
}
$sequence "smith_lean_right_into" {
	"move_and_ranged_anims\smith_lean_right_into.smd"
	activity "ACT_LEAN_RIGHT_INTO_SMITH" 100
	fps 30
}
$sequence "smith_lean_right_idle" {
	"move_and_ranged_anims\smith_lean_right_idle.smd"
	activity "ACT_LEAN_RIGHT_IDLE_SMITH" 100
	fps 30
}
$sequence "smith_lean_right_outof" {
	"move_and_ranged_anims\smith_lean_right_outof.smd"
	activity "ACT_LEAN_RIGHT_OUTOF_SMITH" 100
	fps 30
}
$sequence "smith_attack_leaning_right" {
	"move_and_ranged_anims\smith_attack_leaning_right.smd"
	activity "ACT_RANGE_ATTACK_LEANING_RIGHT_SMITH" 100
	fps 30
}
$sequence "steyr_aim_layer" {
	"move_and_ranged_anims\steyr_aim_UR.smd"
	"move_and_ranged_anims\steyr_aim_UC.smd"
	"move_and_ranged_anims\steyr_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "steyr_crouch_aim_layer" {
	"move_and_ranged_anims\steyr_crouch_aim_UR.smd"
	"move_and_ranged_anims\steyr_crouch_aim_UC.smd"
	"move_and_ranged_anims\steyr_crouch_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "steyr_bobble_delta" {
	"move_and_ranged_anims\steyr_bobble_delta.smd"
	fps 30
}
$sequence "steyr_attack_delta" {
	"move_and_ranged_anims\steyr_attack_delta.smd"
	fps 30
}
$sequence "steyr_dryfire_delta" {
	"move_and_ranged_anims\steyr_dryfire_delta.smd"
	fps 30
}
$sequence "steyr_crouch_attack_delta" {
	"move_and_ranged_anims\steyr_crouch_attack_delta.smd"
	fps 30
}
$sequence "steyr_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_STEYR" 1
	fps 30
}
$sequence "steyr_aggressive_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_STEYR" 1
	fps 18
}
$sequence "steyr_sneak" {
	"move_and_ranged_anims\sneak_180.smd"
	"move_and_ranged_anims\sneak_225.smd"
	"move_and_ranged_anims\sneak_270.smd"
	"move_and_ranged_anims\sneak_315.smd"
	"move_and_ranged_anims\sneak_0.smd"
	"move_and_ranged_anims\sneak_45.smd"
	"move_and_ranged_anims\sneak_90.smd"
	"move_and_ranged_anims\sneak_135.smd"
	"move_and_ranged_anims\sneak_180.smd"
	activity "ACT_SNEAK_STEYR" 1
	fps 30
}
$sequence "steyr_crouch" {
	"move_and_ranged_anims\crouch.smd"
	activity "ACT_CROUCH_STEYR" 1
	fps 30
}
$sequence "steyr_ready" {
	"move_and_ranged_anims\steyr_ready.smd"
	activity "ACT_AIM_STEYR" 1
	fps 30
}
$sequence "steyr_dodge" {
	"move_and_ranged_anims\steyr_dodge.smd"
	activity "ACT_DODGE_STEYR" 1
	fps 30
}
$sequence "steyr_attack" {
	"move_and_ranged_anims\steyr_attack.smd"
	activity "ACT_RANGE_ATTACK_STEYR" 1
	fps 30
}
$sequence "steyr_attack_crouched" {
	"move_and_ranged_anims\steyr_crouch_attack.smd"
	activity "ACT_RANGE_ATTACK_CROUCHED_STEYR" 1
	fps 30
}
$sequence "steyr_dryfire" {
	"move_and_ranged_anims\steyr_dryfire.smd"
	activity "ACT_DRYFIRE_STEYR" 1
	fps 30
}
$sequence "steyr_reload" {
	"move_and_ranged_anims\steyr_reload.smd"
	activity "ACT_RELOAD_STEYR" 1
	fps 30
}
$sequence "steyr_attack_layer" {
	"move_and_ranged_anims\steyr_attack_layer.smd"
	activity "ACT_RANGE_ATTACK_LAYER_STEYR" 1
	fps 30
}
$sequence "steyr_dryfire_layer" {
	"move_and_ranged_anims\steyr_dryfire_layer.smd"
	activity "ACT_DRYFIRE_LAYER_STEYR" 1
	fps 30
}
$sequence "steyr_reload_layer" {
	"move_and_ranged_anims\steyr_reload_layer.smd"
	activity "ACT_RELOAD_LAYER_STEYR" 1
	fps 30
}
$sequence "steyr_idle" {
	"move_and_ranged_anims\steyr_idle.smd"
	activity "ACT_IDLE_STEYR" 20
	fps 30
}
$sequence "steyr_fidget" {
	"move_and_ranged_anims\steyr_fidget.smd"
	activity "ACT_IDLE_STEYR" 1
	fps 30
}
$sequence "steyr_relaxed_move_layer" {
	"move_and_ranged_anims\steyr_relaxed_move_layer.smd"
	fps 30
}
$sequence "steyr_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_STEYR" 1
	fps 30
}
$sequence "steyr_relaxed_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_RELAXED_STEYR" 1
	fps 18
}
$sequence "steyr_midcrouch_aim_layer" {
	"move_and_ranged_anims\steyr_midcrouch_aim_UR.smd"
	"move_and_ranged_anims\steyr_midcrouch_aim_UC.smd"
	"move_and_ranged_anims\steyr_midcrouch_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "steyr_midcrouch_attack_delta" {
	"move_and_ranged_anims\steyr_midcrouch_attack_delta.smd"
	fps 30
}
$sequence "steyr_midcrouch_idle_delta" {
	"move_and_ranged_anims\steyr_midcrouch_idle_delta.smd"
	fps 30
}
$sequence "steyr_midcrouch_idle" {
	"move_and_ranged_anims\steyr_midcrouch_idle.smd"
	fps 30
}
$sequence "steyr_midcrouch" {
	"move_and_ranged_anims\steyr_midcrouch_idle.smd"
	activity "ACT_MIDCROUCH_STEYR" 1
	fps 30
}
$sequence "steyr_attack_midcrouched" {
	"move_and_ranged_anims\steyr_midcrouch_attack.smd"
	activity "ACT_RANGE_ATTACK_MIDCROUCHED_STEYR" 1
	fps 30
}
$sequence "steyr_midcrunch_into" {
	"move_and_ranged_anims\steyr_midcrunch_into.smd"
	activity "ACT_MIDCRUNCH_INTO_STEYR" 100
	fps 30
}
$sequence "steyr_midcrunch_idle" {
	"move_and_ranged_anims\steyr_midcrunch_idle.smd"
	activity "ACT_MIDCRUNCH_IDLE_STEYR" 100
	fps 30
}
$sequence "steyr_midcrunch_outof" {
	"move_and_ranged_anims\steyr_midcrunch_outof.smd"
	activity "ACT_MIDCRUNCH_OUTOF_STEYR" 100
	fps 30
}
$sequence "Steyr_Reload_Fast" {
	"move_and_ranged_anims\steyr_Reload_Fast.smd"
	activity "ACT_RELOAD_FAST_STEYR" 100
	fps 30
}
$sequence "steyr_corner_cover_idle" {
	"move_and_ranged_anims\steyr_corner_cover_idle.smd"
	activity "ACT_CORNER_COVER_IDLE_STEYR" 100
	fps 30
}
$sequence "steyr_crunch_into" {
	"move_and_ranged_anims\steyr_crunch_into.smd"
	activity "ACT_CRUNCH_INTO_STEYR" 100
	fps 30
}
$sequence "steyr_crunch_idle" {
	"move_and_ranged_anims\steyr_crunch_idle.smd"
	activity "ACT_CRUNCH_IDLE_STEYR" 100
	fps 30
}
$sequence "steyr_crunch_outof" {
	"move_and_ranged_anims\steyr_crunch_outof.smd"
	activity "ACT_CRUNCH_OUTOF_STEYR" 100
	fps 30
}
$sequence "steyr_alert_front_into" {
	"move_and_ranged_anims\steyr_alert_front_into.smd"
	activity "ACT_ALERT_FRONT_INTO_STEYR" 100
	fps 30
}
$sequence "steyr_alert_l90_into" {
	"move_and_ranged_anims\steyr_alert_l90_into.smd"
	activity "ACT_ALERT_L90_INTO_STEYR" 100
	fps 30
}
$sequence "steyr_alert_r90_into" {
	"move_and_ranged_anims\steyr_alert_r90_into.smd"
	activity "ACT_ALERT_R90_INTO_STEYR" 100
	fps 30
}
$sequence "steyr_alert_180_into" {
	"move_and_ranged_anims\steyr_alert_180_into.smd"
	activity "ACT_ALERT_180_INTO_STEYR" 100
	fps 30
}
$sequence "steyr_alert_front_outof" {
	"move_and_ranged_anims\steyr_alert_front_outof.smd"
	activity "ACT_ALERT_FRONT_OUTOF_STEYR" 100
	fps 30
}
$sequence "steyr_alert_l90_outof" {
	"move_and_ranged_anims\steyr_alert_l90_outof.smd"
	activity "ACT_ALERT_L90_OUTOF_STEYR" 100
	fps 30
}
$sequence "steyr_alert_r90_outof" {
	"move_and_ranged_anims\steyr_alert_r90_outof.smd"
	activity "ACT_ALERT_R90_OUTOF_STEYR" 100
	fps 30
}
$sequence "steyr_alert_180_outof" {
	"move_and_ranged_anims\steyr_alert_180_outof.smd"
	activity "ACT_ALERT_180_OUTOF_STEYR" 100
	fps 30
}
$sequence "steyr_hunt_walk" {
	"move_and_ranged_anims\steyr_hunt_walk.smd"
	activity "ACT_HUNT_WALK_STEYR" 100
	fps 30
}
$sequence "steyr_hunt_walk_lookleft" {
	"move_and_ranged_anims\steyr_hunt_walk_lookleft.smd"
	activity "ACT_HUNT_WALK_LOOKLEFT_STEYR" 100
	fps 30
}
$sequence "steyr_hunt_walk_lookright" {
	"move_and_ranged_anims\steyr_hunt_walk_lookright.smd"
	activity "ACT_HUNT_WALK_LOOKRIGHT_STEYR" 100
	fps 30
}
$sequence "steyr_lean_left_into" {
	"move_and_ranged_anims\steyr_lean_left_into.smd"
	activity "ACT_LEAN_LEFT_INTO_STEYR" 100
	fps 30
}
$sequence "steyr_lean_left_idle" {
	"move_and_ranged_anims\steyr_lean_left_idle.smd"
	activity "ACT_LEAN_LEFT_IDLE_STEYR" 100
	fps 30
}
$sequence "steyr_lean_left_outof" {
	"move_and_ranged_anims\steyr_lean_left_outof.smd"
	activity "ACT_LEAN_LEFT_OUTOF_STEYR" 100
	fps 30
}
$sequence "steyr_attack_leaning_left" {
	"move_and_ranged_anims\steyr_attack_leaning_left.smd"
	activity "ACT_RANGE_ATTACK_LEANING_LEFT_STEYR" 100
	fps 30
}
$sequence "steyr_lean_right_into" {
	"move_and_ranged_anims\steyr_lean_right_into.smd"
	activity "ACT_LEAN_RIGHT_INTO_STEYR" 100
	fps 30
}
$sequence "steyr_lean_right_idle" {
	"move_and_ranged_anims\steyr_lean_right_idle.smd"
	activity "ACT_LEAN_RIGHT_IDLE_STEYR" 100
	fps 30
}
$sequence "steyr_lean_right_outof" {
	"move_and_ranged_anims\steyr_lean_right_outof.smd"
	activity "ACT_LEAN_RIGHT_OUTOF_STEYR" 100
	fps 30
}
$sequence "steyr_attack_leaning_right" {
	"move_and_ranged_anims\steyr_attack_leaning_right.smd"
	activity "ACT_RANGE_ATTACK_LEANING_RIGHT_STEYR" 100
	fps 30
}
$sequence "supershotgun_aim_layer" {
	"move_and_ranged_anims\supershotgun_aim_UR.smd"
	"move_and_ranged_anims\supershotgun_aim_UC.smd"
	"move_and_ranged_anims\supershotgun_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "supershotgun_bobble_delta" {
	"move_and_ranged_anims\supershotgun_bobble_delta.smd"
	fps 30
}
$sequence "supershotgun_attack_delta" {
	"move_and_ranged_anims\supershotgun_attack_delta.smd"
	fps 30
}
$sequence "supershotgun_dryfire_delta" {
	"move_and_ranged_anims\supershotgun_dryfire_delta.smd"
	fps 30
}
$sequence "supershotgun_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_SUPERSHOTGUN" 1
	fps 30
}
$sequence "supershotgun_aggressive_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_SUPERSHOTGUN" 1
	fps 18
}
$sequence "supershotgun_sneak" {
	"move_and_ranged_anims\sneak_180.smd"
	"move_and_ranged_anims\sneak_225.smd"
	"move_and_ranged_anims\sneak_270.smd"
	"move_and_ranged_anims\sneak_315.smd"
	"move_and_ranged_anims\sneak_0.smd"
	"move_and_ranged_anims\sneak_45.smd"
	"move_and_ranged_anims\sneak_90.smd"
	"move_and_ranged_anims\sneak_135.smd"
	"move_and_ranged_anims\sneak_180.smd"
	activity "ACT_SNEAK_SUPERSHOTGUN" 1
	fps 30
}
$sequence "supershotgun_crouch" {
	"move_and_ranged_anims\crouch.smd"
	activity "ACT_CROUCH_SUPERSHOTGUN" 1
	fps 30
}
$sequence "supershotgun_ready" {
	"move_and_ranged_anims\supershotgun_ready.smd"
	activity "ACT_AIM_SUPERSHOTGUN" 1
	fps 30
}
$sequence "supershotgun_dodge" {
	"move_and_ranged_anims\supershotgun_dodge.smd"
	activity "ACT_DODGE_SUPERSHOTGUN" 1
	fps 30
}
$sequence "supershotgun_attack" {
	"move_and_ranged_anims\supershotgun_attack.smd"
	activity "ACT_RANGE_ATTACK_SUPERSHOTGUN" 1
	fps 30
}
$sequence "supershotgun_dryfire" {
	"move_and_ranged_anims\supershotgun_dryfire.smd"
	activity "ACT_DRYFIRE_SUPERSHOTGUN" 1
	fps 30
}
$sequence "supershotgun_reload" {
	"move_and_ranged_anims\supershotgun_reload.smd"
	activity "ACT_RELOAD_SUPERSHOTGUN" 1
	fps 30
}
$sequence "supershotgun_attack_layer" {
	"move_and_ranged_anims\supershotgun_attack_layer.smd"
	activity "ACT_RANGE_ATTACK_LAYER_SUPERSHOTGUN" 1
	fps 30
}
$sequence "supershotgun_dryfire_layer" {
	"move_and_ranged_anims\supershotgun_dryfire_layer.smd"
	activity "ACT_DRYFIRE_LAYER_SUPERSHOTGUN" 1
	fps 30
}
$sequence "supershotgun_reload_layer" {
	"move_and_ranged_anims\supershotgun_reload_layer.smd"
	activity "ACT_RELOAD_LAYER_SUPERSHOTGUN" 1
	fps 30
}
$sequence "supershotgun_idle" {
	"move_and_ranged_anims\supershotgun_idle.smd"
	activity "ACT_IDLE_SUPERSHOTGUN" 20
	fps 30
}
$sequence "supershotgun_fidget" {
	"move_and_ranged_anims\supershotgun_fidget.smd"
	activity "ACT_IDLE_SUPERSHOTGUN" 1
	fps 30
}
$sequence "supershotgun_relaxed_move_layer" {
	"move_and_ranged_anims\supershotgun_relaxed_move_layer.smd"
	fps 30
}
$sequence "supershotgun_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_SUPERSHOTGUN" 1
	fps 30
}
$sequence "supershotgun_relaxed_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_RELAXED_SUPERSHOTGUN" 1
	fps 18
}
$sequence "supershotgun_hunt_walk" {
	"move_and_ranged_anims\supershotgun_hunt_walk.smd"
	activity "ACT_HUNT_WALK_SUPERSHOTGUN" 100
	fps 30
}
$sequence "supershotgun_hunt_walk_lookleft" {
	"move_and_ranged_anims\supershotgun_hunt_walk_lookleft.smd"
	activity "ACT_HUNT_WALK_LOOKLEFT_SUPERSHOTGUN" 100
	fps 30
}
$sequence "supershotgun_hunt_walk_lookright" {
	"move_and_ranged_anims\supershotgun_hunt_walk_lookright.smd"
	activity "ACT_HUNT_WALK_LOOKRIGHT_SUPERSHOTGUN" 100
	fps 30
}
$sequence "twohanded_aim_layer" {
	"move_and_ranged_anims\m37_aim_UR.smd"
	"move_and_ranged_anims\m37_aim_UC.smd"
	"move_and_ranged_anims\m37_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "twohanded_bobble_delta" {
	"move_and_ranged_anims\m37_bobble_delta.smd"
	fps 30
}
$sequence "twohanded_attack_delta" {
	"move_and_ranged_anims\m37_attack_delta.smd"
	fps 30
}
$sequence "twohanded_dryfire_delta" {
	"move_and_ranged_anims\m37_dryfire_delta.smd"
	fps 30
}
$sequence "twohanded_crouch_aim_layer" {
	"move_and_ranged_anims\twohanded_crouch_aim_UR.smd"
	"move_and_ranged_anims\twohanded_crouch_aim_UC.smd"
	"move_and_ranged_anims\twohanded_crouch_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "twohanded_crouch_attack_delta" {
	"move_and_ranged_anims\twohanded_crouch_attack_delta.smd"
	fps 30
}
$sequence "twohanded_crouch_idle_delta" {
	"move_and_ranged_anims\twohanded_crouch_idle_delta.smd"
	fps 30
}
$sequence "twohanded_crouch_idle" {
	"move_and_ranged_anims\twohanded_crouch_idle.smd"
	fps 30
}
$sequence "twohanded_crouch" {
	"move_and_ranged_anims\crouch.smd"
	activity "ACT_CROUCH_TWOHANDED" 1
	fps 30
}
$sequence "twohanded_attack_crouched" {
	"move_and_ranged_anims\twohanded_crouch_attack.smd"
	activity "ACT_RANGE_ATTACK_CROUCHED_TWOHANDED" 1
	fps 30
}
$sequence "twohanded_crunch_into" {
	"move_and_ranged_anims\twohanded_crunch_into.smd"
	activity "ACT_CRUNCH_INTO_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_crunch_idle" {
	"move_and_ranged_anims\twohanded_crunch_idle.smd"
	activity "ACT_CRUNCH_IDLE_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_crunch_outof" {
	"move_and_ranged_anims\twohanded_crunch_outof.smd"
	activity "ACT_CRUNCH_OUTOF_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_Reload_Fast" {
	"move_and_ranged_anims\twohanded_Reload_Fast.smd"
	activity "ACT_RELOAD_FAST_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_alert_front_into" {
	"move_and_ranged_anims\twohanded_alert_front_into.smd"
	activity "ACT_ALERT_FRONT_INTO_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_alert_l90_into" {
	"move_and_ranged_anims\twohanded_alert_l90_into.smd"
	activity "ACT_ALERT_L90_INTO_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_alert_r90_into" {
	"move_and_ranged_anims\twohanded_alert_r90_into.smd"
	activity "ACT_ALERT_R90_INTO_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_alert_180_into" {
	"move_and_ranged_anims\twohanded_alert_180_into.smd"
	activity "ACT_ALERT_180_INTO_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_alert_front_outof" {
	"move_and_ranged_anims\twohanded_alert_front_outof.smd"
	activity "ACT_ALERT_FRONT_OUTOF_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_alert_l90_outof" {
	"move_and_ranged_anims\twohanded_alert_l90_outof.smd"
	activity "ACT_ALERT_L90_OUTOF_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_alert_r90_outof" {
	"move_and_ranged_anims\twohanded_alert_r90_outof.smd"
	activity "ACT_ALERT_R90_OUTOF_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_alert_180_outof" {
	"move_and_ranged_anims\twohanded_alert_180_outof.smd"
	activity "ACT_ALERT_180_OUTOF_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_hunt_walk" {
	"move_and_ranged_anims\twohanded_hunt_walk.smd"
	activity "ACT_HUNT_WALK_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_hunt_walk_lookleft" {
	"move_and_ranged_anims\twohanded_hunt_walk_lookleft.smd"
	activity "ACT_HUNT_WALK_LOOKLEFT_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_hunt_walk_lookright" {
	"move_and_ranged_anims\twohanded_hunt_walk_lookright.smd"
	activity "ACT_HUNT_WALK_LOOKRIGHT_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_fidget_lookaround" {
	"move_and_ranged_anims\twohanded_fidget_lookaround.smd"
	activity "ACT_TWOHANDED_FIDGET_LOOKAROUND" 100
	fps 30
}
$sequence "twohanded_walkb" {
	"move_and_ranged_anims\combat_walk_180.smd"
	activity "ACT_WALKB_TWOHANDED" 100
	fps 60
}
$sequence "twohanded_alert_fidget_agro_lookaround" {
	"move_and_ranged_anims\twohanded_alert_fidget_agro_lookaround.smd"
	activity "ACT_ALERT_FIDGET_AGRO_LOOKAROUND_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_midcrouch_aim_layer" {
	"move_and_ranged_anims\twohanded_midcrouch_aim_UR.smd"
	"move_and_ranged_anims\twohanded_midcrouch_aim_UC.smd"
	"move_and_ranged_anims\twohanded_midcrouch_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "twohanded_midcrouch_attack_delta" {
	"move_and_ranged_anims\twohanded_midcrouch_attack_delta.smd"
	fps 30
}
$sequence "twohanded_midcrouch_idle_delta" {
	"move_and_ranged_anims\twohanded_midcrouch_idle_delta.smd"
	fps 30
}
$sequence "twohanded_midcrouch_idle" {
	"move_and_ranged_anims\twohanded_midcrouch_idle.smd"
	fps 30
}
$sequence "twohanded_midcrouch" {
	"move_and_ranged_anims\twohanded_midcrouch_idle.smd"
	activity "ACT_MIDCROUCH_TWOHANDED" 1
	fps 30
}
$sequence "twohanded_attack_midcrouched" {
	"move_and_ranged_anims\twohanded_midcrouch_attack.smd"
	activity "ACT_RANGE_ATTACK_MIDCROUCHED_TWOHANDED" 1
	fps 30
}
$sequence "twohanded_midcrunch_into" {
	"move_and_ranged_anims\twohanded_midcrunch_into.smd"
	activity "ACT_MIDCRUNCH_INTO_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_midcrunch_idle" {
	"move_and_ranged_anims\twohanded_midcrunch_idle.smd"
	activity "ACT_MIDCRUNCH_IDLE_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_midcrunch_outof" {
	"move_and_ranged_anims\twohanded_midcrunch_outof.smd"
	activity "ACT_MIDCRUNCH_OUTOF_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_corner_cover_idle" {
	"move_and_ranged_anims\twohanded_corner_cover_idle.smd"
	activity "ACT_CORNER_COVER_IDLE_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_lean_left_into" {
	"move_and_ranged_anims\twohanded_lean_left_into.smd"
	activity "ACT_LEAN_LEFT_INTO_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_lean_left_idle" {
	"move_and_ranged_anims\twohanded_lean_left_idle.smd"
	activity "ACT_LEAN_LEFT_IDLE_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_lean_left_outof" {
	"move_and_ranged_anims\twohanded_lean_left_outof.smd"
	activity "ACT_LEAN_LEFT_OUTOF_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_attack_leaning_left" {
	"move_and_ranged_anims\twohanded_attack_leaning_left.smd"
	activity "ACT_RANGE_ATTACK_LEANING_LEFT_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_lean_right_into" {
	"move_and_ranged_anims\twohanded_lean_right_into.smd"
	activity "ACT_LEAN_RIGHT_INTO_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_lean_right_idle" {
	"move_and_ranged_anims\twohanded_lean_right_idle.smd"
	activity "ACT_LEAN_RIGHT_IDLE_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_lean_right_outof" {
	"move_and_ranged_anims\twohanded_lean_right_outof.smd"
	activity "ACT_LEAN_RIGHT_OUTOF_TWOHANDED" 100
	fps 30
}
$sequence "twohanded_attack_leaning_right" {
	"move_and_ranged_anims\twohanded_attack_leaning_right.smd"
	activity "ACT_RANGE_ATTACK_LEANING_RIGHT_TWOHANDED" 100
	fps 30
}
$sequence "submachinegun_aim_layer" {
	"move_and_ranged_anims\submachinegun_aim_UR.smd"
	"move_and_ranged_anims\submachinegun_aim_UC.smd"
	"move_and_ranged_anims\submachinegun_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "submachinegun_crouch_aim_layer" {
	"move_and_ranged_anims\submachinegun_crouch_aim_UR.smd"
	"move_and_ranged_anims\submachinegun_crouch_aim_UC.smd"
	"move_and_ranged_anims\submachinegun_crouch_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "submachinegun_bobble_delta" {
	"move_and_ranged_anims\submachinegun_bobble_delta.smd"
	fps 30
}
$sequence "submachinegun_attack_delta" {
	"move_and_ranged_anims\submachinegun_attack_delta.smd"
	fps 30
}
$sequence "submachinegun_dryfire_delta" {
	"move_and_ranged_anims\submachinegun_dryfire_delta.smd"
	fps 30
}
$sequence "submachinegun_crouch_attack_delta" {
	"move_and_ranged_anims\submachinegun_crouch_attack_delta.smd"
	fps 30
}
$sequence "submachinegun_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_SUBMACHINEGUN" 1
	fps 30
}
$sequence "submachinegun_aggressive_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_SUBMACHINEGUN" 1
	fps 18
}
$sequence "submachinegun_sneak" {
	"move_and_ranged_anims\sneak_180.smd"
	"move_and_ranged_anims\sneak_225.smd"
	"move_and_ranged_anims\sneak_270.smd"
	"move_and_ranged_anims\sneak_315.smd"
	"move_and_ranged_anims\sneak_0.smd"
	"move_and_ranged_anims\sneak_45.smd"
	"move_and_ranged_anims\sneak_90.smd"
	"move_and_ranged_anims\sneak_135.smd"
	"move_and_ranged_anims\sneak_180.smd"
	activity "ACT_SNEAK_SUBMACHINEGUN" 1
	fps 30
}
$sequence "submachinegun_crouch" {
	"move_and_ranged_anims\crouch.smd"
	activity "ACT_CROUCH_SUBMACHINEGUN" 1
	fps 30
}
$sequence "submachinegun_ready" {
	"move_and_ranged_anims\submachinegun_ready.smd"
	activity "ACT_AIM_SUBMACHINEGUN" 1
	fps 30
}
$sequence "submachinegun_dodge" {
	"move_and_ranged_anims\submachinegun_dodge.smd"
	activity "ACT_DODGE_SUBMACHINEGUN" 1
	fps 30
}
$sequence "submachinegun_attack" {
	"move_and_ranged_anims\submachinegun_attack.smd"
	activity "ACT_RANGE_ATTACK_SUBMACHINEGUN" 1
	fps 30
}
$sequence "submachinegun_attack_crouched" {
	"move_and_ranged_anims\submachinegun_crouch_attack.smd"
	activity "ACT_RANGE_ATTACK_CROUCHED_SUBMACHINEGUN" 1
	fps 30
}
$sequence "submachinegun_dryfire" {
	"move_and_ranged_anims\submachinegun_dryfire.smd"
	activity "ACT_DRYFIRE_SUBMACHINEGUN" 1
	fps 30
}
$sequence "submachinegun_reload" {
	"move_and_ranged_anims\submachinegun_reload.smd"
	activity "ACT_RELOAD_SUBMACHINEGUN" 1
	fps 30
}
$sequence "submachinegun_attack_layer" {
	"move_and_ranged_anims\submachinegun_attack_layer.smd"
	activity "ACT_RANGE_ATTACK_LAYER_SUBMACHINEGUN" 1
	fps 30
}
$sequence "submachinegun_dryfire_layer" {
	"move_and_ranged_anims\submachinegun_dryfire_layer.smd"
	activity "ACT_DRYFIRE_LAYER_SUBMACHINEGUN" 1
	fps 30
}
$sequence "submachinegun_reload_layer" {
	"move_and_ranged_anims\submachinegun_reload_layer.smd"
	activity "ACT_RELOAD_LAYER_SUBMACHINEGUN" 1
	fps 30
}
$sequence "submachinegun_idle" {
	"move_and_ranged_anims\submachinegun_idle.smd"
	activity "ACT_IDLE_SUBMACHINEGUN" 20
	fps 30
}
$sequence "submachinegun_fidget" {
	"move_and_ranged_anims\submachinegun_fidget.smd"
	activity "ACT_IDLE_SUBMACHINEGUN" 1
	fps 30
}
$sequence "submachinegun_relaxed_move_layer" {
	"move_and_ranged_anims\submachinegun_relaxed_move_layer.smd"
	fps 30
}
$sequence "submachinegun_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_SUBMACHINEGUN" 1
	fps 30
}
$sequence "submachinegun_relaxed_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_RELAXED_SUBMACHINEGUN" 1
	fps 18
}
$sequence "submachinegun_midcrunch_into" {
	"move_and_ranged_anims\submachinegun_midcrunch_into.smd"
	activity "ACT_MIDCRUNCH_INTO_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_midcrunch_idle" {
	"move_and_ranged_anims\submachinegun_midcrunch_idle.smd"
	activity "ACT_MIDCRUNCH_IDLE_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_midcrunch_outof" {
	"move_and_ranged_anims\submachinegun_midcrunch_outof.smd"
	activity "ACT_MIDCRUNCH_OUTOF_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_Reload_Fast" {
	"move_and_ranged_anims\submachinegun_reload_fast.smd"
	activity "ACT_RELOAD_FAST_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_alert_fidget_agro_lookaround" {
	"move_and_ranged_anims\submachinegun_alert_fidget_agro_lookaround.smd"
	activity "ACT_ALERT_FIDGET_AGRO_LOOKAROUND_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_crunch_into" {
	"move_and_ranged_anims\submachinegun_crunch_into.smd"
	activity "ACT_CRUNCH_INTO_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_crunch_idle" {
	"move_and_ranged_anims\submachinegun_crunch_idle.smd"
	activity "ACT_CRUNCH_IDLE_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_crunch_outof" {
	"move_and_ranged_anims\submachinegun_crunch_outof.smd"
	activity "ACT_CRUNCH_OUTOF_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_alert_front_into" {
	"move_and_ranged_anims\submachinegun_alert_front_into.smd"
	activity "ACT_ALERT_FRONT_INTO_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_alert_l45_into" {
	"move_and_ranged_anims\submachinegun_alert_l45_into.smd"
	activity "ACT_ALERT_L45_INTO_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_alert_r45_into" {
	"move_and_ranged_anims\submachinegun_alert_r45_into.smd"
	activity "ACT_ALERT_R45_INTO_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_alert_l90_into" {
	"move_and_ranged_anims\submachinegun_alert_l90_into.smd"
	activity "ACT_ALERT_L90_INTO_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_alert_r90_into" {
	"move_and_ranged_anims\submachinegun_alert_r90_into.smd"
	activity "ACT_ALERT_R90_INTO_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_alert_l90_outof" {
	"move_and_ranged_anims\submachinegun_alert_l90_outof.smd"
	activity "ACT_ALERT_L90_OUTOF_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_alert_r90_outof" {
	"move_and_ranged_anims\submachinegun_alert_r90_outof.smd"
	activity "ACT_ALERT_R90_OUTOF_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_alert_180_into" {
	"move_and_ranged_anims\submachinegun_alert_180_into.smd"
	activity "ACT_ALERT_180_INTO_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_alert_front_outof" {
	"move_and_ranged_anims\submachinegun_alert_front_outof.smd"
	activity "ACT_ALERT_FRONT_OUTOF_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_alert_l45_outof" {
	"move_and_ranged_anims\submachinegun_alert_l45_outof.smd"
	activity "ACT_ALERT_L45_OUTOF_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_alert_r45_outof" {
	"move_and_ranged_anims\submachinegun_alert_r45_outof.smd"
	activity "ACT_ALERT_R45_OUTOF_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_alert_180_outof" {
	"move_and_ranged_anims\submachinegun_alert_180_outof.smd"
	activity "ACT_ALERT_180_OUTOF_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_hunt_walk" {
	"move_and_ranged_anims\submachinegun_hunt_walk.smd"
	activity "ACT_HUNT_WALK_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_hunt_walk_lookleft" {
	"move_and_ranged_anims\submachinegun_hunt_walk_lookleft.smd"
	activity "ACT_HUNT_WALK_LOOKLEFT_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_hunt_walk_lookright" {
	"move_and_ranged_anims\submachinegun_hunt_walk_lookright.smd"
	activity "ACT_HUNT_WALK_LOOKRIGHT_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_corner_cover_idle" {
	"move_and_ranged_anims\submachinegun_corner_cover_idle.smd"
	activity "ACT_CORNER_COVER_IDLE_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_lean_left_into" {
	"move_and_ranged_anims\submachinegun_lean_left_into.smd"
	activity "ACT_LEAN_LEFT_INTO_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_lean_left_idle" {
	"move_and_ranged_anims\submachinegun_lean_left_idle.smd"
	activity "ACT_LEAN_LEFT_IDLE_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_lean_left_outof" {
	"move_and_ranged_anims\submachinegun_lean_left_outof.smd"
	activity "ACT_LEAN_LEFT_OUTOF_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_attack_leaning_left" {
	"move_and_ranged_anims\submachinegun_attack_leaning_left.smd"
	activity "ACT_RANGE_ATTACK_LEANING_LEFT_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_lean_right_into" {
	"move_and_ranged_anims\submachinegun_lean_right_into.smd"
	activity "ACT_LEAN_RIGHT_INTO_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_lean_right_idle" {
	"move_and_ranged_anims\submachinegun_lean_right_idle.smd"
	activity "ACT_LEAN_RIGHT_IDLE_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_lean_right_outof" {
	"move_and_ranged_anims\submachinegun_lean_right_outof.smd"
	activity "ACT_LEAN_RIGHT_OUTOF_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_attack_leaning_right" {
	"move_and_ranged_anims\submachinegun_attack_leaning_right.smd"
	activity "ACT_RANGE_ATTACK_LEANING_RIGHT_SUBMACHINEGUN" 100
	fps 30
}
$sequence "submachinegun_midcrouch_aim_layer" {
	"move_and_ranged_anims\submachinegun_midcrouch_aim_UR.smd"
	"move_and_ranged_anims\submachinegun_midcrouch_aim_UC.smd"
	"move_and_ranged_anims\submachinegun_midcrouch_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "submachinegun_midcrouch_attack_delta" {
	"move_and_ranged_anims\submachinegun_midcrouch_attack_delta.smd"
	fps 30
}
$sequence "submachinegun_midcrouch_idle_delta" {
	"move_and_ranged_anims\submachinegun_midcrouch_idle_delta.smd"
	fps 30
}
$sequence "submachinegun_midcrouch_idle" {
	"move_and_ranged_anims\submachinegun_midcrouch_idle.smd"
	fps 30
}
$sequence "submachinegun_midcrouch" {
	"move_and_ranged_anims\submachinegun_midcrouch_idle.smd"
	activity "ACT_MIDCROUCH_SUBMACHINEGUN" 1
	fps 30
}
$sequence "submachinegun_attack_midcrouched" {
	"move_and_ranged_anims\submachinegun_midcrouch_attack.smd"
	activity "ACT_RANGE_ATTACK_MIDCROUCHED_SUBMACHINEGUN" 1
	fps 30
}
$sequence "deserteagle_aim_layer" {
	"move_and_ranged_anims\deserteagle_aim_UR.smd"
	"move_and_ranged_anims\deserteagle_aim_UC.smd"
	"move_and_ranged_anims\deserteagle_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "deserteagle_bobble_delta" {
	"move_and_ranged_anims\deserteagle_bobble_delta.smd"
	fps 30
}
$sequence "deserteagle_attack_delta" {
	"move_and_ranged_anims\deserteagle_attack_delta.smd"
	fps 30
}
$sequence "deserteagle_dryfire_delta" {
	"move_and_ranged_anims\deserteagle_dryfire_delta.smd"
	fps 30
}
$sequence "deserteagle_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_DESERTEAGLE" 1
	fps 30
}
$sequence "deserteagle_aggressive_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_DESERTEAGLE" 1
	fps 18
}
$sequence "deserteagle_sneak" {
	"move_and_ranged_anims\sneak_180.smd"
	"move_and_ranged_anims\sneak_225.smd"
	"move_and_ranged_anims\sneak_270.smd"
	"move_and_ranged_anims\sneak_315.smd"
	"move_and_ranged_anims\sneak_0.smd"
	"move_and_ranged_anims\sneak_45.smd"
	"move_and_ranged_anims\sneak_90.smd"
	"move_and_ranged_anims\sneak_135.smd"
	"move_and_ranged_anims\sneak_180.smd"
	activity "ACT_SNEAK_DESERTEAGLE" 1
	fps 30
}
$sequence "deserteagle_crouch" {
	"move_and_ranged_anims\crouch.smd"
	activity "ACT_CROUCH_DESERTEAGLE" 1
	fps 30
}
$sequence "deserteagle_ready" {
	"move_and_ranged_anims\deserteagle_ready.smd"
	activity "ACT_AIM_DESERTEAGLE" 1
	fps 30
}
$sequence "deserteagle_dodge" {
	"move_and_ranged_anims\deserteagle_dodge.smd"
	activity "ACT_DODGE_DESERTEAGLE" 1
	fps 30
}
$sequence "deserteagle_attack" {
	"move_and_ranged_anims\deserteagle_attack.smd"
	activity "ACT_RANGE_ATTACK_DESERTEAGLE" 1
	fps 30
}
$sequence "deserteagle_dryfire" {
	"move_and_ranged_anims\deserteagle_dryfire.smd"
	activity "ACT_DRYFIRE_DESERTEAGLE" 1
	fps 30
}
$sequence "deserteagle_reload" {
	"move_and_ranged_anims\deserteagle_reload.smd"
	activity "ACT_RELOAD_DESERTEAGLE" 1
	fps 30
}
$sequence "deserteagle_attack_layer" {
	"move_and_ranged_anims\deserteagle_attack_layer.smd"
	activity "ACT_RANGE_ATTACK_LAYER_DESERTEAGLE" 1
	fps 30
}
$sequence "deserteagle_dryfire_layer" {
	"move_and_ranged_anims\deserteagle_dryfire_layer.smd"
	activity "ACT_DRYFIRE_LAYER_DESERTEAGLE" 1
	fps 30
}
$sequence "deserteagle_reload_layer" {
	"move_and_ranged_anims\deserteagle_reload_layer.smd"
	activity "ACT_RELOAD_LAYER_DESERTEAGLE" 1
	fps 30
}
$sequence "deserteagle_idle" {
	"move_and_ranged_anims\deserteagle_idle.smd"
	activity "ACT_IDLE_DESERTEAGLE" 20
	fps 30
}
$sequence "deserteagle_fidget" {
	"move_and_ranged_anims\deserteagle_fidget.smd"
	activity "ACT_IDLE_DESERTEAGLE" 1
	fps 30
}
$sequence "deserteagle_corner_cover_idle" {
	"move_and_ranged_anims\deserteagle_corner_cover_idle.smd"
	activity "ACT_CORNER_COVER_IDLE_DESERTEAGLE" 100
	fps 30
}
$sequence "deserteagle_lean_left_into" {
	"move_and_ranged_anims\deserteagle_lean_left_into.smd"
	activity "ACT_LEAN_LEFT_INTO_DESERTEAGLE" 100
	fps 30
}
$sequence "deserteagle_lean_left_idle" {
	"move_and_ranged_anims\deserteagle_lean_left_idle.smd"
	activity "ACT_LEAN_LEFT_IDLE_DESERTEAGLE" 100
	fps 30
}
$sequence "deserteagle_lean_left_outof" {
	"move_and_ranged_anims\deserteagle_lean_left_outof.smd"
	activity "ACT_LEAN_LEFT_OUTOF_DESERTEAGLE" 100
	fps 30
}
$sequence "deserteagle_attack_leaning_left" {
	"move_and_ranged_anims\deserteagle_attack_leaning_left.smd"
	activity "ACT_RANGE_ATTACK_LEANING_LEFT_DESERTEAGLE" 100
	fps 30
}
$sequence "deserteagle_lean_right_into" {
	"move_and_ranged_anims\deserteagle_lean_right_into.smd"
	activity "ACT_LEAN_RIGHT_INTO_DESERTEAGLE" 100
	fps 30
}
$sequence "deserteagle_lean_right_idle" {
	"move_and_ranged_anims\deserteagle_lean_right_idle.smd"
	activity "ACT_LEAN_RIGHT_IDLE_DESERTEAGLE" 100
	fps 30
}
$sequence "deserteagle_lean_right_outof" {
	"move_and_ranged_anims\deserteagle_lean_right_outof.smd"
	activity "ACT_LEAN_RIGHT_OUTOF_DESERTEAGLE" 100
	fps 30
}
$sequence "deserteagle_attack_leaning_right" {
	"move_and_ranged_anims\deserteagle_attack_leaning_right.smd"
	activity "ACT_RANGE_ATTACK_LEANING_RIGHT_DESERTEAGLE" 100
	fps 30
}
$sequence "throwing_star_relaxed_walk_layer" {
	"move_and_ranged_anims\throwing_star_relaxed_walk_layer.smd"
	fps 30
}
$sequence "throwing_star_relaxed_run_layer" {
	"move_and_ranged_anims\throwing_star_relaxed_run_layer.smd"
	fps 30
}
$sequence "throwing_star_aim_layer" {
	"move_and_ranged_anims\throwing_star_aim_UR.smd"
	"move_and_ranged_anims\throwing_star_aim_UC.smd"
	"move_and_ranged_anims\throwing_star_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "throwing_star_idle_layer" {
	"move_and_ranged_anims\throwing_star_idle_layer.smd"
	fps 30
}
$sequence "throwing_star_attack_delta" {
	"move_and_ranged_anims\throwing_star_attack_delta.smd"
	fps 30
}
$sequence "throwing_star_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_aggressive_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_THROWING_STAR" 1
	fps 18
}
$sequence "throwing_star_sneak" {
	"move_and_ranged_anims\sneak_180.smd"
	"move_and_ranged_anims\sneak_225.smd"
	"move_and_ranged_anims\sneak_270.smd"
	"move_and_ranged_anims\sneak_315.smd"
	"move_and_ranged_anims\sneak_0.smd"
	"move_and_ranged_anims\sneak_45.smd"
	"move_and_ranged_anims\sneak_90.smd"
	"move_and_ranged_anims\sneak_135.smd"
	"move_and_ranged_anims\sneak_180.smd"
	activity "ACT_SNEAK_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_crouch" {
	"move_and_ranged_anims\crouch.smd"
	activity "ACT_CROUCH_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_ready" {
	"move_and_ranged_anims\anaconda_ready.smd"
	activity "ACT_AIM_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_dodge" {
	"move_and_ranged_anims\anaconda_dodge.smd"
	activity "ACT_DODGE_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_attack" {
	"move_and_ranged_anims\throwing_star_attack.smd"
	activity "ACT_RANGE_ATTACK_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_attack_crouched" {
	"move_and_ranged_anims\pistol_crouch_attack.smd"
	activity "ACT_RANGE_ATTACK_CROUCHED_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_dryfire_delta" {
	"move_and_ranged_anims\throwing_star_dryfire_delta.smd"
	fps 30
}
$sequence "throwing_star_dryfire" {
	"move_and_ranged_anims\throwing_star_dryfire.smd"
	activity "ACT_DRYFIRE_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_reload" {
	"move_and_ranged_anims\throwing_star_reload.smd"
	activity "ACT_RELOAD_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_attack_layer" {
	"move_and_ranged_anims\anaconda_attack_layer.smd"
	activity "ACT_RANGE_ATTACK_LAYER_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_dryfire_layer" {
	"move_and_ranged_anims\anaconda_dryfire_layer.smd"
	activity "ACT_DRYFIRE_LAYER_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_idle" {
	"move_and_ranged_anims\throwing_star_idle.smd"
	activity "ACT_IDLE_THROWING_STAR" 20
	fps 30
}
$sequence "throwing_star_fidget" {
	"move_and_ranged_anims\throwing_star_idle.smd"
	activity "ACT_IDLE_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_relaxed_move_layer" {
	"move_and_ranged_anims\throwing_star_relaxed_walk_layer.smd"
	fps 30
}
$sequence "throwing_star_relaxed_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_RELAXED_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_relaxed_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_RELAXED_THROWING_STAR" 1
	fps 18
}
$sequence "throwing_star_midcrouch_aim_layer" {
	"move_and_ranged_anims\pistol_midcrouch_aim_UR.smd"
	"move_and_ranged_anims\pistol_midcrouch_aim_UC.smd"
	"move_and_ranged_anims\pistol_midcrouch_aim_UL.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	fps 30
}
$sequence "throwing_star_midcrouch_attack_delta" {
	"move_and_ranged_anims\pistol_crouch_attack_delta.smd"
	fps 30
}
$sequence "throwing_star_midcrouch_idle_delta" {
	"move_and_ranged_anims\pistol_midcrouch_idle_delta.smd"
	fps 30
}
$sequence "throwing_star_midcrouch_idle" {
	"move_and_ranged_anims\pistol_midcrouch_idle.smd"
	fps 30
}
$sequence "throwing_star_midcrouch" {
	"move_and_ranged_anims\pistol_midcrouch_idle.smd"
	activity "ACT_MIDCROUCH_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_attack_midcrouched" {
	"move_and_ranged_anims\pistol_midcrouch_attack.smd"
	activity "ACT_RANGE_ATTACK_MIDCROUCHED_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_midcrunch_into" {
	"move_and_ranged_anims\pistol_midcrunch_into.smd"
	activity "ACT_MIDCRUNCH_INTO_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_midcrunch_idle" {
	"move_and_ranged_anims\pistol_midcrunch_idle.smd"
	activity "ACT_MIDCRUNCH_IDLE_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_midcrunch_outof" {
	"move_and_ranged_anims\pistol_midcrunch_outof.smd"
	activity "ACT_MIDCRUNCH_OUTOF_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_crunch_into" {
	"move_and_ranged_anims\pistol_crunch_into.smd"
	activity "ACT_CRUNCH_INTO_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_crunch_idle" {
	"move_and_ranged_anims\pistol_crunch_idle.smd"
	activity "ACT_CRUNCH_IDLE_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_crunch_outof" {
	"move_and_ranged_anims\pistol_crunch_outof.smd"
	activity "ACT_CRUNCH_OUTOF_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_alert_front_into" {
	"move_and_ranged_anims\pistol_alert_front_into.smd"
	activity "ACT_ALERT_FRONT_INTO_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_alert_l45_into" {
	"move_and_ranged_anims\pistol_alert_l45_into.smd"
	activity "ACT_ALERT_L45_INTO_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_alert_r45_into" {
	"move_and_ranged_anims\pistol_alert_r45_into.smd"
	activity "ACT_ALERT_R45_INTO_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_alert_180_into" {
	"move_and_ranged_anims\pistol_alert_180_into.smd"
	activity "ACT_ALERT_180_INTO_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_alert_front_outof" {
	"move_and_ranged_anims\pistol_alert_front_outof.smd"
	activity "ACT_ALERT_FRONT_OUTOF_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_alert_l45_outof" {
	"move_and_ranged_anims\pistol_alert_l45_outof.smd"
	activity "ACT_ALERT_L45_OUTOF_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_alert_r45_outof" {
	"move_and_ranged_anims\pistol_alert_r45_outof.smd"
	activity "ACT_ALERT_R45_OUTOF_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_alert_180_outof" {
	"move_and_ranged_anims\pistol_alert_180_outof.smd"
	activity "ACT_ALERT_180_OUTOF_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_hunt_walk" {
	"move_and_ranged_anims\pistol_hunt_walk.smd"
	activity "ACT_HUNT_WALK_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_hunt_walk_lookleft" {
	"move_and_ranged_anims\pistol_hunt_walk_lookleft.smd"
	activity "ACT_HUNT_WALK_LOOKLEFT_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_hunt_walk_lookright" {
	"move_and_ranged_anims\pistol_hunt_walk_lookright.smd"
	activity "ACT_HUNT_WALK_LOOKRIGHT_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_lean_left_into" {
	"move_and_ranged_anims\anaconda_lean_left_into.smd"
	activity "ACT_LEAN_LEFT_INTO_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_lean_left_idle" {
	"move_and_ranged_anims\anaconda_lean_left_idle.smd"
	activity "ACT_LEAN_LEFT_IDLE_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_lean_left_outof" {
	"move_and_ranged_anims\anaconda_lean_left_outof.smd"
	activity "ACT_LEAN_LEFT_OUTOF_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_attack_leaning_left" {
	"move_and_ranged_anims\anaconda_attack_leaning_left.smd"
	activity "ACT_RANGE_ATTACK_LEANING_LEFT_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_lean_right_into" {
	"move_and_ranged_anims\anaconda_lean_right_into.smd"
	activity "ACT_LEAN_RIGHT_INTO_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_lean_right_idle" {
	"move_and_ranged_anims\anaconda_lean_right_idle.smd"
	activity "ACT_LEAN_RIGHT_IDLE_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_lean_right_outof" {
	"move_and_ranged_anims\anaconda_lean_right_outof.smd"
	activity "ACT_LEAN_RIGHT_OUTOF_THROWING_STAR" 1
	fps 30
}
$sequence "throwing_star_attack_leaning_right" {
	"move_and_ranged_anims\anaconda_attack_leaning_right.smd"
	activity "ACT_RANGE_ATTACK_LEANING_RIGHT_THROWING_STAR" 100
	fps 30
}
$sequence "d_thaum_idle_layer" {
	"move_and_ranged_anims\d_thaum_idle_layer.smd"
	fps 30
}
$sequence "d_thaum_cast_charge_layer" {
	"move_and_ranged_anims\d_thaum_cast_charge_layer.smd"
	activity "ACT_CAST_CHARGE_LAYER_THAUMATURGY" 1
	fps 30
}
$sequence "d_thaum_cast_chargehold_layer" {
	"move_and_ranged_anims\d_thaum_cast_chargehold_layer.smd"
	activity "ACT_CAST_CHARGEHOLD_LAYER_THAUMATURGY" 1
	fps 30
}
$sequence "d_thaum_cast_continue_layer" {
	"move_and_ranged_anims\d_thaum_cast_continue_layer.smd"
	activity "ACT_CAST_CONTINUE_LAYER_THAUMATURGY" 1
	fps 30
}
$sequence "d_thaum_cast_hold_layer" {
	"move_and_ranged_anims\d_thaum_cast_hold_layer.smd"
	activity "ACT_CAST_HOLD_LAYER_THAUMATURGY" 1
	fps 30
}
$sequence "d_thaum_cast_reset_layer" {
	"move_and_ranged_anims\d_thaum_cast_reset_layer.smd"
	activity "ACT_CAST_RESET_LAYER_THAUMATURGY" 1
	fps 30
}
$sequence "d_thaum_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_THAUMATURGY" 1
	fps 30
}
$sequence "d_thaum_aggressive_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_THAUMATURGY" 1
	fps 18
}
$sequence "d_thaum_idle" {
	"move_and_ranged_anims\d_thaum_idle.smd"
	activity "ACT_IDLE_THAUMATURGY" 20
	fps 30
}
$sequence "holy_light_idle_layer" {
	"move_and_ranged_anims\holy_light_idle_layer.smd"
	fps 30
}
$sequence "holy_light_cast_layer" {
	"move_and_ranged_anims\holy_light_cast_layer.smd"
	activity "ACT_CAST_LAYER_HOLY_LIGHT" 1
	fps 30
}
$sequence "holy_light_aggressive_walk" {
	"move_and_ranged_anims\walk_180.smd"
	"move_and_ranged_anims\walk_225.smd"
	"move_and_ranged_anims\walk_270.smd"
	"move_and_ranged_anims\walk_315.smd"
	"move_and_ranged_anims\walk_0.smd"
	"move_and_ranged_anims\walk_45.smd"
	"move_and_ranged_anims\walk_90.smd"
	"move_and_ranged_anims\walk_135.smd"
	"move_and_ranged_anims\walk_180.smd"
	activity "ACT_WALK_HOLY_LIGHT" 1
	fps 30
}
$sequence "holy_light_aggressive_run" {
	"move_and_ranged_anims\npc_run_180.smd"
	"move_and_ranged_anims\npc_run_225.smd"
	"move_and_ranged_anims\npc_run_270.smd"
	"move_and_ranged_anims\npc_run_315.smd"
	"move_and_ranged_anims\npc_run_0.smd"
	"move_and_ranged_anims\npc_run_45.smd"
	"move_and_ranged_anims\npc_run_90.smd"
	"move_and_ranged_anims\npc_run_135.smd"
	"move_and_ranged_anims\npc_run_180.smd"
	activity "ACT_RUN_HOLY_LIGHT" 1
	fps 18
}
$sequence "holy_light_cast" {
	"move_and_ranged_anims\holy_light_cast.smd"
	activity "ACT_CAST_HOLY_LIGHT" 1
	fps 30
}
$sequence "holy_light_idle" {
	"move_and_ranged_anims\holy_light_idle.smd"
	activity "ACT_IDLE_HOLY_LIGHT" 20
	fps 30
}
