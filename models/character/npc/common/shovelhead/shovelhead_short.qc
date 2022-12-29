$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\models\character\npc\common\shovelhead"
$modelname "character/npc/common/shovelhead/shovelhead_short.mdl"
$cdmaterials "models/character/npc/common/shovelhead/"
$cdmaterials "models/character/teeth/"
$cdmaterials "models/character/eyes/"
$attachment mouth "Bip01 Head" 2.349998 3.539999 0.000000 rotate 0.000000 0.000000 0.000000
$attachment eyes "Bip01 Head" 4.400001 3.019999 0.000000 rotate 0.000000 0.000000 0.000000
$attachment 0 "Bip01 R Hand" 0.000000 -0.000001 0.000000 rotate 0.000000 0.000000 0.000000
$surfaceprop "flesh"
$model "mainbody" "shovelhead_short_REF.smd"{
}
$hboxset "default"
$hbox 0 "Bip01 Spine2" 1.0 0.0 0.0 5.0 6.0 6.0
$hbox 0 "Bip01 Pelvis" -7.018728 -4.690247 -6.28894 10.267378 6.1819882 6.175659
$hbox 3 "Bip01 Spine" -0.8869219 -5.0664763 -6.1047416 12.193229 4.796118 5.991459
$hbox 2 "Bip01 Spine1" -0.99168307 -5.035867 -6.461571 15.431946 4.7613335 6.348229
$hbox 2 "Bip01 Spine2" -4.9933224 -4.8522277 -7.1878676 10.6119995 4.6150374 8.44432
$hbox 1 "Bip01 Neck" -6.4884645E-8 -1.4174827 -2.4535997 7.6041527 2.9129882 2.1613073
$hbox 1 "Bip01 Head" -1.66068 -5.798115 -5.9717045 8.251672 4.871101 5.8742957
$hbox 4 "Bip01 L UpperArm" -3.480376 -3.593795 -3.7552161 10.293986 2.6372025 1.6678367
$hbox 4 "Bip01 L Forearm" -0.48299348 -2.6982875 -3.068519 10.082756 1.7584699 1.5833521
$hbox 4 "Bip01 L Hand" -1.0453701 -1.2913892 -2.990962 4.93474 1.6188904 1.9269475
$hbox 5 "Bip01 R UpperArm" -3.388429 -3.5833712 -1.7331692 11.123178 2.647526 3.9779902
$hbox 5 "Bip01 R Forearm" -0.022323752 -2.3561625 -1.6487237 9.7755375 1.7861978 3.003159
$hbox 5 "Bip01 R Hand" -0.95067626 -1.3442782 -3.2322366 5.0294347 1.5660177 2.0769885
$hbox 6 "Bip01 L Thigh" -0.48904675 -3.8737123 -3.1166093 21.345947 5.985054 3.5578218
$hbox 6 "Bip01 L Calf" -0.93558073 -3.3662198 -3.9943347 21.69499 5.740501 3.3546867
$hbox 6 "Bip01 L Foot" 0.0 -1.0924779 -3.3306372 4.0748777 7.381025 1.8639579
$hbox 7 "Bip01 R Thigh" -0.48902214 -3.8737116 -3.4445632 21.345953 5.9850545 3.2298245
$hbox 7 "Bip01 R Calf" -0.93555784 -3.3662288 -3.2414792 21.695005 4.794231 4.1075
$hbox 7 "Bip01 R Foot" -3.2680101 -2.8270848 -2.7926047 4.074887 7.381025 3.6542947
$includemodel "models/character/shared/male/npc_allsequences.mdl"
$sequence "combatmove" "shovelhead_short_combatmove_180" activity "ACT_COMBATMOVE" 1.0 fps 30.0
$sequence "ragdoll" "shovelhead_short_@ragdoll" activity "ACT_DIERAGDOLL" 1.0 fps 30.0

