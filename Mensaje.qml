import QtQuick 2.0
import QtQuick.Controls 2.1

Rectangle{
    property alias texto: respuesta.text
    visible: false
    opacity: 0.85

    Pantalla {
        id: respuesta
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        y: 10
    }

    Button {
        id: boton
        text: "Start"
        anchors.top: respuesta.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: {
            ventana.iniciar()
        }
    }
}
