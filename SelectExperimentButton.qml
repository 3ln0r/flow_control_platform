import QtQuick 2.12
import QtGraphicalEffects 1.12

import "programBuilderPageEventHandlers.js" as ProgBuilEvtHdlrs

Rectangle {
    id: _selectExperimentButton
    width: 160 + 9
    height: 24
    color: "#F28B00"
    layer.enabled: true
    layer.effect: DropShadow {
        radius: 5
        samples: 11
        cached: true
        color: "#33000000"
    } // layer.effect: DropShadow
    Text {
        id: _selectExperimentButtonText
        anchors.centerIn: parent
        color: "#FFFFFF"
        text: qsTr("Select experiment")
        font.family: robotoRegularFont.name
        font.letterSpacing: 0.5
        font.pixelSize: 15
        style: Text.Outline
        styleColor: "transparent"
    } // Text _selectExperimentButtonText
    MouseArea {
        anchors.fill: parent
        onClicked: {
            ProgBuilEvtHdlrs.onSelectExperimentButtonClicked()
        } // onClicked
    } // MouseArea
} // Rectangle _selectExperimentButton
