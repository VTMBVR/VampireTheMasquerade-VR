// Created by Crowbar 0.74

$modelname "character/npc/unique/Downtown/Boris/Boris.mdl"

$bodygroup "mainbody"
{
	studio "Boris_REF"
}

$lod 40
{
	replacemodel "Boris_REF.smd" "Boris_REF_lod1.smd"
}
$lod 50
{
	replacemodel "Boris_REF.smd" "Boris_REF_lod2.smd"
}
$lod 60
{
	replacemodel "Boris_REF.smd" "Boris_REF_lod3.smd"
}
$lod 70
{
	replacemodel "Boris_REF.smd" "Boris_REF_lod4.smd"
}
$lod 80
{
	replacemodel "Boris_REF.smd" "Boris_REF_lod5.smd"
}
$shadowlod
{
	replacemodel "Boris_REF.smd" "Boris_REF_lod6.smd"
}

$illumposition 0 0 66.921

$eyeposition 0.5 -0.5 0.5

$surfaceprop "flesh"

$cdmaterials "models\character\npc\unique\Downtown\Boris\"
$cdmaterials "models\character\teeth\"
$cdmaterials "models\character\eyes\"

$attachment "mouth" "Bip01 Head" 1.749996 4.05 0
$attachment "eyes" "Bip01 Head" 3.429997 4.27 0
$attachment "0" "Bip01 R Hand" 0 0.000002 0

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 0 "Bip01 Pelvis" -6.578219 -5.614897 -6.793501 4.017432 5.895408 6.582599
$hbox 3 "Bip01 Spine" -4.41538 -6.750988 -7.440246 20.340569 4.840961 11.252874
$hbox 2 "Bip01 Spine1" -0.643962 -5.62614 -8.79533 18.04534 4.040521 11.252874
$hbox 2 "Bip01 Spine2" -1.071624 -5.625257 -8.85314 12.425953 4.245438 9.234366
$hbox 1 "Bip01 Neck" -2.909374 -2.883649 -4.130353 4.457708 4.827728 3.983847
$hbox 1 "Bip01 Head" -1.203458 -4.330591 -3.948967 8.888902 4.928175 4.094325
$hbox 4 "Bip01 L UpperArm" -0.592728 -2.834745 -4.393624 10.957554 3.072541 1.609433
$hbox 4 "Bip01 L Forearm" -0.979015 -3.096931 -2.919412 18.029732 2.625057 1.443484
$hbox 4 "Bip01 L Hand" -0.093918 -1.185174 -3.106891 8.706839 1.88361 2.441153
$hbox 5 "Bip01 R UpperArm" -0.223495 -2.846935 -1.675233 10.957637 2.798749 4.39327
$hbox 5 "Bip01 R Forearm" -0.979002 -3.109182 -1.443372 18.092951 2.625114 2.9195
$hbox 5 "Bip01 R Hand" -0.188542 -1.165006 -3.232236 8.772892 1.903437 3.119007
$hbox 6 "Bip01 L Thigh" -1.969434 -4.855407 -3.176025 18.521889 4.358383 5.438282
$hbox 6 "Bip01 L Calf" -1.571805 -3.745033 -3.340077 21.567614 10.028784 3.385022
$hbox 6 "Bip01 L Foot" -1.232733 -3.206144 -3.340077 3.699771 7.671253 3.385022
$hbox 7 "Bip01 R Thigh" -2.336334 -4.855407 -5.409083 18.521896 4.302445 3.29232
$hbox 7 "Bip01 R Calf" -1.571781 -3.74504 -3.361444 21.567629 10.028775 3.339957
$hbox 7 "Bip01 R Foot" -1.232713 -3.206154 -3.361444 3.699786 7.671245 3.339957

$sequence "ragdoll" {
	"boris_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fps 30
}

$includemodel "character/shared/male/npc_allsequences.mdl"

$collisionjoints "boris_physics.smd"
{
	$mass 90
	$inertia 5
	$damping 0.05
	$rotdamping 2
	$rootbone " "


	$jointmassbias "Bip01 R Thigh" 2
	$jointconstrain "Bip01 R Thigh" x limit -25 20 1
	$jointconstrain "Bip01 R Thigh" y limit -40 20 1
	$jointconstrain "Bip01 R Thigh" z limit -37 63 1

	$jointconstrain "Bip01 R Calf" x limit 0 0 0
	$jointconstrain "Bip01 R Calf" y limit 0 0 0
	$jointconstrain "Bip01 R Calf" z limit -95 4 1

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

	$jointconstrain "Bip01 Spine1" x limit -25 25 1
	$jointconstrain "Bip01 Spine1" y limit -25 25 1
	$jointconstrain "Bip01 Spine1" z limit -25 15 1

	$jointmassbias "Bip01 R UpperArm" 2
	$jointconstrain "Bip01 R UpperArm" x limit -20 20 1
	$jointconstrain "Bip01 R UpperArm" y limit -40 35 1
	$jointconstrain "Bip01 R UpperArm" z limit -60 30 1

	$jointmassbias "Bip01 R Forearm" 3
	$jointconstrain "Bip01 R Forearm" x limit 0 0 0
	$jointconstrain "Bip01 R Forearm" y limit 0 0 0
	$jointconstrain "Bip01 R Forearm" z limit -120 4 1

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

	$jointrotdamping "Bip01 Head" 5
	$jointconstrain "Bip01 Head" x limit -20 20 1
	$jointconstrain "Bip01 Head" y limit -25 25 1
	$jointconstrain "Bip01 Head" z limit -13 30 1

	$jointmassbias "Bip01 R Hand" 2
	$jointconstrain "Bip01 R Hand" x limit 0 0 0
	$jointconstrain "Bip01 R Hand" y limit 0 0 0
	$jointconstrain "Bip01 R Hand" z limit -35 60 1

	$jointconstrain "Bip01 R Foot" x limit 0 0 0
	$jointconstrain "Bip01 R Foot" y limit 0 0 0
	$jointconstrain "Bip01 R Foot" z limit -15 35 1
}
