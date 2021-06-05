import QtQuick 2.4
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    width: 1300
    height: 751
    visible: true
    title: qsTr("Finder")

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
    }

    Drawer {
        id: drawer
        width: window.width * 0.3
        height: window.height

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("ACCOUNT")
                width: parent.width
                onClicked: {
                    stackView.push("qrc:/qml/Account.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("GAME")
                width: parent.width
                onClicked: {
                    stackView.push("qrc:/qml/GameManagementForm.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate{
                text:qsTr("SETTINGS")
                width: parent.width
                onClicked: {
                    stackView.push("qrc:/qml/SettingsForm.ui.qml")
                    drawer.close()
                }
            }
        }
    }

    StackView {
        id: stackView
        initialItem: "qrc:/qml/HomeForm.ui.qml"
        anchors.fill: parent
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}
}
##^##*/
