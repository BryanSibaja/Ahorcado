import QtQuick 2.0

Text{
    id: palabra
    color: "#e60f5e"
    font.family: crayon.name
    font.bold: true
    font.pointSize: 50

    FontLoader { id: crayon; source: "qrc:/DK\ Cool\ Crayon.ttf" }
}
