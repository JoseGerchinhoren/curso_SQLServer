-- Esta query sirve para probar cuando se crea un nuevo usuario y solo tiene los permisos para el esquema facturacion.


ALTER SCHEMA facturacion transfer pais

ALTER SCHEMA facturacion transfer medico

-- Con nuevo usuario:

SELECT * FROM Facturacion.Pais

SELECT * FROM dbo.paciente

ALTER SCHEMA dbo transfer Facturacion.Pais

ALTER SCHEMA dbo transfer Facturacion.Medico
