from __future__ import print_function
import sys
import numpy as np

import time
import RP_PLL


# Warning : For this code to work, the correct FPGA firmware and CPU software must have been updated.

IP = "192.168.0.150"
PORT = 5000

dev = RP_PLL.RP_PLL_device(None)

dev.OpenTCPConnection(IP, PORT)

n_bytes_reg       = 0x000A_0000
chan_reg          = 0x000A_0008
start_reg         = 0x000B_0000
status_reg        = 0x000B_0008

fs = 125e6

#### User selection

n_pts = 100000 # if both channel, this is n_pts1 + n_pts2
channel = 2 # 1 or 2 or 3 for both
fileName = 'data_saving/data2.bin'


# set n_bytes
dev.write_Zynq_AXI_register_uint32(n_bytes_reg, int(2*n_pts)) # if the firmware, it rounds to 256 bytes (128 pts)

# set chan
dev.write_Zynq_AXI_register_uint32(chan_reg, channel)

# set start
dev.write_Zynq_AXI_register_uint32(start_reg, 1)
dev.write_Zynq_AXI_register_uint32(start_reg, 0)

time.sleep(n_pts/fs) 

# read status (0b10 = error // 0b01 = data_valid // 0b00 = not_ready)
status = 0

while status == 0:
    status = dev.read_Zynq_AXI_register_uint32(status_reg)
    print('status = ' + str(status))
    

data_in = dev.read_Zynq_ddr(0x00000000, int(2*n_pts))
data_in = np.fromstring(data_in, dtype=np.int16)
# data_in_volt = data_in / 2**15

if channel == 3:
    file_output = open('IN2' + fileName, 'wb')
    file_output.write(data_in[1::2].tobytes())
    file_output.close()
    
    file_output = open('IN2' + fileName, 'wb')
    file_output.write(data_in[::2].tobytes())
    file_output.close()
else:
    file_output = open(fileName, 'wb')
    file_output.write(data_in.tobytes())
    file_output.close()