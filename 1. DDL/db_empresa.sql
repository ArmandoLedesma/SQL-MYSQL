--Creación de la base de datos "db_empresa" 
CREATE DATABASE IF NOT EXISTS db_empresa;
USE db_empresa;

--Creación de la tabla "inventarios" que almacenará la información 
CREATE TABLE IF NOT EXISTS inventarios (
    idInventario INT PRIMARY KEY AUTO_INCREMENT,
    codigoProducto VARCHAR(50) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT NULL,
    fechaFabricacion DATE NULL,
    fechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cantidadProducto INT DEFAULT 0, 
    precioCompra DECIMAL(10,2) NOT NULL,
    precioVenta DECIMAL(10,2) NOT NULL
);