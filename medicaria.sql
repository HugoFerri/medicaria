-- ---------------------------------
-- Base de datos: `medicaria`
-- ---------------------------------
-- Sistema de información Sanitario
-- ---------------------------------

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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;