SELECT * FROM Turno

SELECT * FROM Turno WHERE estado IN (0, 2, 1, 3)

SELECT * FROM Paciente WHERE apellido IN ('perez', 'ramirez', 'Lopez')

SELECT * FROM Paciente WHERE nombre LIKE '%OBER%'

SELECT * FROM Paciente WHERE nombre NOT LIKE '%OBER%'

SELECT * FROM Paciente WHERE apellido NOT IN ('perez', 'ramirez', 'Lopez')

SELECT * FROM Turno WHERE fechaTurno BETWEEN '20190102' AND '20230314'

SELECT * FROM Turno WHERE estado BETWEEN 0 AND 1

SELECT * FROM Paciente WHERE apellido = 'perez' AND nombre= 'roberto' OR idPaciente = 4 OR idPais = 'per'

SELECT * FROM Paciente WHERE apellido = 'perez' AND (nombre= 'roberto' OR idPaciente = 4 OR idPais = 'per')

