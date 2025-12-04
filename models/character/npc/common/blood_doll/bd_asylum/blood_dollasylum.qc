// Created by Crowbar 0.74

$modelname "character/npc/common/Blood_Doll/bd_asylum/Blood_Dollasylum.mdl"

$bodygroup "mainbody"
{
	studio "Blood_Dollasylum_ref"
}

$lod 7
{
	replacemodel "Blood_Dollasylum_ref.smd" "Blood_Dollasylum_ref_lod1.smd"
}
$lod 10
{
	replacemodel "Blood_Dollasylum_ref.smd" "Blood_Dollasylum_ref_lod2.smd"
}
$lod 15
{
	replacemodel "Blood_Dollasylum_ref.smd" "Blood_Dollasylum_ref_lod3.smd"
}
$lod 20
{
	replacemodel "Blood_Dollasylum_ref.smd" "Blood_Dollasylum_ref_lod4.smd"
}
$lod 25
{
	replacemodel "Blood_Dollasylum_ref.smd" "Blood_Dollasylum_ref_lod5.smd"
}
$shadowlod
{
	replacemodel "Blood_Dollasylum_ref.smd" "Blood_Dollasylum_ref_lod6.smd"
}

$illumposition 0 0 64.719

$eyeposition 0.5 -0.5 0.5

$surfaceprop "flesh"

$cdmaterials "models\character\npc\common\Blood_Doll\bd_asylum\"
$cdmaterials "models\character\teeth\"

$attachment "mouth" "Bip01 Head" 1.27 3.900001 0
$attachment "eyes" "Bip01 Head" 2.999999 3.37 0
$attachment "0" "Bip01 R Hand" 0 0.000001 0

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 0 "Bip01 Spine2" 1 0 0 5 6 6
$hbox 0 "Bip01 Pelvis" -4.949307 -4.777204 -6.243199 8.143688 4.450299 6.2432
$hbox 3 "Bip01 Spine" -3.437832 -4.411942 -5.130406 9.523721 3.658374 5.061098
$hbox 2 "Bip01 Spine1" -4.027246 -4.247966 -5.202313 10.675209 4.516604 4.870486
$hbox 2 "Bip01 Spine2" -6.604491 -4.221498 -7.613815 6.228419 4.244761 7.714483
$hbox 1 "Bip01 Neck" -1.038735 -1.051735 -2.008017 3.278767 2.49148 2.007982
$hbox 1 "Bip01 Head" -3.612685 -3.809092 -2.835723 7.340466 5.106657 2.864581
$hbox 4 "Bip01 L UpperArm" -3.981193 -2.494669 -2.996827 10.474504 2.462283 2.159481
$hbox 4 "Bip01 L Forearm" -0.919609 -1.477813 -2.304884 9.767429 1.375067 0.959474
$hbox 4 "Bip01 L Hand" -1.841786 -0.7703 -1.837821 3.407332 1.232297 1.3986
$hbox 5 "Bip01 R UpperArm" -3.981144 -2.501463 -2.220132 9.797362 2.414905 2.839758
$hbox 5 "Bip01 R Forearm" -0.920759 -1.520062 -0.959441 9.767428 1.375142 2.30497
$hbox 5 "Bip01 R Hand" -1.841761 -0.770278 -3.171222 3.40736 1.232332 1.507967
$hbox 6 "Bip01 L Thigh" -1.481615 -4.796467 -2.969516 19.334558 3.669571 6.238146
$hbox 6 "Bip01 L Calf" -1.091596 -3.799035 -1.648523 18.080185 2.057177 2.499232
$hbox 6 "Bip01 L Foot" -4.696132 -3.297187 -1.462959 3.639622 4.248477 2.130242
$hbox 7 "Bip01 R Thigh" -1.483384 -4.796473 -6.238137 19.334566 3.669572 2.969509
$hbox 7 "Bip01 R Calf" -1.091588 -3.798645 -2.498972 18.080187 2.057168 1.648396
$hbox 7 "Bip01 R Foot" -4.69613 -3.296999 -2.130092 3.639623 4.248477 1.462807

$sequence "ragdoll" {
	"blood_dollasylum_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fps 30
}

$includemodel "character/shared/female/npc_allsequences.mdl"
