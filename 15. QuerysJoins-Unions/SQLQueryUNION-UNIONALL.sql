SELECT * FROM Turno WHERE estado = 3
UNION
SELECT * FROM Turno WHERE estado = 1

-- La siguiente query no tiene que funcionar porque los campos de las tablas son diferentes
SELECT * FROM Turno
UNION
SELECT * FROM Paciente

SELECT * FROM Turno
UNION ALL -- Lo que hace es traer los repetidos tambien
SELECT * FROM Turno