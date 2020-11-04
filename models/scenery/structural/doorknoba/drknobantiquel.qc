$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\decompiled_models\scenery\structural\doorknoba"
$modelname "scenery/structural/doorknoba/drknobantiquel.mdl"
$cdmaterials "models/scenery/structural/doorknoba/"
$attachment camera_position "drknobantique" 0.000000 -20.000000 -4.000000 rotate 0.000000 0.000000 0.000000
$attachment camera_target "drknobantique" 0.000000 0.000000 -4.000000 rotate 0.000000 0.000000 0.000000
$surfaceprop "metalpanel"
$model "doorknob" "drknobantiquel.smd"{
}
$hboxset "default"
$hbox 0 "drknobantique" -3.232872 -1.577211 -10.835389 3.232874 0.385489 4.520611
$hbox 0 "handle" -5.6480722 -3.481911 -0.68828917 1.679028 0.0 0.68821096
$sequence "idle" "drknobantiquel_@idle" activity "" 1.0 fps 1.0
$sequence "handle_locked" "drknobantiquel_@handle_locked" activity "" 1.0 fps 15.0
$sequence "handle_unlocked" "drknobantiquel_@handle_unlocked" activity "" 1.0 fps 15.0

