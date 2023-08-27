DECLARE @idpaciente int
DECLARE @idturno int

SET @idpaciente = 7

IF @idpaciente = 7
BEGIN
	SET @idturno = 20
	SELECT * FROM Paciente WHERE idPaciente = @idpaciente
	PRINT @idturno
	IF EXISTS (SELECT * FROM Paciente WHERE idPaciente = 4)
		PRINT 'Existe'
END
ELSE
BEGIN
	PRINT 'No se cumplio la condicion'
END
