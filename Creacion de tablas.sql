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

-- aaaammdd-hhmm-
-- 20230926-1627-create-table-especialidades.sql

-- Crear tabla de Medicos
CREATE TABLE `hospital`.`medicos` (
  `medico_id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `matricula` INT NOT NULL,
  `documento` INT NOT NULL,
  `fecha_nac` DATETIME NOT NULL DEFAULT now(),
  `email` VARCHAR(45) NOT NULL,
  `telefono` INT NOT NULL,
  `sexo` VARCHAR(45) NULL,
  PRIMARY KEY (`medico_id`));
-- Se le agrego a la tabla de medicos
ALTER TABLE `hospital`.`medicos` 
ADD COLUMN `activo` TINYINT NOT NULL DEFAULT 1 AFTER `sexo`,
ADD COLUMN `fecha_alta` DATETIME NOT NULL DEFAULT now() AFTER `activo`,
ADD COLUMN `usuario_alta_id` INT NOT NULL DEFAULT 1 AFTER `fecha_alta`,
ADD COLUMN `fecha_mod` DATETIME NULL AFTER `usuario_alta_id`,
ADD COLUMN `usuario_mod_id` INT NULL DEFAULT 1 AFTER `fecha_mod`,
ADD COLUMN `fecha_baja` DATETIME NULL DEFAULT now() AFTER `usuario_mod_id`,
ADD COLUMN `usuario_baja_id` INT NULL DEFAULT 1 AFTER `fecha_baja`;


-- Crear Tabla de sucursales especialidades

CREATE TABLE `hospital`.`sucursales_especialidad` (
  `especialidad_id` INT NOT NULL AUTO_INCREMENT,
  `sucursal_id` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `activo` TINYINT NOT NULL DEFAULT 1,
  `fecha_alta` DATETIME NOT NULL DEFAULT now(),
  `usuario_alta_id` INT NOT NULL,
  `fecha_mod` DATETIME NULL,
  `usuario_mod_id` INT NULL,
  `fecha_baja_id` DATETIME NOT NULL DEFAULT now(),
  `usuario_baja_id` INT NULL,
  PRIMARY KEY (`especialidad_id`));
-- Se le cambio nombre  
  ALTER TABLE `hospital`.`sucursales_especialidad` 
RENAME TO  `hospital`.`sucursales_especialidades` ;

-- Crear tabla especialidades_medicos
CREATE TABLE `hospital`.`especialidades_medicos` (
  `especialidad_id` INT NOT NULL AUTO_INCREMENT,
  `medico_id` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `activo` INT NOT NULL DEFAULT 1,
  `fecha_alta` DATETIME NOT NULL DEFAULT now(),
  `usuario_alta_id` INT NOT NULL DEFAULT 1,
  `fecha_mod` DATETIME NULL,
  `usuario_mod_id` INT NULL,
  `fecha_baja_id` DATETIME NOT NULL DEFAULT now(),
  `usuario_baja_id` INT NOT NULL DEFAULT 1,
  PRIMARY KEY (`especialidad_id`));


CREATE TABLE `especialidades_medicos` (
  `especialidad_medico_id` int(11) NOT NULL AUTO_INCREMENT,
  `especialidad_id` int(11) NOT NULL,
  `medico_id` int(11) NOT NULL,
  `activo` int(11) NOT NULL DEFAULT '1',
  `fecha_alta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario_alta_id` int(11) NOT NULL DEFAULT '1',
  `fecha_mod` datetime DEFAULT NULL,
  `usuario_mod_id` int(11) DEFAULT NULL,
  `fecha_baja_id` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario_baja_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`especialidad_medico_id`)
)







