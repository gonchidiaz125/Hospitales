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
