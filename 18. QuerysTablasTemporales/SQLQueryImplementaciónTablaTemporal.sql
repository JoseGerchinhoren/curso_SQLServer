DECLARE @turnos TABLE (id int IDENTITY(1,1), idturno turno, idpaciente paciente)
DECLARE @idpaciente paciente
set @idpaciente = 8

INSERT INTO @turnos (idturno, idpaciente)
SELECT TP.idTurno, TP.idPaciente FROM Paciente P
	INNER JOIN TurnoPaciente TP
	ON TP.idPaciente = P.idPaciente

DECLARE @i int, @total int
SET @i = 1
SET @total = (SELECT COUNT(*) FROM @turnos)

WHILE @i <= (SELECT COUNT(*) FROM @turnos)
BEGIN
	IF (SELECT idpaciente FROM @turnos WHERE id = @i) <> @idpaciente
		DELETE FROM @turnos WHERE id = @i

	SET @i = @i + 1
END

SELECT * FROM Paciente P
	INNER JOIN @turnos T
	ON T.idpaciente = P.idpaciente