--Creación de la base de datos "db_pedidos"
CREATE DATABASE IF NOT EXISTS db_pedidos;
USE db_pedidos;

--Creación de la primera tabla "clientes" que almacenará la información relacionada con los Clientes
CREATE TABLE IF NOT EXISTS clientes(
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

--Creación de la segunda tabla "productos" que almacenará la información relacionada con los Productos
CREATE TABLE IF NOT EXISTS productos(
    idProducto INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    precio DECIMAL(8,2) NOT NULL
);

--Creación de la tercera tabla "ventas" que almacenará la información relacionada con las Ventas
CREATE TABLE IF NOT EXISTS ventas(
    idVenta INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT FOREIGN KEY (idCliente) REFERENCES clientes (idCliente),
    idProducto INT FOREIGN KEY (idProducto) REFERENCES productos (idProducto),
    cantidad INT NOT NULL,
    totalVenta DECIMAL(10,2) NOT NULL
);