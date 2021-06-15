from __future__ import print_function
import sys
import numpy as np
import matplotlib.pyplot as plt

import time
import RP_PLL

##############################################################################
# Warning : For this code to work, the correct FPGA firmware and CPU software must have been updated.
IP = "192.168.1.154"
PORT = 5000 #5000 by default

#### User selection
data_addr = 0x0800_0000 # Min : 0x0800_0000

bUseTrig = 0
bSave = 0
bPlot = 1


downsample_value = 3

n_pts = 10e3 # if both channel, this is n_pts1 + n_pts2 ##If you want max, just put a large number
channel = 3 # 1 or 2 or 3 for both
fileName = 'data_saving/dontSave.bin'

ADC1_counter = 0 # 0 for ADC, 1 for counter (ADC 1 is connected to 16 MSBs of the 32 bits counter)
ADC2_counter = 0 # 0 for ADC, 1 for counter (ADC 2 is connected to 16 LSBs of the 32 bits counter)
###########################################################################
fs = 125e6

START_ADDR        = 0x0800_0000 # Define by reserved memory in devicetree used to build Linux

# Warning, if I put the '+1', there is an error : maybe a signal that wrap to 0 in the FPGA
# Therefore, to keep a multiple of 32 bits, I substracted 3 bytes
MAXPOINTS   = int((0x1FFFFFFF-START_ADDR - 3)/2) # /2 because 2 bytes per points

xadc_base_addr    = 0x0001_0000

DOWNSAMPLE_REG    = 0x0007_0000 #32 bits, downsample_rate-1 : 0 for 125e6, n for 125e6/n

RESET_DMA_REG     = 0x0008_0000 # 1 bit

MUX_ADC_1_REG     = 0x0009_0000 # 1 bit
MUX_ADC_2_REG     = 0x0009_0008 # 1 bit

N_BYTES_REG       = 0x000A_0000 # 32 bits
CHANNEL_REG       = 0x000A_0008 # 2 bits

START_REG         = 0x000B_0000 # 1 bit : start acq on rising_edge
TRIG_REG          = 0x000B_0004 # 1 bit : allow start on rising edge of external pin
STATUS_REG        = 0x000B_0008 # 2 bits : error_ACQ (STS =! 0x80) & data_tvalid_int ('1' when data transfer is done)

START_ADDR_REG    = 0x000C_0000 # Min value is define by reserved memory in devicetree used to build Linux

dev = RP_PLL.RP_PLL_device(None)

dev.OpenTCPConnection(IP, PORT)


# make sure n_pts is < MAXPOINTS
n_pts = min(MAXPOINTS,n_pts)

# make sure downsample_value is between 1 and 2^32
downsample_value = min(2**32,downsample_value)
downsample_value = max(1,downsample_value)

dev.write_Zynq_AXI_register_uint32(DOWNSAMPLE_REG, downsample_value-1)
fs = fs/downsample_value

#Reset DMA FSM (active low)
dev.write_Zynq_AXI_register_uint32(RESET_DMA_REG, 0)
dev.write_Zynq_AXI_register_uint32(RESET_DMA_REG, 1)



# set MUX
dev.write_Zynq_AXI_register_uint32(MUX_ADC_1_REG, ADC1_counter)
dev.write_Zynq_AXI_register_uint32(MUX_ADC_2_REG, ADC2_counter)

#set addr
dev.write_Zynq_AXI_register_uint32(START_ADDR_REG, data_addr)

# set n_bytes
n_bytes = int(2*n_pts)
n_bytes = max(n_bytes, 512) # at least 1 tx
dev.write_Zynq_AXI_register_uint32(N_BYTES_REG, n_bytes)

# set chan
dev.write_Zynq_AXI_register_uint32(CHANNEL_REG, channel)

# set start
if bUseTrig == 0:
    dev.write_Zynq_AXI_register_uint32(START_REG, 1)
    dev.write_Zynq_AXI_register_uint32(START_REG, 0)
else:
    dev.write_Zynq_AXI_register_uint32(TRIG_REG, 0) # 0 before to make sure we have a rising edge
    dev.write_Zynq_AXI_register_uint32(TRIG_REG, 1) # Start with trig need to stay high to register external trig
    dev.write_Zynq_AXI_register_uint32(TRIG_REG, 0)

time.sleep(n_pts/fs) 

# read status (0b10 = error // 0b01 = data_valid // 0b00 = not_ready)
status = 0

while status == 0:
    status = dev.read_Zynq_AXI_register_uint32(STATUS_REG)
    

timeStart = time.time()
data_in = dev.read_Zynq_ddr(data_addr-START_ADDR, int(2*n_pts))
print('Elapsed time for receiving= {}'.format(time.time() - timeStart))

timeStart = time.time()
# data_in = np.fromstring(data_in, dtype=np.uint32) # Uncomment this line if you want to read data as 32 bits (useful if both ADCs are connected to counter)
data_in = np.fromstring(data_in, dtype=np.int16) # Uncomment this line if you want to read data as 16 bits
print('Elapsed time for conversion = {}'.format(time.time() - timeStart))

timeStart = time.time()
if bSave == 1:
    if channel == 3 and not(ADC1_counter == 1 and ADC2_counter == 1):
        fileName_split = fileName.rpartition('/')

        file_output = open(fileName_split[0] + fileName_split[1] +  'IN1_' + fileName_split[2], 'wb')
        file_output.write(data_in[1::2].tobytes())
        file_output.close()
        
        file_output = open(fileName_split[0] + fileName_split[1] +  'IN2_' + fileName_split[2], 'wb')
        file_output.write(data_in[::2].tobytes())
        file_output.close()
    else:
        file_output = open(fileName, 'wb')
        file_output.write(data_in.tobytes())
        file_output.close()

if bPlot == 1: 
    if channel == 3:
        plt.plot(data_in[::2])
        plt.plot(data_in[1::2])
        plt.show()
    else:
        plt.plot(data_in)
#        plt.plot(np.diff(data_in))
        plt.show()

   
print('Elapsed time for writing = {}'.format(time.time() - timeStart))
print('Done')

