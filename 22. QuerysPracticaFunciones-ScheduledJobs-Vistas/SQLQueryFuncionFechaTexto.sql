
-- print dbo.fcn_fechatexto ('20190515')

ALTER FUNCTION FCN_FechaTexto (@fecha datetime)

RETURNS VARCHAR(60)

AS
BEGIN
	DECLARE @dia varchar(20)
	set @dia = (CASE 
					WHEN DATEPART(dw, @fecha) = 1 THEN 'Domingo ' + CONVERT(CHAR(2), DATEPART(dd, @fecha))
					WHEN DATEPART(dw, @fecha) = 2 THEN 'Lunes ' + CONVERT(CHAR(2), DATEPART(dd, @fecha))
					WHEN DATEPART(dw, @fecha) = 3 THEN 'Martes ' + CONVERT(CHAR(2), DATEPART(dd, @fecha))
					WHEN DATEPART(dw, @fecha) = 4 THEN 'Miércoles ' + CONVERT(CHAR(2), DATEPART(dd, @fecha))
					WHEN DATEPART(dw, @fecha) = 5 THEN 'Jueves ' + CONVERT(CHAR(2), DATEPART(dd, @fecha))
					WHEN DATEPART(dw, @fecha) = 6 THEN 'Viernes ' + CONVERT(CHAR(2), DATEPART(dd, @fecha))
					WHEN DATEPART(dw, @fecha) = 7 THEN 'Sábado ' + CONVERT(CHAR(2), DATEPART(dd, @fecha))
				END)
	
	DECLARE @mes varchar(20)
	set @mes = (CASE WHEN datepart(mm,@fecha) = 1 THEN 'Enero'
					WHEN DATEPART(mm, @fecha) = 2 THEN 'Febrero'
					WHEN DATEPART(mm, @fecha) = 3 THEN 'Marzo'
					WHEN DATEPART(mm, @fecha) = 4 THEN 'Abril'
					WHEN DATEPART(mm, @fecha) = 5 THEN 'Mayo'
					WHEN DATEPART(mm, @fecha) = 6 THEN 'Junio'
					WHEN DATEPART(mm, @fecha) = 7 THEN 'Julio'
					WHEN DATEPART(mm, @fecha) = 8 THEN 'Agosto'
					WHEN DATEPART(mm, @fecha) = 9 THEN 'Septiembre'
					WHEN DATEPART(mm, @fecha) = 10 THEN 'Octubre'
					WHEN DATEPART(mm, @fecha) = 11 THEN 'Noviembre'
					WHEN DATEPART(mm, @fecha) = 12 THEN 'Diciembre'
				 END)
	DECLARE @fechatexto varchar(50)
	set @fechatexto = @dia + ' de ' + @mes

	RETURN @fechatexto

END

