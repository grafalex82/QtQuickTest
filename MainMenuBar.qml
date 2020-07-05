import QtQuick 2.0

Rectangle
{
    id: mainmenu
    color: 'grey'
    height: 30

    Text {anchors.centerIn: parent; text: "Menu Area: " + parent.width + 'x' + parent.height}
}
