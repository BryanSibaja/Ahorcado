import QtQuick 2.0

Text{
    id: palabra
    color: "#211860"
    font.family: crayon.name
    font.bold: true
    font.pointSize: 50

    FontLoader { id: crayon; source: "qrc:/DK\ Cool\ Crayon.ttf" }
}
