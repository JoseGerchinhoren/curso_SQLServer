SELECT * FROM Paciente;

UPDATE Paciente 
SET observacion = 'sin observacion'; 

UPDATE Paciente 
SET email = 'correo@mail.com' 
WHERE idPaciente = 4

UPDATE Paciente 
SET DNI = '4444444', domicilio = 'Calle 211512'
WHERE idPaciente = 4

DELETE FROM Paciente WHERE idPaciente = 6