import QtQuick 2.0

Image{
    id: image
    signal reinicio

    source: "imagenes/zwartevilt.png"


    Image {
        source: "imagenes/paper.png"
        width: parent.width
        anchors.bottom: parent.top
        fillMode: Image.TileHorizontally
    }

    Grid {
        id: flow1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        rows: 3
        spacing: 20

        Letra{ fondo: "#ff5e5e"; letra: "A"}
        Letra{ fondo: "#63ff5e";letra: "B"}
        Letra{ fondo: "#5e63ff";letra: "C"}
        Letra{ fondo: "#ff5ea1";letra: "D"}
        Letra{ fondo: "#63ff5e";letra: "E"}
        Letra{ fondo: "#5ea1ff";letra: "F"}
        Letra{ fondo: "#ff5e5e";letra: "G"}
        Letra{ fondo: "#5e63ff";letra: "H"}
        Letra{ fondo: "#fff716";letra: "I"}
        Letra{ fondo: "#ff5ea1";letra: "J"}
        Letra{ fondo: "#5e63ff";letra: "K"}
        Letra{ fondo: "#38ff16";letra: "L"}
        Letra{ fondo: "#63ff5e";letra: "M"}
        Letra{ fondo: "#5e63ff";letra: "N"}
        Letra{ fondo: "#ff5ea1";letra: "O"}
        Letra{ fondo: "#fff716";letra: "P"}
        Letra{ fondo: "#8216ff";letra: "Q"}
        Letra{ fondo: "#ff5e5e";letra: "R"}
        Letra{ fondo: "#5e63ff";letra: "S"}
        Letra{ fondo: "#38ff16";letra: "T"}
        Letra{ fondo: "#ff5ea1";letra: "U"}
        Letra{ fondo: "#8216ff";letra: "V"}
        Letra{ fondo: "#63ff5e";letra: "W"}
        Letra{ fondo: "#5ea1ff";letra: "X"}
        Letra{ fondo: "#fff716";letra: "Y"}
        Letra{ fondo: "#ff5e5e";letra: "Z"}
    }
}
