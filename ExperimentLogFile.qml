import QtQuick 2.11
import QtGraphicalEffects 1.12
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.3

Item {
    Row {
        width: parent.width;
        Item {
            width: 14;
            height: 1;
        }

        Rectangle {
            implicitWidth: 292;
            implicitHeight: 28;
            border.color: "#9fa4a7";
            border.width: 2;
            Image {
                id: drop_down_sing_img;
                width: 12;
                height: 8;
                source: "qrc:/img/img/drop_down_sing_img.jpg";
                x: parent.width - 26;
                y: 10;
                MouseArea {
                    anchors.fill: parent;
                    onClicked: {
                        (function(){
                            // TODO: handle signal OnShowPreviousTypingInTextField
                            console.log("drop_down_sing_img onClicked| sig OnShowPreviousTypingInTextField");
                        }());
                    }
                }
            }
            TextField {
                id: database_log_file_TextField;
                x: 2;
                y: 2;
                implicitWidth: 292 - 26 - 12;
                implicitHeight: 24;
                font.family: fonts.name;
                font.pointSize: 10;
                text: qsTr("C:\\Users\\Pepijn\\Documents\\MyLog.csv");
                style: TextFieldStyle {
                    textColor: "black";
                    background: Rectangle {
                        CustomBorder {
                            commonBorder: false;
                            lBorderwidth: 2;
                            rBorderwidth: 0;
                            tBorderwidth: 2;
                            bBorderwidth: 2;
                            borderColor: "#9fa4a7";
                        }
                    }
                }
            }
        }
        Item {
            width: 9;
            height: 1;
        }
        Rectangle {
            radius: 25
            width: 32;
            height: 29;
            color: "transparent";
            border.color: "grey"
            Text {
                anchors.horizontalCenter: parent.horizontalCenter;
                anchors.verticalCenter: parent.verticalCenter;
                text: "...";
                font.pointSize: 12;
                font.family: fonts.name;
                color: "#4DB9C2"
            }
            MouseArea {
                anchors.fill: parent;
                onClicked: {
                    (function(){

                        file_dialog.open();
                    }());
                }
            }
        }

        FileDialog {
            id: file_dialog
            title: "Please choose a file"
            folder: shortcuts.home;
            //nameFilters: ["Text files (*.txt)", "HTML files (*.html *.htm)"]
            onAccepted: {
                (function(){
                    var firstFileUrl = file_dialog.fileUrls[0];
                    //console.log(firstFileUrl.slice(firstFileUrl.length - 4));
                    //if (firstFileUrl.slice(firstFileUrl.length - 4) === ".csv")
                        database_log_file_TextField.text = file_dialog.fileUrls[0];
                }());
            }
            onRejected: {
            }
        }



    } // Row
}
