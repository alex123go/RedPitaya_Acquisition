# -*- coding: utf-8 -*-
"""
"""

import sys
from PyQt5 import QtGui, Qt, QtCore

class set_to_user_friendly_QLineEdit(Qt.QLineEdit):

    def __init__(self, QlineEdit):
        super(set_to_user_friendly_QLineEdit, self).__init__(text)
        self.QlineEdit = QlineEdit

        self.QlineEdit.textChanged.connect(self.change_my_color)
        self.QlineEdit.returnPressed.connect(self.reset_my_color)
        
        self.reset_my_color()
        
    def change_my_color(self):
        palette = Qt.QPalette()
        palette.setColor(self.backgroundRole(), Qt.QColor('black'))
        palette.setColor(self.foregroundRole(), Qt.QColor('white'))
        self.QlineEdit.setPalette(palette)
        
    def reset_my_color(self):
        palette = Qt.QPalette()
        palette.setColor(self.backgroundRole(), Qt.QColor('white'))
        palette.setColor(self.foregroundRole(), Qt.QColor('black'))
        self.QlineEdit.setPalette(palette)
        