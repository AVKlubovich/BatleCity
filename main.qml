import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

import "logic.js" as Logic


Window
{
    readonly property int tileSize: 52

    visible: true
    width: 15 * tileSize
    height: 16 * tileSize
    maximumWidth: 15 * tileSize
    maximumHeight: 16 * tileSize
    minimumWidth: 15 * tileSize
    minimumHeight: 16 * tileSize
    title: qsTr("Battle City")

    ColumnLayout
    {
        anchors.fill: parent
        spacing: tileSize / 2 + 1

        RowLayout
        {
            Layout.alignment: Qt.AlignHCenter

            Button {
                id: buttonNew

                text: qsTr("New")

                implicitWidth: 100

                onClicked:
                {
                    Logic.createTank(battleArea)
                }
            }

            Button
            {
                id: buttonCancel

                text: qsTr("Cancel")

                implicitWidth: 100
            }
        }

        Rectangle
        {
            id: gameArea
            Layout.alignment: Qt.AlignHCenter

            width: 15 * tileSize
            height: 15 * tileSize
            color: "gray"
            border.color: "black"
            border.width: 3

            Rectangle
            {
                id: battleArea
                anchors.centerIn: parent

                width: 13 * tileSize
                height: 13 * tileSize
                color: "black"
            }
        }
    }
}
