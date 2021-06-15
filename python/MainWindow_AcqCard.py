# Author : Alex Tourigny-Plante


from __future__ import print_function
import sys
from PyQt5 import QtGui, Qt, QtCore, QtWidgets
import numpy as np

import time

from initialConfiguration_RP_2 import initialConfiguration

import RP_PLL

from AcqCard import AcqCard

import socket
import pdb
import traceback



class controller(object):
	"""docstring for controller"""

	FIRMWARE_VERSION_ADDRESS  = 0x000F_0000 # offset of 0x8000_0000
	EXPECTED_FIRMWARE_VERSION = 0xADC0_0003

	def __init__(self):
		super(controller, self).__init__()

		self.logger_name = 'main'

		# Start Qt:
		self.app = QtCore.QCoreApplication.instance()
		if self.app is None:
			print("QCoreApplication not running yet. creating.")
			self.bEventLoopWasRunningAlready = False
			self.app = QtWidgets.QApplication(sys.argv)
		else:
			self.bEventLoopWasRunningAlready = True
			print("QCoreApplication already running.")

		self.dev = RP_PLL.RP_PLL_device()

		self.initialConfigUI()

	def findMostLikelyLANBroadcastIPAddress(self):
		# list all possible IPv4 addresses and choose the most likely candidate for the subnet on which the red pitaya is
		# heuristics used:
		#   -prefer if the address starts with 192.168
		#   -choose the subnet that has the lowest third byte: eg if there are both 192.168.1.10 and 192.168.2.10, chooose 129.168.1.10 as the correct one
		addrCandidate = '192.168.0.255'

		try:
			listAddr = socket.getaddrinfo(socket.gethostname(), None)
			min_third_byte = 255

			for addr_tuple in listAddr:
				(family, _, _, _, sockaddr) = addr_tuple
				if family == socket.AF_INET:
					# this is IPv4
					print('IP candidate: %s' % sockaddr[0])
					third_byte = int(sockaddr[0].split('.')[2])
					if third_byte <= min_third_byte:
						min_third_byte = third_byte
						addrCandidate = sockaddr[0]
			print('Chosen local IP: %s' % addrCandidate)

		except Exception as e:
			print("findMostLikelyLANBroadcastIPAddress():Exception trying to find correct broadcast automatically.")
			#pass

		# Take this machine's IP address and transform into broadcast address for the whole subnet (change last byte to 255)
		addrSplit = addrCandidate.split('.')
		addrSplit[3] = '255'
		strBroadCastAddress = '.'.join(addrSplit)

		print('Chosen broadcast IP: %s' % strBroadCastAddress)

		return strBroadCastAddress



	def initialConfigUI(self):

		devices_data = {} # Possibilité de mettre un dictionnaire avec mac address et nom du Red Pitaya (qui peut aussi faire le lien avec un fichier de config et une couleur de background du gui)

		strBroadcastAddress = self.findMostLikelyLANBroadcastIPAddress()
		#strBroadcastAddress = "192.168.0.255"
		strFPGAFirmware=r'acq_card_trig.bit'
		strCPUFirmware=u'../ZynqFolder/monitor-tcp/monitor-tcp'
		self.initial_config = initialConfiguration(self.dev, devices_data=devices_data, strBroadcastAddress=strBroadcastAddress, strFPGAFirmware=strFPGAFirmware, strCPUFirmware=strCPUFirmware)
	
		# we should pause here because of app.exec_() inside self.initial_config, but it doesn't
		# reset preferences to default in spyder 3.6 solved the problem
		
		self.ip_addr = self.initial_config.strSelectedIP
		self.port = 5000
		self.reprogram = self.initial_config.reprogram #True or False

		if (self.initial_config.bOk == True):
			self.runEventLoop()
			

			
		else:
			print('initUI was closed')
			pass

		


	def runEventLoop(self):
		if 1: 
		# Main event loop
			try:

				self.dev.OpenTCPConnection(self.ip_addr, 5000)
				FIRMWARE_VERSION = self.dev.read_Zynq_AXI_register_uint32(self.FIRMWARE_VERSION_ADDRESS)
				# FIRMWARE_VERSION = self.EXPECTED_FIRMWARE_VERSION
				print('FIRMWARE_VERSION = {}'.format(hex(FIRMWARE_VERSION)))

				
				self.main_window = AcqCard(self.dev)  
				self.main_window.show()
				self.app.exec_()
				
				# try:
				# 	self.main_window.stopTimerEvent()
				# except:
				# 	pass
			except Exception as e:
				print("XEM_GUI3.py: Exception during app.exec_():")
				print('Red_Pitaya_GUI {}: Exception during app.exec_():{}'.format(self.logger_name, e))


		



		
	

if __name__ == '__main__':
	print("main: about to create controller instance")
	controller_obj = controller()

	# This code here is to handle weird interaction between IPython's event handler:
	# Depending on the setting for the graphical backend in Spyder (Tools/Preferences/IPython Console/Graphics/Backend = (Automatic or Inline),
	# the Qt event loop might be already running, so the proper way to teardown our application,
	# for example to enable re-using the same console to run another instance afterwards,
	# is different.
	if controller_obj.bEventLoopWasRunningAlready == False:
		# controller_obj.stopCommunication()
		del controller_obj
