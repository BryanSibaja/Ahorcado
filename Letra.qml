import QtQuick 2.0
import QtMultimedia 5.8

Item {
    id: letra
    property alias letra: texto.text
    property alias color: texto.color
    x: 0
    y: 0
    width: 30
    height: 50

    FontLoader { id: crayon; source: "qrc:/DK\ Cool\ Crayon.ttf" }

    Text {
        id: texto
        wrapMode: Text.WordWrap
        text: letra
        font.family: crayon.name
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

    NumberAnimation {
        id: mostrar
        targets: letra
        properties: "opacity"
        from: 0; to: 1
        duration: 200
    }

    SoundEffect {
        id: pop
        source: "pop_drip.wav"
    }

    MouseArea {
        id: areaMouse
        anchors.fill: parent
        onClicked: {
            enabled = false
            ocultar.start()
            pop.play()
            ventana.presionado(texto.text)
        }
    }

    function habilitar(){
        mostrar.start()
        areaMouse.enabled = true
    }

    Component.onCompleted: {
        teclado1.reinicio.connect(habilitar)
    }
}
