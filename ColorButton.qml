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
        border.color: "black"
        border.width: 1
        anchors.fill: parent

        Text {anchors.centerIn: parent; text: "Test"}
    }

    MouseArea
    {
        anchors.fill: parent
        onClicked: container.clicked(container.cellColor)
    }
}
