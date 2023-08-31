CREATE FUNCTION listaPaises()
RETURNS @paises TABLE(idPais char(3), pais varchar(50))
AS
BEGIN

	INSERT INTO @paises VALUES('ESP', 'España')
	INSERT INTO @paises VALUES('MEX', 'Mexico')
	INSERT INTO @paises VALUES('CHI', 'Chile')
	INSERT INTO @paises VALUES('PER', 'Peru')
	INSERT INTO @paises VALUES('ARG', 'Argentina')
	
	RETURN
END

SELECT * FROM dbo.listaPaises()