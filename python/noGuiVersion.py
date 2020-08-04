from __future__ import print_function
import sys
import numpy as np

import time
import RP_PLL

##############################################################################
# Warning : For this code to work, the correct FPGA firmware and CPU software must have been updated.
IP = "192.168.2.32"
PORT = 5000 #5000 by default

#### User selection
data_addr = 0x0800_0000 # Min : 0x0800_0000

n_pts = 100e3 # if both channel, this is n_pts1 + n_pts2
channel = 2 # 1 or 2 or 3 for both
fileName = 'data_saving/data_test.bin'

###########################################################################
fs = 125e6

START_ADDR        = 0x0800_0000 # Define by reserved memory in devicetree used to build Linux

MAXPOINTS   = int((0x1FFFFFFF-START_ADDR + 0)/2) # Warning, if I put the '+1', there is an error : maybe a signal that wrap to 0 in the FPGA

xadc_base_addr    = 0x0001_0000

N_BYTES_REG       = 0x000A_0000 # 32 bits
CHANNEL_REG       = 0x000A_0008 # 2 bits

START_REG         = 0x000B_0000 # 1 bit : start acq on rising_edge
STATUS_REG        = 0x000B_0008 # 2 bits : error_ACQ (STS =! 0x80) & data_tvalid_int ('1' when data transfer is done)

START_ADDR_REG    = 0x000C_0000 # Min value is define by reserved memory in devicetree used to build Linux

dev = RP_PLL.RP_PLL_device(None)

dev.OpenTCPConnection(IP, PORT)


n_pts = min(MAXPOINTS,n_pts)

#set addr
dev.write_Zynq_AXI_register_uint32(START_ADDR_REG, data_addr)

# set n_bytes
dev.write_Zynq_AXI_register_uint32(N_BYTES_REG, int(2*n_pts)) # in the firmware, it rounds to 256 bytes (128 pts)

# set chan
dev.write_Zynq_AXI_register_uint32(CHANNEL_REG, channel)

# set start
dev.write_Zynq_AXI_register_uint32(START_REG, 1)
dev.write_Zynq_AXI_register_uint32(START_REG, 0)

time.sleep(n_pts/fs) 

# read status (0b10 = error // 0b01 = data_valid // 0b00 = not_ready)
status = 0

while status == 0:
    status = dev.read_Zynq_AXI_register_uint32(STATUS_REG)
    print('status = ' + str(status))
    

data_in = dev.read_Zynq_ddr(data_addr-START_ADDR, int(2*n_pts))
data_in = np.fromstring(data_in, dtype=np.int16)
# data_in_volt = data_in / 2**15

if channel == 3:
    file_output = open('IN1' + fileName, 'wb')
    file_output.write(data_in[1::2].tobytes())
    file_output.close()
    
    file_output = open('IN2' + fileName, 'wb')
    file_output.write(data_in[::2].tobytes())
    file_output.close()
else:
    file_output = open(fileName, 'wb')
    file_output.write(data_in.tobytes())
    file_output.close()
print('Done')