-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2019 a las 04:23:43
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `formulario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `cedula` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`cedula`, `nombre`, `apellido`, `pais`, `provincia`, `direccion`) VALUES
('1003746029', 'Juan', 'Chimarro', 'Ecuador', 'pichincha', 'cayambe'),
('1725362538', 'Maria', 'Perez', 'Colombia', 'Bogota', 'Ciudad'),
('1727254839', 'Jhonatan', 'Cuzco', 'Ecuador', 'Pichincha', 'Tabacundo'),
('1727535583', 'Mallury', 'Cabascango', 'Ecuador', 'Pichincha', 'Tupigachi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `codigo` int(11) NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_costo` double NOT NULL,
  `precio_venta` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codigo`, `nombre_producto`, `stock`, `precio_costo`, `precio_venta`) VALUES
(10, 'celular', 10, 100, 150),
(1010, 'celular', 10, 100, 150),
(1999, 'PC', 8, 1000, 1200);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
