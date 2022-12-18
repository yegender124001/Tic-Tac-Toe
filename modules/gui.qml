import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    color: "#000000"
    width:1024
    height: 768
    title: "Tic Tac Toe"
    flags: Qt.FramelessWindowHint
    id:win
    Rectangle{
        anchors.fill:parent
        border.width: 1
        border.color: "red"
        color:"#000"
        Rectangle{
            id:titleBar
            Label{
                color:"black"
                font.family : "Hack"
                text: "Tic Tac Toe"
                y: (parent.height/2) - (height/2)
                anchors.left: parent.left
                font.pixelSize: 17
                anchors.leftMargin: 10
            }
            MouseArea{
                anchors.fill: parent
                //drag.target: Item{}
            property variant clickPos: "1,1"

            onPressed: {
                clickPos  = Qt.point(mouseX,mouseY)
            }

            onPositionChanged: {
                var delta = Qt.point(mouseX-clickPos.x, mouseY-clickPos.y)
                win.x += delta.x;
                win.y += delta.y;
            }
            }
            Button{
                height: parent.height
                width: parent.height
                x:parent.width - width
                onClicked: Qt.exit(0)
            }
            Button{
                height: parent.height
                width: parent.height
                x:parent.width - width*2
                onClicked: win.showMinimized()
            }
            color: "red"
            x:0
            y:0
            height: 40
            width: parent.width
        }
    }
}