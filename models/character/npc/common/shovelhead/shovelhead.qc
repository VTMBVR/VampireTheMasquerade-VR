$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\models\character\npc\common\shovelhead"
$modelname "character/npc/common/shovelhead/shovelhead.mdl"
$cdmaterials "models/character/npc/common/shovelhead/"
$cdmaterials "models/character/teeth/"
$cdmaterials "models/character/eyes/"
$attachment mouth "Bip01 Head" 2.349997 3.540001 0.000000 rotate 0.000000 0.000000 0.000000
$attachment eyes "Bip01 Head" 4.399995 3.020002 0.000000 rotate 0.000000 0.000000 0.000000
$attachment 0 "Bip01 R Hand" 0.000000 0.000000 0.000000 rotate 0.000000 0.000000 0.000000
$surfaceprop "flesh"
$model "mainbody" "shovelhead_REF.smd"{
}
$hboxset "default"
$hbox 0 "Bip01 Spine2" 1.0 0.0 0.0 5.0 6.0 6.0
$hbox 0 "Bip01 Pelvis" -6.8035464 -4.6902475 -6.2893405 10.267378 6.145388 6.1760592
$hbox 3 "Bip01 Spine" -0.8869219 -5.066477 -6.1047416 16.17 4.796118 5.991459
$hbox 2 "Bip01 Spine1" -0.99168307 -5.0358796 -6.4615717 15.431946 4.761333 6.3482285
$hbox 2 "Bip01 Spine2" -4.9934154 -4.8522477 -7.393468 10.6119995 4.615037 8.338719
$hbox 1 "Bip01 Neck" 0.0 -1.4071219 -2.4535975 7.349229 2.7709048 2.1613073
$hbox 1 "Bip01 Head" -1.6606605 -5.7981086 -5.971706 8.251701 4.8710585 5.8742943
$hbox 4 "Bip01 L UpperArm" -6.1717577 -3.394865 -3.8359923 16.957146 2.8626297 1.6579169
$hbox 4 "Bip01 L Forearm" -0.048503615 -2.7536745 -3.1249483 15.425758 1.7150176 1.6020657
$hbox 4 "Bip01 L Hand" -6.8134375 -1.2381276 -3.3959599 4.934636 1.8773069 1.9269124
$hbox 5 "Bip01 R UpperArm" -3.544907 -3.4201298 -1.7332075 15.029221 2.8594208 4.243391
$hbox 5 "Bip01 R Forearm" -2.3064919 -2.636615 -1.8758479 15.425762 1.990666 3.3674326
$hbox 5 "Bip01 R Hand" -5.410224 -1.3571962 -3.2322366 5.029411 1.8458803 2.2884808
$hbox 6 "Bip01 L Thigh" -0.500112 -3.8494065 -3.1166105 21.308626 6.1105223 3.5355818
$hbox 6 "Bip01 L Calf" -0.95054686 -3.366163 -3.9934764 21.655375 5.7349725 3.3547118
$hbox 6 "Bip01 L Foot" -3.3402221 -2.8130481 -3.5066652 4.0748496 8.893594 2.9168384
$hbox 7 "Bip01 R Thigh" -0.50371975 -3.8493667 -3.4223979 21.308626 6.110562 3.22987
$hbox 7 "Bip01 R Calf" -0.95055073 -3.3662062 -3.2414618 21.633577 4.8396583 4.107477
$hbox 7 "Bip01 R Foot" -3.4497247 -2.7935457 -2.803832 4.074855 7.381024 3.6315665
$includemodel "models/character/shared/male/npc_allsequences.mdl"
$sequence "combatmove" "shovelhead_combatmove_180" activity "ACT_COMBATMOVE" 1.0 fps 30.0
$sequence "Low_CrouchFidget" "shovelhead_@Low_CrouchFidget" activity "" 1.0 fps 30.0
$sequence "shovelhead_look_over_shoulder" "shovelhead_@shovelhead_look_over_shoulder" activity "ACT_SHOVELHEAD_LOOK_OVER_SHOULDER" 1.0 fps 30.0
$sequence "ragdoll" "shovelhead_@ragdoll" activity "ACT_DIERAGDOLL" 1.0 fps 30.0

