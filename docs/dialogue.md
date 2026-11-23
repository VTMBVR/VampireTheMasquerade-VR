# Dialogue and facial animation

The Asylum map has an interactive Jeanette dialogue with ten example nodes,
original Bloodlines voice recordings, Russian subtitles and gestures. Approach
Jeanette and interact to open the world-space Panorama panel. Closing releases
her back to the ambient scene.

This example is separate from the complete imported source library. It does
not implement Bloodlines quest progression or replace the map's NPC layout.

## Build

Put or link the checkout under the SDK's `content/hlvr_addons/<addon-name>`.
The builders detect that folder and write compiled resources to the matching
`game/hlvr_addons/<addon-name>`; names such as `vampirethemasquerade` and `vtmbvr`
both work. Local testing needs the existing Asylum assets as well as this
repository. Set the installation paths below to your own directories.

```powershell
$alyx = "E:\SteamLibrary\steamapps\common\Half-Life Alyx"
$bloodlines = "E:\Vampire - The Masquerade Bloodlines"

python utils/build_dialogue.py --alyx-root $alyx
node utils/check_dialogue.js
```

If multiple SDK folders point to the same checkout, select the intended mount
explicitly. The same option works with `build_asylum.py` and `check_asylum.py`:

```powershell
python utils/build_dialogue.py --alyx-root $alyx --addon vampirethemasquerade
```

This compiles the example's audio, sound events, UI, facial graph, Jeanette
model and resource manifest. Restart Alyx after rebuilding cached UI resources.
Close running tools before rebuilding a loaded map VPK.

## Desktop and VR interaction

For desktop testing, load `sm_asylum_fix_navfix` with `-novr -vconsole`, then:

```powershell
python utils/dialogue_preview.py --interact --mouse
```

Look at Jeanette within 100 game units and press E. Use the gold pointer and
left mouse button. The helper preserves normal bindings, remains ready after
closing the conversation and needs restarting after a map/save reload. It uses
64-bit Windows Python and no third-party packages. If it disconnects, a
four-second game-time watchdog releases the controls once the game is running.

VR uses the engine's hand rays and trigger input. FakeVR hand selection was
checked during development; physical headset/controller acceptance remains
unverified. The helper is only needed for desktop mouse input and source-file
editing. `utils/vconsole_command.py` works through its loopback proxy while
the helper owns the game's console connection.

## Facial controls

Click **Настроить мимику** in the conversation. The six sliders control jaw
opening, other speech movements, emotional pose strength and transition times.
**Отдельные движения лица** exposes 53 channel multipliers over nine pages;
0% disables a channel and 100% keeps its full imported strength. They scale
existing animation rather than creating static poses.

**Повторять эту реплику** loops the current voice and gesture. Return to the
dialogue and select another answer to tune another line. **Сохранить** writes
the current values to `scripts/dialogue/jeanette.json` and the generated
lip-sync JSON/Lua. Wait for **Сохранено в файлы мода**. The desktop helper and
a writable checkout are required for saving; live changes alone are temporary.
**Вернуть сохранённое** restores the last successful save.

The model uses original v2531 facial deltas, native phoneme timing and a
facial-only graph mask. Body and cloth remain in their existing SMD importer.
The example's emotions are authored per reply; eyeball/pupil animation has not
been restored. The user's current gain settings are stored in the source data.

## Complete Asylum source library

`scripts/dialogue/asylum` preserves eight original dialogue files, all thirteen
columns, player-gender/Malkavian text, conditions, actions, branches, 533 VCD
scenes and 473 dialogue lip files. The library contains 470 dialogue recordings
(about 55 minutes), plus 180 ambient voices/map sounds. Music is not included
in this import bank.

The imported characters are Doll1, Cal, Chunk, Danielle, Jeanette, Knox, Therese
and Tourette. Chunk is associated content: his dancing map entity has no
explicit dialogue binding. `scene.json` and `placements.json` preserve the
original map entities, coordinates and conditional NPC slots; they do not
automatically rearrange the Alyx map.

Reimport from a local Bloodlines installation, keeping raw originals outside
the checkout:

```powershell
$raw = Join-Path (Split-Path (Get-Location)) "bloodlines-asylum-source"
$buildLog = Join-Path $env:TEMP "asylum-build.log"
python utils/import_asylum.py --bloodlines-root $bloodlines --raw-output $raw
python utils/build_asylum.py --alyx-root $alyx --compile-log $buildLog
```

The importer uses an installed `ffmpeg` or `imageio_ffmpeg`; `--ffmpeg` accepts
an explicit executable. Effective loose patch files override patch archives,
then loose base files and numbered base archives. Source paths and hashes are
recorded in the manifest. Installed game files are read only.

After reloading the map, the source library can be auditioned through VConsole:

```text
ent_fire globe_script_logic RunScriptFile asylum_source
ent_fire globe_script_logic RunScriptCode "AsylumSourceList('jeanette')"
ent_fire globe_script_logic RunScriptCode "AsylumSourcePlay('jeanette',1,'npc_vampire_jeanete')"
ent_fire globe_script_logic RunScriptCode "AsylumSourceStop('npc_vampire_jeanete')"
```

Close the normal dialogue first. Playback borrows a free registered actor and
uses the matching model's facial parameters when available; currently Jeanette
has the custom graph. Body playback is a neutral preview. Original quest/Python
commands remain inert. Other NPC facial models, original body gestures and
quest-state integration still need implementation and native acceptance.

## Validation

The example's interaction, original voice and facial sliders were tested in
Alyx during development. The source-library batch has passed SDK compilation
and offline checks, including all 470 voice-performance paths, interruption,
zero gains, channel resets and rejection of busy actors. It has not yet passed
rendered/audible in-game or physical VR acceptance.

The generated preview omits malformed original phoneme intervals and cues
whose named expression pose is absent from the installed source. Raw originals
are preserved; `runtime-audit.json` lists each omission. Unresolved source
material references remain listed in `scene.json`.

`utils/check_asylum.py` checks source hashes/precedence, complete dialogue and
audio variants, WAV formats, native outputs and Lua playback. Its Lua checks
use the optional development-only `lupa` package; `--lua-runtime` can point to
an isolated installation directory. Neither the mod nor the importer needs it.
