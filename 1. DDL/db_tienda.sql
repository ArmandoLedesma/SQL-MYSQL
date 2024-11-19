--Creación de la base de datos "db_tienda"
CREATE DATABASE IF NOT EXISTS db_tienda;
USE db_tienda;

--Creación de la tabla "empleados" que almacenará la información
CREATE TABLE IF NOT EXISTS empleados(
    idEmpleado INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    fechaNacimiento DATE NOT NULL, 
    fechaContratacion DATE DEFAULT CURRENT_DATE, 
    puesto VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2) NOT NULL, 
    email VARCHAR(100) UNIQUE     
);