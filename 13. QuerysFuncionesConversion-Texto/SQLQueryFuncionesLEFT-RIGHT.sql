DECLARE @var1 varchar(20)
set @var1 = 'Ramiro'
-- print LEFT(@var1, 2)
--print RIGHT(@var1, 2)
DECLARE @var2 varchar(20)
set @var2 = 'Gonzalez'
print LEFT(@var1,1) + LEFT(@var2,1)