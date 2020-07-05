import QtQuick 2.0

Rectangle
{
    id: bottomribbon
    color: 'lightgreen'
    height: 30

    Text {anchors.centerIn: parent; text: "Bottom Ribbon: " + parent.width + 'x' + parent.height}
}
