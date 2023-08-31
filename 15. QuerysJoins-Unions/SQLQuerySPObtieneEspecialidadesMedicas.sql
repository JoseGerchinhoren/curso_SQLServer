CREATE PROC SEL_EspecialidadesMedicas

AS
SET NOCOUNT ON

IF EXISTS (SELECT * FROM Especialidad)
	SELECT * FROM Especialidad
ELSE
	SELECT 0 AS resultado

-- exec SEL_EspecialidadesMedicas