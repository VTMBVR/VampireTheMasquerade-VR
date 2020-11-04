$cd "C:\Users\HYPERPC\Desktop\Source 2\VTMB\SDKContent\VpkContent\decompiled_models\scenery\structural\doorknoba"
$modelname "scenery/structural/doorknoba/drknobantique.mdl"
$cdmaterials "models/scenery/structural/doorknoba/"
$attachment camera_position "drknobantique" 0.000000 -4.000000 20.000000 rotate 0.000000 0.000000 0.000000
$attachment camera_target "drknobantique" 0.000000 -4.000000 0.000000 rotate 0.000000 0.000000 0.000000
$surfaceprop "metalpanel"
$model "doorknob" "drknobantique.smd"{
}
$hboxset "default"
$hbox 0 "drknobantique" -3.232883 -10.835389 -0.3854924 3.232817 4.520611 1.5772096
$hbox 0 "handle" -1.678983 -0.68829006 0.0 5.648017 0.6882105 3.481911
$sequence "idle" "drknobantique_@idle" activity "" 1.0 fps 1.0
$sequence "handle_locked" "drknobantique_@handle_locked" activity "" 1.0 fps 15.0
$sequence "handle_unlocked" "drknobantique_@handle_unlocked" activity "" 1.0 fps 15.0

