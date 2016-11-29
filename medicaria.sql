-------------------------------------------------------------------------------------------------

CREATE TABLE `paciente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255),
  `primer_apellido` varchar(255),
  `segundo_apellido` varchar(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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


ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `paciente`

MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;