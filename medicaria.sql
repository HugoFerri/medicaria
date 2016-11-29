-- ---------------------------------
-- Base de datos: `medicaria`
-- ---------------------------------
-- Sistema de información Sanitario
-- ---------------------------------

CREATE TABLE imagen(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255),
    fecha DATETIME,
    ubicacion VARCHAR(255),
    id_prueba INT(11),
    id_tecnica INT(11)
);


INSERT INTO imagen (descripcion,fecha,ubicacion,id_prueba,id_tecnica)
VALUES ("Imagen de tipo educativa","2016-11-26","Valencia",1,3),
("Imagen de tipo sanitaria","2016-11-28","Madrid",3,1),
("Imagen de tipo bucodental","2016-11-13","Barcelona",2,2),
("Imagen mostrando un corazon","2016-11-16","Castilla la Mancha",2,4),
("Imagen imitando un pulmon fumador","2016-11-18","Malaga",4,5),
("Imagen de voluntarios cruz roja","2016-11-21","Picassent",8,6),
("Imagen de ambulancias de urgencia","2016-11-20","Valencia",7,6),
("Imagen de operacion de urgencia","2016-11-14","Ontinyent",7,7),
("Imagen de enfermo cronico","2016-11-11","La casa blanca",8,9),
("Imagen mostrando el funcionamiento de una incubadora","2016-11-30","Barcelona",10,8);

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

ALTER TABLE `importancia`
  ADD PRIMARY KEY (`id`);
--
ALTER TABLE `importancia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


--
-- Estructura de tabla para la tabla `via`
--

CREATE TABLE via (
id INT AUTO_INCREMENT PRIMARY KEY,
descripcion VARCHAR(255) NOT NULL,
id_medicamento INT NOT NULL, 
);

--
-- Indices de la tabla `via`
--

INSERT INTO via (descripcion, id_medicamento)
VALUES ("Via oral",1),
("Via sublingual",2),
("Via topica",3),
("Via transdermica",4),
("Via oftalmica",5),
("Via otica",6),
("Via intranasal",7),
("Via intravenosa",8),
("Via intramuscular",9),
("Via subcutanea",10);
