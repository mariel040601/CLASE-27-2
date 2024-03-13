enLista(Valor, [Cabeza | Cola]):- Valor==Cabeza.
enLista(Valor, [Cabeza | Cola]):- enLista(Valor, Cola).
