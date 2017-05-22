import QtQuick 2.0
Row{
    property alias cantidad: repetidor.model

    Repeater{
        id: repetidor
        delegate: Image {
            id: g1
            source: "imagenes/globos1.svg"
        }
    }
}
