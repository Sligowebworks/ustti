USE ustti;
GO
use USTTI_Oct29_Migration;
GO

DECLARE @tbl char(30)
SET @tbl = 'courses'

SELECT o.name as [table], c.name, c.type, c.usertype, t.name, c.length, t.xprec
FROM 
	dbo.sysobjects o
INNER JOIN dbo.syscolumns c
	on o.id = c.id AND o.xtype = 'U' AND o.name <> 'dtproperties' 
INNER JOIN dbo.systypes t 
	on c.xtype = t.xtype
WHERE o.name = @tbl
ORDER BY o.name, c.colid
;
