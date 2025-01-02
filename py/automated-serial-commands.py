import pexpect
import subprocess
import sys

# get path to device lsblk
device = sys.argv[1]

# keep it open
subprocess.Popen(['sh', '-c', 'sleep 3 < ' + device], shell=False)

# serial port parameters
subprocess.Popen(['stty', '-F', device, '115200', 'raw', '-clocal', '-echo', '-istrip', '-hup'], shell=False)

# connect
child = pexpect.spawn('-open', [device, 'w+'])
child.expect('Load Boot Loader code then write to Flash via TFTP')
child.sendline('4')
for i in range(0xffff):
    child.expect('MT7621 # ')
    ihex = format(i, 'x')
    child.sendline('nand page 0x' + ihex + '\r')
