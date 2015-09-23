USE ustti
GO

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE id = object_id(N'ad_hoc_sponsors')
	AND OBJECTPROPERTY(id, 
	N'IsView') = 1
)
DROP VIEW ad_hoc_sponsors
GO

CREATE VIEW ad_hoc_sponsors AS
SELECT --DISTINCT (small difference, not sure what that means -mzd)

	[SponsorID] = S.sponsid
,	[CourseID] = courses.courseid
,	[Course Num] = courses.coursecode
,	[Course] = courses.crsetitle1
,	[Sponsor] = sponsname
,	[Abbr.] = S.sponsabbr
--,	* 
	FROM 
		courses 
	LEFT OUTER JOIN sponsorcrse 
		on courses.courseid = sponsorcrse.courseid 
	INNER JOIN sponsors S
		on courses.prisponsid = S.sponsid OR sponsorcrse.sponsid = S.sponsid

GO

use [ustti]
GO
GRANT DELETE ON [dbo].[ad_hoc_sponsors] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT INSERT ON [dbo].[ad_hoc_sponsors] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT REFERENCES ON [dbo].[ad_hoc_sponsors] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT SELECT ON [dbo].[ad_hoc_sponsors] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT UPDATE ON [dbo].[ad_hoc_sponsors] TO [usttiwebmgr]
GO


--SELECT [count] = count(*) from ad_hoc_sponsors
SELECT * FROM ad_hoc_sponsors