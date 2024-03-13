cronos.
ares.
hera.
poseidon.
afrodita.
hefesto.
hipolita.
zeus.
baco.
atena.
nera.
hermes.

esHombre(cronos).
esHombre(ares).
esHombre(poseidon).
esHombre(hefesto).
esHombre(zeus).
esHombre(baco).
esHombre(hermes).

esMujer(ares).
esMujer(hera).
esMujer(afrodita).
esMujer(hipolita).
esMujer(atena).
esMujer(nera).

esDecendienteDirecto(hera, cronos).
esDecendienteDirecto(afrodita, ares).
esDecendienteDirecto(hefesto, ares).
esDecendienteDirecto(zeus, poseidon).
esDecendienteDirecto(zeus, afrodita).
esDecendienteDirecto(baco, afrodita).
esDecendienteDirecto(baco, hefesto).
esDecendienteDirecto(atena, hefesto).
esDecendienteDirecto(nera, hipolita).
esDecendienteDirecto(nera, zeus).
esDecendienteDirecto(hermes,atena).



esPadreDe(Padre, Hijo):-esHombre(Padre), esDecendienteDirecto(Hijo, Padre).
esMadreDe(Madre, Hijo):-esMujer(Madre), esDecendienteDirecto(Hijo, Madre).
esHermanoDe(Hermano1, Hermano2) :-esPadreDe(Padre, Hermano1), esPadreDe(Padre, Hermano2).
esAbueloDe(Abuelo, Nieto) :-esDecendienteDirecto(Nieto, Padre), esDecendienteDirecto(Padre, Abuelo), esHombre(Abuelo).

esAbuelaDe(Abuela, Nieto) :-esDecendienteDirecto(Nieto, Padre), esDecendienteDirecto(Padre, Abuela), esMujer(Abuela).

esAncestroDe(Ancestro, Persona) :-esDecendienteDirecto(Persona, Ancestro), esHombre(Ancestro).

esAncestroDe(Ancestro, Persona) :-esDecendienteDirecto(Persona, Padre), esAncestroDe(Ancestro, Padre).
