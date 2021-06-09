$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\decompiled_models\character\npc\unique\santa_monica\tourette"
$modelname "character/npc/unique/Santa_Monica/Tourette/Tourette.mdl"
$cdmaterials "models/character/npc/unique/Santa_Monica/Tourette/"
$cdmaterials "models/character/npc/unique/Santa_Monica/Therese/"
$cdmaterials "models/character/npc/unique/Santa_Monica/Jeanette/"
$cdmaterials "models/character/teeth/"
$attachment mouth "Bip01 Head" 0.629999 4.560000 0.000000 rotate 0.000000 0.000000 0.000000
$attachment eyes "Bip01 Head" 2.890004 3.779999 0.000000 rotate 0.000000 0.000000 0.000000
$attachment 0 "Bip01 R Hand" 0.000000 -0.000001 0.000000 rotate 0.000000 0.000000 0.000000
$surfaceprop "flesh"
$model "girl" "TouretteR1_REF.smd"{
}
$hboxset "default"
$hbox 0 "Bip01 Spine2" 1.0 0.0 0.0 5.0 6.0 6.0
$hbox 0 "Bip01 Pelvis" -3.5580864 -3.6138275 -6.6233025 8.650913 5.362665 6.337097
$hbox 3 "Bip01 Spine" -0.40458274 -5.838729 -6.7280235 14.102757 4.1665206 6.7281766
$hbox 6 "Bip01 L Thigh" -2.4420762 -3.4962213 -3.248658 20.36303 4.8211746 4.2862663
$hbox 6 "Bip01 L Calf" -3.0141199 -2.2340124 -2.1521103 22.827452 6.8907332 2.1253457
$hbox 6 "Bip01 L Foot" -1.9754758 -1.806119 -1.6274893 5.8692484 6.1483884 1.2919135
$hbox 7 "Bip01 R Thigh" -2.4420636 -3.496126 -4.2861605 20.363037 4.8210726 3.2485576
$hbox 7 "Bip01 R Calf" -3.0141082 -2.234023 -2.125377 22.827461 6.8907185 2.1520622
$hbox 7 "Bip01 R Foot" -1.975471 -1.8061321 -1.2919922 5.869248 6.148371 1.6274073
$hbox 2 "Bip01 Spine1" -1.0893037 -4.3452597 -7.100218 13.343385 5.1659994 7.1000824
$hbox 2 "Bip01 Spine2" -0.31705272 -3.8928385 -7.100218 8.907798 3.4664073 7.1000824
$hbox 1 "Bip01 Neck" -1.8138772 -2.1582797 -2.8967211 2.7727542 2.1765192 2.8966792
$hbox 1 "Bip01 Head" -3.8025606 -6.463161 -3.1742299 7.6943035 4.758306 7.6293707
$hbox 4 "Bip01 L UpperArm" -1.6809427 -2.6130178 -2.16956 11.020512 1.8594376 2.1137097
$hbox 4 "Bip01 L Forearm" -0.614733 -2.2469962 -1.8042767 16.977217 1.5545372 1.4564036
$hbox 4 "Bip01 L Hand" -0.8876649 -1.4659449 -2.2177708 7.329592 1.530047 1.4594254
$hbox 5 "Bip01 R UpperArm" -1.6808888 -2.6130989 -2.114024 11.020553 1.8594518 2.1695533
$hbox 5 "Bip01 R Forearm" -0.61475575 -2.2469218 -1.4567406 16.977245 1.5550011 1.8126736
$hbox 5 "Bip01 R Hand" -0.88754535 -1.4662268 -3.171222 7.3296227 1.530288 2.217696
$includemodel "models/character/shared/female/npc_allsequences.mdl"
$sequence "Tourette_intro_pre" "tourette_@Tourette_intro_pre" activity "" 1.0 fps 30.0
$sequence "Tourette_intro" "tourette_@Tourette_intro" activity "" 1.0 fps 30.0
$sequence "Tourette_Line1_Col_E" "tourette_@Tourette_Line1_Col_E" activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1.0 fps 30.0
$sequence "Tourette_Line11_Col_E" "tourette_@Tourette_Line11_Col_E" activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1.0 fps 30.0
$sequence "Tourette_ShootsHerself" "tourette_@Tourette_ShootsHerself" activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1.0 fps 30.0
$sequence "ragdoll" "tourette_@ragdoll" activity "ACT_DIERAGDOLL" 1.0 fps 30.0

