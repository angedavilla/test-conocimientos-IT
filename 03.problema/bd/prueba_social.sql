-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-07-2020 a las 23:45:02
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba_social`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `depto_no` int(100) NOT NULL,
  `nombre_depto` varchar(100) NOT NULL,
  `localizacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`depto_no`, `nombre_depto`, `localizacion`) VALUES
(10, 'desarrollo de softaware', 'el coyolar'),
(20, 'análisis sistema', 'gadalupe'),
(30, 'contabilidad', 'sbtiava'),
(40, 'ventas', 'san felipe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `codigo` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `edad` int(100) NOT NULL,
  `oficio` varchar(100) NOT NULL,
  `dir` varchar(100) NOT NULL,
  `fecha_alt` date NOT NULL,
  `salario` int(255) NOT NULL,
  `comision` int(255) NOT NULL,
  `depto_no` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`codigo`, `nombre`, `edad`, `oficio`, `dir`, `fecha_alt`, `salario`, `comision`, `depto_no`) VALUES
(1, 'Rocha vargas hector', 27, 'vendedor', 'leon', '1983-05-12', 12000, 0, 40),
(2, 'lópez hernandez julio', 27, 'analista', 'chinadega', '1982-07-14', 13000, 1500, 20),
(3, 'esquivel jose', 31, 'director', 'juigalpa', '1981-05-06', 16700, 1200, 30),
(4, 'delgado carmen', 37, 'vendedor', 'leon', '1983-02-03', 13400, 0, 40),
(5, 'castillo monte luis', 17, 'vendedor', 'masaya', '1892-12-08', 16309, 1000, 40),
(6, 'esquivel leonel alfonso', 26, 'presidente', 'nagarote', '1981-09-12', 15000, 0, 30),
(7, 'perez luis', 32, 'empleado', 'managua', '1980-03-02', 16890, 0, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`depto_no`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `depto_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `codigo` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
