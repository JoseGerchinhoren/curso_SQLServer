ALTER PROC DEL_Turno(@idturno turno)
AS
SET NOCOUNT ON

/*
SELECT * FROM Turno
SELECT * FROM TurnoPaciente
*/

IF EXISTS (SELECT * FROM Turno WHERE idTurno = @idturno)
BEGIN
	DELETE FROM TurnoPaciente WHERE idTurno = @idturno
	DELETE FROM Turno WHERE idTurno = @idturno
END	
ELSE
	SELECT 0 AS Resultado

/*
EXEC DEL_Turno 7
*/