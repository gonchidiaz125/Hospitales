  INSERT INTO `hospital`.`estados_turnos` (estado_turno_id, nombre) VALUES (1, 'Libre');

  -- 1 Libre
  -- 2 Asignado
  -- 3 Anulado
  -- 4 Receptado
  -- 5 Atendiendo
  -- 6 Atentido
  -- 7 Ausente

INSERT INTO `hospital`.`estados_turnos` (estado_turno_id, nombre) VALUES (2, 'Asignado');

INSERT INTO `hospital`.`estados_turnos` (estado_turno_id, nombre) VALUES (3, 'Anulado');

INSERT INTO `hospital`.`estados_turnos` (estado_turno_id, nombre) VALUES (4, 'Receptado');

INSERT INTO `hospital`.`estados_turnos` (estado_turno_id, nombre) VALUES (5, 'Atendiendo');

INSERT INTO `hospital`.`estados_turnos` (estado_turno_id, nombre) VALUES (6, 'Atendido');

INSERT INTO `hospital`.`estados_turnos` (estado_turno_id, nombre) VALUES (7, 'Ausente');

SELECT * FROM estados_turnos