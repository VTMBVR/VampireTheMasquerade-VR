$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\models\character\npc\common\sabbat_henchman"
$modelname "character/npc/common/Sabbat_Henchman/Sabbat_Henchman.mdl"
$cdmaterials "models/character/npc/common/Sabbat_Henchman/"
$cdmaterials "models/character/teeth/"
$cdmaterials "models/character/eyes/"
$attachment mouth "Bip01 Head" 2.000000 3.199999 0.000000 rotate 0.000000 0.000000 0.000000
$attachment eyes "Bip01 Head" 4.499995 2.200000 0.000000 rotate 0.000000 0.000000 0.000000
$attachment 0 "Bip01 R Hand" 0.000000 0.000000 0.000000 rotate 0.000000 0.000000 0.000000
$surfaceprop "flesh"
$model "mainbody" "Sabbat_Henchman_REF.smd"{
}
$hboxset "default"
$hbox 0 "Bip01 Spine2" 1.0 0.0 0.0 5.0 6.0 6.0
$hbox 0 "Bip01 Pelvis" -11.082192 -5.7116137 -7.6485353 8.863701 6.38891 7.648565
$hbox 3 "Bip01 Spine" -1.3878144 -6.728841 -9.119183 21.709177 5.3166046 9.152316
$hbox 2 "Bip01 Spine1" -4.12026 -5.6222787 -9.190576 17.188713 6.208769 9.311934
$hbox 2 "Bip01 Spine2" -5.7928796 -5.2457304 -10.108773 11.241774 6.1022563 10.695734
$hbox 1 "Bip01 Neck" -1.6310835E-8 -3.474224 -3.712288 3.89553 2.8298652 3.7121124
$hbox 1 "Bip01 Head" -1.4518874 -5.938253 -4.121001 8.116248 4.943069 4.121499
$hbox 4 "Bip01 L UpperArm" -0.44481295 -4.710828 -4.3062305 11.284492 3.1638868 2.8074367
$hbox 4 "Bip01 L Forearm" -1.0091317 -3.5935967 -3.0683267 18.215124 2.7946916 2.3819788
$hbox 4 "Bip01 L Hand" 0.0 -1.8669603 -3.6860778 8.854102 2.946991 2.2721298
$hbox 5 "Bip01 R UpperArm" -0.47170308 -4.7109137 -2.7881796 11.284572 3.1605587 4.953859
$hbox 5 "Bip01 R Forearm" -1.0090026 -3.57995 -2.3819306 18.115866 2.7946606 3.068382
$hbox 5 "Bip01 R Hand" -0.0096642515 -1.8667965 -3.2322366 8.74256 2.9471512 3.6850653
$hbox 6 "Bip01 L Thigh" -2.241702 -5.756701 -4.147394 17.830053 5.839718 5.2576027
$hbox 6 "Bip01 L Calf" -1.3002045 -4.4439774 -3.727443 21.523357 9.504786 3.517059
$hbox 6 "Bip01 L Foot" -6.8682213 -4.391678 -3.727443 3.583766 9.195521 3.0699618
$hbox 7 "Bip01 R Thigh" -2.2416873 -5.7567053 -5.257663 17.830051 5.9693723 4.1473403
$hbox 7 "Bip01 R Calf" -1.3001736 -4.443989 -3.5172067 21.523376 9.504778 3.7273912
$hbox 7 "Bip01 R Foot" -6.8682127 -4.391687 -3.070104 3.583766 9.195513 3.7273912
$includemodel "models/character/shared/male/npc_allsequences.mdl"
$sequence "Sabbat_Shooting_In_The_Air" "sabbat_henchman_@Sabbat_Shooting_In_The_Air" activity "ACT_SABBAT_SHOOTING_IN_THE_AIR" 1.0 fps 30.0
$sequence "Sabbat_Shooting_And_Laughing" "sabbat_henchman_@Sabbat_Shooting_And_Laughing" activity "ACT_SABBAT_SHOOTING_SHOOTING_AND_LAUGHING" 1.0 fps 30.0
$sequence "ragdoll" "sabbat_henchman_@ragdoll" activity "ACT_DIERAGDOLL" 1.0 fps 30.0

