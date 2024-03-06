juan.
mario.
estela.
arturito.
andres.
jose.
karina.
mariel.

base_de_datos_ii.
redes_ii.
inteligencia_artificial.

esDocente(juan).
esDocente(maria).
esDocente(estela).

esEstudiante(arturito).
esEstudiante(andres).
esEstudiante(jose).
esEstudiante(karina).
esEstudiante(mariel).

esMateria(base_de_datos_ii).
esMateria(redes_ii).
esMateria(inteligencia_artificial).

ensenia(juan, base_de_datos_ii).
ensenia(maria, base_de_datos_ii).
ensenia(maria,redes_ii).
ensenia(maria, inteligencia_artificial).
ensenia(estela, redes_ii).
ensenia(estela, inteligencia_artificial).

asisteA(arturito, base_de_datos_ii).
asisteA(arturito, redes_ii).
asisteA(andres, redes_ii).
asisteA(andres, inteligencia_artificial).
asisteA(jose, base_de_datos_ii).
asisteA(jose, redes_ii).
asisteA(jose, inteligencia_artificial).
asisteA(karina,redes_ii).
asisteA(karina, inteligencia_artificial).
asisteA(mariel, inteligencia_artificial).

esDocenteDe(Docente, Estudiante):-ensenia(Docente, Materia), asisteA(Estudiante, Materia).
esCompanieroDe(EstudianteA, EstudianteB):- asisteA(EstudianteA, Materia), asisteA(EstudianteB, Materia).