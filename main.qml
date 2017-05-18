import QtQuick 2.3
import QtQuick.Window 2.2
import "logica.js" as Experto

Window {
    id: ventana
    width: 800
    height: 600
    title: "HangMan"
    visible: true

    MouseArea {
        anchors.fill: parent
        onClicked: {
            pantalla.text = Experto.obtenerPalabra()
        }
    }

    Teclado {
        id: teclado1
        x: 134
        y: 514
    }

    Globos{
        x: 483
        y: 87
    }

    Pantalla {
        id: pantalla
        x: 173
        y: 277
    }
}

