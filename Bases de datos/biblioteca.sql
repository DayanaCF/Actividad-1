-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2018 a las 03:15:16
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
  `edad` varchar(30) NOT NULL,
  `descripcion` varchar(120) NOT NULL,
  `e-mail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `e-mail` varchar(30) NOT NULL,
  `descripcion` varchar(120) NOT NULL,
  `nombre_usuario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lector`
--

INSERT INTO `lector` (`id`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `e-mail`, `descripcion`, `nombre_usuario`) VALUES
(1, 'Andrés', 'Felipe', 'López', 'Martínez', 'andrés1997@gmail.com', 'soy un joven muy divertido me gusta mucho leer libros de accion y romance', 'Andres12'),
(2, 'Juan', 'Miguel', 'Sierra', 'Mejia', 'miguelsierra14@gmail.com', 'soy un chico culto me gustan muchos las novelas literarias pero sobre todo los libros de fantasia', 'juanmi18'),
(3, 'Luisa', 'Fernanda', 'Mercado', 'Jiménez', 'luisaf1998@gmail.com', 'soy una chica muy feliz, amo los libros de romance y conocer amigos ', 'Lufe19'),
(4, 'Carolina', 'Sofía', 'Peña', 'Catro', 'Carolinapeña@gmail.com', 'me dicen caro de cariño, pienso que los libros son la mejor cura para estar feliz y aprender', 'carolinaso20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `id_escritor` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `autor` text NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `descripcion` text NOT NULL,
  `categoria` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `id_escritor`, `nombre`, `autor`, `fecha_publicacion`, `descripcion`, `categoria`) VALUES
(1, 1, 'El amor', '', '0000-00-00', 'Las cartas de amor se empiezan sin saber lo que se va a decir y se terminan sin saber lo que se ha dicho. ', 'romance'),
(2, 1, 'Los fantasmas en la casa', '', '2018-02-08', 'No ser amados es una simple desventura; la verdadera desgracia es no amar', 'terror');

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
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `escritor`
--
ALTER TABLE `escritor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `lector`
--
ALTER TABLE `lector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
