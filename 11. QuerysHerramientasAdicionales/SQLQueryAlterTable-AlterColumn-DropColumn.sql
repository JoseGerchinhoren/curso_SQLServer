select * from Paciente

ALTER TABLE Paciente ADD Estado smallint

ALTER TABLE Paciente ALTER COLUMN Estado bit

ALTER TABLE Paciente DROP COLUMN Estado