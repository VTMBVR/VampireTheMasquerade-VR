"""Control the dialogue PoC in a running Alyx Asylum session via VConsole."""
import argparse
import re
import struct
from vconsole_command import command

def send(text):
    raw = command(text, .4)
    result = []
    offset = 0
    while (offset := raw.find(b'PRNT', offset)) >= 0:
        if offset + 40 > len(raw):
            break
        length = struct.unpack_from('>H', raw, offset + 8)[0]
        if 40 <= length and offset + length <= len(raw):
            result.append(raw[offset + 40:offset + length].rstrip(b'\0').decode('utf8', errors='replace'))
            offset += length
        else:
            offset += 4
    return ''.join(result)

def lua(code):
    if '"' in code or '\n' in code:
        raise ValueError('Use a quote-free Lua expression for the entity Input')
    return send('ent_fire globe_script_logic RunScriptCode "' + code + '"')

def lua_string(value):
    # VConsole's entity Input lexer preserves escaped quotes. Byte construction
    # avoids nested console/Lua quoting, including for existing compound binds.
    return 'string.char(' + ','.join(str(b) for b in value.encode('utf8')) + ')'

def show(reply):
    for line in reply.splitlines():
        if '[VTMBVR_DIALOG]' in line or 'Error' in line or 'error' in line:
            print(line)

def open_dialogue(keyboard=False, desktop=False):
    lua('if NpcDialogClose then NpcDialogClose() end')
    reply = send('ent_fire globe_script_logic RunScriptFile npc_dialog')
    # Entity Inputs execute on a following server frame.
    reply += send('echo VTMBVR_DIALOG_LOAD_CHECK')
    if '[VTMBVR_DIALOG] Loaded.' not in reply:
        raise RuntimeError('Could not load npc_dialog. Open sm_asylum_fix_navfix in the vtmbvr addon first.\n' + reply[-1800:])
    reply = lua('NpcDialogOpen(' + ('true' if desktop else 'false') + ')') + send('echo VTMBVR_DIALOG_OPEN_CHECK')
    show(reply)
    if '[VTMBVR_DIALOG] OPEN' not in reply:
        raise RuntimeError('Dialogue panel did not open.\n' + reply[-1800:])
    if keyboard:
        previous = []
        for i in range(1, 7):
            reply = send('bind F' + str(i))
            match = re.search(r'"F' + str(i) + r'" = "(.*)"', reply)
            if not match:
                raise RuntimeError('Could not read F' + str(i) + '; no preview keys were changed.')
            previous.append(match.group(1))
        reply = lua('NpcDialogEnableKeyboard(' + ','.join(lua_string(x) for x in previous) + ')')
        reply += send('echo VTMBVR_DIALOG_KEYS_CHECK')
        show(reply)
        if '[VTMBVR_DIALOG] KEYBOARD' not in reply:
            raise RuntimeError('Preview key setup failed.\n' + reply[-1800:])
        print('F1-F4: answers. F5: restart. F6: close and restore previous keys.')

def listen_dialogue():
    reply = lua('NpcDialogInstall()') + send('echo VTMBVR_DIALOG_INTERACTION_CHECK')
    if 'INTERACTION_READY' not in reply:
        raise RuntimeError('Reload the Asylum map to install the Jeanette interaction scripts.\n' + reply[-1000:])

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    action = parser.add_mutually_exclusive_group(required=True)
    action.add_argument('--open', action='store_true')
    action.add_argument('--interact', action='store_true', help='Stay ready: look at Jeanette and press E; close to return to play')
    action.add_argument('--answer', type=int, choices=range(1, 5))
    action.add_argument('--restart', action='store_true')
    action.add_argument('--close', action='store_true')
    parser.add_argument('--keyboard', action='store_true', help='Temporarily use F1-F6; closing the panel restores them')
    parser.add_argument('--mouse', action='store_true', help='Use real desktop mouse input until the dialogue closes')
    args = parser.parse_args()
    if (args.keyboard or args.mouse) and not (args.open or args.interact):
        parser.error('--keyboard and --mouse require --open')
    if args.interact and not args.mouse:
        parser.error('--interact requires --mouse; VR interaction runs inside the map')
    try:
        send('sv_cheats 1')
        if args.open or args.interact:
            if args.mouse:
                from dialogue_mouse import run
                run(open_dialogue, keyboard=args.keyboard, listen=listen_dialogue if args.interact else None)
            else:
                open_dialogue(args.keyboard)
        elif args.answer:
            show(lua('NpcDialogChoose(' + str(args.answer) + ')'))
        elif args.restart:
            show(lua('NpcDialogRestart()'))
        else:
            show(lua('NpcDialogClose()'))
    except (OSError, AssertionError) as exc:
        raise SystemExit('Alyx VConsole is unavailable. Launch Alyx with -vconsole. ' + str(exc)) from exc
    except RuntimeError as exc:
        raise SystemExit(str(exc)) from exc

if __name__ == '__main__':
    main()
