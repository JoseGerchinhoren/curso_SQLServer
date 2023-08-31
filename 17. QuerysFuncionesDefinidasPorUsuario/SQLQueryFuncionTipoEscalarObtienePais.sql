CREATE FUNCTION obtenerPais (
	@idpaciente paciente
	)
RETURNS varchar(50)
AS
BEGIN
	DECLARE @pais varchar(50)
	SET @pais = (
			SELECT PA.Pais FROM Paciente P
			INNER JOIN Pais PA
			ON PA.idPais = P.idPais
			WHERE idPaciente = @idpaciente)
	RETURN @pais
END

SELECT dbo.obtenerPais(3)

SELECT * FROM Paciente