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
             'poco importante'), 
            (NULL, 
             'algo importante'), 
            (NULL, 
             'moderadamente importante'), 
            (NULL, 
             'importante'), 
            (NULL, 
             'muy importante'), 
            (NULL, 
             'extremadamente importante'), 
            (NULL, 
             'importancia crítica'), 
            (NULL, 
             'fundamental'), 
            (NULL, 
             'desconocida')