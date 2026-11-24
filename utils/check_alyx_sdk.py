"""Check portable SDK mount discovery without launching Alyx or its compiler."""
import contextlib
import io
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

from alyx_sdk import compiled_relative, install_manifest_alias, resolve_addon
import build_asylum
import build_dialogue


class AddonTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory(prefix='alyx-addon-check-')
        self.addCleanup(self.temp.cleanup)
        self.sdk = Path(self.temp.name)/'Half-Life Alyx'
        compiler = self.sdk/'game/bin/win64/resourcecompiler.exe'
        compiler.parent.mkdir(parents=True)
        compiler.write_bytes(b'not executed')
        self.checkout = self.sdk/'content/hlvr_addons/vampirethemasquerade'
        self.checkout.mkdir(parents=True)
        self.runtime = self.sdk/'game/hlvr_addons/vampirethemasquerade'

    def test_detects_existing_addon_name(self):
        paths = resolve_addon(self.sdk, self.checkout)
        self.assertEqual(paths.name, 'vampirethemasquerade')
        self.assertEqual(paths.source, self.checkout)
        self.assertEqual(paths.runtime, self.runtime)
        self.assertEqual(resolve_addon(self.sdk, self.checkout, paths.name), paths)

    def test_explicit_wrong_mount_is_rejected(self):
        other = self.checkout.parent/'vtmbvr'
        other.mkdir()
        with self.assertRaisesRegex(ValueError, 'selected addon'):
            resolve_addon(self.sdk, self.checkout, 'vtmbvr')
        for name in ('../vampirethemasquerade', 'C:/outside', '.', 'a\\b'):
            with self.assertRaises(ValueError):
                resolve_addon(self.sdk, self.checkout, name)

    def test_missing_mount_and_tools_are_explained(self):
        outside = Path(self.temp.name)/'external-checkout'
        outside.mkdir()
        with self.assertRaisesRegex(ValueError, 'No SDK content addon'):
            resolve_addon(self.sdk, outside)
        (self.sdk/'game/bin/win64/resourcecompiler.exe').unlink()
        with self.assertRaisesRegex(ValueError, 'resourcecompiler.exe'):
            resolve_addon(self.sdk, self.checkout)

    def test_multiple_mounts_require_selection(self):
        outside = Path(self.temp.name)/'external-checkout'
        outside.mkdir()
        alias = self.checkout.parent/'second_mount'
        alias.mkdir()
        original = Path.resolve
        def resolve(path, *args, **kwargs):
            if path in (self.checkout, alias):
                return outside
            return original(path, *args, **kwargs)
        # Simulate two directory-junction destinations without requiring
        # symlink privileges or modifying the real SDK's mounts.
        with patch.object(Path, 'resolve', resolve):
            with self.assertRaisesRegex(ValueError, 'Several SDK addon folders'):
                resolve_addon(self.sdk, outside)
            self.assertEqual(resolve_addon(self.sdk, outside, 'second_mount').name, 'second_mount')

    def test_manifest_uses_detected_mount_name(self):
        paths = resolve_addon(self.sdk, self.checkout)
        canonical = self.runtime/'resourcemanifests/vtmbvr_addon_resources.vrman_c'
        canonical.parent.mkdir(parents=True)
        canonical.write_bytes(b'compiled resource list')
        alias = install_manifest_alias(paths)
        self.assertEqual(alias.name, 'vampirethemasquerade_addon_resources.vrman_c')
        self.assertEqual(alias.read_bytes(), canonical.read_bytes())

    def compiler(self, args, **kwargs):
        if '-filelist' in args:
            inputs = Path(args[args.index('-filelist')+1]).read_text(encoding='utf8').splitlines()
        else:
            inputs = [args[args.index('-i')+1]]
        for name in inputs:
            relative = Path(name).relative_to(self.checkout)
            target = self.runtime/compiled_relative(relative)
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(b'compiled')
        output = 'OK: '+str(len(inputs))+' compiled, 0 failed'
        if hasattr(kwargs.get('stdout'), 'write'):
            kwargs['stdout'].write(output)
        return type('Result', (), {'returncode': 0, 'stdout': output, 'stderr': ''})()

    def test_dialogue_cli_builds_into_detected_mount(self):
        data = {'nodes': {'welcome': {'audio': 'sounds/dialogue/test.wav'}}}
        layout = self.checkout/'panorama/layout/custom_game/vtmbvr_dialog.xml'
        layout.parent.mkdir(parents=True)
        layout.write_text('<root><styles></styles><scripts></scripts><Button id="DialogueTuning" /></root>', encoding='utf8')
        with patch.object(build_dialogue, '__file__', str(self.checkout/'utils/build_dialogue.py')), \
             patch.object(build_dialogue, 'generate_data', return_value=data), \
             patch('sys.argv', ['build_dialogue.py', '--alyx-root', str(self.sdk)]), \
             patch.object(build_dialogue.subprocess, 'run', side_effect=self.compiler), \
             contextlib.redirect_stdout(io.StringIO()):
            build_dialogue.main()
        self.assertTrue((self.runtime/'panorama/layout/custom_game/vtmbvr_dialog.vxml_c').is_file())
        world = layout.with_name('vtmbvr_dialog_world.xml').read_text(encoding='utf8')
        self.assertEqual(world.count('id="DialogueGrabHandle"'), 1)
        self.assertIn('vtmbvr_dialog_window.vjs_c', world)
        self.assertTrue((self.runtime/'panorama/layout/custom_game/vtmbvr_dialog_world.vxml_c').is_file())
        self.assertTrue((self.runtime/'resourcemanifests/vampirethemasquerade_addon_resources.vrman_c').is_file())

    def test_source_bank_builds_into_detected_mount(self):
        manifest = self.checkout/'scripts/dialogue/asylum/manifest.json'
        manifest.parent.mkdir(parents=True)
        manifest.write_text(json.dumps({'audio': [{'audio': 'sounds/dialogue/test.wav'}]}), encoding='utf8')
        with patch.object(build_asylum.subprocess, 'run', side_effect=self.compiler), \
             contextlib.redirect_stdout(io.StringIO()):
            count = build_asylum.compile_assets(self.checkout, self.sdk, None, Path(self.temp.name)/'build.log')
        self.assertEqual(count, 3)
        self.assertTrue((self.runtime/'sounds/dialogue/test.vsnd_c').is_file())
        self.assertTrue((self.runtime/'resourcemanifests/vampirethemasquerade_addon_resources.vrman_c').is_file())


if __name__ == '__main__':
    unittest.main()
