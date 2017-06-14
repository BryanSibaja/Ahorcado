import QtQuick 2.3
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

    Mensaje{
        id: mensaje
        anchors.fill: parent
    }
}
