import QtQuick 2.12

import "programBuilderPageEventHandlers.js" as ProgBuilEvtHdlrs

Item {
    id: _helpButton
    width: 22
    height: 22
    Canvas {
        id: circle
        anchors.fill: parent
        onPaint: {
            var ctx = getContext("2d")
            ctx.reset()

            var centreX = width / 2
            var centreY = height / 2

            ctx.beginPath()
            ctx.strokeStyle = "#707070"
            ctx.lineWidth = 1.5;

            ctx.arc(centreX, centreY, centreX - 1, 0, 2 * Math.PI)
            ctx.stroke();
        } // onPaint
    } // Canvas circle
    Text {
        id: _helpButtonText
        anchors.centerIn: parent
        color: "#787878"
        text: qsTr("?")
        font.family: robotoRegularFont.name
        font.letterSpacing: 0.5
        font.pixelSize: 13
        style: Text.Outline
        styleColor: "transparent"
    } // Text _helpButtonText
    MouseArea {
        anchors.fill: parent
        onClicked: {
            ProgBuilEvtHdlrs.onHelpButtonClicked()
        }
    }
} // Item _helpButton
