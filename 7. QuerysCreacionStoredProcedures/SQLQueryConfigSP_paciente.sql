USE [CentroMedico]
GO
/****** Object:  StoredProcedure [dbo].[SP_paciente]    Script Date: 25/8/2023 00:53:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SP_paciente] (
	@idPaciente int
)
AS

DECLARE @ordenamiento CHAR(1)
-- SET @ordenamiento = 'A' -- Es para ahorrarse una linea que no se hace esto, asi se puede cambiar el valor por ejemplo a 'D' para que sea descendente.
DECLARE @valorOrdenamiento CHAR(1) = ISNULL (@ordenamiento, 'A')

PRINT @valorOrdenamiento


SELECT apellido, nombre, idPais, observacion FROM Paciente WHERE idPaciente = @idPaciente

