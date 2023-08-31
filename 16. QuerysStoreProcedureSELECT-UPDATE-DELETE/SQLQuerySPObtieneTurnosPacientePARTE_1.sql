CREATE PROC SELECT_TurnosPaciente(
	@idpaciente paciente
)
AS
SET NOCOUNT ON

/*
SELECT * FROM Turno
SELECT * FROM TurnoPaciente
SELECT * FROM Paciente
SELECT * FROM MedicoEspecialidad
INSERT INTO MedicoEspecialidad VALUES (1,2,'Medico clinico')
*/

SELECT * FROM Paciente P
INNER JOIN TurnoPaciente TP
ON TP.idPaciente = P.idPaciente
INNER JOIN Turno T
ON T.idTurno = TP.idTurno
INNER JOIN MedicoEspecialidad M
ON M.idMedico = TP.idMedico
WHERE P.idPaciente = @idpaciente

EXEC SELECT_TurnosPaciente 1