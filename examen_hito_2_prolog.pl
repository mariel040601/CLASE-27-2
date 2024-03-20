% Categorías
esCategoria(electrodomestico).
esCategoria(entretenimiento).
esCategoria(computadoras).


esProducto(batidora).
esProducto(lavadora).
esProducto(parlantes).
esProducto(consolas).
esProducto(laptop).
esProducto(escritorio).


esElectrodomestico(batidora).
esElectrodomestico(lavadora).
esEntretenimiento(parlantes).
esEntretenimiento(consolas).
esComputadoras(laptop).
esComputadoras(escritorio).
esConsola(xbox360).
esConsola(xboxone).
esPlaystation(ps2).
esPlaystation(ps3).
esDell(dell).
esHp(hp).
esMarcaPatito(marcapatito).


productoColor(samsungb125, negro).
productoColor(samsungl200, negro).
productoColor(bose, negro).
productoColor(ps2, negro).
productoColor(ps3, negro).
productoColor(lg510, blanco).
productoColor(bose, blanco).
productoColor(lgbatimix, rojo).
productoColor(lg, rojo).
productoColor(xbox360, verde).
productoColor(xboxone, verde).
productoColor(omen560, plateado).
productoColor(pavillon15a, plateado).
productoColor(destruinator500, plateado).


productoCalidad(lg510, bueno).
productoCalidad(samsungb125, malo).
productoCalidad(lgbatimix, malo).
productoCalidad(samsungl200, bueno).
productoCalidad(bose, caro).
productoCalidad(lg, malo).
productoCalidad(xbox360, malo).
productoCalidad(xboxone, bueno).
productoCalidad(ps2, bueno).
productoCalidad(ps3, bueno).
productoCalidad(omen5608, malo).
productoCalidad(pavillon15a, bueno).
productoCalidad(destruinator500, bueno).

productoPrecio(samsungb125, caro).
productoPrecio(samsungl200, caro).
productoPrecio(bose, caro).
productoPrecio(xboxone, caro).
productoPrecio(pavillon15a, caro).
productoPrecio(destruinator500, barato).
productoPrecio(lg510, barato).
productoPrecio(lgbatimix, barato).
productoPrecio(lg, barato).
productoPrecio(xbox360, barato).
productoPrecio(omen5608, barato).


esCliente(juana).
esCliente(maria).
esCliente(jeremias).


esNegro(X) :- productoColor(X, negro).
esBlanco(X) :- productoColor(X, blanco).
esRojo(X) :- productoColor(X, rojo).
esVerde(X) :- productoColor(X, verde).
esPlateado(X) :- productoColor(X, plateado).

esBueno(X) :- productoCalidad(X, bueno).
esMalo(X) :- productoCalidad(X, malo).
esCaro(X) :- productoPrecio(X, caro).
esBarato(X) :- productoPrecio(X, barato).


productosElectrodomesticos(X) :- esElectrodomestico(X).
productosElectrodomesticos(X) :- esElectrodomestico(_), productosElectrodomesticos(X).
productosEntretenimiento(X) :- esEntretenimiento(X).
productosEntretenimiento(X) :- esEntretenimiento(_), productosEntretenimiento(X).
productosComputadoras(X) :- esComputadoras(X).
productosComputadoras(X) :- esComputadoras(_), productosComputadoras(X).

recomendar(juana, Producto) :- esCaro(Producto), esNegro(Producto),  esEntretenimiento(Producto).
recomendar(juana, Producto) :- esPlateado(Producto), esBueno(Producto), esComputadoras(Producto).
recomendar(juana, Producto) :- esBarato(Producto), esProducto(Producto).

recomendar(maria, Producto) :- esVerde(Producto), esProducto(Producto).
recomendar(maria, Producto) :- esBlanco(Producto), esBarato(Producto), esEntretenimiento(Producto).
recomendar(maria, Producto) :- esRojo(Producto), esMalo(Producto), esElectrodomestico(Producto).
recomendar(maria, Producto) :- esCaro(Producto), esProducto(Producto).

recomendar(jeremias, Producto) :- esBueno(Producto), esCaro(Producto), esElectrodomestico(Producto).
recomendar(jeremias, Producto) :-  esBarato(Producto), esBueno(Producto), esProducto(Producto).


