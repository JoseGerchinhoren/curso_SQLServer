-- ALTER TABLE PacienteLog ADD fechaModificacion DATETIME

-- SELECT * FROM PacienteLog

CREATE TRIGGER PacientesModificados ON Paciente
AFTER UPDATE
AS
IF EXISTS (SELECT idPaciente FROM PacienteLog
			WHERE idpaciente = (SELECT idpaciente FROM Inserted))

	UPDATE PacienteLog SET fechaModificacion = GETDATE()
			WHERE idpaciente = (SELECT idpaciente FROM Inserted)
ELSE
	INSERT INTO PacienteLog (idpaciente, idpais, fechaModificacion)
	SELECT idPaciente, idPais, GETDATE() FROM inserted

/*
SELECT * FROM Paciente WHERE idPaciente = 8

UPDATE Paciente SET Nombre = 'Francisco Manuel' WHERE idPaciente = 8

SELECT * FROM PacienteLog
*/