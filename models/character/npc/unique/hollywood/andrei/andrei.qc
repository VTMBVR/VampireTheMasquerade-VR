$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\decompiled_models\character\npc\unique\hollywood\andrei"
$modelname "character/npc/unique/Hollywood/Andrei/Andrei.mdl"
$cdmaterials "models/character/npc/unique/Hollywood/Andrei/"
$cdmaterials "models/character/teeth/"
$cdmaterials "models/character/eyes/"
$attachment mouth "Bip01 Head" 0.759998 3.570000 0.000000 rotate 0.000000 0.000000 0.000000
$attachment eyes "Bip01 Head" 3.180000 2.930000 0.000000 rotate 0.000000 0.000000 0.000000
$attachment 0 "Bip01 R Hand" 0.000000 -0.000001 0.000000 rotate 0.000000 0.000000 0.000000
$surfaceprop "flesh"
$model "mainbody" "Andrei_REF.smd"{
}
$hboxset "default"
$hbox 0 "Bip01 Spine2" 1.0 0.0 0.0 5.0 6.0 6.0
$hbox 0 "Bip01 Pelvis" -36.880844 -7.5011244 -12.779141 8.690811 15.572172 12.665858
$hbox 3 "Bip01 Spine" -4.896367 -6.536526 -8.78968 22.92668 5.687006 8.676319
$hbox 2 "Bip01 Spine1" -3.7360358 -6.0631294 -10.977763 18.139183 6.003995 10.864334
$hbox 2 "Bip01 Spine2" -4.8603606 -5.8994007 -10.977763 13.471983 6.2436967 10.864334
$hbox 1 "Bip01 Neck" -4.0210533 -2.5919836 -2.3921912 4.2872443 5.276532 2.2716048
$hbox 1 "Bip01 Head" -1.2988954 -8.015381 -5.4669266 14.326296 5.0070605 5.3534737
$hbox 4 "Bip01 L UpperArm" -0.4608472 -3.9497132 -3.4621031 11.21194 2.908316 2.441547
$hbox 4 "Bip01 L Forearm" -0.60817844 -4.048005 -4.1928988 20.051271 4.06387 3.8909435
$hbox 4 "Bip01 L Hand" -2.8408575 -3.3331554 -4.1046534 10.456948 4.1386366 4.0618305
$hbox 5 "Bip01 R UpperArm" -0.3689682 -3.9390767 -2.5069292 11.303888 2.9186401 3.396513
$hbox 5 "Bip01 R Forearm" -0.51980305 -4.020291 -4.231729 20.139534 4.208062 3.8519797
$hbox 5 "Bip01 R Hand" -2.7461534 -3.609166 -4.2317305 10.551613 4.085822 4.071997
$hbox 6 "Bip01 L Thigh" 0.0 -3.5061693 -2.4048965 19.873486 4.5168214 6.0266075
$hbox 6 "Bip01 L Calf" -2.2674763 -2.4144692 -1.8390164 21.450119 10.459402 3.3476593
$hbox 6 "Bip01 L Foot" -0.803124 -1.74268 -1.6395415 3.6456716 9.514922 3.3476593
$hbox 7 "Bip01 R Thigh" 0.0 -3.5061688 -5.604561 19.8735 4.5168223 2.5181375
$hbox 7 "Bip01 R Calf" -2.2674584 -2.4144742 -3.2345066 21.450132 10.459396 1.9522178
$hbox 7 "Bip01 R Foot" -0.8031141 -1.7426832 -3.2345066 3.6456888 9.514913 1.7526926
$includemodel "models/character/shared/male/npc_allsequences.mdl"
$sequence "Andrei_line11_col_E" "andrei_@Andrei_line11_col_E" activity "" 1.0 fps 30.0
$sequence "Andrei_line151_col_E" "andrei_@Andrei_line151_col_E" activity "" 1.0 fps 30.0
$sequence "Andrei_line171_col_E" "andrei_@Andrei_line171_col_E" activity "" 1.0 fps 30.0
$sequence "Andrei_line181_col_E" "andrei_@Andrei_line181_col_E" activity "" 1.0 fps 30.0
$sequence "Andrei_line191_col_E" "andrei_@Andrei_line191_col_E" activity "" 1.0 fps 30.0
$sequence "Andrei_line201_col_E" "andrei_@Andrei_line201_col_E" activity "" 1.0 fps 30.0
$sequence "Andrei_Tele-OUT" "andrei_@Andrei_Tele-OUT" activity "ACT_ANDREI_TELEPORT_OUT" 1.0 fps 30.0
$sequence "Andrei_Tele-OUT-HIT" "andrei_@Andrei_Tele-OUT-HIT" activity "ACT_ANDREI_TELEPORT_OUT_HIT" 1.0 fps 30.0
$sequence "Andrei_Tele-IN" "andrei_@Andrei_Tele-IN" activity "ACT_ANDREI_TELEPORT_IN" 1.0 fps 30.0
$sequence "Andrei_SUMMON" "andrei_@Andrei_SUMMON" activity "ACT_ANDREI_SUMMON" 1.0 fps 30.0
$sequence "Andrei_Idle" "andrei_@Andrei_Idle" activity "ACT_IDLE" 1.0 fps 30.0
$sequence "Andrei_Levitate" "andrei_@Andrei_Levitate" activity "ACT_LEVITATE" 1.0 fps 30.0
$sequence "Andrei_Dialogue" "andrei_@Andrei_Dialogue" activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1.0 fps 30.0
$sequence "Andrei_Act_Transform" "andrei_@Andrei_Act_Transform" activity "ACT_ANDREI_TRANSFORM" 1.0 fps 30.0
$sequence "ragdoll" "andrei_@ragdoll" activity "ACT_DIERAGDOLL" 1.0 fps 30.0

