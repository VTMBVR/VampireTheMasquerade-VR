$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\decompiled_models\character\npc\unique\santa_monica\asianvampire"
$modelname "character/npc/unique/Santa_Monica/AsianVampire/AsianVampire.mdl"
$cdmaterials "models/character/npc/unique/Santa_Monica/AsianVampire/"
$cdmaterials "models/character/teeth/"
$cdmaterials "models/character/eyes/"
$attachment mouth "Bip01 Head" 1.870000 3.617999 0.000000 rotate 0.000000 0.000000 0.000000
$attachment eyes "Bip01 Head" 4.525995 2.556000 0.000000 rotate 0.000000 0.000000 0.000000
$attachment 0 "Bip01 R Hand" 0.000000 0.000002 0.000000 rotate 0.000000 0.000000 0.000000
$attachment 0 "Bip01 R Hand" 0.000000 0.000002 0.000000 rotate 0.000000 0.000000 0.000000
$surfaceprop "flesh"
$model "mainbody" "AsianVampire_REF.smd"{
}
$hboxset "default"
$hbox 0 "Bip01 Spine2" 1.0 0.0 0.0 5.0 6.0 6.0
$hbox 0 "Bip01 Spine2" 1.0 0.0 0.0 5.0 6.0 6.0
$hbox 0 "Bip01 Pelvis" -11.030933 -5.1475177 -7.2843003 8.877026 5.905483 7.2842994
$hbox 3 "Bip01 Spine" -1.3892198 -6.316291 -8.618647 21.921198 5.412573 8.618553
$hbox 2 "Bip01 Spine1" -4.103805 -5.4626007 -8.700436 17.33486 6.060926 9.552265
$hbox 2 "Bip01 Spine2" -5.7581134 -5.2456985 -9.55234 11.45445 5.956592 10.695773
$hbox 1 "Bip01 Neck" -4.7226578E-7 -3.3042495 -4.0827513 3.89553 2.9385233 4.0840487
$hbox 1 "Bip01 Head" -1.0989846 -6.095488 -3.952973 8.326521 3.998055 3.9338272
$hbox 4 "Bip01 L UpperArm" -0.54997826 -4.710856 -4.6473045 11.284516 3.1321912 2.2753537
$hbox 4 "Bip01 L Forearm" -1.0090934 -3.6815786 -3.0683036 18.191092 2.7946696 2.3820043
$hbox 4 "Bip01 L Hand" -0.15545247 -1.8669213 -3.7856386 8.854079 2.946969 2.2721093
$hbox 5 "Bip01 R UpperArm" -0.5498476 -4.7109385 -2.2751482 11.284618 3.1320145 5.232997
$hbox 5 "Bip01 R Forearm" -1.00897 -3.689725 -2.3819141 18.165003 2.794622 3.0684009
$hbox 5 "Bip01 R Hand" -0.0067941654 -1.8667682 -3.2322364 8.826064 2.9471667 3.7952647
$hbox 6 "Bip01 L Thigh" -2.2682962 -5.188793 -3.783129 17.830051 5.2655797 5.157968
$hbox 6 "Bip01 L Calf" -1.3084822 -4.0694656 -3.5589838 21.52335 9.504817 2.9502187
$hbox 6 "Bip01 L Foot" -6.868227 -4.392645 -3.5589838 3.583766 9.195553 2.9149263
$hbox 7 "Bip01 R Thigh" -2.2682855 -5.188797 -5.158498 17.83005 5.2655797 3.783105
$hbox 7 "Bip01 R Calf" -1.3084518 -4.0695915 -2.9730473 21.52337 9.504809 3.447251
$hbox 7 "Bip01 R Foot" -6.868214 -4.3927536 -2.7888396 3.583766 9.195544 3.447251
$includemodel "models/character/shared/male/npc_allsequences.mdl"
$sequence "prefight_bow" "asianvampire_@prefight_bow" activity "ACT_PRAY" 1.0 fps 30.0
$sequence "Jump_Idle" "asianvampire_@Jump_Idle" activity "ACT_LEAP" 1.0 fps 30.0
$sequence "Jump_Flip" "asianvampire_@Jump_Flip" activity "ACT_LEAP_ASCEND" 1.0 fps 30.0
$sequence "Jump_Land" "asianvampire_@Jump_Land" activity "ACT_LAND" 1.0 fps 30.0
$sequence "ragdoll" "asianvampire_@ragdoll" activity "ACT_DIERAGDOLL" 1.0 fps 30.0

