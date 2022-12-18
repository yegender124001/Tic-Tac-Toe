import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 2.14
Window {
    visible: true
    color: "#00000000"
    width:1280
    height: 720
    title: "Tic Tac Toe"
    flags: Qt.FramelessWindowHint
    id:win
    Rectangle{
        anchors.fill:parent
        border.width: 5
        radius:5
        border.color: "#88000000"
        color: "#88000000"
        Rectangle{
            id:titleBar
            Label{
                color:"white"
                text: "Tic Tac Toe"
                y: (parent.height/2) - (height/2)
                anchors.left: parent.left
                font.pixelSize: 17
                anchors.leftMargin: 10
            }
            MouseArea{
                anchors.fill: parent
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
            Rectangle{
                color:"#44ffffff"
                x:parent.width - width
                radius:5
                visible: false
                height: parent.height
                width: parent.height*2 + 5
                RowLayout{
                    anchors.fill: parent
                    spacing: 5
                    Button{
                        background:Rectangle{color:"#00000000"}
                        onClicked: win.showMinimized()
                        implicitHeight:titleBar.height
                        implicitWidth:titleBar.height
                    }
                    Button{
                        onClicked: Qt.exit(0)
                        background:Rectangle{color:"#00000000"}
                        implicitHeight:titleBar.height
                        implicitWidth:titleBar.height
                    }
                }
            }
            color:"#00000000"
            width: parent.width - (parent.border.width*2)
            height:40
            y:parent.border.width
            x:parent.border.width
        }
        Rectangle{
            id: window
            width: parent.width - (parent.border.width*2)
            height:parent.height - (40 + (parent.border.width*3))
            y:40 + parent.border.width*2
            x:parent.border.width
            color:"#00000000"
            Rectangle{
                id: board
                x:y
                y:(parent.height/2) - (height/2)
                width: 640
                height: 640
                color:"#00000000"
                Grid{
                    id:boardGrid
                    columnSpacing: 20
                    columns: 3
                    rowSpacing: 20
                    width:parent.width
                    height:parent.height
                    Repeater{
                        Button{width:200;height:200;background:Rectangle{color:"#00000000"}}
                        model: 9
                    }
                }
                Rectangle{radius:10;color:"white";width:20;height:parent.height;x:200;y:0}
                Rectangle{radius:10;color:"white";width:20;height:parent.height;x:420;y:0}
                Rectangle{radius:10;color:"white";height:20;width:parent.width;x:0;y:200}
                Rectangle{radius:10;color:"white";height:20;width:parent.width;x:0;y:420}
            }
            Rectangle{
                width: 400
                color:"#00000000"
                radius:15
                border.color: "white"
                border.width: 2
                height: 200
                y: board.y
                x: parent.width - width - y
                Item{
                    width: childrenRect.width
                    height: childrenRect.height
                    x:40
                    y:(parent.height/2) - (height/2)
                    Label{
                        id:xLabel
                        text:"X - %user%"
                        font.pixelSize: 24
                    }
                    Label{
                        font.pixelSize: 24
                        anchors.top: xLabel.bottom
                        anchors.topMargin: 40
                        id:yLabel
                        text:"O - %user%"
                    }
                }
            }
        }
    }
}
