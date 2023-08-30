DECLARE @numero money
set @numero = 500.40
PRINT @numero

-- cast es solo para visualizacion en el momento.
-- SELECT CAST(@numero AS INT) as numero

-- SELECT CAST(idPaciente as money) as idCasteado from Paciente

SELECT CONVERT(INT, @numero)

DECLARE @fecha datetime
set @fecha = GETDATE()
PRINT @fecha

PRINT CONVERT(CHAR(20), @fecha, 111)
--112 es un codigo para que aparezcan los numeros de fecha seguidos como 20230830. Hay varios formatos

