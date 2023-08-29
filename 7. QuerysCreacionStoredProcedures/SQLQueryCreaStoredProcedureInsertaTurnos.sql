-- SELECT * FROM Turno
-- Para crear
/*
CREATE PROC Alta_Turno(
	@fecha char(14),
	@idpaciente paciente,
	@idmedico medico,
	@observacion observacion=''
	)
AS


Estado = 0 (pendiente)
Estado = 1 (realizado)
Estado = 2 (cancelado)
*/

-- Para editar

ALTER PROC Alta_Paciente(
	@fecha char(14),
	@idpaciente paciente,
	@idmedico medico,
	@observacion observacion=''
	)
AS


set nocount on

IF NOT EXISTS (SELECT TOP 1 idTurno FROM Turno WHERE fechaTurno=@fecha)
BEGIN
	INSERT INTO Turno(fechaTurno, estado, observacion)
	VALUES (@fecha, 0, @observacion)

	DECLARE @auxIdTurno turno
	SET @auxIdTurno = @@IDENTITY

	INSERT INTO TurnoPaciente (idTurno,idPaciente,idMedico)
	VALUES (@auxIdTurno,@idpaciente,@idmedico)

	print 'El turno se agrego correctamente.'
	return
END
ELSE
BEGIN
	PRINT 'El turno ya existe.'
	return
END


EXEC Alta_Turno '20190219 8:15', 2, 3, 'Nada'
/*
select * from Medico
select * from Paciente
SELECT * FROM Turno
*/