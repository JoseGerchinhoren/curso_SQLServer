-- Obtener un listado de la cantidad de caracteres que tiene el campo Domicilio de la tabla Paciente.

SELECT 
    Domicilio,
    LEN(Domicilio) AS CantidadCaracteres
FROM Paciente;
