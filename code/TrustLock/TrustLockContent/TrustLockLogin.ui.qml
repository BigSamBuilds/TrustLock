

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.7
import TrustLock
import QtQuick.Layouts
import QtQuick.Controls

Rectangle {
    id: rectangle
    anchors.fill: parent
    property alias imageSource: image.source
    color: Constants.backgroundColor
    width: 1000
    height: 1000

    GridLayout {
        id: gridLayout
        anchors.fill: parent

        Rectangle {
            id: login
            color: "#00749b"
            radius: 5
            Layout.maximumHeight: 900
            Layout.maximumWidth: 700
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.minimumHeight: 700
            Layout.minimumWidth: 400
            width: 500
            height: 600

            ColumnLayout {
                id: columnLayout
                anchors.fill: parent
                anchors.topMargin: -51

                Image {
                    id: image
                    width: 80
                    height: 80
                    sourceSize.width: 100
                    sourceSize.height: 100
                    source: "images/icon.png"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    fillMode: Image.PreserveAspectCrop
                }
                Rectangle {
                    id: loginSec
                    color: "#00749b"
                    radius: 5

                    width: 500
                    height: 600

                    ColumnLayout {
                        id: columnMainLog
                        anchors.fill: parent
                        spacing: 0
                        layer.samples: 0
                        uniformCellSizes: false

                        Label {
                            id: welcomeText
                            text: qsTr("Welcome To TrustLock")
                            Layout.alignment: Qt.AlignCenter | Qt.AlignTop
                            color: "white"
                            font.bold: true
                            font.pixelSize: 20
                        }

                        Label {
                            id: username
                            text: qsTr("Username")
                            color: "white"
                            font.bold: true
                            font.pixelSize: 13
                            Layout.leftMargin: 25
                            Layout.alignment: Qt.AlignTop
                        }

                        TextField {
                            id: usernameText
                            Layout.leftMargin: 0
                            placeholderText: qsTr("Enter here...")
                            width: 450
                            color: "#030303"
                            bottomInset: 0
                            topInset: 0
                            topPadding: 6
                            font.bold: true
                            Layout.columnSpan: 1
                            Layout.rowSpan: 1
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                            Layout.maximumHeight: 40
                            Layout.minimumHeight: 40
                            Layout.maximumWidth: 450
                            Layout.minimumWidth: 450
                        }

                        Label {
                            id: password
                            text: qsTr("Password")
                            color: "white"
                            font.bold: true
                            font.pixelSize: 13
                            Layout.leftMargin: 24
                            Layout.alignment: Qt.AlignTop
                        }

                        TextField {
                            id: passwordText
                            Layout.leftMargin: 0
                            placeholderText: qsTr("Enter here...")
                            width: 450
                            echoMode: TextInput.Password
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                            Layout.maximumHeight: 40
                            Layout.minimumHeight: 40
                            Layout.maximumWidth: 450
                            Layout.minimumWidth: 450
                        }

                        Button {
                            id: signIn
                            text: qsTr("Sign in")
                            font.pointSize: 12
                            font.bold: true

                            Layout.maximumHeight: 40
                            Layout.minimumHeight: 40
                            Layout.maximumWidth: 300
                            Layout.minimumWidth: 300
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            background: Rectangle {
                                color: "#394b4a"
                                border.width: 0
                                border.color: "#22272c"
                                radius: 20
                            }
                            palette.buttonText: "white"
                        }

                        Button {
                            id: signUp
                            text: qsTr("Sign up")
                            font.pointSize: 12
                            font.bold: true

                            Layout.maximumHeight: 40
                            Layout.minimumHeight: 40
                            Layout.maximumWidth: 300
                            Layout.minimumWidth: 300
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            background: Rectangle {
                                color: "#394b4a"
                                border.width: 0
                                border.color: "#22272c"
                                radius: 20
                            }
                            palette.buttonText: "white"
                        }

                        Button {
                            id: minimize
                            text: qsTr("Minimize")
                            font.pointSize: 12
                            font.bold: true

                            Layout.maximumHeight: 40
                            Layout.minimumHeight: 40
                            Layout.maximumWidth: 300
                            Layout.minimumWidth: 300
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            background: Rectangle {
                                color: "#394b4a"
                                border.width: 0
                                border.color: "#22272c"
                                radius: 20
                            }
                            palette.buttonText: "white"
                        }
                    }
                }
            }
        }
    }
}
