

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
    id: signUp
    width: 1920
    height: 1080
    Layout.minimumWidth: 400
    Layout.minimumHeight: 400

    GridLayout {
        id: gridLayout
        anchors.fill: parent
        Layout.minimumWidth: 400
        Layout.minimumHeight: 400

        Rectangle {
            id: mainRectangle
            anchors.fill: parent
            anchors.leftMargin: 100
            anchors.rightMargin: 100
            anchors.topMargin: 200
            anchors.bottomMargin: 200
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.minimumWidth: 900
            Layout.minimumHeight: 200
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            color: "#087f94"
            radius: 20

            RowLayout {
                id: secondSection
                anchors.fill: parent
                anchors.leftMargin: 40
                anchors.rightMargin: 40
                anchors.topMargin: 40
                anchors.bottomMargin: 40

                Rectangle {
                    id: userRegisteration
                    color: "#087f94"
                    radius: 3
                    border.color: "#5c5c5c"
                    border.width: 5
                    Layout.minimumHeight: 400
                    Layout.minimumWidth: 400
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    ColumnLayout {
                        id: userRegisterationLayout
                        anchors.fill: parent
                        anchors.leftMargin: 40
                        anchors.rightMargin: 40
                        anchors.topMargin: 0

                        Label {
                            id: userRegistration
                            color: "#ffffff"
                            text: "User Registeration"
                            font.bold: true
                            font.pointSize: 15
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        Label {
                            id: usernameLabel
                            text: "Username"
                            color: "#ffffff"
                            font.bold: true
                            font.pointSize: 12
                        }

                        TextField {
                            id: usernameInput
                            width: 80
                            height: 20
                            placeholderText: qsTr("your user...")
                            font.pixelSize: 12
                            verticalAlignment: Text.AlignVCenter
                            maximumLength: 40
                            leftPadding: 5
                            font.bold: true
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            Layout.minimumHeight: 40
                            Layout.fillWidth: true

                            background: Rectangle {
                                radius: 10
                                border.color: "#C9C9C9"
                                border.width: 1
                            }
                        }

                        Label {
                            id: usernameLabelAgain
                            text: "Username again"
                            color: "#ffffff"
                            font.bold: true
                            font.pointSize: 12
                        }

                        TextField {
                            id: usernameInputAgain
                            width: 80
                            height: 20
                            placeholderText: qsTr("your user...")
                            font.pixelSize: 12
                            verticalAlignment: Text.AlignVCenter
                            maximumLength: 40
                            leftPadding: 5
                            font.bold: true
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            Layout.minimumHeight: 40
                            Layout.fillWidth: true

                            background: Rectangle {
                                radius: 10
                                border.color: "#C9C9C9"
                                border.width: 1
                            }
                        }

                        Label {
                            id: passwordLabel
                            text: "Password"
                            color: "#ffffff"
                            font.bold: true
                            font.pointSize: 12
                        }

                        TextField {
                            id: passwordInput
                            width: 80
                            height: 20
                            placeholderText: qsTr("your user...")
                            font.pixelSize: 12
                            verticalAlignment: Text.AlignVCenter
                            maximumLength: 40
                            leftPadding: 5
                            font.bold: true
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            Layout.minimumHeight: 40
                            Layout.fillWidth: true
                            echoMode: TextField.Password

                            background: Rectangle {
                                radius: 10
                                border.color: "#C9C9C9"
                                border.width: 1
                            }
                        }

                        Label {
                            id: passwordLabelAgain
                            text: "Password again"
                            color: "#ffffff"
                            font.bold: true
                            font.pointSize: 12
                        }

                        TextField {
                            id: passwordInputAgain
                            width: 80
                            height: 20
                            placeholderText: qsTr("your user...")
                            font.pixelSize: 12
                            verticalAlignment: Text.AlignVCenter
                            maximumLength: 40
                            leftPadding: 5
                            font.bold: true
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            Layout.minimumHeight: 40
                            Layout.fillWidth: true
                            echoMode: TextField.Password

                            background: Rectangle {
                                radius: 10
                                border.color: "#C9C9C9"
                                border.width: 1
                            }
                        }

                        Button {
                            id: registerbtn
                            text: qsTr("Register")
                            font.pointSize: 12
                            font.bold: true

                            Layout.maximumHeight: 50
                            Layout.minimumHeight: 50
                            Layout.maximumWidth: 300
                            Layout.minimumWidth: 300
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            background: Rectangle {
                                color: registerbtn.hovered ? "#506362" : "#394b4a"
                                border.width: 0
                                border.color: "#22272c"
                                radius: 20
                            }
                            palette.buttonText: "white"
                        }
                    }
                }

                Image {
                    id: image
                    width: 80
                    height: 80
                    sourceSize.width: 100
                    sourceSize.height: 100
                    source: "images/icon.png"
                    Layout.topMargin: -90
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    fillMode: Image.PreserveAspectCrop
                }

                Rectangle {
                    id: serverConfig
                    radius: 3
                    border.width: 5
                    Layout.minimumHeight: 400
                    Layout.minimumWidth: 400
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color: "#087f94"
                    border.color: "#5c5c5c"

                    ColumnLayout {
                        id: userServerConfig
                        anchors.fill: parent
                        anchors.leftMargin: 40
                        anchors.rightMargin: 40
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        Label {
                            id: serverApi
                            color: "#ffffff"
                            text: "Server & Database Registeration"
                            font.bold: true
                            font.pointSize: 15
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        Label {
                            id: keyGenerator
                            text: "Key Generation"
                            color: "#ffffff"
                            font.bold: true
                            font.pointSize: 12
                        }

                        TextField {
                            id: keyGeneratorInput
                            width: 80
                            height: 20
                            placeholderText: qsTr("Key....")
                            font.pixelSize: 12
                            verticalAlignment: Text.AlignVCenter
                            maximumLength: 40
                            leftPadding: 5
                            font.bold: true
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            Layout.minimumHeight: 40
                            Layout.fillWidth: true
                            enabled: false

                            background: Rectangle {
                                radius: 10
                                border.color: "#C9C9C9"
                                border.width: 1
                            }
                        }

                        Button {
                            id: generateKeybtn
                            text: qsTr("Generate key")
                            font.pointSize: 12
                            font.bold: true

                            Layout.maximumHeight: 50
                            Layout.minimumHeight: 50
                            Layout.maximumWidth: 300
                            Layout.minimumWidth: 300
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignLeft
                            background: Rectangle {
                                color: generateKeybtn.hovered ? "#506362" : "#394b4a"
                                border.width: 0
                                border.color: "#22272c"
                                radius: 20
                            }
                            palette.buttonText: "white"
                        }

                        Label {
                            id: dnsip
                            text: "DNS/IP"
                            color: "#ffffff"
                            font.bold: true
                            font.pointSize: 12
                        }

                        TextField {
                            id: dnsipInput
                            width: 80
                            height: 20
                            placeholderText: qsTr("IP: 192.1....")
                            font.pixelSize: 12
                            verticalAlignment: Text.AlignVCenter
                            maximumLength: 40
                            leftPadding: 5
                            font.bold: true
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            Layout.minimumHeight: 40
                            Layout.fillWidth: true

                            background: Rectangle {
                                radius: 10
                                border.color: "#C9C9C9"
                                border.width: 1
                            }
                        }

                        Button {
                            id: synceSave
                            text: qsTr("Sync / Save")
                            font.pointSize: 12
                            font.bold: true

                            Layout.maximumHeight: 50
                            Layout.minimumHeight: 50
                            Layout.maximumWidth: 300
                            Layout.minimumWidth: 300
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignLeft
                            background: Rectangle {
                                color: synceSave.hovered ? "#506362" : "#394b4a"
                                border.width: 0
                                border.color: "#22272c"
                                radius: 20
                            }
                            palette.buttonText: "white"
                        }

                        Label {
                            id: localdtabgasePath
                            text: "Local Database Path"
                            color: "#ffffff"
                            font.bold: true
                            font.pointSize: 12
                        }

                        TextField {
                            id: localDBPath
                            width: 80
                            height: 20
                            placeholderText: qsTr("C:/local...")
                            font.pixelSize: 12
                            verticalAlignment: Text.AlignVCenter
                            maximumLength: 40
                            leftPadding: 5
                            font.bold: true
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            Layout.minimumHeight: 40
                            Layout.fillWidth: true

                            background: Rectangle {
                                radius: 10
                                border.color: "#C9C9C9"
                                border.width: 1
                            }
                        }

                        Button {
                            id: saveDBLocal
                            text: qsTr("Save / Create Local DB")
                            font.pointSize: 12
                            font.bold: true

                            Layout.maximumHeight: 50
                            Layout.minimumHeight: 50
                            Layout.maximumWidth: 300
                            Layout.minimumWidth: 300
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignLeft
                            background: Rectangle {
                                color: saveDBLocal.hovered ? "#506362" : "#394b4a"
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
