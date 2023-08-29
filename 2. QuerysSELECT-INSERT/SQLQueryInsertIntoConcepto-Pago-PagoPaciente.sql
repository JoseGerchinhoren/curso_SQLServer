SELECT * FROM Concepto

SELECT * FROM Pago

SELECT * FROM PagoPaciente

SELECT * FROM Turno

INSERT INTO Concepto VALUES ('Laboratorio'), ('Radiografia');

INSERT INTO Pago VALUES (1, '2019-02-15', 4500, 0, 'Pago pendiente'), 
(2, '2019-05-20', 6800, 0, 'Pago pendiente'),
(1, '2019-09-27', 5600, 0, 'Pago pendiente');

INSERT INTO PagoPaciente VALUES (3, 3, 2);


