USE [CentroMedico]
GO
/****** Object:  StoredProcedure [dbo].[SP_paciente]    Script Date: 25/8/2023 15:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SP_paciente] (
	@idPaciente int
)
AS

SELECT apellido, nombre, idPais, observacion, 
	(SELECT ps.Pais FROM Pais ps WHERE ps.idPais = pa.idPais) descPais
FROM Paciente pa WHERE idPaciente = @idPaciente

