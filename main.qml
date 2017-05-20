import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 2.1

import "logica.js" as Experto

Window {
    id: ventana
    width: 800
    height: 600
    title: "HangMan"
    visible: true

    function presionado(a){
        Experto.letra(a);
        globo.currentFrame = 10 - Experto.vidas;
    }

    Component.onCompleted: {
        Experto.iniciar()
    }

    Button {
        x: 25
        y: 325
        text: "Iniciar"
        onClicked: {
            Experto.iniciar();
        }
    }

    Teclado {
        id: teclado1
        width: parent.width
        anchors.bottom: parent.bottom
    }

    Globos{
        id: globo
        anchors.top: parent.top
        anchors.right: parent.right
    }

    Pantalla {
        id: pantalla
        x: 173
        y: 277
    }
}

