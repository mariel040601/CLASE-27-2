esProducto(lg510).
esProducto(samsungb125).
esProducto(lgbatimix).
esProducto(samsungl200).
esProducto(bose).
esProducto(lg).

esCategoria(batidora).
esCategoria(lavadora).
esCategoria(parlantes).
esCategoria(electrodomestico).
esCategoria(entretenimiento).

esCliente(maria).

estaEnCategoria(lg510, batidora).
estaEnCategoria(samsungb125, batidora).
estaEnCategoria(lgbatimix, lavadora).
estaEnCategoria(samsungl200, lavadora).
estaEnCategoria(bose, parlantes).
estaEnCategoria(lg, parlantes).
estaEnCategoria(batidora, electrodomestico).
estaEnCategoria(lavadora, electrodomestico).
estaEnCategoria(parlantes, entretenimiento).

esProductoDentroDeCategoria(Producto, Categoria):- esProducto(Producto), esCategoria(Categoria), estaEnCategoria(Producto, Categoria).
esProductoDentroDeCategoria(Producto, Categoria):- estaEnCategoria(Categoria2,Categoria), esProductoDentroDeCategoria(Producto, Categoria).

esBlanco(lg510).
esBarato(lg510)
esBueno(lg510).

recomendarMaria(Producto):- esProducto(Producto), esVerde(Producto), esProductoDentroDeCategoria(Producto, producto).

