electrodomestico.
entretenimiento.
computadoras.
batidora.
lavadora.
parlantes.
consolas.

negro.
blanco.
rojo.
verde.
plateado.


esCategoria(electrodomestico).
esCategoria(entretenimiento).
esCategoria(computadoras).

esElectrodomestico(batidora).
esElectrodomestico(lavadora).

esEntretenimiento(parlantes).
esEntretenimiento(consolas).

esComputadoras(laptop).
esComputadoras(escritorio).

esBatidora(lg510).
esBatidora(samsungb125).

esLavadora(lgbatimix).
esLavadora(samsungl200).

esParlante(bose).
esParlante(lg).

esConsola(xbox).
esConsola(playstation).
esLaptop(dell).
esLaptop(hp).
esEscritorio(dell).
esEscritorio(hp).
esEscritorio(marcapatito).

esXbox(xbox360).
esXbox(xboxone).
esPlaystation(ps2).
esPlaystation(ps3).
esDell(omen560).
esHp(pavillon15a).
esMarcaPatito(destruinator500).



productoColor(samsungb125, negro).

% --------------------------------------------------------
%Características de los productos
% lg510(blanco, barato, bueno).
% samsungb125(negro, caro , malo).
% lgbatimix(rojo, barato, malo).
% samsungl200(negro, caro, bueno).
% bose(blanco, caro, negro).
% lg(rojo, barato, malo).
% xbox360(barato, verde, malo).
% xboxone(caro, verde, bueno).
% ps2(negro, barato, bueno).
% ps3(negro, barato, bueno).
% omen5608(plateado, barato, malo).
% pavillon15a(plateado, caro, bueno).
% destruinator500(plateado, barato, bueno).

% Gustos de los Clientes
% maria (verde, producto)
% maria (blanco, barato, entretenimiento)
% maria (rojo, malo electrodomestico)
% maria (caro, producto)

% juana (negro, caro, entretenimiento)
% juana (negro caro entretenimiento)
% juana (plateado bueno computadoras)
% juana (barato producto)

% jeremias (bueno, caro, electrodomestico)
% jeremias (barato, bueno producto)


%-----------------------------------------------------------------------


% productos
esProducto(X) :- esElectrodomestico(X); esEntretenimiento(X); esComputadoras(X).

% clientes
esCliente(juana).
esCliente(maria).
esCliente(jeremias).

% categorias de productos
% esElectrodomestico(X) :- esCategoria(electrodomestico), esProducto(X).
% esEntretenimiento(X) :- esCategoria(entretenimiento), esProducto(X).
% esComputadoras(X) :- esCategoria(computadoras), esProducto(X).

% color de productos
esNegro(X) :- esProducto(X), productoColor(X, negro).
esBlanco(X) :- esProducto(X), productoColor(X, blanco).
esRojo(X) :- esProducto(X), productoColor(X, rojo).
esVerde(X) :- esProducto(X), productoColor(X, verde).
esPlateado(X) :- esProducto(X), productoColor(X, plateado).

% buenos, malos, caros y baratos
esBueno(X) :- esProducto(X), productoCalidad(X, bueno).
esMalo(X) :- esProducto(X), productoCalidad(X, malo).
esCaro(X) :- esProducto(X), productoPrecio(X, caro).
esBarato(X) :- esProducto(X), productoPrecio(X, barato).

%--------------------------------------------------------------------------------------------------------------
 % Recomendaciones para los clientes
recomendar(juana, X) :- esCaro(X), esNegro(X), esEntretenimiento(X). 
recomendar(juana, Y) :- esPlateado(Y), esBueno(Y), esComputadoras(Y). 
recomendar(juana , Y) :- esBarato(Y), esProducto(Y).

recomendar(maria, X) :- esVerde(X), esProducto(X).
recomendar(maria, z) :- esBlanco(X), esBarato(X), esEntretenimiento(X).
recomendar(maria, a) :- esRojo(X), esMalo(X), esElectrodomestico(X).
recomendar(maria ,b) :- esCaro(X), esProducto(X).

 
recomendar(jeremias, c) :- esBueno(x), esCaro(x), esEntretenimiento(x).
recomendar(jeremias, d) :- esBarato(Y), esBueno(Y), esProducto(Y) .
