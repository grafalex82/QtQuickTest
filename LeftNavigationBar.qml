import QtQuick 2.0

// Left navigation bar
Rectangle {
    id: leftbar
    color: "yellow"
    width: 30

    Text {
        anchors.centerIn: parent
        text: "Left Navigation Bar: " + parent.width + 'x' + parent.height
        rotation: 270
    }
}
