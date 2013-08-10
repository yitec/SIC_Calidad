-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2013 a las 03:42:05
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bd_calidad`
--

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `archivos_pendientes`
--
CREATE TABLE IF NOT EXISTS `archivos_pendientes` (
`id_archivo` int(10)
,`nombre_archivo` varchar(100)
,`fecha_solicitud` datetime
);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_archivos`
--

CREATE TABLE IF NOT EXISTS `tbl_archivos` (
  `id_archivo` int(10) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(10) NOT NULL,
  `id_subcat` int(10) NOT NULL,
  `nombre_archivo` varchar(100) NOT NULL,
  `version` varchar(10) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `url_archivo` varchar(50) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_archivo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tbl_archivos`
--

INSERT INTO `tbl_archivos` (`id_archivo`, `id_categoria`, `id_subcat`, `nombre_archivo`, `version`, `fecha_creacion`, `id_usuario`, `url_archivo`, `estado`) VALUES
(1, 17, 1, 'archivo1.doc', '1', '2013-08-09 00:00:00', 25, 'dada', 1),
(2, 3, 4, 'archivo2.doc', '1', '2013-08-08 00:00:00', 36, 'dada', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categorias`
--

CREATE TABLE IF NOT EXISTS `tbl_categorias` (
  `id_categoria` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(50) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-activo/2-inactivo',
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Volcado de datos para la tabla `tbl_categorias`
--

INSERT INTO `tbl_categorias` (`id_categoria`, `nombre_categoria`, `fecha_creacion`, `estado`) VALUES
(1, 'categoria0', '0000-00-00 00:00:00', 1),
(2, 'categoria0', '2013-07-09 00:00:00', 1),
(4, 'categoria4', '2013-07-29 00:00:00', 1),
(7, 'sadsad', '0000-00-00 00:00:00', 1),
(9, 'dsada', '0000-00-00 00:00:00', 1),
(10, 'asss', '0000-00-00 00:00:00', 1),
(11, 'asdsad', '0000-00-00 00:00:00', 1),
(13, 'assada', '0000-00-00 00:00:00', 1),
(16, 'sdadsad', '0000-00-00 00:00:00', 1),
(17, 'adad', '0000-00-00 00:00:00', 1),
(20, 'jkjkjkjkj', '0000-00-00 00:00:00', 1),
(21, 'jkjkjkjkjss', '0000-00-00 00:00:00', 1),
(24, 'opopos', '0000-00-00 00:00:00', 1),
(25, 'opoposs', '0000-00-00 00:00:00', 1),
(28, 'dsadaf3e', '0000-00-00 00:00:00', 1),
(30, 'e33rdsad', '0000-00-00 00:00:00', 1),
(32, 'undefined', '0000-00-00 00:00:00', 1),
(33, 'undefined', '0000-00-00 00:00:00', 1),
(34, 'undefined', '0000-00-00 00:00:00', 1),
(35, 'undefined', '0000-00-00 00:00:00', 1),
(36, 'undefined', '0000-00-00 00:00:00', 1),
(37, 'undefined', '0000-00-00 00:00:00', 1),
(38, 'nombre', '0000-00-00 00:00:00', 1),
(39, 'nombre', '0000-00-00 00:00:00', 1),
(40, 'nombre', '0000-00-00 00:00:00', 1),
(41, 'nombre', '0000-00-00 00:00:00', 1),
(42, 'nombre', '0000-00-00 00:00:00', 1),
(43, 'nombre', '0000-00-00 00:00:00', 1),
(44, 'nombre', '0000-00-00 00:00:00', 1),
(45, 'nombre', '0000-00-00 00:00:00', 1),
(46, 'nombre', '0000-00-00 00:00:00', 1),
(47, 'nombre', '0000-00-00 00:00:00', 1),
(48, 'nombre', '0000-00-00 00:00:00', 1),
(49, 'nombre', '0000-00-00 00:00:00', 1),
(50, 'nombre', '0000-00-00 00:00:00', 1),
(51, 'nombre', '0000-00-00 00:00:00', 1),
(52, 'nombre', '0000-00-00 00:00:00', 1),
(53, 'nombre', '0000-00-00 00:00:00', 1),
(54, 'nombre', '0000-00-00 00:00:00', 1),
(55, 'nombre', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pendientes`
--

CREATE TABLE IF NOT EXISTS `tbl_pendientes` (
  `id_pendiente` int(10) NOT NULL AUTO_INCREMENT,
  `id_archivo` int(10) NOT NULL,
  `comentario` varchar(150) NOT NULL,
  `fecha_solicitud` datetime NOT NULL,
  `id_usuario` varchar(10) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_pendiente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tbl_pendientes`
--

INSERT INTO `tbl_pendientes` (`id_pendiente`, `id_archivo`, `comentario`, `fecha_solicitud`, `id_usuario`, `estado`) VALUES
(1, 1, 'comentario del archivo', '2013-08-09 00:00:00', '25', 1),
(2, 2, 'adasd dsdadsa asda ', '2013-08-09 00:00:00', '36', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_subcat`
--

CREATE TABLE IF NOT EXISTS `tbl_subcat` (
  `id_subcat` int(10) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(10) NOT NULL,
  `nombre_subcat` varchar(50) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_subcat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tbl_subcat`
--

INSERT INTO `tbl_subcat` (`id_subcat`, `id_categoria`, `nombre_subcat`, `fecha_creacion`, `estado`) VALUES
(1, 17, 'ejempla1', '2013-08-08 00:00:00', 0),
(2, 17, 'ejempla1', '2013-08-08 00:00:00', 1),
(3, 17, 'subcat1', '0000-00-00 00:00:00', 1),
(4, 2, 'subcat2', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE IF NOT EXISTS `tbl_usuarios` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_creacion` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id`, `nombre`, `estado`, `fecha_creacion`) VALUES
(1, 'usuario1', 1, '2013-08-08 00:00:00');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pendientes`
--
CREATE TABLE IF NOT EXISTS `vista_pendientes` (
`id_archivo` int(10)
,`nombre_archivo` varchar(100)
,`comentario` varchar(150)
,`fecha_solicitud` datetime
);
-- --------------------------------------------------------

--
-- Estructura para la vista `archivos_pendientes`
--
DROP TABLE IF EXISTS `archivos_pendientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `archivos_pendientes` AS select `tbl_archivos`.`id_archivo` AS `id_archivo`,`tbl_archivos`.`nombre_archivo` AS `nombre_archivo`,`tbl_pendientes`.`fecha_solicitud` AS `fecha_solicitud` from (`tbl_archivos` join `tbl_pendientes` on((`tbl_archivos`.`id_archivo` = `tbl_pendientes`.`id_archivo`))) limit 0,30;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pendientes`
--
DROP TABLE IF EXISTS `vista_pendientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pendientes` AS select `tbl_archivos`.`id_archivo` AS `id_archivo`,`tbl_archivos`.`nombre_archivo` AS `nombre_archivo`,`tbl_pendientes`.`comentario` AS `comentario`,`tbl_pendientes`.`fecha_solicitud` AS `fecha_solicitud` from (`tbl_archivos` join `tbl_pendientes` on((`tbl_archivos`.`id_archivo` = `tbl_pendientes`.`id_archivo`))) limit 0,30;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
