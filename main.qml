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
        MainMenuBar
        {
            Layout.fillWidth: true
        }

        // Everything else but main menu
        RowLayout
        {
            spacing: 0

            // Left navigation bar
            LeftNavigationBar
            {
                Layout.fillHeight: true
            }

            // Main area + top/bottom ribbons
            ColumnLayout
            {
                spacing: 0

                UpperRibbon
                {
                    Layout.fillWidth: true
                }

                MainArea {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }

                BottomRibbon
                {
                    Layout.fillWidth: true
                }
            }
        }
    }
}
