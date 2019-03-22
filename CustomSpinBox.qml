import QtQuick 2.0
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12


    SpinBox {
        id: control
        editable: true
        width: 101

        contentItem: TextInput {
            z: 2
            text: control.textFromValue(control.value, control.locale)

            font: control.font
            color: "black"
            selectionColor: "white"
            selectedTextColor: "white"
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter

            readOnly: !control.editable
            validator: control.validator
            inputMethodHints: Qt.ImhFormattedNumbersOnly
        }

        up.indicator: Rectangle {
            x: control.mirrored ? 0 : parent.width - width
            height: parent.height
            implicitWidth: 40
            implicitHeight: 40
            color: "transparent"


            Image {
                id: nameu
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                source: "/img/up.png"
                anchors.fill: parent
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter
            }
        }

        down.indicator: Rectangle {
            x: control.mirrored ? parent.width - width : 0
            height: parent.height
            implicitWidth: 40
            implicitHeight: 40
            color: "transparent"


            Image {
                id: named
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                source: "/img/down.png"
                anchors.fill: parent
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter

            }
        }

        background: Rectangle {
            color: "transparent"
            implicitWidth: 140
            border.color: "transparent"
        }
    }

