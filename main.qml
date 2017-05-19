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
    }

    Button {
        x: 690
        y: 555
        text: "Iniciar"
        onClicked: {
            Experto.iniciar();
            teclado1.reinicio();
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

