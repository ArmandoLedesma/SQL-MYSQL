-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-11-2024 a las 01:52:47
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_ferreteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int NOT NULL,
  `nombreCompleto` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `fechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombreCompleto`, `telefono`, `email`, `direccion`, `fechaRegistro`) VALUES
(1, 'Juan Pérez García', '+57 310 123 4567', 'juan.perez@example.com', 'Carrera 10 #45-67, Bogotá', '2024-11-19 01:42:59'),
(2, 'María López Martínez', '+52 55 6789 1234', 'maria.lopez@example.com', 'Avenida Juárez 123, Ciudad de México', '2024-11-19 01:42:59'),
(3, 'Carlos Gómez Hernández', '+1 305 234 5678', 'carlos.gomez@example.com', '456 Ocean Drive, Miami', '2024-11-19 01:42:59'),
(4, 'Ana Torres Sánchez', '+34 678 901 234', 'ana.torres@example.com', 'Calle Mayor 12, Barcelona', '2024-11-19 01:42:59'),
(5, 'Luis Fernández Romero', '+57 320 987 6543', 'luis.fernandez@example.com', 'Calle 50 #20-30, Medellín', '2024-11-19 01:42:59');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
