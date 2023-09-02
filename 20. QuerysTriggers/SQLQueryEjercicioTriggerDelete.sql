/*
SELECT * FROM Paciente

Agregar el Campo fechaBaja en PacienteLog:
ALTER TABLE PacienteLog ADD fechaBaja DATETIME;
*/
CREATE TRIGGER PacienteEliminado
ON Paciente
FOR DELETE
AS
BEGIN
    DECLARE @FechaActual DATETIME;
    SET @FechaActual = GETDATE();
    
    INSERT INTO PacienteLog (idPaciente, idpais, fechaBaja)
    SELECT d.idPaciente, d.idpais, @FechaActual
    FROM deleted d;
END;
/*
Eliminar un Paciente, para activar el Trigger.
DELETE FROM Paciente WHERE idPaciente = 1014;

Comprobar la Inserción en PacienteLog: 
SELECT * FROM PacienteLog
*/

