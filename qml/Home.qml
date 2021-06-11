import QtQuick 2.0
import QtQuick.Controls 2.0

Page {
    width: Window.width
    height: Window.height
    title: qsTr("Finder - Inside Version")

    Image {
        id: backgroundimage
        source: "qrc:/images/background018.jpg"
        mirror: false
        width: Window.width
        height: Window.height
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
        onClicked: comboBox
    }

    ComboBox {
        id: comboBox
        x: Window.width * 0.8
        y: Window.height * 0.8 - button.height
        width: button.width
        height: button.height
        model: ["First", "Second", "Third"]
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}
}
##^##*/

