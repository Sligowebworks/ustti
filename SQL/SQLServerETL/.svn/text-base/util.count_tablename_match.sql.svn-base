
/* total user tables in target and table names that match */

SELECT (SELECT count(*) from ustti.dbo.sysobjects where xtype= 'U') as 'count', 
t.id, t.name
FROM ustti.dbo.sysobjects t
INNER JOIN USTTI_Oct29_Migration.dbo.sysobjects i
	on t.name = i.name and t.xtype = 'U'
;

