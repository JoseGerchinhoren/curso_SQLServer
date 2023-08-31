CREATE FUNCTION concatenar (
	@apellido varchar(50),
	@nombre varchar(50)
	)
RETURNS varchar(100)
AS
BEGIN
	DECLARE @resultado varchar(100)
	SET @resultado = @apellido + ', ' + @nombre
	RETURN @resultado
END

SELECT dbo.concatenar('Lopez', 'Roberto')