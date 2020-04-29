# -*- coding: utf-8 -*-
"""
"""

import sys
from PyQt5 import QtGui, Qt, QtCore

class set_to_user_friendly_QLineEdit():

    def __init__(self, user_line):
        super(set_to_user_friendly_QLineEdit, self).__init__()
        self.user_line = user_line

        self.user_line.textChanged.connect(self.change_my_color)
        self.user_line.returnPressed.connect(self.reset_my_color)
        
        self.reset_my_color()
        
    def change_my_color(self):
        palette = Qt.QPalette()
        palette.setColor(self.user_line.backgroundRole(), Qt.QColor('black'))
        palette.setColor(self.user_line.foregroundRole(), Qt.QColor('white'))
        self.user_line.setPalette(palette)
        
    def reset_my_color(self):
        palette = Qt.QPalette()
        palette.setColor(self.user_line.backgroundRole(), Qt.QColor('white'))
        palette.setColor(self.user_line.foregroundRole(), Qt.QColor('black'))
        self.user_line.setPalette(palette)
        