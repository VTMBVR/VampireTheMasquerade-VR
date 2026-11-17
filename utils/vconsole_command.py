"""Send a bounded command to the locally running Source 2 tools console."""
import argparse
import socket
import struct
import sys
import time

def command(text, timeout=1.0):
    for attempt in range(3):
        s=socket.create_connection(('127.0.0.1',29000),3)
        s.settimeout(.5)
        try:hello=s.recv(65536);break
        except ConnectionResetError:
            s.close()
            if attempt==2:raise
            time.sleep(.2)
    with s:
        assert hello[:4]==b'AINF','Unexpected console endpoint'
        version=struct.unpack_from('>I',hello,4)[0]
        payload=text.encode('utf-8')+b'\0'
        s.sendall(struct.pack('>4sIHH',b'CMND',version,len(payload)+12,0)+payload)
        end=time.monotonic()+timeout
        chunks=[]
        while time.monotonic()<end:
            try:
                b=s.recv(65536)
                if not b:break
                chunks.append(b)
            except TimeoutError:pass
            except ConnectionResetError:break
        return b''.join(chunks)

if __name__=='__main__':
    sys.stdout.reconfigure(encoding='utf-8',errors='replace')
    p=argparse.ArgumentParser();p.add_argument('command');a=p.parse_args()
    reply=command(a.command)
    # This Alyx build has 28 bytes of print metadata after the 12-byte header.
    lines=[];offset=0
    while offset+12<=len(reply):
        kind,ver,length,handle=struct.unpack_from('>4sIHH',reply,offset)
        if length<12 or offset+length>len(reply):break
        if kind==b'PRNT':lines.append(reply[offset+40:offset+length].rstrip(b'\0').decode('utf-8',errors='replace'))
        offset+=length
    print(''.join(lines)[-6000:])
