-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2016 a las 18:58:23
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ceco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ceco1621199`
--

CREATE TABLE IF NOT EXISTS `ceco1621199` (
  `cuenta` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `saldoInicial` int(11) NOT NULL,
  `saldoActual` int(11) NOT NULL,
  PRIMARY KEY (`cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ceco1621199`
--

INSERT INTO `ceco1621199` (`cuenta`, `nombre`, `saldoInicial`, `saldoActual`) VALUES
(61050230, 'Mantenciones de Oficina', 0, -51751),
(61050240, 'Mantencion Enseñanza', 600000, 409600),
(61050310, 'Gastos Oficina, Escritorio', 342000, 116121),
(61050320, 'Gastos Oficina, Computacionales', 1199280, -203941),
(61050410, 'Gastos Enseñanza, Computacionales', 5679000, 2145860),
(61051211, 'Almuerzos y Colacion', 105600, 84246),
(61051213, 'Otros Gastos Generales', 88000, 36910);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regmov`
--

CREATE TABLE IF NOT EXISTS `regmov` (
  `cuenta` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precioTotal` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `regmov`
--
ALTER TABLE `regmov`
  ADD CONSTRAINT `regmov_ibfk_1` FOREIGN KEY (`cuenta`) REFERENCES `ceco1621199` (`cuenta`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
