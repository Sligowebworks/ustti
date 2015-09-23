USE ustti
GO

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE id = object_id(N'ad_hoc_funders')
	AND OBJECTPROPERTY(id, 
	N'IsView') = 1
)
DROP VIEW ad_hoc_funders
GO

CREATE VIEW ad_hoc_funders AS

SELECT --DISTINCT 
	[Student_ID] = student.studentid
,	[Course_ID] = courses.CourseID
,	[Funder_ID] = er.Funderid
,	[Funding_ID] = ing.fundid
,	[Name] = FunderName
,	[Last] = student.lastname 
,	[First] = student.firstname
,	[Type] = er_t.fundertypdes
,	[Title] = CrseTitle1
FROM 
		funding ing --fundtypid, funderid, applicationid, studentid
	LEFT OUTER JOIN fundtype ing_t
		on ing_t.fundtypid = ing.fundtypid
	INNER JOIN 	funders	er --fundertypid
		on ing.funderid = er.funderid
	LEFT OUTER JOIN fundertype er_t --
		on er_t.fundertypid = er.fundertypid
	--~~--~~--
	LEFT OUTER JOIN studentcourse sc
		on ing.studentid = sc.studentid
	INNER JOIN	courses 
		on courses.courseid = sc.courseid
	LEFT OUTER JOIN sponsorcrse 
		on courses.courseid = sponsorcrse.courseid 
	INNER JOIN sponsors
		on courses.prisponsid = sponsors.sponsid OR sponsorcrse.sponsid = sponsors.sponsid
	LEFT OUTER JOIN student
		on student.studentid = ing.studentid

GO

use [ustti]
GO
GRANT DELETE ON [dbo].[ad_hoc_funders] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT INSERT ON [dbo].[ad_hoc_funders] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT REFERENCES ON [dbo].[ad_hoc_funders] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT SELECT ON [dbo].[ad_hoc_funders] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT UPDATE ON [dbo].[ad_hoc_funders] TO [usttiwebmgr]
GO



/*
SELECT * FROM funding ing FULL OUTER JOIN
	funders	er on er.funderid = ing.funderid
WHERE er.funderid IS NULL OR ing.funderid IS NULL

*/
