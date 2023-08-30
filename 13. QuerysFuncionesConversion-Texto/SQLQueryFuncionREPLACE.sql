DECLARE @var1 varchar(20)
set @var1 = 'Ramir"o'
DECLARE @var2 varchar(20)
set @var2 = 'Gonz@alez'

SELECT REPLACE(@var1, '"','')

SELECT REPLACE(@var2, '@','')