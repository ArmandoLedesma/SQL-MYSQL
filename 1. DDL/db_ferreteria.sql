--Creación de la base de datos "db_ferreteria"
CREATE DATABASE IF NOT EXISTS db_ferreteria;
USE db_ferreteria;

--Creación de la tabla "clientes" que almacenará la información 
CREATE TABLE IF NOT EXISTS clientes(
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NULL,
    email VARCHAR(100) NOT NULL UNIQUE, 
    direccion VARCHAR(150) NULL,
    fechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP   
);