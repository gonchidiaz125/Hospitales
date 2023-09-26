-- Crear tabla de Estados de turnos

CREATE TABLE `hospital`.`estados_turnos` (
  `estado_turno_id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `activo` TINYINT NULL DEFAULT 1,
  `fecha_alta` DATETIME NOT NULL DEFAULT NOW(),
  `usuario_alta_id` INT NOT NULL DEFAULT 1,
  `fecha_mod` DATETIME NULL,
  `usuario_mod_id` INT NULL,
  `fecha_baja` DATETIME NULL,
  `usuario_baja_id` INT NULL,
  PRIMARY KEY (`estado_turno_id`));
  
  -- Crear tabla de Especialidades
  
CREATE TABLE `hospital`.`especialidades` (
  `especialidad_id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `activo` TINYINT NOT NULL DEFAULT 1,
  `fecha_alta` DATETIME NOT NULL DEFAULT now(),
  `usuario_alta_id` INT NOT NULL DEFAULT 1,
  `fecha_mod` DATETIME NULL,
  `usuario_mod_id` INT NULL,
  `fecha_baja` DATETIME NULL,
  `usuario_baja_id` INT NULL,
  PRIMARY KEY (`especialidad_id`));
  
    -- Crear tabla de Sucursales
  
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

aaaammdd-hhmm-
20230926-1627-create-table-especialidades.sql

