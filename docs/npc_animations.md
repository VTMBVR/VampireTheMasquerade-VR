# NPC animations in Asylum

The scene is `maps/sm_asylum_fix_navfix.vmap`. The source checkout belongs in
`content/hlvr_addons/vtmbvr` under the Half-Life: Alyx installation. The original
asset archive is still needed for assets that are not included in this repository.
Compile the sources with the Alyx Workshop Tools before running the map.

`animgraphs/shared_female.vanmgrph` and `animgraphs/male_shared.vanmgrph` share
the same `misc_anim_clip` values. Each graph separates `Idle`, `Move` and `Turn`
in `Locomotion` from the ambient clips and action chains in `Actions`.
The 34 source clips for each gender are listed in
`utils/npc_animation_sources.csv`. Existing enum values 0–8 remain compatible.

The shared prefabs provide clips for six female and four male models. The map
uses eight actors and sixteen `trigger_multiple` zones named `iplace_1` through
`iplace_16`. Each actor reserves one free zone in its connected area, walks to
it, faces its yaw and starts the selected action after the turn has settled.
The upstairs bathroom has its own navigation seed and interaction zone.

## Scene control

`scripts/vscripts/female_scene.lua` owns actors, reservations, movement and held
props for both genders. Its historical filename and `Female*` entry points
remain compatible with existing map Outputs. `female_place.lua` forwards touch
events to this owner.

A trigger Output uses `OnStartTouch`, target `!activator`, input
`SetAnimGraphParameter`, and a parameter such as `misc_anim_clip=26`
(`Drink_Into`). `!activator` is the actor entering the zone. The scene owner also
coordinates arrival, facing and the sequence; setting the enum alone does not
perform those steps.

The public control functions can be called from VConsole or a Hammer script
Output. For example, with developer commands enabled:

```text
ent_fire globe_script_logic RunScriptCode "NpcScenePreview('npc_vampire_smiling_jack','iplace_5','cellphone_into',true,20)"
ent_fire globe_script_logic RunScriptCode "NpcSceneStatus()"
```

This follows the normal navigation and trigger flow. A busy zone rejects the
request. The final two arguments select a complete action chain and its hold
time. Useful zones include `iplace_5` for the phone, `iplace_11` for a drink,
`iplace_12` for smoking, `iplace_9` for the wall, `iplace_13` for a barstool and
`iplace_16` for the bathroom. Keep a zone's catalog position and yaw in sync
when moving it in Hammer.

## Models and props

The male and female catalogs contain enum IDs, clip durations and the sampled
root motion used by the barstool sequences. Normalized furniture clips live in
`models/character/shared/{female,male}/furniture_runtime`; the original imported
SMD files are unchanged.

`scripts/vscripts/npc_held_props.lua` selects held models, per-gender positions,
rotations and scale. Phone, cigarette, bottle and glass props are parented to
`r_hand`. The seven `party_*` clips use a glass independently of their sequence
family. Each actor has its own prop, which is removed on completion,
interruption or actor deletion.

The cigarette model is `models/props/vtmbvr/cigarette.vmdl`. Its smoke effect,
`particles/vtmbvr/cigarette_smoke.vpcf`, follows the tip and is cleaned up with
the prop. Save restoration clears previous owned props and smoke sources,
rebinds touch callbacks and starts the scene owner with fresh entity handles.

When adding a clip, update the model or shared prefab, append its enum value,
connect its clip and state transitions, and update the matching catalog. A new
zone also needs its numbered name, position, yaw, actions and connected region.
Compile affected models and graphs, then the map when its geometry or entities
change. Close the running tools before rebuilding a loaded map VPK; verify the
compiler output and the generated resource rather than relying only on its
exit code.
