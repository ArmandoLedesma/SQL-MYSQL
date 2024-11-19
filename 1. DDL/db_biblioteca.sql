--Creación de la base de datos "db_biblioteca"
CREATE DATABASE IF NOT EXISTS db_biblioteca;
USE db_biblioteca;


--Creación de la primera tabla "autores" que almacenará información relacionada con los Autores
CREATE TABLE IF NOT EXISTS autores(
    idAutor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(50) NULL
);

--Creación de la segunda tabla "libros" que almacenará información relacionada con los libros
CREATE TABLE IF NOT EXISTS libros(
    idLibro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    fechaPublicacion DATE NULL,
    precio DECIMAL(8,2) NOT NULL,
    idAutor INT FOREIGN KEY (idAutor) REFERENCES autores (idAutor)
);

