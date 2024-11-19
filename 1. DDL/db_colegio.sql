--Creación de la base de datos "db_colegio"
CREATE DATABASE IF NOT EXISTS db_colegio;
USE db_colegio;

--Creación de la primera tabla "estudiantes" que almacenará información relacionada con los Estudiantes
CREATE TABLE IF NOT EXISTS estudiantes(
    idEstudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    grado VARCHAR(20) NOT NULL
);

--Creación de la segunda tabla "profesores" que almacenará información relacionada con los Profesores
CREATE TABLE IF NOT EXISTS profesores(
    idProfesor INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50) NULL
);

--Creación de la tercera tabla "asignaturas" que almacenará información relacioada con las Asignaturas
CREATE TABLE IF NOT EXISTS asignaturas(
    idAsignatura INT PRIMARY KEY AUTO_INCREMENT,
    idEstudiante INT FOREIGN KEY (idEstudiante) REFERENCES estudiantes (idEstudiante),
    idProfesor INT FOREIGN KEY (idProfesor) REFERENCES profesores (idProfesor)
);