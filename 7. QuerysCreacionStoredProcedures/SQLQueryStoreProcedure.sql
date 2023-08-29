CREATE PROC SP_paciente (
	@idPaciente int
)
AS

SELECT apellido, nombre, idPais, observacion FROM Paciente WHERE idPaciente = @idPaciente

GO

