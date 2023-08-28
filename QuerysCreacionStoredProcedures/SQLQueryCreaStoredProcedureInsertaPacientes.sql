-- SELECT * FROM Paciente
-- Para crear
CREATE PROC Alta_Paciente(
	@dni varchar(20),
	@nombre varchar(50),
	@apellido varchar(50),
	@fnacimiento varchar(8),
	@domicilio varchar(50),
	@idpais varchar(3),
	@telefono varchar(20) = '',
	@email varchar(30),
	@observacion varchar(1000) = ''
	)
AS

-- Para editar
ALTER PROC Alta_Paciente(
	@dni varchar(20),
	@nombre varchar(50),
	@apellido varchar(50),
	@fnacimiento varchar(50),
	@domicilio varchar(50),
	@idpais varchar(3),
	@telefono varchar(20) = '',
	@email varchar(30),
	@observacion varchar(1000) = ''
	)
AS

IF NOT EXISTS (SELECT * FROM Paciente WHERE dni=@dni)
BEGIN
	INSERT INTO Paciente (dni, nombre, apellido, fNacimiento, domicilio, idPais, telefono, email, observacion)
	VALUES (@dni, @nombre, @apellido, @fnacimiento, @domicilio, @idpais, @telefono, @email, @observacion)
	print 'El paciente se agrego correctamente.'
	return
END
ELSE
BEGIN
	PRINT 'El paciente ya existe.'
	return
END


EXEC Alta_Paciente '2345354', 'Jorge', 'Lopez', '20180528', 'Calle 1', 'PER', '','jorgelopez@gmail.com',''

SELECT * FROM Paciente