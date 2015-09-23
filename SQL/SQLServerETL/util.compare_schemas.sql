USE master
GO
/*
SELECT [table] = o.name, [column] = c.name, [type]  = t.name, c.length, c.xprec, c.xscale FROM 
dbo.sysobjects o
INNER JOIN
dbo.syscolumns c
	on o.id = c.id
INNER JOIN dbo.systypes t 
	on c.xtype = t.xtype
WHERE
o.xtype = 'U' 
ORDER BY o.name, c.name
*/
/*
SELECT sysobjects.name, text FROM syscomments
INNER JOIN
sysobjects on syscomments.id = sysobjects.id
*/

DECLARE @single_column char(50)
DECLARE @single_table char(50)

SET @single_column = ''
SET @single_table = 'courses'

SELECT 
[Done] = CASE WHEN a.T_type = b.I_type AND a.length = b.length AND a.T_column = b.I_column THEN 'TRUE' ELSE 'FALSE' END, 
[typetest] = CASE WHEN a.T_type = b.I_type THEN 'TRUE' ELSE 'FALSE' END, 
[lengthtest] = CASE WHEN a.length = b.length THEN 'TRUE' ELSE 'FALSE' END,
[colnametest] = CASE WHEN a.T_column = b.I_column THEN 'TRUE' ELSE 'FALSE' END,
* FROM
(
SELECT [T_table] = o.name, c.xprec, c.xscale, c.colorder, [T_column] = c.name, [T_type]  = t.name, c.length 
FROM 
ustti.dbo.sysobjects o
INNER JOIN
ustti.dbo.syscolumns c
	on o.id = c.id
INNER JOIN 
ustti.dbo.systypes t 
	on c.xtype = t.xtype
WHERE
o.xtype = 'U' 
AND o.name <> 'dtproperties'
) a
FULL OUTER JOIN
(
SELECT [I_type]  = t.name, c.length, [I_column] = c.name, [I_table] = o.name,  c.xprec, c.xscale, c.colorder
FROM 
USTTI_Oct29_Migration.dbo.sysobjects o
INNER JOIN
USTTI_Oct29_Migration.dbo.syscolumns c
	on o.id = c.id 
INNER JOIN 
USTTI_Oct29_Migration.dbo.systypes t 
	on c.xtype = t.xtype
WHERE
o.xtype = 'U' 

) b
on a.[T_table] = b.[I_table]
AND 
b.I_column = a.T_column
--( a.colorder = b.colorder OR b.I_column = a.T_column)

WHERE 
(
	( @single_column <> '' AND [T_column] = @single_column ) OR @single_column = ''
) AND (
	(@single_table <> '' AND [T_table] = @single_table ) OR @single_table = ''
) /*AND (
	[T_column] NOT IN ('dob', 'invalidadd', 'lastupdatetime')
)*/

ORDER BY 
[colnametest], 
[typetest],
[lengthtest],
[DONE] ASC, 
a.T_Table, a.T_column--a.colorder
--FOR XML AUTO, ELEMENTS