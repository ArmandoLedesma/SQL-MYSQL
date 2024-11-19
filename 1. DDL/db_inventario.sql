--Creación de la base de datos "db_inventario"
CREATE DATABASE IF NOT EXISTS db_inventario;
USE db_inventario;

--Creación de la tabla "proveedor" que almacenará la información 
CREATE TABLE IF NOT EXISTS proveedor(
    idProveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombreEmpresa VARCHAR(100) NOT NULL,
    nombreContacto VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NULL, 
    direccion VARCHAR(150) NULL, 
    pais VARCHAR(50) NULL 
);