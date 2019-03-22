import QtQuick 2.0
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.12
import QtQuick.Dialogs 1.3



Item {
    id: exprectangle
    Rectangle{
        width: 376
        height: 472.14
        y: 216.53

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#EFF1F3" }
            GradientStop { position: 1.0; color: "#E9EAEA" }
        }


        Image {
            id: circle
            source: "/img/circle1.png"
            x: 142.84
            y: 29.97

        }

        Label{
            id: expName
            text: "Experiment 1"
            font.family: robotoRegularFont.name
            font.pixelSize: 24
            width: 138
            height: 29
            x: 119
            y: 85
            color: '#3B3A38'

        }


        Label{
            id: expText
            text: "Experiment to test basic reverse osmosis.
 - Default pressure is 10 bar.
 - Default duration is 50 seconds."
            font.family: robotoLightFont.name
            font.pixelSize: 14
            x: 48
            y: 143.47
            color: '#3B3A38'

        }

        Label{
            id: pressureBar
            text: "Pressure (bar)"
            font.family: robotoLightFont.name
            font.pixelSize: 16
            x: 57
            y: 261.47
            color: '#4DB9C2'

        }

        CustomSpinBox{
            id: pressureSpin
            x: 58
            y: 297.47
            value: 69
        }

        Label{
            id: duration
            text: "Duration (Seconds)"
            font.family: robotoRegularFont.name
            font.pixelSize: 16
            x: 182
            y: 261.47
            color: '#4DB9C2'

        }

        CustomSpinBox{
            id: durationSpin
            x: 182
            y: 297.47
            value: 300
        }

        Label{
            id: logFile
            text: "Log file location"
            font.family: robotoRegularFont.name
            font.pixelSize: 16
            x: 132
            y: 361.47
            color: '#4DB9C2'

        }

        ExperimentLogFile{
            x: 20
            y: 400
            width: 261.5
        }

        MouseArea {
            anchors.fill: circle
            onClicked: {
                circle.source = '/img/circle2.png'
            }
        }

    }


}
