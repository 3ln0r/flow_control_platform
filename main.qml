import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.12
import QtQuick.Dialogs 1.3


Window {
    id: window
    visible: true
    width: 1280
    height: 768

    LinearGradient {
        id: mainBackground
        anchors.fill: parent
        start: Qt.point(0, height / 2)
        end: Qt.point(width, height / 2)
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#EFF1F3" }
            GradientStop { position: 1.0; color: "#E9EAEA" }
        } // gradient: Gradient
        } // LinearGradient mainViewBackground

    readonly property bool inPortrait: window.width < window.height;

    minimumWidth: 1000
    minimumHeight: 650

    FontLoader { id: robotoRegularFont; source: "qrc:/fonts/roboto_regular.ttf" }
    FontLoader { id: robotoLightFont; source: "qrc:/fonts/roboto_light.ttf" }
    FontLoader { id: robotoThinItalic; source: "qrc:/fonts/roboto_thin_italic.ttf" }


    ColumnLayout {
        id: mainView
        //anchors.fill: parent
        width: parent.width
        height: 76
        spacing: 0
        Item {
            id: mainViewBackgroundAndContent
            Layout.fillWidth: true
            Layout.fillHeight: true
            LinearGradient {
                id: mainViewBackground
                anchors.fill: parent
                start: Qt.point(0, height / 2)
                end: Qt.point(width, height / 2)
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#CCEFF1F3" }
                    GradientStop { position: 1.0; color: "#FFE9EAEA" }
                } // gradient: Gradient
            } // LinearGradient mainViewBackground
            RowLayout {
                id: pagesNavigationHeader
                spacing: 0
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 60
                anchors.rightMargin: 60
                height: 75
                RowLayout {
                    id: systemStatusAndExperimentStatusHolder
                    spacing: 8
                    width: 210
                    height: 31
                    ColumnLayout {
                        id: systemStatusAndExperimentStatusLabelsHolder
                        width: 99 + 7 + 9
                        height: 29
                        spacing: 5
                        Item {
                            id: systemStatusLabelTextHolder
                            width: 79 + 7
                            height: 14
                            Text {
                                id: systemStatusLabelText
                                anchors.centerIn: parent
                                text: qsTr("System status:")
                                font.family: robotoRegularFont.name
                                font.letterSpacing: 0.5
                                font.pixelSize: 12
                                color: "#3B3A38"
                                style: Text.Outline
                                styleColor: "transparent"
                            } // Text systemStatusLabelText
                        } // Item systemStatusLabelTextHolder
                        Item {
                            id: experimentStatusLabelTextHolder
                            width: 99 + 9
                            height: 14
                            Text {
                                id: experimentStatusLabelText
                                anchors.centerIn: parent
                                text: qsTr("Experiment status:")
                                font.family: robotoRegularFont.name
                                font.letterSpacing: 0.5
                                font.pixelSize: 12
                                color: "#3B3A38"
                                style: Text.Outline
                                styleColor: "transparent"
                            } // Text experimentStatusLabelText
                        } // Item experimentStatusLabelTextHolder
                    } // ColumnLayout systemStatusAndExperimentStatusLabelsHolder
                    ColumnLayout {
                        id: systemStatusAndExperimentStatusTextsHolder
                        width: 103 + 1 + 9
                        height: 29
                        spacing: 5
                        Item {
                            id: systemStatusTextHolder
                            width: 16 + 1
                            height: 14
                            Text {
                                id: systemStatusText
                                anchors.centerIn: parent
                                text: qsTr("OK")
                                font.family: robotoRegularFont.name
                                font.letterSpacing: 0.5
                                font.pixelSize: 12
                                color: "#4DB9C2"
                                style: Text.Outline
                                styleColor: "transparent"
                            } // Text systemStatusText
                        } // Item systemStatusTextHolder
                        Item {
                            id: experimentStatusTextHolder
                            width: 103 + 9
                            height: 14
                            Text {
                                id: experimentStatusText
                                anchors.centerIn: parent
                                text: qsTr("Choose experiment")
                                font.family: robotoRegularFont.name
                                font.letterSpacing: 0.5
                                font.pixelSize: 12
                                color: "#989898"
                                style: Text.Outline
                                styleColor: "transparent"
                            } // Text experimentStatusText
                        } // Item experimentStatusTextHolder
                    } // ColumnLayout systemStatusAndExperimentStatusTextsHolder
                } // RowLayout systemStatusAndExperimentStatusHolder
                StartButton {
                    id: startButton
                } // StartButton startButton
                SelectExperimentButton {
                    id: selectExperimentButton
                }
                ExperimentAndGraphButton {
                    id: experimentAndGraphButton
                }
                FinalButton {
                    id: finalButton
                }
                HelpButton {
                    id: helpButton
                }
                PreferencesButton {
                    id: preferencesButton
                }
            } // RowLayout pagesNavigationHeader
            Rectangle {
                id: pagesNavigationHeaderBottomBorder
                width: parent.width
                anchors.top: pagesNavigationHeader.bottom
                height: 1
                color: "#cccccc"
            } // Rectangle pagesNavigationHeaderBottomBorder

            RowLayout {
                id: menuAndBuilderAndCommentsScreensHolder
                anchors.top: pagesNavigationHeaderBottomBorder.bottom
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                spacing: 0
                Item {
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    id: pageContent
                    Rectangle {
                        anchors.fill: parent
                        color: "red"
                    }
                }
            }
            /*
            Item {
                Layout.fillWidth: true
                Layout.fillHeight: true

                id: pageContent
                Rectangle {
                    anchors.fill: parent
                    color: "red"
                }
            }
            */
            // TODO...
        }

    } // ColumnLayout mainView

    Label{
        id: chapter
        text: "Select your experiment"
        font.family: robotoLightFont.name
        font.pixelSize: 32
        color: "#3B3A38"
        width: 320
        height: 38
        x: 480
        y:137

    }

    Experiments{
        id: leftExp
        x: 60

    }
    Experiments{
        id: centerExp
        x: 452
    }
    Experiments{
        id: rightExp
        x: 844
    }


}
