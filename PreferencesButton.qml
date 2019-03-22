import QtQuick 2.12

import "programBuilderPageEventHandlers.js" as ProgBuilEvtHdlrs

Item {
    id: _preferencesButton
    width: 26
    height: 26
    Image {
        id: _preferencesButtonImg
        anchors.fill: parent
        source: "qrc:/img/Preferences.png"
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            ProgBuilEvtHdlrs.onPreferencesButtonClicked()
        } // onClicked
    } // MouseArea
} // Item _preferencesButton
