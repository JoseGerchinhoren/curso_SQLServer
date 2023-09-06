/*
Es buena practica realizar primero un SELECT para ver el resultado deseado, luego se hace el update
SELECT * FROM Turno
*/
UPDATE turno SET estado = 2
WHERE convert(char(8), fechaTurno, 112) < convert(char(8), getdate(), 112)
AND estado = 0