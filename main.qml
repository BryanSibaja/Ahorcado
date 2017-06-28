import QtQuick 2.3
import QtQuick.Controls 2.1
import QtQuick.Window 2.2

import "logica.js" as Experto
import "datos.js" as Datos

Window {
    id: ventana
    width: 600
    height: 600
    minimumHeight: 500
    minimumWidth: 520
    title: "HangMan"
    visible: true

    Image {
        id: fondo
        fillMode: Image.Tile
        anchors.fill: parent
        source: "imagenes/vintage-leaves.png"
    }

    Globos{
        id: globo
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
    }

    function presionado(a){
        Experto.letra(a)
    }

    function iniciar(){
        Experto.iniciar()
    }

    Component.onCompleted: {
        Experto.vocabulario = Datos.vocabulario
        iniciar()
        info.open()
    }

    Pantalla {
        id: pantalla
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height * 0.3
    }

    Teclado {
        id: teclado1
        width: 586
        height: parent.height * 0.4
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        visible: !mensaje.visible
    }

    Button {
        id: boton
        text: "Ayuda 🛈"
        contentItem: Text {
            text: boton.text
            font: boton.font
            color: "#ffffff"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }
        anchors.top: parent.top
        anchors.right: parent.right
        background: Rectangle {
            implicitWidth: 60
            implicitHeight: 35
            color: boton.down ? "#194060" : "#28679b"
            radius: 4
        }
        onClicked: {
            info.open()
        }
    }

    Dialog {
        id: info
        modal: true
        focus: true
        title: "Instrucciones"
        x: (ventana.width - width) / 2
        y: ventana.height / 4
        width: Math.min(ventana.width, ventana.height) / 3 * 2
        contentHeight: aboutColumn.height

        Column {
            id: aboutColumn
            spacing: 20

            Label {
                width: info.availableWidth
                text: "Aprende el vocabulario de los desastres naturales"
                wrapMode: Label.Wrap
                font.pixelSize: 12
            }

            Label {
                width: info.availableWidth
                text: "Para jugar presiona sobre las letras en pantalla. El objetivo "+
                      "es adivinar la palabra, pero cuidado si fallas 5 veces perderás"+
                      " ¡Adelante diviértete!"
                wrapMode: Label.Wrap
                font.pixelSize: 12
            }
        }
    }

    Mensaje{
        id: mensaje
        anchors.fill: parent
    }
}
