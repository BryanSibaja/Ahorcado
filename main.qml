import QtQuick 2.3
import QtQuick.Window 2.2

import "logica.js" as Experto

Window {
    id: ventana
    width: 600
    height: 600
    minimumHeight: 500
    minimumWidth: 450
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
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
    }

    function presionado(a){
        Experto.letra(a)
    }

    function iniciar(){
        Experto.iniciar()
    }

    Component.onCompleted: {
        iniciar()
    }

    Pantalla {
        id: pantalla
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height/4
    }

    Teclado {
        id: teclado1
        width: 586
        height: parent.height * 0.4
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
    }

    Mensaje{
        id: mensaje
        anchors.fill: parent
    }
}
