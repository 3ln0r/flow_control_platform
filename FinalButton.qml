import QtQuick 2.12
import QtGraphicalEffects 1.12

import "programBuilderPageEventHandlers.js" as ProgBuilEvtHdlrs

Item {
    id: _finalButton
    width: 132 + 2.5
    height: 18
    Text {
        id: _finalButtonText
        anchors.centerIn: parent
        color: "#787878"
        text: qsTr("Final")
        font.family: robotoRegularFont.name
        font.letterSpacing: 0.5
        font.pixelSize: 15
        style: Text.Outline
        styleColor: "transparent"
        layer.enabled: true
        layer.effect: DropShadow {
            radius: 6
            samples: 13
            cached: true
            color: "#29000000"
        } // layer.effect: DropShadow
    } // Text _finalButtonText
    MouseArea {
        anchors.fill: parent
        onClicked: {
            ProgBuilEvtHdlrs.onFinalButtonClicked()
        } // onClicked
    } // MouseArea
} // Item _finalButton
