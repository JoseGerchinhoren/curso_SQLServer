DECLARE @var1 varchar(20)
set @var1 = 'Ramiro'
DECLARE @var2 varchar(20)
set @var2 = 'Gonzalez'
print LEFT(@var1,LEN(@var1)-1) -- + LEFT(@var2,1)

print LEN(@var2)