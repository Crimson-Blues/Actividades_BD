------------------------------- DML -------------------------------
-- Tuplas en tabla Estudiante
INSERT INTO Estudiante (ecodigo, enombre, eapellido)
VALUES
    ('2223510', 'Liseth', 'Rivera'),
    ('2223547', 'Luis', 'Gómez'),
    ('2405897', 'Carla', 'López'),
    ('2567840', 'Pedro', 'Martínez'),
    ('5', 'Nikol', 'Córdoba'),  
    ('2416437', 'Juan', 'Cardenas'),
    ('7', 'Elena', 'Morales'),
    ('2134678', 'David', 'Ortiz'),
    ('2028976', 'Juan', 'López'),
    ('1987654', 'Gross', 'Salinas');
-- Tuplas en tabla CorreoEst
INSERT INTO CorreoEst (cdir, codEst)
VALUES
    ('lisethnat@correo.com', '2223510'),
    ('luisg@correo.com', '2223547'),
    ('carlal@correo.com', '2405897'),
    ('pedrom@correo.com', '2567840'),
    ('nikold1@correo.com', '5'),
    ('nikold2@correo.com', '5'),
    ('juanc@correo.com', '2416437'),
    ('elenam@correo.com', '7'),
    ('davidor@correo.com', '2134678'),
    ('juanlopez@correo.com', '2028976'),
    ('Gross@correo.com', '1987654');
-- Tuplas en tabla Asignatura
INSERT INTO Asignatura (acodigo, anombre, num_horas)
VALUES
    ('111010C', 'Cálculo I', 48),
    ('750016C', 'Bases de Datos', 60),
    ('750014C', 'Fundamento de POE', 56);
-- Tuplas en tabla Profesor
INSERT INTO Profesor (pID, pnombre, pcorreo)
VALUES
    (101, 'Ursula Iguaran', 'ursula@correounivalle.edu.co'),
    (202, 'Jefferson Amado', 'jefferson@correounivalle.edu.co'),
    (303, 'Marta Pinzón', 'martapinzon@correounivalle.edu.co'),
    (404, 'Luz Victoria', 'luzvictoria@correounivalle.edu.co'),
    (505, 'Fabián Córdoba', 'fabianc@correounivalle.edu.co');
-- Tuplas en tabla Curso
INSERT INTO Curso (cID, fecha, codAsig, profesorID)
VALUES
    (1, '2025-03-10', '111010C', 101),
    (2, '2025-03-10', '750016C', 202),
    (3, '2025-03-10', '111010C', 101),
    (4, '2025-03-10', '750014C', 505),
    (5, '2025-03-10', '750016C', 202),
    (6, '2025-03-10', '111010C', 303),
    (7, '2025-03-10', '750014C', 404),
    (8, '2025-03-10', '750016C', 303);
-- Tuplas en tabla HorarioCurso
INSERT INTO HorarioCurso (dia, inicio, fin, cursoID)
VALUES
    ('Lunes', '2025-05-12 08:00:00', '2025-05-12 10:00:00', 1),
    ('Miércoles', '2025-05-14 08:00:00', '2025-05-14 10:00:00', 2),
    ('Martes', '2025-05-13 10:00:00', '2025-05-13 12:00:00', 3),
    ('Jueves', '2025-05-15 10:00:00', '2025-05-15 12:00:00', 4),
    ('Martes', '2025-05-13 14:00:00', '2025-05-13 16:00:00', 5),
    ('Viernes', '2025-05-16 14:00:00', '2025-05-16 16:00:00', 6),
    ('Miércoles', '2025-05-14 07:00:00', '2025-05-14 10:00:00', 7),
    ('Lunes', '2025-05-12 07:00:00', '2025-05-12 09:00:00', 8);
-- Tuplas en tabla Aula
INSERT INTO Aula (num, capacidad, edificio, piso, etiqueta)
VALUES
    (101, 30, 'Edif A', 1, 'A101'),
    (102, 25, 'Edif B', 2, 'B201'),
    (103, 20, 'Edif C', 3, 'C301'),
    (104, 40, 'Edif D', 1, 'D110'),
    (105, 50, 'Edif E', 2, 'E210'),
    (106, 20, 'Edif F', 3, 'F311'),
    (107, 35, 'Edif G', 1, 'G111'),
    (108, 45, 'Edif H', 2, 'H211'),
    (109, 30, 'Edif I', 3, 'I310');
-- Tuplas en tabla Presenta
INSERT INTO Presenta (cursoID, numAula)
VALUES
    (3, 101),
    (1, 102),
    (2, 103),
    (4, 104),
    (5, 105),
    (6, 106),
    (7, 107),
    (8, 108),
    (1, 104);
-- Tuplas en tabla Cursa
INSERT INTO Cursa (codEst, codAsig)
VALUES
    ('5', '111010C'),
    ('2416437', '111010C'),
    ('2223510', '111010C'),
    ('2405897', '750016C'),
    ('2567840', '750014C'),
    ('2223547', '750016C'),
    ('7', '750014C'),
    ('2134678', '750016C'),
    ('2028976', '111010C'),
    ('1987654', '750014C');
