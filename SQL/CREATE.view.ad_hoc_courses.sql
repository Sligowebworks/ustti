 USE ustti
GO

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE id = object_id(N'ad_hoc_courses')
	AND OBJECTPROPERTY(id, 
	N'IsView') = 1
)
DROP VIEW ad_hoc_courses
GO

CREATE VIEW ad_hoc_courses AS

	SELECT
	courses.coursecode as 'Course Num'
	, courses.CRSETITLE1 as 'Title'
	, courses.CRSETITLE2 as 'Title 2'
	, courses.TRAINFROM as 'Start Date'
	, courses.TRAINTO as 'End Date'
	, courses.LOCATION as 'Location'
	, courses.COORDINAToR as 'Coordinator'
	, courses.COURSEYEAR as 'Year'
	, sponsors.sponsabbr as 'Primary Sponsor'
	/*, orient.[FROM] as 'Orientation Start'
	, orient.[TO] as 'Orientation End' 
*/
	FROM 
		courses 
	LEFT OUTER JOIN sponsorcrse 
		on courses.courseid = sponsorcrse.courseid 
	INNER JOIN sponsors
		on courses.prisponsid = sponsors.sponsid OR sponsorcrse.sponsid = sponsors.sponsid
		--courses	INNER JOIN orient 
		--on courses.ORIENTID = orient.ORIENTKEY 
	
GO

use [ustti]
GO
GRANT DELETE ON [dbo].[ad_hoc_courses] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT INSERT ON [dbo].[ad_hoc_courses] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT REFERENCES ON [dbo].[ad_hoc_courses] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT SELECT ON [dbo].[ad_hoc_courses] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT UPDATE ON [dbo].[ad_hoc_courses] TO [usttiwebmgr]
GO

SELECT * FROM ad_hoc_courses --WHERE rtrim([Title 2]) <> '';