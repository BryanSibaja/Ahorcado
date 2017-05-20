var vocabulario = [
            "TORNADO","EARTHQUAKE","BLIZZARD","TSUNAMI","HURRIACANE",
            "FLOD","ERUPTION","AVALANCHE","LANDSLIDE","DROUGHT","WILDFIRE",
            "THUNDERSTORM","CICLON"]
;
var vidas = 10;
var palabra = '';
var oculta = '';

function letra(a){
    if(palabra.includes(a)){
        for (var i = 0; i < palabra.length; i++){
            if (palabra.charAt(i) === a){
                oculta = oculta.substr(0, i) + a + oculta.substr(i + 1);
            }
        }
        pantalla.cambiar(oculta);
    }else{
        vidas--;
        if(vidas == 0){
            iniciar();
        }
    }
}

function iniciar() {
    oculta = '';
    vidas = 10;
    palabra = vocabulario[Math.floor(vocabulario.length * Math.random())]
    for (var i = 0; i < palabra.length; i++){
        oculta += '_';
    }
    pantalla.cambiar(oculta);
    teclado1.reinicio();
}
