$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\decompiled_models\character\npc\unique\santa_monica\ghost"
$modelname "character/npc/unique/Santa_Monica/Ghost/Ghost.mdl"
$cdmaterials "models/character/teeth/"
$cdmaterials "models/character/eyes/"
$cdmaterials "models/character/teeth/"
$cdmaterials "models/character/npc/common/citizen/female/"
$cdmaterials "models/character/npc/unique/Santa_Monica/Ghost/"
$attachment mouth "Bip01 Head" 1.399998 4.500001 0.000000 rotate 0.000000 0.000000 0.000000
$attachment eyes "Bip01 Head" 3.799996 3.500002 0.000000 rotate 0.000000 0.000000 0.000000
$surfaceprop "flesh"
$model "mainbody" "Ghost_REF.smd"{
}
$hboxset "default"
$hbox 0 "Bip01 Pelvis" -33.64921 -10.717597 -13.523997 4.786789 10.142822 13.514303
$hbox 3 "Bip01 Spine" -4.1924896 -4.64133 -5.1310015 6.151908 3.758632 4.852699
$hbox 2 "Bip01 Spine1" -3.244932 -3.9325764 -5.1134143 7.884783 3.8748507 5.7202835
$hbox 2 "Bip01 Spine2" -0.5560173 -3.8879495 -6.959515 4.8722916 2.79315 6.9314833
$hbox 1 "Bip01 Neck" -2.2853749 -1.783074 -2.2723172 4.1902413 2.7848084 2.2585828
$hbox 1 "Bip01 Head" -7.162447 -4.550758 -3.1708236 6.685029 5.1541915 3.1717763
$hbox 4 "Bip01 L UpperArm" -0.62222123 -1.9207109 -2.9420996 10.415674 2.0495682 1.3408438
$hbox 4 "Bip01 L Forearm" -1.0979803 -1.1746801 -1.7396928 9.767429 1.4360372 0.8349732
$hbox 4 "Bip01 L Hand" -0.5033579 -0.52961594 -1.8376259 3.8270757 1.2360231 1.3987954
$hbox 5 "Bip01 R UpperArm" -1.0743551 -1.9367367 -1.3598361 10.427217 2.0857477 2.7123985
$hbox 5 "Bip01 R Forearm" -1.0876728 -1.174734 -0.8423608 9.767428 1.4433999 1.7322552
$hbox 5 "Bip01 R Hand" -0.49171743 -0.53702646 -1.3985889 3.8386252 1.2286069 1.83793
$hbox 6 "Bip01 L Thigh" -2.6627204 -4.6279945 -2.4391518 19.366327 3.3231733 5.589694
$hbox 6 "Bip01 L Calf" 0.0 -2.2629519 -1.1621574 21.701414 2.2245522 2.0875847
$hbox 6 "Bip01 L Foot" -1.599729 -2.2669911 -1.3431633 3.639767 5.7711024 1.8333362
$hbox 7 "Bip01 R Thigh" -2.2862535 -4.6278667 -5.203852 19.351433 3.4279904 2.6469193
$hbox 7 "Bip01 R Calf" 0.0 -2.263362 -1.7430412 21.761585 2.3210974 1.547857
$hbox 7 "Bip01 R Foot" -1.5997281 -2.266905 -1.4472964 3.6397696 5.77109 1.7292068
$sequence "walk_0" "ghost_@walk_0" activity "ACT_WALK" 1.0 fps 30.0
$sequence "run_0" "ghost_@run_0" activity "ACT_RUN" 1.0 fps 30.0
$sequence "Idle_0" "ghost_@Idle_0" activity "ACT_IDLE" 1.0 fps 30.0
$sequence "Ghost_PointLeft_0" "ghost_@Ghost_PointLeft_0" activity "ACT_GHOST_POINTLEFT" 1.0 fps 30.0
$sequence "Ghost_PointRight_0" "ghost_@Ghost_PointRight_0" activity "ACT_GHOST_POINTRIGHT" 1.0 fps 30.0
$sequence "Ghost_TableLook_0" "ghost_@Ghost_TableLook_0" activity "ACT_GHOST_TABLE_LOOK" 1.0 fps 30.0

