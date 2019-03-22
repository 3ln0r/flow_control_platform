import QtQuick 2.12
import QtGraphicalEffects 1.12

import "programBuilderPageEventHandlers.js" as ProgBuilEvtHdlrs

Item {
    id: _startButton
    width: 72 + 2.5
    height: 23
    Rectangle {
        id: _startButtonShadow
        anchors.fill: parent
        color: "transparent"
        border.color: "#FFA934"
        border.width: 1.5
        layer.enabled: true
        layer.effect: DropShadow {
            verticalOffset: 3
            radius: 6
            samples: 13
            cached: true
            color: "#26000000"
        } // layer.effect: DropShadow
    } // Rectangle _startButtonShadow
    Text {
        id: _startButtonText
        anchors.centerIn: parent
        color: "#3B3A38"
        text: qsTr("Start")
        font.family: robotoRegularFont.name
        font.letterSpacing: 0.5
        font.pixelSize: 15
        style: Text.Outline
        styleColor: "transparent"
    } // Text _startButtonText
    MouseArea {
        anchors.fill: parent
        onClicked: {
            ProgBuilEvtHdlrs.onStartButtonClicked()
        } // onClicked
    } // MouseArea
} // Item _startButton
