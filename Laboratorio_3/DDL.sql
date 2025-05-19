-------------------------------- DDL -------------------------------
-- Tabla Estudiante
CREATE TABLE Estudiante(
    ecodigo VARCHAR(15) PRIMARY KEY,
    enombre VARCHAR(40) NOT NULL,
    eapellido VARCHAR(40) NOT NULL
);
-- Tabla CorreoEst
CREATE TABLE CorreoEst(
    cdir VARCHAR(200) NOT NULL,
    codEst VARCHAR(15) NOT NULL,
    PRIMARY KEY(cdir, codEst),
    FOREIGN KEY(codEst) REFERENCES Estudiante(ecodigo)
        ON UPDATE CASCADE ON DELETE CASCADE
);
-- Tabla Asignatura
CREATE TABLE Asignatura (
    acodigo VARCHAR(15) PRIMARY KEY,
    anombre VARCHAR(40) NOT NULL,
    num_horas INTEGER NOT NULL CHECK (num_horas > 0)
);
-- Tabla Profesor
CREATE TABLE Profesor(
    pID INTEGER PRIMARY KEY,
    pnombre VARCHAR(100) NOT NULL,
    pcorreo VARCHAR(200) UNIQUE NOT NULL
);
-- Tabla Curso
CREATE TABLE Curso(
    cID INTEGER PRIMARY KEY,
    fecha DATE NOT NULL,
    codAsig VARCHAR(15),
    profesorID INTEGER,
    FOREIGN KEY(codAsig) REFERENCES Asignatura(acodigo)
        ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY(profesorID) REFERENCES Profesor(pID)
        ON UPDATE CASCADE ON DELETE SET NULL
);
-- Tabla HorarioCurso
CREATE TABLE HorarioCurso(
    dia VARCHAR(10) NOT NULL,
    inicio TIMESTAMP NOT NULL,
    fin TIMESTAMP CHECK (fin > inicio),
    cursoID INTEGER NOT NULL,
    PRIMARY KEY(dia, inicio, fin, cursoID),
    FOREIGN KEY(cursoID) REFERENCES Curso(cID)
        ON UPDATE CASCADE ON DELETE CASCADE
);
-- Tabla Aula
CREATE TABLE Aula(
    num INTEGER PRIMARY KEY,
    capacidad INTEGER NOT NULL CHECK (capacidad > 0),
    edificio VARCHAR(50) NOT NULL,
    piso INTEGER,
    etiqueta VARCHAR(20)
);
-- Tabla Cursa (Estudiante - Asignatura)
CREATE TABLE Cursa(
    codEst VARCHAR(15) NOT NULL,
    codAsig VARCHAR(15) NOT NULL,
    PRIMARY KEY (codEst, codAsig),
    FOREIGN KEY(codEst) REFERENCES Estudiante(ecodigo)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(codAsig) REFERENCES Asignatura(acodigo)
        ON UPDATE CASCADE ON DELETE CASCADE
);
-- Tabla Presenta (Curso - Aula)
CREATE TABLE Presenta(
    cursoID INTEGER NOT NULL,
    numAula INTEGER NOT NULL,
    PRIMARY KEY (cursoID, numAula),
    FOREIGN KEY(cursoID) REFERENCES Curso(cID)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(numAula) REFERENCES Aula(num)
        ON UPDATE CASCADE ON DELETE CASCADE
);
