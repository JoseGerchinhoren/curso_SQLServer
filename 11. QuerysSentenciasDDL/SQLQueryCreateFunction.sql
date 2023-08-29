CREATE FUNCTION nombrefun (@var int)
RETURNS int

AS

BEGIN
	SET @var = @var * 5
	return @var
END


SELECT dbo.nombrefun (5)