-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 17-03-2020 a las 20:24:14
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `turista_zacatecas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autobuses`
--

DROP TABLE IF EXISTS `autobuses`;
CREATE TABLE IF NOT EXISTS `autobuses` (
  `id_bus` int(11) NOT NULL AUTO_INCREMENT,
  `ruta_bus` varchar(40) NOT NULL,
  `precio_bus` int(11) NOT NULL,
  PRIMARY KEY (`id_bus`),
  UNIQUE KEY `index_nombre_bus` (`ruta_bus`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autobuses`
--

INSERT INTO `autobuses` (`id_bus`, `ruta_bus`, `precio_bus`) VALUES
(1, 'Central de autobuses del sur', 200),
(2, 'Central de autobuses del oeste', 200),
(3, 'Central de autobuses del norte', 200),
(4, 'Central de autobuses del este', 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares_publicos`
--

DROP TABLE IF EXISTS `lugares_publicos`;
CREATE TABLE IF NOT EXISTS `lugares_publicos` (
  `id_lug` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_lug` varchar(20) NOT NULL,
  `precio_lug` int(11) NOT NULL,
  PRIMARY KEY (`id_lug`),
  UNIQUE KEY `index_nombre_lug` (`nombre_lug`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lugares_publicos`
--

INSERT INTO `lugares_publicos` (`id_lug`, `nombre_lug`, `precio_lug`) VALUES
(1, 'Lienzo Charro', 150),
(2, 'Palenque', 150);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedades`
--

DROP TABLE IF EXISTS `propiedades`;
CREATE TABLE IF NOT EXISTS `propiedades` (
  `id_prop` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_prop` varchar(40) NOT NULL,
  `precio_prop` int(11) NOT NULL,
  `renta_prop` int(11) DEFAULT NULL,
  `precio_casa_prop` int(11) DEFAULT NULL,
  `casa1_prop` int(11) DEFAULT NULL,
  `casa2_prop` int(11) DEFAULT NULL,
  `casa3_prop` int(11) DEFAULT NULL,
  `casa4_prop` int(11) DEFAULT NULL,
  `hotel_prop` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_prop`),
  UNIQUE KEY `indice_unico_nombre_prop` (`nombre_prop`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `propiedades`
--

INSERT INTO `propiedades` (`id_prop`, `nombre_prop`, `precio_prop`, `renta_prop`, `precio_casa_prop`, `casa1_prop`, `casa2_prop`, `casa3_prop`, `casa4_prop`, `hotel_prop`) VALUES
(1, 'García de la Cadena', 60, 2, 50, 10, 30, 90, 160, 250),
(2, 'Teúl de González Ortéga', 70, 3, 50, 15, 45, 135, 240, 350),
(3, 'Santa María de la Paz', 80, 4, 50, 20, 60, 180, 320, 450),
(4, 'Tepechitlán', 100, 6, 50, 30, 90, 270, 400, 550),
(5, 'Tlaltenango', 110, 7, 50, 35, 95, 285, 425, 575),
(6, 'Momax', 120, 8, 50, 40, 100, 300, 450, 600),
(7, 'Pinos', 140, 10, 100, 50, 150, 450, 625, 750),
(8, 'Loreto', 150, 11, 100, 55, 165, 475, 660, 825),
(9, 'Generál Pánfilo Natera', 160, 12, 100, 60, 180, 500, 700, 900),
(10, 'Guadalupe', 180, 14, 100, 70, 200, 550, 750, 950),
(11, 'Vetagrande', 190, 15, 100, 75, 210, 575, 775, 975),
(12, 'Calera', 200, 16, 100, 80, 220, 600, 800, 1000),
(13, 'Concepción del Oro', 220, 18, 150, 90, 250, 700, 875, 1050),
(14, 'Villa de Cos', 230, 19, 150, 95, 275, 725, 900, 1075),
(15, 'Río Grando', 240, 20, 150, 100, 300, 750, 925, 1100),
(16, 'Sombrerete', 260, 22, 150, 110, 330, 800, 975, 1150),
(17, 'Valparaiso', 270, 23, 150, 115, 345, 825, 1000, 1175),
(18, 'Fresnillo', 280, 24, 150, 120, 360, 850, 1025, 1200),
(19, 'Monte Escobedo', 300, 26, 200, 130, 390, 900, 1100, 1275),
(20, 'Susticacán', 320, 28, 200, 140, 420, 950, 1150, 1340),
(21, 'Tepetongo', 340, 30, 200, 150, 450, 1000, 1200, 1400),
(22, 'Villanueva', 360, 35, 200, 175, 500, 1100, 1300, 1500),
(23, 'Jeréz', 380, 40, 200, 185, 550, 1250, 1500, 1750),
(24, 'Zacatecas', 400, 50, 200, 200, 600, 1400, 1700, 2000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
