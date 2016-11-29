-- ---------------------------------
-- Base de datos: `medicaria`
-- ---------------------------------
-- Sistema de información Sanitario
-- ---------------------------------

CREATE TABLE via (
id INT AUTO_INCREMENT PRIMARY KEY,
descripcion VARCHAR(255) NOT NULL,
id_medicamento INT NOT NULL, 
);

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
