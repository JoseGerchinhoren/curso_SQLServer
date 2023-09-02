-- Es un disparador de evento. 
-- Los eventos pueden ser:
-- INSERT
-- UPDATE
-- DELETE
-- Se pueden realizar acciones si es que se activa el trigger.

CREATE TRIGGER PacientesCreados ON Paciente
AFTER INSERT
AS
IF (SELECT idpais FROM inserted) = 'MEX'
	INSERT INTO PacienteLog (idpaciente, idpais, fechaAlta)
		SELECT i.idPaciente, i.idPais, getdate() FROM inserted i

-- SELECT * FROM PacienteLog

-- Luego de que se inserta un paciente con el idpais MEX se inserta en la tabla PacienteLog.