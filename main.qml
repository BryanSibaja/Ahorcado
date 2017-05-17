import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    id: ventana
    width: 800
    height: 600
    title: "HangMan"
    visible: true

    Teclado {
        id: teclado1
        x: 134
        y: 514
    }

    AnimatedImage{
        id: globos
        x: 420
        y: 78
        width: 325
        height: 411
        currentFrame: 0
        source: "Globos.gif"
        playing: false

        MouseArea{
            id: areaMouse
            anchors.fill: parent
            onClicked: {
                globos.currentFrame += 1
            }
        }
    }
}

