"""Resolve an addon checkout mounted in an Alyx Workshop Tools installation."""
from dataclasses import dataclass
from pathlib import Path
import shutil


@dataclass(frozen=True)
class AddonPaths:
    name: str
    source: Path
    runtime: Path
    compiler: Path


def resolve_addon(sdk, checkout, addon=None):
    sdk, checkout = Path(sdk).resolve(), Path(checkout).resolve()
    compiler = sdk/'game/bin/win64/resourcecompiler.exe'
    if not compiler.is_file():
        raise ValueError('Alyx Workshop Tools resourcecompiler.exe was not found: '+str(compiler))
    content = sdk/'content/hlvr_addons'
    if addon is not None:
        if not addon or addon in ('.', '..') or any(c in addon for c in '/\\:'):
            raise ValueError('--addon must be one folder name, not a path')
        source = content/addon
        if not source.is_dir() or source.resolve() != checkout:
            raise ValueError('The selected addon does not point to this checkout.\n'
                             '  Addon: '+str(source)+'\n  Checkout: '+str(checkout))
    else:
        matches = [p for p in content.iterdir() if p.is_dir() and p.resolve() == checkout] if content.is_dir() else []
        preferred = [p for p in matches if p.name.casefold() == checkout.name.casefold()]
        if len(preferred) == 1:
            source = preferred[0]
        elif len(matches) == 1:
            source = matches[0]
        elif matches:
            raise ValueError('Several SDK addon folders point to this checkout: '+', '.join(p.name for p in matches)+
                             '. Select one with --addon <folder-name>.')
        else:
            raise ValueError('No SDK content addon points to this checkout.\n  Checkout: '+str(checkout)+
                             '\nPlace or link it under '+str(content)+'/<addon-name>.')
    return AddonPaths(source.name, source, sdk/'game/hlvr_addons'/source.name, compiler)


def compiled_relative(relative):
    path = Path(relative)
    suffix = {'.wav': '.vsnd_c', '.vsndevts': '.vsndevts_c', '.vrman': '.vrman_c',
              '.vmdl': '.vmdl_c', '.vanmgrph': '.vanmgrph_c'}.get(path.suffix, '.v'+path.suffix[1:]+'_c')
    return path.with_suffix(suffix)


def install_manifest_alias(paths):
    # The engine looks up <mounted-addon>_addon_resources. The manifest's
    # resource list itself is independent of the mounted folder's name.
    source = paths.runtime/'resourcemanifests/vtmbvr_addon_resources.vrman_c'
    target = paths.runtime/'resourcemanifests'/(paths.name+'_addon_resources.vrman_c')
    if source != target:
        shutil.copy2(source, target)
    return target
