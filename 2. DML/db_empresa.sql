-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-11-2024 a las 01:51:58
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
-- Base de datos: `db_empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `idInventario` int NOT NULL,
  `codigoProducto` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `fechaFabricacion` date DEFAULT NULL,
  `fechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cantidadProducto` int DEFAULT '0',
  `precioCompra` decimal(10,2) NOT NULL,
  `precioVenta` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `inventarios`
--

INSERT INTO `inventarios` (`idInventario`, `codigoProducto`, `nombre`, `descripcion`, `fechaFabricacion`, `fechaRegistro`, `cantidadProducto`, `precioCompra`, `precioVenta`) VALUES
(1, 'PROD001', 'Laptop HP', 'Laptop HP con procesador Intel i7, 16GB RAM', '2024-01-10', '2024-11-19 01:12:30', 10, 800.00, 1200.00),
(2, 'PROD002', 'Smartphone Samsung Galaxy S23', 'Smartphone con pantalla de 6.1 pulgadas, 8GB RAM, 128GB almacenamiento', '2024-02-15', '2024-11-19 01:12:30', 20, 450.00, 650.00),
(3, 'PROD003', 'Auriculares Bluetooth Sony WH-1000XM5', 'Auriculares inalámbricos con cancelación de ruido y hasta 30 horas de batería', '2024-03-01', '2024-11-19 01:12:30', 15, 200.00, 300.00),
(4, 'PROD004', 'Monitor 4K LG 27 pulgadas', 'Monitor 4K UHD, con tecnología IPS y tiempo de respuesta de 5ms', '2023-12-05', '2024-11-19 01:12:30', 8, 350.00, 500.00),
(5, 'PROD005', 'Teclado Mecánico Corsair K70 RGB', 'Teclado mecánico con retroiluminación RGB y switches Cherry MX', '2024-04-10', '2024-11-19 01:12:30', 25, 120.00, 180.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`idInventario`),
  ADD UNIQUE KEY `codigoProducto` (`codigoProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  MODIFY `idInventario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
