CREATE PROC SEL_HistoriaPaciente(
	@idpaciente paciente)
as
set nocount on

/*
SELECT * FROM Historia
SELECT * FROM HistoriaPaciente
SELECT * FROM Paciente
*/
IF EXISTS (
		SELECT * FROM Paciente P
		INNER JOIN HistoriaPaciente HP
		ON HP.idPaciente = P.idPaciente
		INNER JOIN Historia H
		ON H.idHistoria = HP.idHistoria
		INNER JOIN MedicoEspecialidad ME
		ON ME.idMedico = HP.idMedico
		INNER JOIN Medico M
		ON M.idMedico = ME.idMedico
		WHERE P.idPaciente = @idpaciente)
	SELECT * FROM Paciente P
	INNER JOIN HistoriaPaciente HP
	ON HP.idPaciente = P.idPaciente
	INNER JOIN Historia H
	ON H.idHistoria = HP.idHistoria
	INNER JOIN MedicoEspecialidad ME
	ON ME.idMedico = HP.idMedico
	INNER JOIN Medico M
	ON M.idMedico = ME.idMedico
	WHERE P.idPaciente = @idpaciente
ELSE
	-- PRINT ('No existen historas clinicas para el paciente')
	select 0 as resultado
-- exec SEL_HistoriaPaciente 1