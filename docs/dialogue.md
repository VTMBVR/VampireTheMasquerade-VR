# Dialogue and facial animation

The dialogue runtime uses the complete imported Asylum conversation trees for
Jeanette, Therese, Cal, Danielle, Doll1, Knox, Chunk and Tourette. It retains
Russian player-gender and Malkavian text, starting conditions, conditional
answers, automatic links and dialogue state. Answers are shown four at a time;
**Другие ответы** reveals additional choices.

Approach a matching NPC to see the original Bloodlines talk icon. Interaction
opens a world-space Panorama panel. Closing releases the actor back to the
ambient scene. The icon is hidden outside interaction range, behind walls and
while a conversation is open.

The conversation follows the original lower-panel layout and ornamental frame:
gold NPC text, white normal answers and the original special-answer palette.
Seduction is pink, Persuasion blue, Intimidation green, and disciplines red;
Malkavian answers retain their own lettering. Font variants come from the
installed `TrackerScheme` dialogue definitions. Larger text, darker backing and
generous answer hit areas improve VR readability. Additional answers stay
available through paging, with continuous numbering. Original skill, clan,
gender and story conditions still determine which choices are available.
The VR panel stays fixed in the world after opening. Hold the trigger over
empty background or the frame to move it, then release to leave it in place.
This also works in facial settings; answer buttons and sliders keep their
normal behavior. The panel renders without scene depth testing. The desktop
preview frames the speaker above it using a temporary camera.

The talk icon appears beside the selected NPC's shoulder, towards the viewer,
instead of above their head. Looking near a visible speaker reveals it; VR
hand targeting takes priority. Only one nearby speaker is highlighted at a time.

The actor faces the listener before a source body performance starts. Closing
restores the source roster's authored position and facing, unless dialogue
state has removed that NPC from the current story stage.

The models, graphs, bitmap fonts and proximity icons are built with the Alyx
SDK. Conversations use the installed game's original voice and facial data.
Fresh Asylum sessions enable the original first-visit quest roster. Its
visibility follows local story state. The map removes the old entrance test
stool, moves `iplace_13` onto an existing bar stool and makes the scene bottles
physical, with one-handed carrying enabled.

## Prepare sources without launching anything

The installed Bloodlines files are read only. Its effective Unofficial Patch
files take precedence over the base game. Pillow is required for texture/font
conversion. From the checkout:

```powershell
$bloodlines = "E:\Vampire - The Masquerade Bloodlines"
python utils/prepare_asylum.py --bloodlines-root $bloodlines
```

This regenerates seven additional facial-capable models, the existing Jeanette
facial graph, missing crowd model sources, original UI art, dialogue data and
voice/performance modules. Jeanette's approved body/face mesh and saved tuning
are retained. The command does not start Alyx, Hammer, the SDK compiler or tests.

The interface uses original bitmap glyphs, including Cyrillic, rather than a
replacement desktop font. It includes the dialogue, heading, persuasion,
seduction, intimidation, Domination, Dementation and Malkavian families.
`scripts/dialogue/interface_sources.json` records their installed sources and
hashes. The talk icons also come from the installed game.

Font preparation defaults to the original 1280-resolution bank. Its thin base
lettering matches the Russian game's dialogue reference; the patch's smaller
1024 atlas has a visibly heavier cut. This choice is independent of Panorama's
virtual panel resolution. `prepare_dialogue_art.py --font-resolution <width>`
can select another original bank without changing the world panel's size.

## Native build, when ready

Put or link the checkout under the SDK's `content/hlvr_addons/<addon-name>`.
The builders detect that folder and write compiled resources to the matching
`game/hlvr_addons/<addon-name>`. Local use needs the existing Asylum assets as
well as this repository.

```powershell
$alyx = "E:\SteamLibrary\steamapps\common\Half-Life Alyx"
$buildLog = Join-Path $env:TEMP "asylum-build.log"
python utils/build_asylum.py --alyx-root $alyx --compile-log $buildLog
python utils/build_dialogue.py --alyx-root $alyx
```

The first command compiles source voices, sound events and the manifest. The
second compiles dialogue models/graphs, crowd models, UI, original glyph images
and the earlier example's resources. Restart Alyx after rebuilding cached UI.
Neither command rewrites or compiles the map. Rebuild
`maps/sm_asylum_fix_navfix.vmap` in Hammer for its chair, trigger and bottle
changes. Close the running map before rebuilding its VPK. If multiple SDK
mounts point to this checkout, select one with `--addon vampirethemasquerade`
or its actual name. Club music is reconstructed by `prepare_asylum.py` from
the local Bloodlines installation; `sounds/music` is excluded from Git.

## Dialogue state and map scope

The server evaluates imported conditions and actions through a small data
interpreter; it does not execute Bloodlines Python. Dialogue globals, virtual
quest stages, inventory, talk counts and player attributes control available
answers. They persist as attributes on the map's script entity. These are
local conversation state, not a complete port of the Bloodlines campaign.

World callbacks are recorded as typed `WORLD_INTENT` entries. The location
adapter handles inventory handovers, local animation requests, whispers and
the sisters' mapped scene cues. Camera directives select a speaking persona
without moving the player's view. Unhandled callbacks remain in
`NpcDialogLastSourceEffects` after closing the conversation.

One Knox condition in the patch contains `and or`. The runtime removes the
stray `and`, retaining the quest-complete **or** enemy-dead check and its other
requirements. Both paths are checked; `sourceRepairs` in `dialogue_runtime.json`
records this interpretation. The imported original stays untouched. One
Jeanette VCD names a gesture absent even from her installed MDL; that cue leaves
her in the normal conversation pose while voice and facial animation continue.

`cast.json` preserves 21 source NPC slots and 15 unique models, their original
coordinates, gender and fixed/ambient placement hints. These slots include
conditional Basic/Plus and story alternatives. They are not 21 simultaneous
NPCs. Fresh Asylum sessions use `first_visit_quest` automatically. The following
commands change the local scene profile for authoring; `--status` only inspects
it, while selecting a profile resets its local story state:

```powershell
python utils/asylum_cast.py --profile first_visit
python utils/asylum_cast.py --profile first_visit_quest
python utils/asylum_cast.py --profile gallery
python utils/asylum_cast.py --status
python utils/asylum_cast.py --disable
```

The roster parks the prior demonstration actors, creates the appropriate source
NPCs and updates visibility as dialogue state changes. Source XY coordinates
are retained; characters are placed on the Alyx map's local floor where its
platform heights differ. `--disable` restores prior actors and positions.
Roster mode and dialogue state survive a game save/load. `--enable` uses the
current state without resetting it; selecting a profile resets story variables.
`first_visit_quest` also sets the original Mercurio prerequisite for asking Cal
about Therese. `presence_sources.json` retains the original occupancy callbacks
and map-load outputs as reference data; original Python is never executed.

Roster mode also enables the map-local Asylum scene. It creates 40 numbered
`iplace_` trigger slots from the original bounds/groups, reserves them between
crowd actors, and waits for arrival and facing before playing the requested
animation. Blocked routes stop and release their reservation. No NPC is
teleported to make a failed route appear successful.

The scene includes the original club track, conversation loops and whispers,
Jeanette's greeting and departure, Cal's lift permission and the upstairs
sisters' argument. The lift adapter reconnects the existing buttons to the
port's actual platform. Short walks over its missing navigation link use
standing-hull sweeps and supported steps. A riding NPC follows the real cab;
only its collision pair with the cab is suppressed during the ride. The empty
cab returns downstairs after Jeanette leaves, waiting if the player is aboard.
Scene progression and pending lift trips survive save/load.

These are local scene adaptations, not the full Bloodlines campaign. Quest and
inventory values persist in the dialogue state. Feeding, combat and campaign
map transitions are not implemented by this adapter; unhandled source world
actions remain recorded as intents.

For later dialogue-only inspection, the script owner exposes:

```text
NpcDialogConfigure({clan="Malkavian",male=false,skills={Persuasion=4,Seduction=4}})
NpcDialogPreset("first_visit")
NpcDialogPreset("hotel_return")
NpcDialogPreset("gallery")
NpcDialogPreset("gallery_return")
NpcDialogPreset("sisters")
NpcDialogResetStory()
NpcDialogStoryState()
```

Configuration/presets require a closed conversation. Presets reset dialogue
story variables and select a useful branch context; they do not spawn NPCs,
complete external quests, grant real weapons or start cinematics. The optional
`first_visit_basic` preset uses Basic dialogue flags. The original ten-node
example is available with `NpcDialogUseExample(true)`; use `false` for the
complete source conversations.

## Desktop and VR interaction

For later desktop inspection, load `sm_asylum_fix_navfix` with `-novr -vconsole`:

```powershell
python utils/dialogue_preview.py --interact --mouse
```

Look at a supported NPC within 100 game units and press E. Use the gold pointer
and left mouse button. The helper preserves normal bindings and remains ready
after closing. Restart it after a map/save reload. A four-second game-time
watchdog releases controls after a lost connection once the game is running.

VR uses engine hand rays and raw trigger input. Dialogue selection, window
dragging and gravity-glove pulling/catching have been tested with PS VR2 Sense
controllers through SteamVR. Other headsets still need physical verification.
The helper is needed only for desktop mouse input and source-file editing.
`utils/vconsole_command.py` uses its loopback console proxy.

In Asylum, gravity gloves pull on the button without requiring a wrist flick.
Target locking is suspended while a dialogue or its settings are open, so
clicking an answer does not also pull a bottle behind the window. Previous
engine settings are restored when the scene stops or its script entity unloads.

The player stool opposite Cal uses a native teleport magnet on the clear aisle
side of the counter. Teleport onto that point, or approach it on foot while
looking towards the stool, to take the seat. Move or teleport away to leave.
Head rotation remains under headset control. This player interaction is
separate from the NPC animation slot `iplace_13` on another existing bar stool.
Seating state and the original settings survive save/load.

## Facial and body performance

All eight speaking models have source phoneme/expression channels. The seven
new models read geometry, four-influence skinning and facial deltas directly
from the installed v2531 MDL/VTX files. Facial deltas use a separate facial
mesh, layered over the shared male/female movement graph with a facial-only
mask. Original VCD gesture/sequence events select matching model animations
where those source SMD clips are available. Missing clips are listed in
`model_preparation.json`. Eyeball/pupil motion has not been restored.

**Настроить мимику** exposes six global controls and 53 individual channel
multipliers. **Повторять эту реплику** repeats the current voice. The saved
Jeanette settings are shared across source actors; the additional faces have
not been individually calibrated in-game.

**Сохранить** writes the gains to `scripts/dialogue/jeanette.json` and the
generated lip-sync JSON/Lua. Wait for **Сохранено в файлы мода**. Saving requires
the desktop helper and a writable checkout. **Вернуть сохранённое** restores
the last successful save; unsaved live changes are temporary.

The complete source library contains eight DLG files, all thirteen columns,
533 VCD scenes, 473 LIP files and 470 dialogue recordings (about 55 minutes),
plus 180 ambient voices/map sounds. The location preparer separately imports
the club music, three conversation loops and eight whisper cues.
Chunk is associated dialogue content: his original dancing Asylum entity has
no dialogue binding of its own.

Reimport the installed source library when its files change, keeping raw
originals outside the checkout, then prepare sources again:

```powershell
$raw = Join-Path (Split-Path (Get-Location)) "bloodlines-asylum-source"
python utils/import_asylum.py --bloodlines-root $bloodlines --raw-output $raw
python utils/prepare_asylum.py --bloodlines-root $bloodlines
```

The importer uses `ffmpeg` or `imageio_ffmpeg`; `--ffmpeg` accepts an explicit
executable. Raw source files, conditions and omitted malformed phoneme data
remain preserved. `runtime-audit.json` records invalid intervals and missing
original expression poses; `scene.json` lists unresolved source references.

The optional `asylum_source` script auditions individual source performances
without applying their dialogue actions. For example, through VConsole:

```text
ent_fire globe_script_logic RunScriptFile asylum_source
ent_fire globe_script_logic RunScriptCode "AsylumSourcePlay('jeanette',1,'npc_vampire_jeanete')"
ent_fire globe_script_logic RunScriptCode "AsylumSourceStop('npc_vampire_jeanete')"
```

Close any conversation first and use the matching character model. Audition
borrows a free registered actor; it refuses to steal another conversation.

## Acceptance status

Acceptance includes native compilation, dialogue state/branch checks, SMD
winding/skinning checks and in-game voice/facial playback for all eight source
speakers. Speaker loopback recordings are compared with their imported original
waveforms. Original Cyrillic font rendering, proximity icons, short E presses
and mouse answer selection are also inspected in Alyx. These checks do not
implement the rest of the campaign. Hardware acceptance currently covers the
PS VR2 interactions described above.

The checking commands are `node utils/check_dialogue.js`,
`python utils/check_dialogue_mouse.py`, `python utils/check_asylum_models.py`
and `python utils/check_source_dialogue.py --lua-runtime <lupa-directory>`.
`check_asylum.py` additionally verifies the original asset hashes, source
precedence and all imported audio/performance paths.

For a change isolated to one character, prepare only that model with
`python utils/prepare_asylum_models.py --bloodlines-root <installation> --character chunk`.
The other model entries remain in the resource manifest.

After preparing individual models, run
`python utils/prepare_asylum_eyes.py --bloodlines-root <installation>` to restore
their original iris materials. The full `prepare_asylum.py` batch includes this
step. It bakes each MDL eyeball's neutral iris projection into the existing UVs;
the body mesh, skinning and saved facial calibration stay unchanged. Original
left/right iris colors are preserved. Animated pupil tracking is not included.

`prepare_asylum_items.py` imports the six original dialogue quest items and the
sisters' wielded revolver. Dialogue inventory changes are server owned; physical
copies appear after closing the dialogue and can be held or put in a VR wrist
pocket. Picking up a copy does not grant a second item, and a blocked spawn stays
queued for retry. The revolver copy is a prop; firearm combat is not implemented.
Inventory, ammo, experience awards and player prerequisites survive save/load.
The sisters' original trigger, animation timing, secondary gunshot and mapped
muzzle flash cue are retained without camera capture or player teleportation.

`python utils/check_asylum_effects.py --lua-runtime <lupa-directory>` checks
original dialogue handovers, returns, reset, save/load, intro and interruption
cleanup without launching the game. `check_asylum_vr.py`, `check_dialogue_vr.py`,
`check_dialogue_panel.py` and `check_vr_platform.py` cover seat restoration,
window movement, controller input and lift transport; each accepts
`--lua-runtime <lupa-directory>`. Fixture checks supplement hardware testing.
