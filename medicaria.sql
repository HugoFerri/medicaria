-- ---------------------------------
-- Base de datos: `medicaria`
-- ---------------------------------
-- Sistema de información Sanitario
-- ---------------------------------

CREATE TABLE `test`.`importancia` 
  ( 
     `id`          INT NOT NULL auto_increment, 
     `descripcion` VARCHAR(255) NOT NULL, 
     PRIMARY KEY (`id`) 
  ) 
engine = innodb;

INSERT INTO `importancia` 
            (`id`, 
             `descripcion`) 
VALUES      (NULL, 
             'irrelevante'), 
            (NULL, 
             'leve'), 
            (NULL, 
             'moderada'), 
            (NULL, 
             'severa'), 
            (NULL, 
             'grave'), 
            (NULL, 
             'muy grave'), 
            (NULL, 
             'crítica'), 
            (NULL, 
             'fatal'), 
            (NULL, 
             'mortal'), 
            (NULL, 
             'desconocida')