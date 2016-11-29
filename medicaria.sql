-- ---------------------------------
-- Base de datos: `medicaria`
-- ---------------------------------
-- Sistema de información Sanitario
-- ---------------------------------
-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 29-11-2016 a las 07:07:56
-- Versión del servidor: 5.6.32
-- Versión de PHP: 5.6.25

CREATE TABLE `importancia` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `importancia`
--

INSERT INTO `importancia` (`id`, `descripcion`) VALUES
(1, 'irrelevante'),
(2, 'leve'),
(3, 'moderada'),
(4, 'severa'),
(5, 'grave'),
(6, 'muy grave'),
(7, 'crítica'),
(8, 'fatal'),
(9, 'mortal'),
(10, 'desconocida'),
(11, 'irrelevante'),
(12, 'leve'),
(13, 'moderada'),
(14, 'severa'),
(15, 'grave'),
(16, 'muy grave'),
(17, 'crítica'),
(18, 'fatal'),
(19, 'mortal'),
(20, 'desconocida');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `importancia`
--
ALTER TABLE `importancia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `importancia`
--
ALTER TABLE `importancia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 29-11-2016 a las 07:00:16
-- Versión del servidor: 5.5.50
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `medicaraDB`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamento`
--

CREATE TABLE `medicamento` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `medicamento`
--

INSERT INTO `medicamento` (`id`, `descripcion`) VALUES
(1, 'acetadote'),
(2, 'tylenol'),
(3, 'dulcolax'),
(4, 'hibiclens'),
(5, 'valium'),
(6, 'teveten'),
(7, 'motrin'),
(8, 'vicodin'),
(9, 'neurontin'),
(10, 'antizol'),
(11, 'isuprel'),
(12, 'mutamycin'),
(13, 'levatol'),
(14, 'trental'),
(15, 'astudal');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medicamento`
--
ALTER TABLE `medicamento`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `medicamento`
--
ALTER TABLE `medicamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `medicaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE `medico` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255),
  `primer_apellido` varchar(255),
  `segundo_apellido` varchar(255),
  `id_servicio` int(11) NOT NULL,
  `id_especialidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `medico`
--

INSERT INTO `medico` (`id`, `nombre`, `primer_apellido`, `segundo_apellido`, `id_servicio`, `id_especialidad`) VALUES
(1, 'Adrian', 'Rodriguez', 'Yanez', 1, 1),
(2, 'Francisco', 'Rodriguez', 'Garcia', 2, 5),
(3, 'Fernando', 'Gonzalez', 'Castro', 3, 7),
(4, 'Antonio', 'Ruiz', 'Hernandez', 4, 4),
(5, 'Miguel', 'Sanchez', 'Iglesias', 7, 8),
(6, 'Rafael', 'Batistuta', 'Jimenez', 6, 2),
(7, 'Jose', 'Perez', 'Gomez', 2, 2),
(8, 'Alvaro', 'Medina', 'Rodriguez', 6, 6),
(9, 'Juana', 'Jimenez', 'Rodriguez', 4, 4),
(10, 'Cristina', 'Fernandez', 'Hernandez', 5, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `medico`
--
ALTER TABLE `medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
