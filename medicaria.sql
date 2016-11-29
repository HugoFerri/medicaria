SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `primer_apellido` varchar(255) NOT NULL,
  `segundo_apellido` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`id`, `nombre`, `primer_apellido`, `segundo_apellido`) VALUES
(1, 'Daniel', 'Garcia', 'Marquez'),
(2, 'Alba', 'Altamirano', 'Gonzalez'),
(3, 'Hector', 'Lopez', 'Sanchez'),
(4, 'Javier', 'Sanchez', 'Martin'),
(5, 'Ana Maria', 'Martinez', 'Martinez'),
(6, 'Isabel', 'Gomez', 'Jimenez'),
(7, 'Juan', 'Escobar', 'Silva'),
(8, 'Cristina', 'Costa', 'Alonso'),
(9, 'Carles', 'Pujol', 'Lopez'),
(10, 'Irina', 'Moreno', 'Sanz'),
(11, 'Francisco', 'Castro', 'Martin'),
(12, 'Emilio', 'Gaviria', 'Romero');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;