DECLARE @InputString NVARCHAR(100)
SET @InputString = N'Нажал кабан на баклажан' 

SET @InputString = REPLACE(@InputString, ' ', '')

IF @InputString = REVERSE(@InputString)
    PRINT 'Строка является палиндромом'
ELSE
    PRINT 'Строка не является палиндромом'

--------------------------

DECLARE @String nvarchar(max), @Word nvarchar(max)
SET @String = N'World, world, world, world'
SET @Word = N'world'

SELECT (LEN(@String) - LEN(REPLACE(@String, @Word, ''))) / LEN(@Word) as WordCount

--------------------------

CREATE TABLE SpamWords (
    Word nvarchar(50)
)

INSERT INTO SpamWords (Word) VALUES ('viagra'), ('ХХХ')

DECLARE @str nvarchar(50) = 'buy ViAgRA now'

IF EXISTS (SELECT 1 FROM SpamWords WHERE LOWER(@str) LIKE '%' + LOWER(Word) + '%')
    PRINT 'это спам'
ELSE
    PRINT 'это не спам'