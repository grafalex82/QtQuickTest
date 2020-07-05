import QtQuick 2.0

Item
{
    id: container

    property alias cellColor: rectangle.color
    signal clicked(color cellColor)

    width: 40
    height: 20

    Rectangle
    {
        id: rectangle
        border.color: mousearea.containsMouse ? "white" : "black"
        border.width: 1
        anchors.fill: parent

        Text {anchors.centerIn: parent; text: "Test"}
    }

    MouseArea
    {
        id: mousearea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: container.clicked(container.cellColor)
    }
}
