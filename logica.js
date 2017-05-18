var vidas = 10;
var palabra = '';
var vocabulario = [
   "tornado","earthquake","blizzard","tsunami","hurriacane",
   "flod","eruption","avalanche","landslide","drought","wildfire",
   "thunderstorm"];
var palabraOculta = '';

function obtenerPalabra() {
    palabra = vocabulario[Math.floor(vocabulario.length * Math.random())];
    return palabra;
}
