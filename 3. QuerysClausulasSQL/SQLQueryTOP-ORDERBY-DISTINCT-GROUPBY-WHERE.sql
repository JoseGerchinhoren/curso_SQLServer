SELECT TOP 2 * FROM Paciente

SELECT * FROM Paciente ORDER BY fNacimiento DESC

SELECT TOP 1 * FROM Paciente ORDER BY fNacimiento DESC

SELECT DISTINCT fNacimiento FROM Paciente

SELECT idPais FROM Paciente GROUP BY idPais

SELECT * FROM Paciente WHERE idPais = 'ARG'

SELECT * FROM Paciente WHERE apellido = 'Perez'
