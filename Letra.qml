import QtQuick 2.0
Rectangle {
    id: rectangulo
    property alias letra: texto.text
    x: 0
    y: 0
    width: 40
    height: 40
    radius: 8
    gradient: Gradient {
        GradientStop {
            position: 0
            color: "#44a2ff"
        }

        GradientStop {
            position: 1
            color: "#10304f"
        }
    }

    Text {
        id: texto
        color: "#ffffff"
        anchors.fill: parent
        text: letra
        font.pointSize: 16
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }


    NumberAnimation {
        id: ocultar
        targets: [texto, rectangulo]
        properties: "opacity"
        from: 1; to: 0
        duration: 200
    }

    MouseArea {
        id: areaMouse
        anchors.fill: parent
        onClicked: {
            ocultar.start();
            ventana.presionado(texto.text)
            enabled = false;
        }
    }

    function habilitar(){
        opacity = 1;
        texto.opacity = 1;
        areaMouse.enabled = true;
    }

    Component.onCompleted: {
        teclado1.reinicio.connect(habilitar);
    }
}
