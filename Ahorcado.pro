TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES += \
    logica.js \
    datos.js \
    Pantalla.qml \
    Letra.qml \
    Teclado.qml \
    Globos.qml \
    DK Cool Crayon.ttf \
    vintage-leaves.png \
    imagenes/globos1.svg \
    pop_drip.wav \
    imagenes/paper.png \
    imagenes/vintage-leaves.png \
    imagenes/zwartevilt.png \
    Mensaje.qml \
    imagenes/lose.svg \
    imagenes/win.svg

