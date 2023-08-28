-- SELECT * FROM Paciente
-- Para crear
CREATE PROC Alta_Paciente(
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