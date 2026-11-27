"""Check queued foreground E edges without registering input or moving a mouse."""
import ctypes
import struct
import unittest
from unittest.mock import patch
import dialogue_mouse as mouse


class UseKeyTests(unittest.TestCase):
    def test_short_press_survives_key_release_before_poll(self):
        instance=mouse.Mouse.__new__(mouse.Mouse)
        instance.game=123;instance.enabled=False;instance.use_requested=False;instance.failure=None
        packet=b''
        def read(handle,command,destination,size,header):
            ctypes.cast(size,ctypes.POINTER(mouse.w.UINT))[0]=len(packet)
            if destination is None:return 0
            ctypes.memmove(destination,packet,len(packet));return len(packet)
        with patch.object(mouse.U,'GetForegroundWindow',return_value=123), \
             patch.object(mouse.U,'GetRawInputData',side_effect=read), \
             patch.object(mouse.U,'DefWindowProcW',return_value=0):
            for flags,message in [(0,0x100),(1,0x101)]:
                packet=struct.pack('<IIQQHHHHII',1,40,0,0,0x12,flags,0,0x45,message,0)
                instance._message(0,0xFF,0,0)
            self.assertIsNone(instance.failure)
            self.assertTrue(instance.use_requested)
            instance.use_requested=False
            packet=struct.pack('<IIQQHHHHII',1,40,0,0,0x12,1,0,0x45,0x101,0)
            instance._message(0,0xFF,0,0)
            self.assertFalse(instance.use_requested)

    def test_other_window_does_not_request_use(self):
        instance=mouse.Mouse.__new__(mouse.Mouse)
        instance.game=123;instance.use_requested=False;instance.failure=None
        with patch.object(mouse.U,'GetForegroundWindow',return_value=456), \
             patch.object(mouse.U,'GetRawInputData') as read, \
             patch.object(mouse.U,'DefWindowProcW',return_value=0):
            instance._message(0,0xFF,0,0)
            read.assert_not_called();self.assertFalse(instance.use_requested)


if __name__=='__main__':unittest.main()
