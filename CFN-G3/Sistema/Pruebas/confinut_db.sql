-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-10-2019 a las 16:11:13
-- Versión del servidor: 5.7.27
-- Versión de PHP: 7.0.33-0+deb9u5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `confinut_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cfncategoria`
--

CREATE TABLE `cfncategoria` (
  `ID_Categoria` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cfntipodespacho`
--

CREATE TABLE `cfntipodespacho` (
  `ID_TipoDespacho` int(11) NOT NULL,
  `NombreTipo` varchar(20) NOT NULL,
  `Descripcion` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cfntipoenvase`
--

CREATE TABLE `cfntipoenvase` (
  `ID_TipoEnvase` int(11) NOT NULL,
  `Tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cfntipousuario`
--

CREATE TABLE `cfntipousuario` (
  `ID_TipoUsuario` int(11) NOT NULL,
  `NombreTipo` varchar(20) NOT NULL,
  `Descripcion` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cfncategoria`
--
ALTER TABLE `cfncategoria`
  ADD PRIMARY KEY (`ID_Categoria`);

--
-- Indices de la tabla `cfntipodespacho`
--
ALTER TABLE `cfntipodespacho`
  ADD PRIMARY KEY (`ID_TipoDespacho`);

--
-- Indices de la tabla `cfntipoenvase`
--
ALTER TABLE `cfntipoenvase`
  ADD PRIMARY KEY (`ID_TipoEnvase`);

--
-- Indices de la tabla `cfntipousuario`
--
ALTER TABLE `cfntipousuario`
  ADD PRIMARY KEY (`ID_TipoUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cfncategoria`
--
ALTER TABLE `cfncategoria`
  MODIFY `ID_Categoria` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cfntipodespacho`
--
ALTER TABLE `cfntipodespacho`
  MODIFY `ID_TipoDespacho` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cfntipoenvase`
--
ALTER TABLE `cfntipoenvase`
  MODIFY `ID_TipoEnvase` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cfntipousuario`
--
ALTER TABLE `cfntipousuario`
  MODIFY `ID_TipoUsuario` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
