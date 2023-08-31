CREATE PROC UPD_Paciente(
	@idpaciente paciente,
	@nombre varchar(50),
	@apellido varchar(50),
	@observacion observacion
)
as
set nocount on

/*
SELECT * FROM Paciente
EXEC sp_help Paciente
*/

IF EXISTS (SELECT * FROM Paciente WHERE idPaciente = @idpaciente)
	UPDATE Paciente SET nombre = @nombre,
					apellido = @apellido,
					observacion = @observacion
	WHERE idPaciente = @idpaciente
ELSE
	SELECT 0 AS Resultado

/*
exec UPD_Paciente 4, 'Jose', 'Gomez', 'Nada'
*/
