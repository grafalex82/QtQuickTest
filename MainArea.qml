import QtQuick 2.0

Rectangle {
    color: "plum"

    Grid {
        columns: 3
        spacing: 2

        ColorButton { cellColor: "red"; onClicked: helloText.color = cellColor }
        ColorButton { cellColor: "orange"; onClicked: helloText.color = cellColor }
        ColorButton { cellColor: "green"; onClicked: helloText.color = cellColor }
        ColorButton { cellColor: "blue"; onClicked: helloText.color = cellColor }
        ColorButton { cellColor: "cyan"; onClicked: helloText.color = cellColor }
        ColorButton { cellColor: "teal"; onClicked: helloText.color = cellColor }
    }

    Text {id: helloText; anchors.centerIn: parent; text: "Main Area: " + parent.width + 'x' + parent.height}
}
