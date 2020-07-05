import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.11

Window {
    visible: true
    width: 500
    height: 300
    title: qsTr("Hello World")

    ColumnLayout
    {
        anchors.fill: parent
        spacing: 0

        // Main menu bar
        Rectangle
        {
            id: mainmenu
            color: 'grey'
            Layout.fillWidth: true
            height: 30

            Text {anchors.centerIn: parent; text: "Menu Area: " + parent.width + 'x' + parent.height}
        }

        // Everything else but main menu
        RowLayout
        {
            spacing: 0

            // Left navigation bar
            Rectangle {
                id: leftbar
                color: "yellow"
                width: 30
                Layout.fillHeight: true

                Text {
                    anchors.centerIn: parent
                    text: "Left Navigation Bar: " + parent.width + 'x' + parent.height
                    rotation: 270
                }
            }

            // Main area + top/bottom ribbons
            ColumnLayout
            {
                spacing: 0

                Rectangle
                {
                    id: upperribbon
                    color: 'lightblue'
                    Layout.fillWidth: true
                    height: 30

                    Text {anchors.centerIn: parent; text: "Upper Ribbon: " + parent.width + 'x' + parent.height}
                }

                Rectangle {
                    color: "plum"
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    Text {anchors.centerIn: parent; text: "Main Area: " + parent.width + 'x' + parent.height}
                }

                Rectangle
                {
                    id: bottomribbon
                    color: 'lightgreen'
                    Layout.fillWidth: true
                    height: 30

                    Text {anchors.centerIn: parent; text: "Bottom Ribbon: " + parent.width + 'x' + parent.height}
                }
            }
        }
    }
}
