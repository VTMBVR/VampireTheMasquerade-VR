"""Foreground-only Win32 mouse adapter for the native Alyx Panorama dialogue.

Alyx clips its desktop mouse to the centre and uses gaze for world panels.
Raw Input supplies actual mouse deltas despite that clip. This adapter sends
coordinates and button edges; Panorama hit-tests its rendered controls.
"""
import ctypes as c
import json
from ctypes import wintypes as w
import math
import msvcrt
import os
from pathlib import Path
import random
import re
import select
import socket
import struct
import tempfile
import time

U = c.WinDLL('user32', use_last_error=True)
K = c.WinDLL('kernel32', use_last_error=True)
RESULT = c.c_ssize_t
WNDPROC = c.WINFUNCTYPE(RESULT, w.HWND, w.UINT, w.WPARAM, w.LPARAM)

class WindowClass(c.Structure):
    _fields_ = [('style', w.UINT), ('proc', WNDPROC), ('class_extra', c.c_int),
                ('window_extra', c.c_int), ('instance', w.HINSTANCE), ('icon', w.HICON),
                ('cursor', w.HANDLE), ('background', w.HBRUSH),
                ('menu', w.LPCWSTR), ('name', w.LPCWSTR)]

class RawDevice(c.Structure):
    _fields_ = [('page', w.USHORT), ('usage', w.USHORT), ('flags', w.DWORD), ('target', w.HWND)]

U.GetForegroundWindow.restype = w.HWND
U.RegisterClassW.argtypes = [c.POINTER(WindowClass)]
U.RegisterClassW.restype = w.ATOM
U.UnregisterClassW.argtypes = [w.LPCWSTR, w.HINSTANCE]
U.DestroyWindow.argtypes = [w.HWND]
U.IsWindow.argtypes = [w.HWND]
U.RegisterRawInputDevices.argtypes = [c.POINTER(RawDevice), w.UINT, w.UINT]
U.DefWindowProcW.argtypes = [w.HWND, w.UINT, w.WPARAM, w.LPARAM]
U.DefWindowProcW.restype = RESULT
U.GetRawInputData.argtypes = [w.HANDLE, w.UINT, c.c_void_p, c.POINTER(w.UINT), w.UINT]
U.GetRawInputData.restype = w.UINT
U.CreateWindowExW.argtypes = [w.DWORD, w.LPCWSTR, w.LPCWSTR, w.DWORD, c.c_int,
                            c.c_int, c.c_int, c.c_int, w.HWND, w.HMENU, w.HINSTANCE, c.c_void_p]
U.CreateWindowExW.restype = w.HWND
U.SetThreadDpiAwarenessContext.argtypes = [c.c_void_p]
U.DispatchMessageW.argtypes = [c.POINTER(w.MSG)]
U.DispatchMessageW.restype = RESULT
K.GetModuleHandleW.restype = w.HMODULE
K.OpenProcess.argtypes = [w.DWORD, w.BOOL, w.DWORD]
K.OpenProcess.restype = w.HANDLE
K.QueryFullProcessImageNameW.argtypes = [w.HANDLE, w.DWORD, w.LPWSTR, c.POINTER(w.DWORD)]
K.CloseHandle.argtypes = [w.HANDLE]

def game_window():
    candidates = []
    callback_type = c.WINFUNCTYPE(w.BOOL, w.HWND, w.LPARAM)
    @callback_type
    def visit(hwnd, _):
        title = c.create_unicode_buffer(512)
        U.GetWindowTextW(hwnd, title, len(title))
        if title.value != 'Half-Life: Alyx' or not U.IsWindowVisible(hwnd):
            return True
        pid = w.DWORD()
        U.GetWindowThreadProcessId(hwnd, c.byref(pid))
        process = K.OpenProcess(0x1000, False, pid.value)
        if process:
            name, size = c.create_unicode_buffer(32768), w.DWORD(32768)
            if K.QueryFullProcessImageNameW(process, 0, name, c.byref(size)) and Path(name.value).name.lower() == 'hlvr.exe':
                candidates.append((int(hwnd), pid.value))
            K.CloseHandle(process)
        return True
    U.EnumWindows(visit, 0)
    if len(candidates) != 1:
        raise RuntimeError('Expected one visible Half-Life: Alyx window; found ' + str(len(candidates)))
    return candidates[0]

class ConsoleProxy:
    """Let ordinary VConsole tools share the game's single connection."""
    def __init__(self, console):
        self.console = console
        self.clients = {}
        self.server = socket.socket()
        self.server.setsockopt(socket.SOL_SOCKET, socket.SO_EXCLUSIVEADDRUSE, 1)
        self.server.bind(('127.0.0.1', 29001))
        self.server.listen(4)
        self.server.setblocking(False)

    def drop(self, client):
        client.close()
        self.clients.pop(client, None)

    def broadcast(self, data):
        for state in self.clients.values():
            state['out'] += data

    def pump(self):
        reads = [self.server, *self.clients]
        writes = [client for client, state in self.clients.items() if state['out']]
        ready, writable, _ = select.select(reads, writes, [], 0)
        for client in ready:
            if client is self.server:
                connection, _ = self.server.accept()
                connection.setblocking(False)
                self.clients[connection] = {'in': b'', 'out': self.console.hello}
                continue
            try:
                data = client.recv(65536)
                if not data:
                    self.drop(client)
                    continue
                state = self.clients[client]
                state['in'] += data
                while len(state['in']) >= 12:
                    size = struct.unpack_from('>H', state['in'], 8)[0]
                    if size < 12:
                        raise ConnectionError('Invalid console packet')
                    if len(state['in']) < size:
                        break
                    # Never interleave a partial proxy packet with mouse input.
                    self.console.socket.sendall(state['in'][:size])
                    state['in'] = state['in'][size:]
            except OSError:
                self.drop(client)
        for client in writable:
            if client not in self.clients:
                continue
            try:
                state = self.clients[client]
                sent = client.send(state['out'])
                state['out'] = state['out'][sent:]
            except OSError:
                self.drop(client)

    def close(self):
        for client in list(self.clients):
            self.drop(client)
        self.server.close()

class Console:
    def __init__(self):
        for attempt in range(3):
            self.socket = socket.create_connection(('127.0.0.1', 29000), 3)
            self.socket.settimeout(3)
            try:
                hello = self.socket.recv(65536)
                while len(hello) < 12:
                    hello += self.socket.recv(65536)
                greeting_size = struct.unpack_from('>H', hello, 8)[0]
                while len(hello) < greeting_size:
                    hello += self.socket.recv(65536)
                break
            except ConnectionResetError:
                self.socket.close()
                if attempt == 2:
                    raise
                time.sleep(.2)
        if hello[:4] != b'AINF':
            raise RuntimeError('Unexpected VConsole endpoint')
        self.version = struct.unpack_from('>I', hello, 4)[0]
        self.hello = hello[:greeting_size]
        self.buffer = hello
        self.lines = []
        self.active = False
        self.closed = False
        self.session = None
        self.watch_mode = False
        self.panel_open = False
        self.acknowledged = None
        self.proxy = ConsoleProxy(self)

    def send(self, command):
        payload = command.encode('utf8') + b'\0'
        self.socket.sendall(struct.pack('>4sIHH', b'CMND', self.version, len(payload) + 12, 0) + payload)

    def poll(self):
        self.proxy.pump()
        while select.select([self.socket], [], [], 0)[0]:
            data = self.socket.recv(65536)
            if not data:
                raise ConnectionError('Alyx disconnected')
            self.buffer += data
            self.proxy.broadcast(data)
        while True:
            start = self.buffer.find(b'PRNT')
            if start < 0:
                self.buffer = self.buffer[-39:]
                return
            self.buffer = self.buffer[start:]
            if len(self.buffer) < 40:
                return
            length = struct.unpack_from('>H', self.buffer, 8)[0]
            if length < 40:
                self.buffer = self.buffer[4:]
                continue
            if len(self.buffer) < length:
                return
            text = self.buffer[40:length].rstrip(b'\0').decode('utf8', errors='replace')
            self.buffer = self.buffer[length:]
            for line in text.splitlines():
                if '[VTMBVR_DIALOG]' in line:
                    marker = '[VTMBVR_DIALOG] FACE_SAVE '
                    if line.startswith(marker) and self.active and self.panel_open:
                        request = 0
                        try:
                            from face_tuning import save_settings
                            payload = json.loads(line[len(marker):])
                            if payload.get('session') != self.session:
                                continue
                            request = payload.get('request', 0)
                            save_settings(payload)
                            self.send('ent_fire globe_script_logic RunScriptCode "NpcDialogFaceSaved('+str(request)+',1)"')
                            print('[VTMBVR_DIALOG] FACE_SAVED_FILE scripts/dialogue/jeanette.json', flush=True)
                        except Exception as error:
                            if type(request) is int and 0 <= request <= 2147483647:
                                self.send('ent_fire globe_script_logic RunScriptCode "NpcDialogFaceSaved('+str(request)+',0)"')
                            print('[VTMBVR_DIALOG] FACE_SAVE_ERROR '+str(error), flush=True)
                    self.lines.append(line)
                    self.lines = self.lines[-100:]
                    if 'DESKTOP_ALIVE' not in line and 'LISTENER_ALIVE' not in line:
                        print(line, flush=True)
                    if 'DESKTOP_READY session=' + str(self.session) in line:
                        self.panel_open = True
                    if self.active and '[VTMBVR_DIALOG] CLOSED' in line:
                        self.panel_open = False
                        if not self.watch_mode: self.closed = True
                    if self.active and 'DESKTOP_ALIVE session=' in line and 'session=' + str(self.session) not in line:
                        self.closed = True
                    if self.active and self.watch_mode and 'LISTENER_ALIVE session=' in line and 'session=' + str(self.session) not in line:
                        self.closed = True
                    match = re.search(r'POINTER_ACK session=(\d+) seq=(\d+)', line)
                    if match and int(match[1]) == self.session:
                        self.acknowledged = int(match[2])
                elif any(error in line for error in ['ReferenceError:', 'TypeError:', 'Script Runtime Error:', 'DESKTOP_FAILED', 'DESKTOP_REFUSED']):
                    raise RuntimeError(line)

    def wait(self, marker, seconds=8):
        end = time.monotonic() + seconds
        while time.monotonic() < end:
            self.poll()
            if any(marker in line for line in self.lines):
                return
            time.sleep(.01)
        raise TimeoutError('No native acknowledgement: ' + marker)

    def close(self):
        self.proxy.pump()
        self.proxy.close()
        self.socket.close()

class Mouse:
    def __init__(self, hwnd, session, console, sensitivity=1):
        self.game = hwnd
        self.session = session
        self.console = console
        self.sensitivity = sensitivity
        self.x, self.y = 512.0, 384.0
        self.dirty = True
        self.focused = False
        self.enabled = True
        self.down = False
        self.failure = None
        self.press = None
        self.clicks = []
        self.sequence = 0
        self.pending = None
        self.pending_since = 0
        self.last_move = 0
        self._callback = WNDPROC(self._message)
        self.instance = K.GetModuleHandleW(None)
        self.name = 'VTMBVRDialogueMouse' + str(os.getpid())
        self.wc = WindowClass(proc=self._callback, instance=self.instance, name=self.name)
        if not U.RegisterClassW(c.byref(self.wc)):
            raise c.WinError(c.get_last_error())
        self.window = U.CreateWindowExW(0, self.name, '', 0, 0, 0, 0, 0, w.HWND(-3), None, self.instance, None)
        device = RawDevice(1, 2, 0x100, self.window)  # Mouse only; no global keyboard capture.
        if not self.window or not U.RegisterRawInputDevices(c.byref(device), 1, c.sizeof(device)):
            raise c.WinError(c.get_last_error())

    def emit(self, focused=True):
        expression = f'NpcDialogPointerMove({self.session},{round(self.x)},{round(self.y)},{int(self.down)},{int(focused)})'
        self.console.send('ent_fire globe_script_logic RunScriptCode "if NpcDialogPointerMove then ' + expression + ' end"')
        self.dirty = False
        self.last_move = time.monotonic()

    def _message(self, hwnd, message, wp, lp):
        try:
            if message == 0xFF and self.enabled and int(U.GetForegroundWindow() or 0) == self.game:
                size = w.UINT()
                U.GetRawInputData(w.HANDLE(lp), 0x10000003, None, c.byref(size), 24)
                if size.value >= 48:
                    buffer = c.create_string_buffer(size.value)
                    got = U.GetRawInputData(w.HANDLE(lp), 0x10000003, buffer, c.byref(size), 24)
                    if got == size.value and struct.unpack_from('<I', buffer.raw)[0] == 0:
                        flags, buttons, _, _, dx, dy, _ = struct.unpack_from('<H2xHHIiiI', buffer.raw, 24)
                        if flags & 1:
                            # Absolute devices (including injected Win32 test input)
                            # use virtual-desktop coordinates. Hardware mice use deltas.
                            if flags & 2:
                                sx, sy, sw, sh = [U.GetSystemMetrics(n) for n in (76, 77, 78, 79)]
                            else:
                                sx, sy, sw, sh = 0, 0, U.GetSystemMetrics(0), U.GetSystemMetrics(1)
                            point = w.POINT(round(sx + dx * (sw - 1) / 65535), round(sy + dy * (sh - 1) / 65535))
                            U.ScreenToClient(self.game, c.byref(point))
                            rect = w.RECT()
                            U.GetClientRect(self.game, c.byref(rect))
                            # 75-degree Source FOV is defined at a 4:3 aspect ratio.
                            projected_width = rect.bottom * (4 / 3) / (2 * math.tan(math.radians(75 / 2))) * (64 / 48)
                            scale = projected_width / 1024
                            self.x = 512 + (point.x - rect.right / 2) / scale
                            self.y = 384 + (point.y - rect.bottom / 2) / scale
                        else:
                            self.x += dx * self.sensitivity
                            self.y += dy * self.sensitivity
                        self.x = max(-32, min(1056, self.x))
                        self.y = max(-32, min(800, self.y))
                        self.dirty = True
                        if buttons & 1:
                            self.down = True
                            self.press = (round(self.x), round(self.y))
                            self.emit()
                        if buttons & 2:
                            if self.down and self.press:
                                self.clicks.append((*self.press, round(self.x), round(self.y)))
                            self.down = False
                            self.press = None
                            self.emit()
        except Exception as exc:
            self.failure = exc
        return U.DefWindowProcW(hwnd, message, wp, lp)

    def pump(self):
        msg = w.MSG()
        while U.PeekMessageW(c.byref(msg), None, 0, 0, 1):
            U.TranslateMessage(c.byref(msg))
            U.DispatchMessageW(c.byref(msg))
        if not self.enabled:
            self.focused = False
            return
        focused = int(U.GetForegroundWindow() or 0) == self.game
        if self.focused and not focused:
            self.down = False
            self.press = None
            self.clicks.clear()
            self.emit(False)
        if focused and self.dirty and time.monotonic() - self.last_move >= 1 / 30:
            self.emit()
        if self.pending is not None and self.console.acknowledged == self.pending:
            self.pending = None
        if self.pending is not None and time.monotonic() - self.pending_since > 3:
            raise TimeoutError('Panorama did not acknowledge a mouse click')
        if focused and self.pending is None and self.clicks:
            down_x, down_y, up_x, up_y = self.clicks.pop(0)
            self.sequence = (self.sequence + 1) % 256
            self.pending = self.sequence
            self.pending_since = time.monotonic()
            expression = f'NpcDialogPointerClick({self.session},{self.sequence},{down_x},{down_y},{up_x},{up_y})'
            self.console.send('ent_fire globe_script_logic RunScriptCode "if NpcDialogPointerClick then ' + expression + ' end"')
        self.focused = focused
        if self.failure:
            raise self.failure

    def close(self):
        device = RawDevice(1, 2, 1, None)  # RIDEV_REMOVE, this process only.
        U.RegisterRawInputDevices(c.byref(device), 1, c.sizeof(device))
        U.DestroyWindow(self.window)
        U.UnregisterClassW(self.name, self.instance)

def run(open_dialogue, keyboard=False, listen=None):
    U.SetThreadDpiAwarenessContext(c.c_void_p(-4))
    directory = Path(tempfile.gettempdir()) / 'vtmbvr'
    directory.mkdir(exist_ok=True)
    with (directory / 'dialogue-mouse.lock').open('a+b') as lock:
        if lock.tell() == 0:
            lock.write(b'0')
            lock.flush()
        lock.seek(0)
        try:
            msvcrt.locking(lock.fileno(), msvcrt.LK_NBLCK, 1)
        except OSError as exc:
            raise RuntimeError('A dialogue mouse adapter is already running') from exc
        console, mouse = None, None
        session = random.SystemRandom().randrange(1, 2**30)
        try:
            hwnd, pid = game_window()
            if listen: listen()
            else: open_dialogue(keyboard, desktop=True)
            console = Console()
            console.session = session
            console.watch_mode = bool(listen)
            entry = 'NpcDialogListen' if listen else 'NpcDialogEnableDesktop'
            console.send('ent_fire globe_script_logic RunScriptCode "' + entry + '(' + str(session) + ')"')
            console.wait(('LISTEN_READY' if listen else 'DESKTOP_READY') + ' session=' + str(session))
            console.active = True
            mouse = Mouse(hwnd, session, console)
            mouse.enabled = not listen
            last_use = False
            print(f'{"INTERACTION" if listen else "MOUSE"}_READY hwnd={hwnd} pid={pid} session={session}', flush=True)
            # Session class replication follows the server acknowledgement.
            next_status, next_refresh = time.monotonic() + 1, time.monotonic() + .2
            while not console.closed and U.IsWindow(hwnd):
                console.poll()
                if listen:
                    if console.panel_open != mouse.enabled:
                        mouse.x, mouse.y = 512.0, 384.0
                        mouse.down, mouse.press, mouse.pending = False, None, None
                        mouse.clicks.clear()
                        mouse.dirty = True
                        mouse.enabled = console.panel_open
                    use = int(U.GetForegroundWindow() or 0) == hwnd and bool(U.GetAsyncKeyState(0x45) & 0x8000)
                    if use and not last_use and not console.panel_open:
                        console.send('ent_fire globe_script_logic RunScriptCode "if NpcDialogDesktopInteract then NpcDialogDesktopInteract(' + str(session) + ') end"')
                    last_use = use
                mouse.pump()
                now = time.monotonic()
                if now >= next_status:
                    status = 'NpcDialogListenerHeartbeat' if listen else 'NpcDialogDesktopStatus'
                    console.send('ent_fire globe_script_logic RunScriptCode "if ' + status + ' then ' + status + '(' + str(session) + ') end"')
                    next_status = now + 1
                if now >= next_refresh:
                    if mouse.enabled and int(U.GetForegroundWindow() or 0) == hwnd:
                        mouse.emit()
                    next_refresh = now + .2
                time.sleep(.008)
        finally:
            if mouse:
                mouse.close()
            if console:
                try:
                    close = 'NpcDialogStopListening' if listen else 'NpcDialogCloseSession'
                    console.send('ent_fire globe_script_logic RunScriptCode "if ' + close + ' then ' + close + '(' + str(session) + ') end"')
                    end = time.monotonic() + .2
                    while time.monotonic() < end:
                        console.poll()
                        time.sleep(.01)
                except OSError:
                    pass
                console.close()
            lock.seek(0)
            msvcrt.locking(lock.fileno(), msvcrt.LK_UNLCK, 1)
