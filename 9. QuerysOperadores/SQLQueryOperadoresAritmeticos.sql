-- declare @num1 decimal(9,2)=20
-- declare @num2 decimal(9,2)=30
declare @num1 varchar(20)='Hola me llamo'
declare @num2 varchar(20)='José'

declare @result varchar(40)

set @result = @num1 + ' ' + @num2

print @result

