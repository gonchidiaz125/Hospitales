  CREATE TABLE `hospital`.`sucursales` (
  `sucursal_id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `activo` TINYINT NOT NULL DEFAULT 1,
  `fecha_alta` DATETIME NOT NULL DEFAULT NOW(),
  `usuario_alta_id` INT NOT NULL DEFAULT 1,
  `fecha_mod` DATETIME NULL,
  `usuario_mod_id` INT NULL,
  `fecha_baja` DATETIME NULL,
  `usuario_baja_id` INT NULL,
  PRIMARY KEY (`sucursal_id`));