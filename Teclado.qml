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

        Letra{ color: "#ff5e5e"; letra: "A"}
        Letra{ color: "#63ff5e";letra: "B"}
        Letra{ color: "#5e63ff";letra: "C"}
        Letra{ color: "#ff5ea1";letra: "D"}
        Letra{ color: "#63ff5e";letra: "E"}
        Letra{ color: "#5ea1ff";letra: "F"}
        Letra{ color: "#ff5e5e";letra: "G"}
        Letra{ color: "#5e63ff";letra: "H"}
        Letra{ color: "#fff716";letra: "I"}
        Letra{ color: "#ff5ea1";letra: "J"}
        Letra{ color: "#5e63ff";letra: "K"}
        Letra{ color: "#38ff16";letra: "L"}
        Letra{ color: "#63ff5e";letra: "M"}
        Letra{ color: "#5e63ff";letra: "N"}
        Letra{ color: "#ff5ea1";letra: "O"}
        Letra{ color: "#fff716";letra: "P"}
        Letra{ color: "#8216ff";letra: "Q"}
        Letra{ color: "#ff5e5e";letra: "R"}
        Letra{ color: "#5e63ff";letra: "S"}
        Letra{ color: "#38ff16";letra: "T"}
        Letra{ color: "#ff5ea1";letra: "U"}
        Letra{ color: "#8216ff";letra: "V"}
        Letra{ color: "#63ff5e";letra: "W"}
        Letra{ color: "#5ea1ff";letra: "X"}
        Letra{ color: "#fff716";letra: "Y"}
        Letra{ color: "#ff5e5e";letra: "Z"}
    }
}
