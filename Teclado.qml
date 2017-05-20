import QtQuick 2.0

Rectangle {
    color: "#272822"
    signal reinicio
    width: 800
    height: 150

    Grid {
        id: regilla
        columns: 13
        columnSpacing: 32
        rowSpacing: 16
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Letra{letra: "A"}
        Letra{letra: "B"}
        Letra{letra: "C"}
        Letra{letra: "D"}
        Letra{letra: "E"}
        Letra{letra: "F"}
        Letra{letra: "G"}
        Letra{letra: "H"}
        Letra{letra: "I"}
        Letra{letra: "J"}
        Letra{letra: "K"}
        Letra{letra: "L"}
        Letra{letra: "M"}
        Letra{letra: "N"}
        Letra{letra: "O"}
        Letra{letra: "P"}
        Letra{letra: "Q"}
        Letra{letra: "R"}
        Letra{letra: "S"}
        Letra{letra: "T"}
        Letra{letra: "U"}
        Letra{letra: "V"}
        Letra{letra: "W"}
        Letra{letra: "X"}
        Letra{letra: "Y"}
        Letra{letra: "Z"}
    }
}
