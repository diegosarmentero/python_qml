import sys

from PyQt4.QtCore import QUrl
from PyQt4.QtGui import QApplication
from PyQt4.QtDeclarative import QDeclarativeView


app = QApplication(sys.argv)

# Create the QML user interface.
view = QDeclarativeView()
view.setSource(QUrl('main.qml'))
view.setResizeMode(QDeclarativeView.SizeRootObjectToView)

view.show()

app.exec_()
