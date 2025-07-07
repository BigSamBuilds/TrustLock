import QtQuick
import QtQuick.Controls

Rectangle {
    id: root
    color: "#000"
    implicitHeight: 50
    implicitWidth: 200

    property string textHiglightColor: "#fff"
    property string textColor: "#eee"
    property string highligtColor: "#444"
    ListView{
        id: listView
        anchors.fill: parent

        spacing: 1

        anchors.margins: 1
        model: 5
        currentIndex: 0
        orientation: Qt.Horizontal
        delegate: Item{
            id: listDelegate
            width: listView.width/5
            height: listView.height

            Text {
                text: (index+1).toString()
                anchors.centerIn: parent
                color: listView.currentIndex===index ? textHiglightColor : textColor
                font.pixelSize: 14
                font.bold: index === listView.currentIndex
            }

            MouseArea{
                anchors.fill: parent
                onClicked: listView.currentIndex=index
            }
        }

        highlight: Item{
            width: listView.currentItem.width
            height: listView.currentItem.height

            Rectangle{
                anchors.fill: parent
                anchors.margins: 2
                color: "#444"
            }
        }
    }
}
