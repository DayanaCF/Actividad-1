-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2018 a las 00:38:52
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escritor`
--

CREATE TABLE `escritor` (
  `id` int(11) NOT NULL,
  `nombre1` varchar(30) NOT NULL,
  `nombre2` varchar(30) NOT NULL,
  `apellido1` varchar(30) NOT NULL,
  `apellido2` varchar(30) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `contrasena` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `escritor`
--

INSERT INTO `escritor` (`id`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `correo`, `usuario`, `descripcion`, `contrasena`) VALUES
(1, 'Juan', 'Carlos', 'Alvarez', 'Diaz', 'juancho@gmail.com', '', 'Me considero una persona amante de la vida y la pasiÃ³n. Me gusta escribir libros de amor y experien', 'hola123'),
(5, 'Maria', 'Angelica', 'Lopez', 'Ramos', 'angelicamaria@hotmail.com', '', 'Soy una mujer soÃ±adora y creyente de que las cosas que quieres las puedes hacer realidad. Me gustar', 'ange0976');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lector`
--

CREATE TABLE `lector` (
  `id` int(11) NOT NULL,
  `nombre1` varchar(30) NOT NULL,
  `nombre2` varchar(30) NOT NULL,
  `apellido1` varchar(30) NOT NULL,
  `apellido2` varchar(30) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `contrasena` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lector`
--

INSERT INTO `lector` (`id`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `correo`, `usuario`, `descripcion`, `contrasena`) VALUES
(1, 'Juan', 'Felipe', 'Tuiran', 'Jimenez', 'juantjj1997@gmail.com', 'JuanFTJ', 'Me gusta leer todo tipo de libro, sobre todo los de acciÃ³n.', '123456'),
(2, 'Cristobal', 'JosÃ©', 'Mendoza', 'Martinez', 'lomejor@hotmail.com', '', 'Â¡Hola! Soy Cristian, pero me pueden llamar \"Cris\" Amo los animales y leer sobre naturaleza y cosas ', 'cris123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `escritor`
--
ALTER TABLE `escritor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lector`
--
ALTER TABLE `lector`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `escritor`
--
ALTER TABLE `escritor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `lector`
--
ALTER TABLE `lector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
