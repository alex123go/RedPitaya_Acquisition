# RedPitaya_Acquisition
Transform the Red Pitaya in an acquisition card. This software/hardware allows writing data from the Red Pitaya's ADCs to the zynq's internal DDR3-SDRAM and then ploting/saving data in a PC.


# Getting started
This platform is based on a portion of jddes' Frequency Comb DPLL and on a portion of Red Pitaya software. To be able to run the software, you must:

1. Download the SD card image modified from jddes' repository, available at __
2. Burn the SD card image to the 4GB SD card that came with the Red Pitaya (I suggest to use Win32DiskImager if on windows)
3. Run "MainWindow_AcqCard.py" with python. I suggest to run it with spyder 3.6, which include pyqt5. For MAC users, please refer to the "Instructions and operation manual".
4. First time users, don't forget to update both FPGA firmware and CPU software.

Note: you can also use the noGUIVersion.py to acquire and save data without GUI and plotting.


#Software versions
This project was compile with Vivado 2019.1 (available for free with the WebPack license). The GUI was made for users with WinPython-64bit-3.6.1.0Qt5 ( https://sourceforge.net/projects/winpython/files/WinPython_3.6/3.6.1.0/ )