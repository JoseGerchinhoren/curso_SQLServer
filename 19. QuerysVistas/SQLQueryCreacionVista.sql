-- Lo que hace la vista es almacenar una consulta en la base de datos, y cuando la ejecutamos se actualiza. 
-- De esta forma el resultado va a ser mas rapido.

CREATE VIEW PacientesTurnosPendientes AS

SELECT P.idPaciente, P.nombre, P.apellido, T.idTurno, T.estado 
	FROM Paciente P
	INNER JOIN TurnoPaciente TP
	ON TP.idPaciente = P.idPaciente
	INNER JOIN Turno T
	ON T.idTurno = TP.idTurno
WHERE isnull(T.estado,0) = 0

-- Para probarla, se la toma como si fuera una tabla
SELECT * FROM PacientesTurnosPendientes