---------------- QUERIES -----------------

------1. Presenta la consulta en SQL para obtener los correos del estudiante con id = 5--------

SELECT cdir AS correo FROM CorreoEst AS ce
WHERE ce.codEst = '5'


------2.Presenta la consulta en SQL para obtener el nombre y el número de horas de los cursos que dicta el profesor 'Ursula Iguaran'-------
SELECT a.anombre AS nombre_Asignatura, a.num_horas FROM Curso AS c
JOIN Profesor AS p ON p.pID = c.profesorID
JOIN Asignatura AS a ON a.acodigo = c.codAsig
WHERE p.pnombre = 'Ursula Iguaran'

--------Sin repetir asignaturas:------
SELECT DISTINCT a.anombre, a.num_horas FROM Curso AS c
JOIN Profesor AS p ON p.pID = c.profesorID
JOIN Asignatura AS a ON a.acodigo = c.codAsig
WHERE p.pnombre = 'Ursula Iguaran'

------3. Presenta la consulta en SQL para obtener el nombre y el correo de los estudiantes que están cursando la asignatura 'Cálculo I'------
SELECT e.enombre, e.eapellido, ce.cdir AS correo FROM Estudiante AS e
JOIN Cursa AS cu ON cu.codEst = e.ecodigo
JOIN Asignatura a ON a.acodigo = cu.codAsig
JOIN CorreoEst ce ON ce.codEst = e.ecodigo
WHERE a.anombre = 'Cálculo I';


/*4. Presenta la consulta en SQL para obtener las aulas (edificio, piso, etiqueta), el horario (día, inicio y fin), el profesor (nombre),
la asignatura (nombre y número de horas) del curso con id=3 */
SELECT au.edificio, au.piso, au.etiqueta, hc.dia, hc.inicio, hc.fin,
    p.pnombre, a.anombre AS asignatura, a.num_horas FROM Curso AS c
JOIN Presenta AS pr ON c.cID = pr.cursoID
JOIN Aula AS au ON pr.numAula = au.num
JOIN HorarioCurso AS hc ON c.cID = hc.cursoID
JOIN Profesor AS p ON c.profesorID = p.pID
JOIN Asignatura AS a ON c.codAsig = a.acodigo
WHERE c.cID = 3;
