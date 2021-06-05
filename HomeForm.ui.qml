import QtQuick 2.4
import QtQuick.Controls 2.5

Page {
    width: Window.width
    height: Window.height
    title: qsTr("Finder - Inside Version")

    Image {
        id: backgroundimage
        source: "background018.jpg"
        mirror: false
        width: Window.width
        height: Window.height
        fillMode: image.PreserveAspectFit
    }
    Label {
        text: qsTr("Debug Version")
        anchors.centerIn: parent
    }

    Button {
        id: button
        x: Window.width * 0.8
        y: Window.height * 0.8
        width: Window.width * 0.15
        height: Window.height * 0.07
        text: qsTr("Start Gaming")
    }

    ComboBox {
        id: comboBox
        x: Window.width * 0.8
        y: Window.height * 0.8 - button.height
        width: button.width
        height: button.height
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}
}
##^##*/

