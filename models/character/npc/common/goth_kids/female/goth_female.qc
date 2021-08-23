
$modelname "character/npc/common/Goth_kids/Female/Goth_Female.mdl"

$bodygroup "girl"
{
	studio "Goth_Female_REF"
}

$lod 7
{
	replacemodel "Goth_Female_REF.smd" "Goth_Female_REF_lod1.smd"
}
$lod 10
{
	replacemodel "Goth_Female_REF.smd" "Goth_Female_REF_lod2.smd"
}
$lod 15
{
	replacemodel "Goth_Female_REF.smd" "Goth_Female_REF_lod3.smd"
}
$lod 20
{
	replacemodel "Goth_Female_REF.smd" "Goth_Female_REF_lod4.smd"
}
$lod 25
{
	replacemodel "Goth_Female_REF.smd" "Goth_Female_REF_lod5.smd"
}
$shadowlod
{
	replacemodel "Goth_Female_REF.smd" "Goth_Female_REF_lod6.smd"
}

$illumposition 0 0 64.678

$eyeposition 0.5 -0.5 0.5

$surfaceprop "flesh"

$cdmaterials "models\character\npc\common\Goth_kids\Female\"
$cdmaterials "models\character\teeth\"

$attachment "mouth" "Bip01 Head" 1.479998 4.600001 0
$attachment "eyes" "Bip01 Head" 3.400002 3.45 0
$attachment "0" "Bip01 R Hand" 0 0.000001 0

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 0 "Bip01 Pelvis" -33.649212 -10.717597 -13.533097 4.786789 10.142822 13.514303
$hbox 3 "Bip01 Spine" -4.19249 -4.857431 -5.731623 15.045536 3.758632 6.763876
$hbox 2 "Bip01 Spine1" -3.244932 -3.932576 -6.745316 13.817598 3.874851 6.763884
$hbox 2 "Bip01 Spine2" -0.556017 -3.887949 -6.959515 8.071982 3.216438 6.931483
$hbox 1 "Bip01 Neck" -2.285375 -1.783074 -2.272317 4.190241 2.784808 2.258583
$hbox 1 "Bip01 Head" -7.162447 -4.550758 -3.170824 6.685029 5.1476 3.171776
$hbox 4 "Bip01 L UpperArm" -0.622221 -1.920711 -2.9421 10.415674 2.049568 1.340844
$hbox 4 "Bip01 L Forearm" -1.09798 -2.083888 -1.739693 16.387224 1.436037 0.834973
$hbox 4 "Bip01 L Hand" -0.503358 -0.532982 -2.118494 6.639718 1.236023 1.398795
$hbox 5 "Bip01 R UpperArm" -1.074355 -1.936737 -1.359836 10.427217 2.085748 2.712399
$hbox 5 "Bip01 R Forearm" -1.087673 -2.083905 -0.842361 16.399309 1.4434 1.732255
$hbox 5 "Bip01 R Hand" -0.491717 -0.540471 -3.171222 6.651756 1.228607 2.118787
$hbox 6 "Bip01 L Thigh" -2.66272 -4.627995 -2.439152 19.366331 3.323174 5.589695
$hbox 6 "Bip01 L Calf" 0 -2.262952 -1.461948 21.813301 5.855427 2.087585
$hbox 6 "Bip01 L Foot" -1.599729 -2.266992 -1.343163 3.639767 5.771103 1.833336
$hbox 7 "Bip01 R Thigh" -2.28625 -4.627867 -5.203854 19.351435 3.427992 2.646819
$hbox 7 "Bip01 R Calf" 0 -2.263362 -1.743041 21.799536 5.854919 1.847745
$hbox 7 "Bip01 R Foot" -1.599728 -2.266905 -1.447296 3.63977 5.77109 1.729207

$sequence "ragdoll" {
	"goth_female_anim_ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fps 30
}

$includemodel "character/shared/female/npc_allsequences.mdl"

$collisionjoints "goth_female_physics.smd"
{
	$mass 60
	$inertia 5
	$damping 0.01
	$rotdamping 1.5
	$rootbone " "


	$jointconstrain "Bip01 Spine1" x limit -25 25 1
	$jointconstrain "Bip01 Spine1" y limit -25 25 1
	$jointconstrain "Bip01 Spine1" z limit -25 15 1

	$jointmassbias "Bip01 R UpperArm" 2
	$jointconstrain "Bip01 R UpperArm" x limit -20 20 1
	$jointconstrain "Bip01 R UpperArm" y limit -40 35 1
	$jointconstrain "Bip01 R UpperArm" z limit -60 30 1

	$jointmassbias "Bip01 L UpperArm" 2
	$jointconstrain "Bip01 L UpperArm" x limit -20 20 1
	$jointconstrain "Bip01 L UpperArm" y limit -35 40 1
	$jointconstrain "Bip01 L UpperArm" z limit -60 30 1

	$jointmassbias "Bip01 L Forearm" 3
	$jointconstrain "Bip01 L Forearm" x limit 0 0 0
	$jointconstrain "Bip01 L Forearm" y limit 0 0 0
	$jointconstrain "Bip01 L Forearm" z limit -120 4 1

	$jointmassbias "Bip01 L Hand" 2
	$jointconstrain "Bip01 L Hand" x limit 0 0 0
	$jointconstrain "Bip01 L Hand" y limit 0 0 0
	$jointconstrain "Bip01 L Hand" z limit -35 60 1

	$jointmassbias "Bip01 R Forearm" 3
	$jointconstrain "Bip01 R Forearm" x limit 0 0 0
	$jointconstrain "Bip01 R Forearm" y limit 0 0 0
	$jointconstrain "Bip01 R Forearm" z limit -120 4 1

	$jointmassbias "Bip01 R Hand" 2
	$jointconstrain "Bip01 R Hand" x limit 0 0 0
	$jointconstrain "Bip01 R Hand" y limit 0 0 0
	$jointconstrain "Bip01 R Hand" z limit -35 60 1

	$jointmassbias "Bip01 R Thigh" 2
	$jointconstrain "Bip01 R Thigh" x limit -25 20 1
	$jointconstrain "Bip01 R Thigh" y limit -40 20 1
	$jointconstrain "Bip01 R Thigh" z limit -37 63 1

	$jointconstrain "Bip01 R Calf" x limit 0 0 0
	$jointconstrain "Bip01 R Calf" y limit 0 0 0
	$jointconstrain "Bip01 R Calf" z limit -95 4 1

	$jointrotdamping "Bip01 Head" 5
	$jointconstrain "Bip01 Head" x limit -20 20 1
	$jointconstrain "Bip01 Head" y limit -25 25 1
	$jointconstrain "Bip01 Head" z limit -13 30 1

	$jointmassbias "Bip01 L Thigh" 2
	$jointconstrain "Bip01 L Thigh" x limit -25 20 1
	$jointconstrain "Bip01 L Thigh" y limit -20 40 1
	$jointconstrain "Bip01 L Thigh" z limit -37 63 1

	$jointconstrain "Bip01 L Calf" x limit 0 0 0
	$jointconstrain "Bip01 L Calf" y limit 0 0 0
	$jointconstrain "Bip01 L Calf" z limit -95 4 1

	$jointconstrain "Bip01 L Foot" x limit 0 0 0
	$jointconstrain "Bip01 L Foot" y limit 0 0 0
	$jointconstrain "Bip01 L Foot" z limit -15 35 1

	$jointconstrain "Bip01 R Foot" x limit 0 0 0
	$jointconstrain "Bip01 R Foot" y limit 0 0 0
	$jointconstrain "Bip01 R Foot" z limit -15 35 1
}
