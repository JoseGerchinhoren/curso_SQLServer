CREATE TABLE #mitabla (id int IDENTITY(1,1), nombre varchar(50), apellido varchar(50))

INSERT INTO #mitabla VALUES ('Alejando', 'Lopez')
INSERT INTO #mitabla VALUES ('Rafael', 'Castillo')
INSERT INTO #mitabla VALUES ('Fernando', 'Gonzalez')

SELECT * FROM #mitabla

DROP TABLE #mitabla