-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-08-2013 a las 06:33:17
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
-- Estructura de tabla para la tabla `tbl_admins`
--

CREATE TABLE IF NOT EXISTS `tbl_admins` (
  `id_admin` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(25) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tbl_admins`
--

INSERT INTO `tbl_admins` (`id_admin`, `nombre`, `correo`, `estado`) VALUES
(1, 'admin', 'jpgarcia01@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_archivos`
--

CREATE TABLE IF NOT EXISTS `tbl_archivos` (
  `id_archivo` int(10) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(10) NOT NULL,
  `id_subcat` int(10) NOT NULL,
  `nombre_archivo` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tbl_categorias`
--

INSERT INTO `tbl_categorias` (`id_categoria`, `nombre_categoria`, `fecha_creacion`, `estado`) VALUES
(1, 'Categoria0', '2013-08-19 00:00:00', 1),
(2, 'Categoria1', '2013-08-19 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pendientes`
--

CREATE TABLE IF NOT EXISTS `tbl_pendientes` (
  `id_pendiente` int(10) NOT NULL AUTO_INCREMENT,
  `id_archivo` int(10) NOT NULL,
  `comentario` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nuevo_archivo` varchar(20) NOT NULL,
  `fecha_solicitud` datetime NOT NULL,
  `id_usuario` varchar(10) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_pendiente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tbl_pendientes`
--

INSERT INTO `tbl_pendientes` (`id_pendiente`, `id_archivo`, `comentario`, `nuevo_archivo`, `fecha_solicitud`, `id_usuario`, `estado`) VALUES
(1, 1, 'comentario del archivo', '', '2013-08-09 00:00:00', '25', 1),
(2, 2, 'adasd dsdadsa asda ', '', '2013-08-09 00:00:00', '36', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_subcat`
--

CREATE TABLE IF NOT EXISTS `tbl_subcat` (
  `id_subcat` int(10) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(10) NOT NULL,
  `nombre_subcat` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_subcat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tbl_subcat`
--

INSERT INTO `tbl_subcat` (`id_subcat`, `id_categoria`, `nombre_subcat`, `fecha_creacion`, `estado`) VALUES
(1, 1, 'subacategoria1', '2013-08-08 00:00:00', 1),
(2, 2, 'subcategoria2', '2013-08-08 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE IF NOT EXISTS `tbl_usuarios` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `correo` varchar(25) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_creacion` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id`, `nombre`, `correo`, `estado`, `fecha_creacion`) VALUES
(1, 'usuario1', 'jpgarcia01@gmail.com', 1, '2013-08-08 00:00:00');

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
