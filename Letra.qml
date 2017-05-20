import QtQuick 2.0
Item {
    id: letra
    property alias letra: texto.text
    x: 0
    y: 0
    width: 30
    height: 50

    Text {
        id: texto
        color: "#489c21"
        wrapMode: Text.WordWrap
        text: letra
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 48
        lineHeight: 0.75
        opacity: parent.opacity
        font.bold: true

    }

    NumberAnimation {
        id: ocultar
        targets: letra
        properties: "opacity"
        from: 1; to: 0
        duration: 200
    }

    MouseArea {
        id: areaMouse
        anchors.fill: parent
        onClicked: {
            enabled = false;
            letra.opacity = 0;
            ventana.presionado(texto.text)
        }
    }

    function habilitar(){
        letra.opacity = 1
        areaMouse.enabled = true;
    }

    Component.onCompleted: {
        teclado1.reinicio.connect(habilitar);
    }
}
