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
    id_prueba INT(10),
    id_tecnica INT(10)
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