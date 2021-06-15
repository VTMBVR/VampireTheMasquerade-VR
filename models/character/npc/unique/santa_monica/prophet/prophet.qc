$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\decompiled_models\character\npc\unique\santa_monica\prophet"
$modelname "character/npc/unique/Santa_Monica/Prophet/Prophet.mdl"
$cdmaterials "models/character/npc/unique/santa_monica/prophet/"
$cdmaterials "models/character/npc/common/bum/female/"
$cdmaterials "models/character/teeth/"
$attachment mouth "Bip01 Head" 1.599998 4.500000 0.000000 rotate 0.000000 0.000000 0.000000
$attachment eyes "Bip01 Head" 4.000000 3.699999 0.000000 rotate 0.000000 0.000000 0.000000
$attachment 0 "Bip01 R Hand" 0.000000 0.000001 0.000000 rotate 0.000000 0.000000 0.000000
$surfaceprop "flesh"
$model "mainbody" "Prophet_Ref.smd"{
}
$hboxset "default"
$hbox 0 "Bip01 Spine2" 1.0 0.0 0.0 5.0 6.0 6.0
$hbox 0 "Bip01 Pelvis" -8.129677 -5.7221017 -9.460436 4.4768367 7.5354934 8.930564
$hbox 3 "Bip01 Spine" -2.943859 -5.8861628 -8.676867 18.638939 6.6444488 8.793633
$hbox 2 "Bip01 Spine1" 0.0 -5.1026764 -8.680776 18.38835 5.6463757 9.265332
$hbox 2 "Bip01 Spine2" -0.40870756 -5.048705 -10.133074 12.080646 5.7844086 10.019827
$hbox 1 "Bip01 Neck" -0.97445285 -3.3198886 -4.618784 5.5827746 4.285749 4.8772144
$hbox 1 "Bip01 Head" -1.9718806 -4.0279994 -4.0466013 9.191635 5.8460927 3.8403988
$hbox 4 "Bip01 L UpperArm" -1.2655499 -3.9528081 -4.194547 12.440136 3.0128145 2.3372605
$hbox 4 "Bip01 L Forearm" -1.4175224 -3.4778671 -2.9611707 17.73213 2.4753199 2.2777474
$hbox 4 "Bip01 L Hand" 0.0 -0.8147954 -3.2068753 5.23514 1.5056672 1.9539965
$hbox 5 "Bip01 R UpperArm" -1.1735893 -3.942171 -2.4023457 12.014347 3.02304 5.3177752
$hbox 5 "Bip01 R Forearm" -1.3291892 -3.450154 -2.343075 17.82041 2.5029578 2.8958085
$hbox 5 "Bip01 R Hand" 0.0 -0.86767143 -3.2322364 5.138938 1.4528881 2.5549219
$hbox 6 "Bip01 L Thigh" -0.9904326 -5.985604 -5.429389 19.292105 6.908852 3.5578191
$hbox 6 "Bip01 L Calf" -0.2203357 -5.180912 -3.615929 21.472391 10.263424 3.280369
$hbox 6 "Bip01 L Foot" -1.1885275 -2.5429773 -2.9003336 3.583766 7.416618 2.3255658
$hbox 7 "Bip01 R Thigh" -0.8368566 -5.985509 -3.4445667 19.292124 6.908846 5.9592443
$hbox 7 "Bip01 R Calf" -0.22037625 -4.9151154 -3.167307 21.44051 10.108983 3.278409
$hbox 7 "Bip01 R Foot" -1.0807116 -2.515288 -3.167307 3.583766 7.381025 3.0455923
$includemodel "models/character/shared/male/npc_allsequences.mdl"
$sequence "doom_walk" "prophet_@doom_walk" activity "ACT_DOOM_WALK" 1.0 fps 30.0
$sequence "doom_idle_look" "prophet_@doom_idle_look" activity "ACT_DOOM_IDLE_LOOK" 1.0 fps 30.0
$sequence "rant_wave" "prophet_@rant_wave" activity "ACT_RANT_WAVE" 1.0 fps 30.0
$sequence "rant_hand_up" "prophet_@rant_hand_up" activity "ACT_HAND_UP" 1.0 fps 30.0
$sequence "rant_fist_down" "prophet_@rant_fist_down" activity "ACT_FIST_DOWN" 1.0 fps 30.0
$sequence "ragdoll" "prophet_@ragdoll" activity "ACT_DIERAGDOLL" 1.0 fps 30.0
$sequence "idle01" "prophet_@idle01" activity "ACT_DOOM_IDLE" 1.0 fps 30.0

