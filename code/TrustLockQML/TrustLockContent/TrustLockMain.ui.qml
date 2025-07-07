

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: mianRec
    width: 1920
    height: 1080
    color: "red"

    ColumnLayout {
        id: mainColumnLayout
        x: 669
        y: 589
        width: 100
        height: 100
        anchors.fill: parent

        CustomTabBar {
            width: parent.width
            height: 60
            anchors.top: parent.top
        }
    }
}
