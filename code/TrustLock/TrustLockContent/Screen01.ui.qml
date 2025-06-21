

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.7
import QtQuick.Controls 6.7
import TrustLock
import QtQuick.Layouts

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: Constants.backgroundColor

    GridLayout {
        id: gridLayout
        anchors.fill: parent
        column: 3
        row: 3

        Label {
            text: "Hello world"
        }
    }

    states: [
        State {
            name: "clicked"
        }
    ]
}
