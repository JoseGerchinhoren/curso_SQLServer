SELECT * FROM Paciente
SELECT * FROM TurnoPaciente

SELECT * FROM Paciente P
INNER JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente