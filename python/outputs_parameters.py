from PyQt5 import QtGui, Qt, QtCore, QtWidgets, uic

import sys
import time
from set_to_user_friendly_QLineEdit import set_to_user_friendly_QLineEdit

import numpy as np

class outputs_parameters(QtWidgets.QWidget):

	fs = 125e6
	
	DDS_FREQ_REG          = [0x000C_0000, 0x000C_0008]
	DDS_ONOFF_REG         = [0x000D_0000, 0x000D_0008]


	def __init__(self, dev = None):
		super(outputs_parameters, self).__init__()

		self.dev = dev

		uic.loadUi("Outputs_parameters.ui", self)


		self.initUI()
		self.show()



	def initUI(self):

		self.lineEdit_freqOut1_userFriendly = set_to_user_friendly_QLineEdit(self.lineEdit_freqOut1)
		self.lineEdit_freqOut2_userFriendly = set_to_user_friendly_QLineEdit(self.lineEdit_freqOut2)


		self.checkBox_onoffOut1.clicked.connect(self.onOffOut1)
		self.lineEdit_freqOut1.returnPressed.connect(self.frequencyChangedOut1)
		self.horizontalSlider_freqOut1.valueChanged.connect(self.slidersChangedOut1)


		self.checkBox_onoffOut2.clicked.connect(self.onOffOut2)
		self.lineEdit_freqOut2.returnPressed.connect(self.frequencyChangedOut2)
		self.horizontalSlider_freqOut2.valueChanged.connect(self.slidersChangedOut2)


	def onOffOut1(self):
		self.dev.write_Zynq_AXI_register_uint32(self.DDS_ONOFF_REG[0], int(self.checkBox_onoffOut1.isChecked()))

	def onOffOut2(self):
		self.dev.write_Zynq_AXI_register_uint32(self.DDS_ONOFF_REG[1], int(self.checkBox_onoffOut2.isChecked()))

	def slidersChangedOut1(self):
		# slider limits : 0->250, freq limits : 0 -> fs/2 (61.5 MHz) : each bin is 0.5Mhz
		sliderValue = self.horizontalSlider_freqOut1.value()
		numberOfStep = 1 + self.horizontalSlider_freqOut1.maximum()

		freq = (self.fs/2)*sliderValue/numberOfStep

		self.lineEdit_freqOut1.setText('{:.1e}'.format(freq))
		self.sendFrequency(frequency = freq, channel = 0)

	def frequencyChangedOut1(self):
		try : 
			freq = float(self.lineEdit_freqOut1.text())
		except ValueError:
			freq = 0

		numberOfStep = 1 + self.horizontalSlider_freqOut1.maximum()
		posCursor = int( freq/(self.fs/2) * numberOfStep )
		
		self.horizontalSlider_freqOut1.blockSignals(True)
		self.horizontalSlider_freqOut1.setValue(posCursor)
		self.horizontalSlider_freqOut1.blockSignals(False)

		self.sendFrequency(frequency = freq, channel = 0)

	def slidersChangedOut2(self):
		# slider limits : 0->250, freq limits : 0 -> fs/2 (61.5 MHz) : each bin is 0.5Mhz
		sliderValue = self.horizontalSlider_freqOut2.value()
		numberOfStep = 1 + self.horizontalSlider_freqOut2.maximum()

		freq = (self.fs/2)*sliderValue/numberOfStep

		self.lineEdit_freqOut2.setText('{:.1e}'.format(freq))
		self.sendFrequency(frequency = freq, channel = 1)

	def frequencyChangedOut2(self):
		try : 
			freq = float(self.lineEdit_freqOut2.text())
		except ValueError:
			freq = 0

		numberOfStep = 1 + self.horizontalSlider_freqOut2.maximum()
		posCursor = int( freq/(self.fs/2) * numberOfStep )

		self.horizontalSlider_freqOut2.blockSignals(True)
		self.horizontalSlider_freqOut2.setValue(posCursor)
		self.horizontalSlider_freqOut2.blockSignals(False)

		self.sendFrequency(frequency = freq, channel = 1)


	def sendFrequency(self, frequency, channel):
		self.dev.write_Zynq_AXI_register_uint32(self.DDS_FREQ_REG[channel], frequency/self.fs * 2**32)


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

	DAC = outputs_parameters(dev)
	# Show GUI
	DAC.show()
	# GUI.showMaximized()   

	# Execute application
	app.exec_()

if __name__ == '__main__':
	main()
	