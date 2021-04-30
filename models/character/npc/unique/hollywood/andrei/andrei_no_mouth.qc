$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\decompiled_models\character\npc\unique\hollywood\andrei"
$modelname "character/npc/unique/Hollywood/Andrei/Andrei_no_mouth.mdl"
$cdmaterials "models/character/npc/unique/Hollywood/Andrei/"
$cdmaterials "models/character/teeth/"
$cdmaterials "models/character/eyes/"
$attachment mouth "Bip01 Head" 0.759998 3.570000 0.000000 rotate 0.000000 0.000000 0.000000
$attachment eyes "Bip01 Head" 3.180000 2.930000 0.000000 rotate 0.000000 0.000000 0.000000
$surfaceprop "flesh"
$model "mainbody" "Andrei_no_mouth_REF.smd"{
}
$hboxset "default"
$hbox 0 "Bip01 Pelvis" -36.880844 -7.5011244 -12.779141 8.690811 15.572172 12.665858
$hbox 3 "Bip01 Spine" -4.896367 -6.158118 -7.0804386 7.802712 5.687006 6.9671607
$hbox 2 "Bip01 Spine1" -3.7360358 -4.9303184 -7.241465 9.645755 6.003995 7.128135
$hbox 2 "Bip01 Spine2" -4.8603606 -5.8994007 -10.977763 13.471983 6.2436967 10.864334
$hbox 1 "Bip01 Neck" -4.0210533 -2.5919836 -2.3921912 4.2872443 5.276532 2.2716048
$hbox 1 "Bip01 Head" -1.2988954 -8.015381 -5.4669266 14.326296 5.0070605 5.3534737
$hbox 4 "Bip01 L UpperArm" -0.46084717 -3.9497132 -3.4621031 11.21194 2.9083154 2.441547
$hbox 4 "Bip01 L Forearm" -0.60817844 -3.990117 -4.1928988 19.426514 4.06387 3.8909407
$hbox 4 "Bip01 L Hand" -2.6722896 -3.3331554 -4.0251102 9.880285 3.975227 4.0618305
$hbox 5 "Bip01 R UpperArm" -0.3689682 -3.9390767 -2.5069292 11.303888 2.9186397 3.396513
$hbox 5 "Bip01 R Forearm" -0.51980305 -3.9623783 -2.9704447 19.514698 3.2816093 2.6543696
$hbox 5 "Bip01 R Hand" -2.57759 -3.609166 -4.2317305 9.974868 3.6991217 3.9924252
$hbox 6 "Bip01 L Thigh" 0.0 -3.5061696 -2.4048965 19.873486 4.5168214 6.0266075
$hbox 6 "Bip01 L Calf" -2.2674763 -2.414469 -1.8390164 21.450119 4.4157753 2.7555616
$hbox 6 "Bip01 L Foot" -0.8031241 -1.7426798 -1.6395414 3.6456716 9.514922 3.3476593
$hbox 7 "Bip01 R Thigh" 0.0 -3.5061684 -5.604561 19.8735 4.5168223 2.5181375
$hbox 7 "Bip01 R Calf" -2.2674587 -2.4144742 -2.642404 21.450132 4.4157696 1.9522178
$hbox 7 "Bip01 R Foot" -0.8031143 -1.7426829 -3.2345066 3.6456888 9.514913 1.7526927
$sequence "Andrei_Tele-OUT" "andrei_no_mouth_@Andrei_Tele-OUT" activity "ACT_ANDREI_TELEPORT_OUT" 1.0 fps 30.0
$sequence "Andrei_Tele-OUT-HIT" "andrei_no_mouth_@Andrei_Tele-OUT-HIT" activity "ACT_ANDREI_TELEPORT_OUT_HIT" 1.0 fps 30.0
$sequence "Andrei_Tele-IN" "andrei_no_mouth_@Andrei_Tele-IN" activity "ACT_ANDREI_TELEPORT_IN" 1.0 fps 30.0
$sequence "Andrei_SUMMON" "andrei_no_mouth_@Andrei_SUMMON" activity "ACT_ANDREI_SUMMON" 1.0 fps 30.0
$sequence "Andrei_Idle" "andrei_no_mouth_@Andrei_Idle" activity "ACT_IDLE" 1.0 fps 30.0
$sequence "Andrei_Levitate" "andrei_no_mouth_@Andrei_Levitate" activity "ACT_LEVITATE" 1.0 fps 30.0
$sequence "Andrei_Dialogue" "andrei_no_mouth_@Andrei_Dialogue" activity "ACT_DIALOG_SCRIPTED_SEQUENCE" 1.0 fps 30.0
$sequence "Andrei_Act_Transform" "andrei_no_mouth_@Andrei_Act_Transform" activity "ACT_ANDREI_TRANSFORM" 1.0 fps 30.0

