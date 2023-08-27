DECLARE @contador int

BEGIN TRY
	set @contador = 'texto'
END TRY

BEGIN CATCH
	PRINT 'No es posible asignar un texto a la variable @contador'
END CATCH