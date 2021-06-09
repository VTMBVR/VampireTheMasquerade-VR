$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\decompiled_models\character\npc\unique\santa_monica\eugene"
$modelname "character/npc/unique/Santa_Monica/Eugene/Eugene.mdl"
$cdmaterials "models/character/npc/unique/Santa_Monica/Eugene/"
$cdmaterials "models/character/teeth/"
$attachment mouth "Bip01 Head" 2.350000 3.540000 -0.000001 rotate 0.000000 0.000000 0.000000
$attachment eyes "Bip01 Head" 4.400000 3.020000 -0.000001 rotate 0.000000 0.000000 0.000000
$attachment 0 "Bip01 R Hand" 0.000000 0.000000 0.000000 rotate 0.000000 0.000000 0.000000
$surfaceprop "flesh"
$model "mainbody" "Eugene_REF.smd"{
}
$hboxset "default"
$hbox 0 "Bip01 Spine2" 1.0 0.0 0.0 5.0 6.0 6.0
$hbox 0 "Bip01 Pelvis" -8.117669 -4.8321395 -5.759851 9.197975 5.33846 6.4460034
$hbox 3 "Bip01 Spine" -1.3854377 -4.0455837 -5.856679 11.933504 4.3664722 5.5527635
$hbox 2 "Bip01 Spine1" -2.997355 -5.034422 -6.665062 10.739777 4.370313 6.2748537
$hbox 2 "Bip01 Spine2" -6.016306 -4.8911314 -8.208147 10.887882 5.9284735 8.353864
$hbox 1 "Bip01 Neck" -0.46754882 -1.6362334 -3.074285 4.205913 2.9863045 3.4639301
$hbox 1 "Bip01 Head" -3.2928166 -6.5459137 -4.823974 9.039231 5.846259 4.823827
$hbox 5 "Bip01 R UpperArm" -1.9922055 -2.6714334 -1.6659595 11.03101 3.1991107 3.9428387
$hbox 5 "Bip01 R Forearm" -1.0868427 -2.259231 -1.400664 9.549793 1.3851528 2.3827796
$hbox 5 "Bip01 R Hand" 0.0 -0.8316873 -3.2322357 6.1268187 1.3845359 2.7732193
$hbox 4 "Bip01 L UpperArm" -1.801882 -3.7844565 -3.4978194 10.732606 2.447418 1.8792963
$hbox 4 "Bip01 L Forearm" -0.7672813 -2.4758093 -2.382838 9.5497 1.3851006 1.4008502
$hbox 4 "Bip01 L Hand" 0.0 -1.0792503 -2.773268 6.1267486 1.3843929 1.9284456
$hbox 6 "Bip01 L Thigh" -1.5301253 -3.4456916 -2.9154248 21.359919 6.2809443 7.2507005
$hbox 6 "Bip01 L Calf" -2.3046024 -3.1333313 -3.8224702 21.363447 5.2689266 5.799728
$hbox 6 "Bip01 L Foot" -2.3723361 -1.637447 -3.5977745 3.583766 8.618557 2.849126
$hbox 7 "Bip01 R Thigh" -1.9505209 -3.4457011 -6.9719872 21.359938 6.280946 2.915409
$hbox 7 "Bip01 R Calf" -2.304579 -3.133338 -5.7998385 21.375765 5.268915 3.822363
$hbox 7 "Bip01 R Foot" -2.3723097 -1.8287549 -2.84924 3.5837662 8.541147 3.5976598
$includemodel "models/character/shared/male/npc_allsequences.mdl"
$sequence "walk_1" "eugene_@walk_1" activity "ACT_WALK" 1.0 fps 30.0
$sequence "Idle_1" "eugene_@Idle_1" activity "ACT_IDLE" 1.0 fps 30.0
$sequence "Idle_2" "eugene_@Idle_2" activity "ACT_IDLE" 1.0 fps 30.0
$sequence "ragdoll" "eugene_@ragdoll" activity "ACT_DIERAGDOLL" 1.0 fps 30.0

