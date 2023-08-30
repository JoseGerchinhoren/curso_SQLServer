DECLARE @var1 varchar(20)
set @var1 = '    Ramiro    '
DECLARE @var2 varchar(20)
set @var2 = 'Gonzalez     '

SELECT LTRIM(RTRIM(@var1)) + ' ' + LTRIM(RTRIM(@var2)) + '*'