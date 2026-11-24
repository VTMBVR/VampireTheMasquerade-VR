"""Prepare the imported Asylum cast, dialogue and interface without running Alyx.

This writes portable sources only. It never starts the resource compiler,
loads a map, runs tests or edits the Bloodlines installation.
"""
import argparse
from pathlib import Path
import subprocess
import sys


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--bloodlines-root',type=Path,required=True)
    parser.add_argument('--raw-output',type=Path,help='Original location export outside the checkout')
    parser.add_argument('--nav-file',type=Path,help='Existing compiled Asylum NAV for standing-NPC approach data')
    args=parser.parse_args()
    root=Path(__file__).resolve().parents[1]
    if not (root/'scripts/dialogue/asylum/manifest.json').exists():
        parser.error('Import the source library with import_asylum.py first')
    tasks=[('prepare_asylum_models.py',True),('prepare_asylum_crowd.py',True),
           ('prepare_asylum_eyes.py',True),
           ('prepare_asylum_items.py',True),
           ('prepare_dialogue_art.py',True),('prepare_asylum_location.py',True),('prepare_source_dialogue.py',False),
           ('build_asylum.py',False)]
    for script,needs_install in tasks:
        command=[sys.executable,'-X','utf8',str(root/'utils'/script)]
        if needs_install:command+=['--bloodlines-root',str(args.bloodlines_root)]
        if script=='prepare_asylum_location.py':command+=['--raw-output',str(args.raw_output or root.parent/'bloodlines-asylum-location-source')]
        subprocess.run(command,cwd=root,check=True,
                       creationflags=getattr(subprocess,'CREATE_NO_WINDOW',0))
    if args.nav_file:
        subprocess.run([sys.executable,str(root/'utils/prepare_asylum_navigation.py'),'--nav-file',str(args.nav_file)],
                       cwd=root,check=True,creationflags=getattr(subprocess,'CREATE_NO_WINDOW',0))
    print('Prepared Asylum sources. Native compilation and game acceptance have not run.')


if __name__=='__main__':main()
