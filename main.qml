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

                width: 100

                onClicked:
                {
                    Logic.createTank(battleArea)
                }
            }

            Button
            {
                id: buttonCancel

                text: qsTr("Cancel")

                width: 100
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

            Button
            {
                id: buttonLeft

                width: tileSize * 0.8
                height: tileSize * 0.8

                x: tileSize * 0.1
                y: 500

                text: "L"

                style:  ButtonStyle {
                    background: Rectangle {
                        color: "red"
                        radius: 15
                    }
                }
            }

            Button
            {
                id: buttonRight

                width: tileSize * 0.8
                height: tileSize * 0.8

                x: tileSize * 0.1
                y: 500 + tileSize

                text: "R"

                style:  ButtonStyle {
                    background: Rectangle {
                        color: "red"
                        radius: 15
                    }
                }
            }

            Button
            {
                id: buttonUp

                width: tileSize * 0.8
                height: tileSize * 0.8

                x: tileSize * 14 + tileSize * 0.1
                y: 500

                text: "U"

                style:  ButtonStyle {
                    background: Rectangle {
                        color: "red"
                        radius: 15
                    }
                }

                onClicked:
                {
                    Logic.moveTank()
                }
            }

            Button
            {
                id: buttonDown

                width: tileSize * 0.8
                height: tileSize * 0.8

                x: tileSize * 14 + tileSize * 0.1
                y: 500 + tileSize

                text: "D"

                style:  ButtonStyle {
                    background: Rectangle {
                        color: "red"
                        radius: 15
                    }
                }

                onClicked:
                {

                }
            }
        }
    }
}
