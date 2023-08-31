ALTER PROC UPD_Turno(
					@idturno turno, 
					@estado tinyint, 
					@observacion observacion)

AS
SET NOCOUNT ON

/*
SELECT * FROM Turno
SELECT * FROM TurnoPaciente
*/

IF EXISTS (SELECT * FROM Turno WHERE idTurno = @idturno)
	UPDATE Turno SET estado = @estado,
					observacion = @observacion
	WHERE idTurno = @idturno
ELSE
	SELECT 0 AS Resultado

-- exec UPD_Turno 6, 1, 'El paciente ha sido atendido'