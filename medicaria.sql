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

CREATE TABLE imagen(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255),
    fecha DATETIME,
    ubicacion VARCHAR(255),
    id_prueba INT(11),
    id_tecnica INT(11)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
  `descripcion` varchar(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------------------------------

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

-- --------------------------------------------------------------------------------

CREATE TABLE `medicamento` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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

ALTER TABLE `medicamento`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `medicamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

-- --------------------------------------------------------------------------------

CREATE TABLE via (
id INT(11) AUTO_INCREMENT PRIMARY KEY,
descripcion VARCHAR(255),
id_medicamento INT(11)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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


-- --------------------------------------------------------------------------------

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

ALTER TABLE `medico`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

-- --------------------------------------------------------------------------------
