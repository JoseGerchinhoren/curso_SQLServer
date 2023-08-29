SELECT * FROM Turno

SELECT estado FROM Turno GROUP BY estado HAVING COUNT(estado) = '1'