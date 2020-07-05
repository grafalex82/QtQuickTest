import QtQuick 2.0

Rectangle
{
    id: upperribbon
    color: 'lightblue'
    height: 30

    Text {anchors.centerIn: parent; text: "Upper Ribbon: " + parent.width + 'x' + parent.height}
}
