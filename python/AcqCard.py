from PyQt5 import QtGui, Qt, QtCore, QtWidgets, uic

import sys
import time
import os 
import errno

import numpy as np
import pyqtgraph as pg

import math

from Worker import Worker

from set_to_user_friendly_QLineEdit import set_to_user_friendly_QLineEdit
from outputs_parameters import outputs_parameters

from catch_exception import *




class AcqCard(QtWidgets.QMainWindow):
	# Default values
	fs = 125e6
	START_ADDR        = 0x0800_0000 # Define by reserved memory in devicetree used to build Linux

	# Warning, if I put the '+1', there is an error : maybe a signal that wrap to 0 in the FPGA
	# Therefore, to keep a multiple of 32 bits, I substracted 3 bytes
	MAXPOINTS   = int((0x1FFFFFFF-START_ADDR - 3)/2) # /2 because 2 bytes per points


	# Reg addr : 
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

	START_ADDR_REG    = 0x000C_0000 # 32 bits # Min value is define by reserved memory in devicetree used to build Linux (0x0800_0000 in this version)

	def __init__(self, dev = None):
		super(AcqCard, self).__init__()

		self.dev = dev

		# Set a few global PyQtGraph settings before creating plots:
		pg.setConfigOption('leftButtonPan', False)
		pg.setConfigOption('background', 'w')
		pg.setConfigOption('foreground', 'k')
		pg.setConfigOption('antialias', True)

		uic.loadUi("AcqCard_gui.ui", self)

		self.timerTemperature = Qt.QTimer(self)
		self.timerTemperature.timeout.connect(self.timerTemperatureUpdate)
		self.timerTemperature.start(1000)

		self.timerDataUpdate = Qt.QTimer(self)

		self.threadpool = QtCore.QThreadPool()
		print("Multithreading with maximum %d threads" % self.threadpool.maxThreadCount())
		self.threadRunning = False

		self.dev.write_Zynq_AXI_register_uint32(self.START_ADDR_REG, self.START_ADDR)

		mux_value = 1 #0 for ADCs, 1 for counter

		# set MUX
		self.dev.write_Zynq_AXI_register_uint32(self.MUX_ADC_1_REG, mux_value)
		self.dev.write_Zynq_AXI_register_uint32(self.MUX_ADC_2_REG, mux_value)

		#small patch cause self.actual_fs need to be create to call the others functions:
		downsample_value = int(float(self.lineEdit_downsampling.text()))
		self.downsample_value = downsample_value
		self.actual_fs = self.fs/self.downsample_value
		self.dev.write_Zynq_AXI_register_uint32(self.DOWNSAMPLE_REG, self.downsample_value-1)

		self.label_samplingRate.setText('fs = {:.3e} Hz'.format(self.actual_fs))

		self.initUI()
		self.verifyPath()
		self.changeChannel() #also call changePlotLayout and changeNumberOfPoints


	def timerTemperatureUpdate(self):
		if self.threadRunning == False:
			ZynqTempInDegC = self.readZynqTemperature()
			self.label_RPTemperature.setText('Zynq temperature (max 85 °C operating): %.2f °C' % ZynqTempInDegC)
		else:
			self.label_RPTemperature.setText('Zynq temperature (max 85 °C operating): Can''t update temperature while transfering ddr')

	def getDataFromZynq_thread(self):
		bVerbose = False

		self.timerDataUpdate.stop()
		
		status = self.dev.read_Zynq_AXI_register_uint32(self.STATUS_REG)

		if status == 0 and self.acq_active == 1:
			if bVerbose:
				print('Data not yet ready')
			self.timerDataUpdate.singleShot(1000, self.getDataFromZynq_thread)
			return

		if status > 1: #ready != 0 and != 1, therefore, error on acquisition
			print('Warning, there was an error the acquisition... Further debugging needed \n Possible causes : not enough points or too much')
			progress_callback.emit('Error')
			return
		
		if status == 1:
			worker = Worker(self.getDataFromZynq) # Any other args, kwargs are passed to the run function
			worker.signals.finished.connect(self.thread_complete)
			worker.signals.progress.connect(self.progressStatus_update)
			
			# Execute
			self.threadRunning = True
			self.threadpool.start(worker) 



	def thread_complete (self):
		self.threadRunning = False
		self.label_status.setText('Status : Idle')

		# Restart another acquisition if checkBox.isChecked()
		if self.continuousDataAcquisition:
			 #resend start acq
			if self.checkBox_numberOfWaveform.isChecked(): # if checked, re-start acquisition N-1 times
				self.numberRemaining = self.numberRemaining - 1
				if self.numberRemaining > 0:
					self.start_acquisition(continuous = 1)
			else: # if unchecked, always re-start acquisition
				self.start_acquisition(continuous = 1)


	def progressStatus_update (self, status):
		self.label_status.setText('Status : {}'.format(status))

	# This function is called in a thread (by getDataFromZynq_thread) to avoid crashing the GUI
	def getDataFromZynq(self, progress_callback):
		bVerbose = True
		bVerboseTiming = False

		##########################################################
		#Transferring
		progress_callback.emit('Transferring')
		time_start = time.process_time()
		totalNumberOfPoints = int(self.numberOfPoints * np.sum(self.channelValid))
		self.data_in_bin = self.dev.read_Zynq_ddr(address_offset = 0, number_of_bytes=totalNumberOfPoints*2)

		self.data_in_bin = np.fromstring(self.data_in_bin, dtype=np.int16)
		self.data_in_volt = self.data_in_bin #self.data_in_bin / 2**15

		if bVerboseTiming:
			print("transfer read_Zynq_ddr {} pts : elapsed = {}".format(totalNumberOfPoints, (time.process_time()-time_start)))
		

		##########################################################
		#Plotting
		progress_callback.emit('Plotting')
		time_start = time.process_time()
		if np.sum(self.channelValid) == 2: 
			#dual channel mode 
			# odd  element => channel 0
			# even element => channel 1
			
			self.plot_timeDomain(self.data_in_volt[1::2], channel = 0) # does it create a copy of data array? maybe should pass a reference
			self.plot_timeDomain(self.data_in_volt[::2], channel = 1)

			self.plot_frequencyDomain(self.data_in_volt[1::2], channel = 0)
			self.plot_frequencyDomain(self.data_in_volt[::2], channel = 1)

		else:
			# single channel mode
			self.plot_timeDomain(self.data_in_volt, channel = self.channelValid.index(1))
			self.plot_frequencyDomain(self.data_in_volt, channel = self.channelValid.index(1))

		if bVerboseTiming:
			print("plotting read_Zynq_ddr {} pts : elapsed = {}".format(totalNumberOfPoints, (time.process_time()-time_start)))

		##########################################################
		#Saving
		if self.checkBox_autoSaveOnAcq.isChecked():
			progress_callback.emit('Saving')
			time_start = time.process_time()
			self.saveData()
			if bVerboseTiming:
				print("saving read_Zynq_ddr {} pts : elapsed = {}".format(totalNumberOfPoints, (time.process_time()-time_start)))


		#Reset DMA FSM (active low)
		self.dev.write_Zynq_AXI_register_uint32(self.RESET_DMA_REG, 0)
		self.dev.write_Zynq_AXI_register_uint32(self.RESET_DMA_REG, 1)



	def initUI(self):
		# Connect function to buttons
		self.pushButton_stopAcq.clicked.connect(self.stopAcquisition)
		self.pushButton_singleAcq.clicked.connect(self.start_single)
		self.pushButton_continuousAcq.clicked.connect(self.start_continuous)
		

		self.lineEdit_downsampling.returnPressed.connect(self.changeSamplingRate)
		self.lineEdit_numberOfPoints.returnPressed.connect(self.changeNumberOfPoints)
		self.lineEdit_timeAcq.returnPressed.connect(self.changeTimeAcqLength)

		self.radioButton_channel_in1.clicked.connect(self.changeChannel)
		self.radioButton_channel_in2.clicked.connect(self.changeChannel)
		self.radioButton_channel_in1and2.clicked.connect(self.changeChannel)

		self.checkBox_timeDomainDisplay.clicked.connect(self.changePlotLayout)
		self.checkBox_FrequencyDomainDisplay.clicked.connect(self.changePlotLayout)


		self.lineEdit_numberOfWaveform.returnPressed.connect(self.changeNumberOfWaveform)
		

		self.pushButton_saveWaveform.clicked.connect(self.saveData)
		self.pushButton_browsePath.clicked.connect(self.browsePath)
		self.lineEdit_savePath.returnPressed.connect(self.verifyPath)

		self.pushButton_outputsParameters.clicked.connect(self.openOutputParameters)

		# list of RGB tuples defining the colors (same colorset as matlab)
		colors_list = [(     0,    0.4470,    0.7410),
					   (0.8500,    0.3250,    0.0980),
					   (0.9290,    0.6940,    0.1250),
					   (0.4940,    0.1840,    0.5560),
					   (0.4660,    0.6740,    0.1880),
					   (0.3010,    0.7450,    0.9330),
					   (0.6350,    0.0780,    0.1840)]
		numColors = len(colors_list)


	def changePlotLayout(self, state = None): #state is not use, but QCheckBox.clicked.connect return state, which sometime cause an exception
		self.graphicsView.clear()
		row = 0
		if self.checkBox_timeDomainDisplay.isChecked():
			self.qpltItem_time = self.graphicsView.addPlot(title='Time Domain', row=row, col=0)
			self.qpltItem_time.setLabel('left', 'Voltage [V]')#, color='red', size=30)
			self.qpltItem_time.setLabel('bottom', 'Time [s]')#, color='red', size=30)
			# self.qpltItem_time.setClipToView(True)
			self.qpltItem_time.setDownsampling(ds=10, auto=True, mode='peak') #subsample, mean, peak

			self.timeCurve = []
			self.timeCurve.append(self.qpltItem_time.plot(pen='b'))
			self.timeCurve.append(self.qpltItem_time.plot(pen='r'))
			row = row+1

		if self.checkBox_FrequencyDomainDisplay.isChecked():
			self.qpltItem_freq = self.graphicsView.addPlot(title='Frequency Domain', row=row, col=0)
			self.qpltItem_freq.setLabel('left', 'Power [dB]')
			self.qpltItem_freq.setLabel('bottom', 'Frequency [MHz]')
			# self.qpltItem_freq.setClipToView(True)
			self.qpltItem_freq.setDownsampling(ds=10, auto=True, mode='peak') #subsample, mean, peak

			self.freqCurve = []
			self.freqCurve.append(self.qpltItem_freq.plot(pen='b'))
			self.freqCurve.append(self.qpltItem_freq.plot(pen='r'))


	def start_continuous(self):
		#Reset DMA FSM (active low)
		self.dev.write_Zynq_AXI_register_uint32(self.RESET_DMA_REG, 0)
		self.dev.write_Zynq_AXI_register_uint32(self.RESET_DMA_REG, 1)

		self.start_acquisition(continuous = 1)
		self.numberRemaining = self.numberToAcquire

		
	def start_single(self):
		#Reset DMA FSM (active low)
		self.dev.write_Zynq_AXI_register_uint32(self.RESET_DMA_REG, 0)
		self.dev.write_Zynq_AXI_register_uint32(self.RESET_DMA_REG, 1)

		self.start_acquisition(continuous = 0)

	def start_acquisition(self, continuous = 0):
		self.continuousDataAcquisition = continuous

		self.acq_active = 1

		# set start
		if self.checkBox_useTrigger.isChecked():
			self.dev.write_Zynq_AXI_register_uint32(self.TRIG_REG, 0) # 0 before to make sure we have a rising edge
			self.dev.write_Zynq_AXI_register_uint32(self.TRIG_REG, 1) # Start with trig need to stay high to register external trig
			self.dev.write_Zynq_AXI_register_uint32(self.TRIG_REG, 0)
			
			self.label_status.setText('Status : Waiting for trig')


		else:
			self.dev.write_Zynq_AXI_register_uint32(self.START_REG, 1)
			self.dev.write_Zynq_AXI_register_uint32(self.START_REG, 0)
			self.label_status.setText('Status : Acquisition')



		totalNumberOfPoints = self.numberOfPoints * np.sum(self.channelValid)

		timeToWait_in_ms = totalNumberOfPoints/self.actual_fs*1000
		#print('time to wait : {}ms'.format(timeToWait_in_ms))
		
		self.timerDataUpdate.singleShot(int(timeToWait_in_ms)+1, self.getDataFromZynq_thread)


	def stopAcquisition(self):
		self.label_status.setText('Status : Idle')
		self.continuousDataAcquisition = 0
		self.acq_active = 0
		self.timerDataUpdate.stop()



	def plot_timeDomain(self, data_in, channel = 0):
		if self.checkBox_timeDomainDisplay.isChecked():
			self.timeCurve[channel].clear()
			time_axis = np.linspace(1, len(data_in), len(data_in))/self.actual_fs
			self.timeCurve[channel].setData(time_axis,data_in)
			# print('Voltage start -> end : {}'.format(data_in[0] - data_in[-1]))

	def plot_frequencyDomain(self, data_in, channel = 0):
		# Do we want to multiply data_in with a window?
		# Do we want to remove DC (mean) component 
		if self.checkBox_FrequencyDomainDisplay.isChecked():
			self.freqCurve[channel].clear()
			N_fft = 2**(int(np.ceil(np.log2(len(data_in)))))
			frequency_axis = np.linspace(0, (N_fft-1)/float(N_fft)*self.actual_fs, N_fft)
			last_index_shown = int(np.round(len(frequency_axis)/2))
			spc = np.abs(np.fft.fft(data_in, N_fft))
			spc = 20*np.log10(spc + 1e-12) # -> dB (1e-12 to avoid log10(0))

			self.freqCurve[channel].setData(frequency_axis[0:last_index_shown]/1e6, spc[0:last_index_shown])

	def changeChannel(self):
		if self.radioButton_channel_in1.isChecked():
			channel = 1
			self.channelValid = [1,0]
		elif self.radioButton_channel_in2.isChecked():
			channel = 2
			self.channelValid = [0,1]
		elif self.radioButton_channel_in1and2.isChecked():
			channel = 3
			self.channelValid = [1,1]
		self.dev.write_Zynq_AXI_register_uint32(self.CHANNEL_REG, channel)

		self.changeNumberOfPoints()
		self.changePlotLayout()

	def changeSamplingRate(self):
		#TODO : implement a logic to avoid potential error if sampling rate is changed mid-acquisition
		try : 
			downsample_value = int(float(self.lineEdit_downsampling.text()))
		except ValueError:
			downsample_value = self.downsample_value
			self.lineEdit_downsampling.blockSignals(True)
			self.lineEdit_downsampling.setText(str(downsample_value))
			self.lineEdit_downsampling.blockSignals(False)
		
		# make sure downsample_value is between 1 and 2^32
		downsample_value = min(2**32,downsample_value)
		downsample_value = max(1,downsample_value)

		self.downsample_value = downsample_value

		self.dev.write_Zynq_AXI_register_uint32(self.DOWNSAMPLE_REG, self.downsample_value-1)
		self.actual_fs = self.fs/self.downsample_value

		#Reset DMA FSM (active low)
		self.dev.write_Zynq_AXI_register_uint32(self.RESET_DMA_REG, 0)
		self.dev.write_Zynq_AXI_register_uint32(self.RESET_DMA_REG, 1)

		self.label_samplingRate.setText('fs = {:.3e} Hz'.format(self.actual_fs))


		self.lineEdit_timeAcq.blockSignals(True)
		self.lineEdit_timeAcq.setText('{:.3e}'.format(self.numberOfPoints/self.actual_fs))
		self.lineEdit_timeAcq.blockSignals(False)

	def changeNumberOfPoints(self):
		if self.lineEdit_numberOfPoints.text().upper() == 'MAX':
			numberOfPoints = int(self.MAXPOINTS/np.sum(self.channelValid))
			self.lineEdit_numberOfPoints.blockSignals(True)
			self.lineEdit_numberOfPoints.setText(str(numberOfPoints))
			self.lineEdit_numberOfPoints.blockSignals(False)
		else:
			try:
				numberOfPoints = int(float(self.lineEdit_numberOfPoints.text()))
			except ValueError:
				numberOfPoints = self.numberOfPoints
				self.lineEdit_numberOfPoints.blockSignals(True)
				self.lineEdit_numberOfPoints.setText(str(numberOfPoints))
				self.lineEdit_numberOfPoints.blockSignals(False)

			#under 256 points, FPGA memory never fill
			numberOfPoints_constraint = self.constraintNumber(numberOfPoints, 256, self.MAXPOINTS/np.sum(self.channelValid))
			
			if numberOfPoints_constraint != numberOfPoints:
				# This means numberOfPoints was changed by it's limits
				numberOfPoints = numberOfPoints_constraint
				self.lineEdit_timeAcq.blockSignals(True)
				self.lineEdit_numberOfPoints.setText(str(int(numberOfPoints)))
				self.lineEdit_timeAcq.blockSignals(False)


			
		self.numberOfPoints = numberOfPoints		
		
		self.lineEdit_timeAcq.blockSignals(True)
		self.lineEdit_timeAcq.setText('{:.3e}'.format(self.numberOfPoints/self.actual_fs))
		self.lineEdit_timeAcq.blockSignals(False)


		self.dev.write_Zynq_AXI_register_uint32(self.N_BYTES_REG, 2*numberOfPoints*np.sum(self.channelValid))



	def changeTimeAcqLength(self):
		if self.lineEdit_timeAcq.text().upper() == 'MAX':
			self.lineEdit_numberOfPoints.blockSignals(True)
			self.lineEdit_numberOfPoints.setText('MAX')
			self.lineEdit_numberOfPoints.blockSignals(False)
		else:
			try:
				numberOfPoints = round(float(self.lineEdit_timeAcq.text())*self.actual_fs)
			except ValueError:
				numberOfPoints = self.numberOfPoints
			
		self.lineEdit_numberOfPoints.blockSignals(True)	
		self.lineEdit_numberOfPoints.setText(str(numberOfPoints))
		self.lineEdit_numberOfPoints.blockSignals(False)
		self.changeNumberOfPoints()


	def constraintNumber(self, number, min, max):
		if number <= min:
			return min
		elif number >= max:
			return max
		else:
			return number

	def changeNumberOfWaveform(self):
		try:
			numberToAcquire = int(self.lineEdit_numberOfWaveform.text())
		except ValueError:
			numberToAcquire = 0
			self.lineEdit_numberOfWaveform.setText(str(numberToAcquire))

		self.numberToAcquire = numberToAcquire 


	def browsePath(self):
		curDir = os.getcwd()
		path = QtWidgets.QFileDialog.getExistingDirectory(self, "Select a emplacement to save data", curDir, QtGui.QFileDialog.ShowDirsOnly)
		if path != '':
			self.lineEdit_savePath.setText(path)
			self.path = path


	def verifyPath(self):
		path = self.lineEdit_savePath.text()
		self.make_sure_path_exists(path)
		self.path = path

	def saveData(self):

		if self.channelValid == [1,0]:
			self.saveSingle('IN1')
		elif self.channelValid == [0,1]:
			self.saveSingle('IN2')
		elif self.channelValid == [1,1]:
			self.saveDual('IN1','IN2')
		else:
			return


	def saveSingle(self, channelName):
		fileName = self.lineEdit_fileName.text()
		
		# find next unused filename
		file_exist = True
		file_number = 0
		while (file_exist):
			file_number = file_number + 1
			fileName_long = channelName + fileName + '{:d}'.format(file_number) + '.bin'
			fileName_plusPath = self.path + '/' + fileName_long
			file_exist =  os.path.exists(fileName_plusPath)
		
		file_output = open(fileName_plusPath, 'wb')
		file_output.write(self.data_in_bin.tobytes())
		file_output.close()

	def saveDual(self, channel1Name, channel2Name):
		fileName = self.lineEdit_fileName.text()
		file_exist = True
		file_number = 0
		while (file_exist):
			file_number = file_number + 1
			
			file1Name_long = channel1Name + fileName + '{:d}'.format(file_number) + '.bin'
			file1Name_plusPath = self.path + '/' + file1Name_long

			file2Name_long = channel2Name + fileName + '{:d}'.format(file_number) + '.bin'
			file2Name_plusPath = self.path + '/' + file2Name_long

			file_exist =  os.path.exists(file1Name_plusPath) or os.path.exists(file2Name_plusPath) # False when both are false
		
		file1_output = open(file1Name_plusPath, 'wb')
		file1_output.write(self.data_in_bin[1::2].tobytes())
		file1_output.close()

		file2_output = open(file2Name_plusPath, 'wb')
		file2_output.write(self.data_in_bin[::2].tobytes())
		file2_output.close()


	def openOutputParameters(self):
		self.outputParameters = outputs_parameters(self.dev)


	# (from jddes' DPLL software):
	# read the Zynq's current temperature
	def readZynqTemperature(self):
		###########################################################################
		# Reading the XADC values:
		# See Xilinx document UG480 chapter 2 for conversion factors
		# we use 2**16 instead of 2**12 for the denominator because the codes are "MSB-aligned" in the register (equivalent to a multiplication by 2**4)
		xadc_temperature_code_to_degC    = lambda x: x*503.975/2.**16-273.15
		# time_start = time.process_time()
		# average 10 readings because otherwise they are quite noisy:
		# this reading loop takes just 2 ms for 10 readings at the moment so there is no real cost
		N_average = 10.
		reg_avg = 0.
		for k in range(int(N_average)):
			reg = self.dev.read_Zynq_AXI_register_uint32(self.xadc_base_addr+0x200)
			reg_avg += float(reg)
			
		reg_avg = float(reg_avg)/N_average
		# print("elapsed = %f" % (time.process_time()-time_start))
		ZynqTempInDegC = xadc_temperature_code_to_degC(  reg_avg  )
		return ZynqTempInDegC

	# From: http://stackoverflow.com/questions/273192/create-directory-if-it-doesnt-exist-for-file-write
	# took 300 us if path doesn't exist
	# took 90 us if path exist
	def make_sure_path_exists(self, path):
		try:
			os.makedirs(path)
		except OSError as exception:
			if exception.errno != errno.EEXIST:
				raise
				



################################################################
## Main code
################################################################
def main():
	import RP_PLL
	IP = '192.168.0.150'
	PORT = 5000

	dev = RP_PLL.RP_PLL_device(None)

	dev.OpenTCPConnection(IP, PORT)

	app = QtCore.QCoreApplication.instance()

	if app is None:
		app = QtWidgets.QApplication(sys.argv)

	ACQ = AcqCard(dev)
	# Show GUI
	ACQ.show()
	# GUI.showMaximized()   

	# Execute application
	app.exec_()

if __name__ == '__main__':
	main()
	