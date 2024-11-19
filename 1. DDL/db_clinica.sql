--Creación de la base de dato "db_clinica"
CREATE DATABASE IF NOT EXISTS db_clinica;
USE db_clinica;

--Creación de la primera tabla "pacientes" que almacenará información relacionada de los Pacientes 
CREATE TABLE IF NOT EXISTS pacientes(
    idPaciente INT PRIMARY KEY AUTO_INCREMENT, 
    nombreCompleto VARCHAR(100) NOT NULL,
    fechaNacimiento DATE NULL
);

--Creación de la segunda tabla "doctores" que almacenará información relacionada de los Doctores
CREATE TABLE IF NOT EXISTS doctores(
    idDoctor INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50) NOT NULL
);

--Creación de la tercera tabla "citas" que almacenará información relacionada de las Citas
CREATE TABLE IF NOT EXISTS citas(
    idCita INT PRIMARY KEY AUTO_INCREMENT,
    idPaciente INT FOREIGN KEY (idPaciente) REFERENCES pacientes (idPaciente),
    idDoctor INT FOREIGN KEY (idDoctor) REFERENCES doctores (idDoctor),
    fechaCita DATETIME NOT NULL,
    motivo VARCHAR(2O0) NULL 
);