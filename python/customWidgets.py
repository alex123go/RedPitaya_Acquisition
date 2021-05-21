from PyQt5 import Qt, QtWidgets, QtCore


class lineEditWithDragAndDrop(QtWidgets.QLineEdit):
	def __init__(self, parent):
		super().__init__(parent)
		self.setAcceptDrops(True)

	def dragEnterEvent(self, e):
		if e.mimeData().hasFormat('text/plain'):
			e.accept()
		elif e.mimeData().hasUrls:
			e.accept()
		else:
			e.ignore()

	def dropEvent(self, e):
		if e.mimeData().hasFormat('text/plain'):
			self.setText(e.mimeData().text())
		elif e.mimeData().hasUrls:
			url = e.mimeData().urls()[0].toLocalFile() # [0] means only the first file will get written
			self.setText(url)



class user_friendly_QLineEdit(Qt.QLineEdit):
	def __init__(self, parent):
		super(user_friendly_QLineEdit, self).__init__(parent)

		self.textChanged.connect(self.change_my_color)
		self.returnPressed.connect(self.reset_my_color)
		
		self.reset_my_color()
		
	def change_my_color(self):
		palette = Qt.QPalette()
		palette.setColor(self.backgroundRole(), Qt.QColor('black'))
		palette.setColor(self.foregroundRole(), Qt.QColor('white'))
		self.setPalette(palette)
		
	def reset_my_color(self):
		palette = Qt.QPalette()
		palette.setColor(self.backgroundRole(), Qt.QColor('white'))
		palette.setColor(self.foregroundRole(), Qt.QColor('black'))
		self.setPalette(palette)
		