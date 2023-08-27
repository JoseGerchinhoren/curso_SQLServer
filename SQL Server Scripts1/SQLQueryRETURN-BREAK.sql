-- RETURN
DECLARE @contador int = 0

WHILE @contador <= 10
BEGIN
	PRINT @contador
	set @contador = @contador + 1
	if @contador = 3
		RETURN
	PRINT 'HOLA'
END
PRINT 'SIGUE EJECUTANDO'

-- BREAK
DECLARE @contador int = 0

WHILE @contador <= 10
BEGIN
	PRINT @contador
	set @contador = @contador + 1
	if @contador = 3
		BREAK
END
PRINT 'SIGUE EJECUTANDO'