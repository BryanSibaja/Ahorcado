import QtQuick 2.0

AnimatedImage{
    id: globos
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
