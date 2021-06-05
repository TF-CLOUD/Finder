import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    id: page
    width: Window.width
    height: Window.height

    title: qsTr("Account")

    Button {
        id: button
        text: qsTr("Login with Microsoft")
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/

