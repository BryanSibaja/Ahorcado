var vocabulario = [
            "TORNADO","EARTHQUAKE","BLIZZARD","TSUNAMI","HURRIACANE",
            "FLOD","ERUPTION","AVALANCHE","LANDSLIDE","DROUGHT","WILDFIRE",
            "THUNDERSTORM","CYCLONE","WHIRLWIND","SANDSTORM","HAILSTORM"]
;
var vidas = 5;
var palabra = '';
var oculta = '';

function letra(a){
    if(palabra.includes(a)){
        for (var i = 0; i < palabra.length; i++){
            if (palabra.charAt(i) === a){
                oculta = oculta.substr(0, i) + a + oculta.substr(i + 1);
            }
        }
        pantalla.text = oculta;
        if(palabra === oculta){
            mensaje.activar(true);
        }
    }else{
        globo.cantidad = --vidas;
        if(vidas == 0){
            mensaje.activar(false);
        }
    }
}

function iniciar() {
    oculta = '';
    vidas = 5;
    globo.cantidad = vidas;
    palabra = vocabulario[Math.floor(vocabulario.length * Math.random())]
    mensaje.texto = palabra
    for (var i = 0; i < palabra.length; i++){
        oculta += '_';
    }
    pantalla.text = oculta;
    teclado1.reinicio();
    mensaje.visible = false;
}
