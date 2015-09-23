USE ustti
GO

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE id = object_id(N'ad_hoc_status')
	AND OBJECTPROPERTY(id, 
	N'IsView') = 1
)
DROP VIEW ad_hoc_status
GO

CREATE VIEW ad_hoc_status AS

	SELECT country.COUNTRYNAMe as 'Country'
	, studentcourse.studentid as 'Applicant ID'
	, studentcourse.ACCEPTED as 'Accepted'
	, studentcourse.CONFIRMED as 'Confirmed'
	, studentcourse.PARTICIPAT as 'Participated'
	, student.HONORIFIC as 'Prefix'
	, student.LASTNAME as 'Last'
	, student.FIRSTNAME as 'First'
	, student.SUFFIX as 'Suffix'
	, courses.COURSEcode as 'Course Num'
	, courses.CRSETITLE1 as 'Title'
	, courses.CRSETITLE2 as 'Title 2'
	, studentcourse.[YEAR] 
	FROM 
	studentcourse INNER JOIN courses 
	on studentcourse.COURSEID = courses.COURSEid
	INNER JOIN student 
	on studentcourse.studentid = student.studentid
	INNER JOIN country 
	on student.COUNTRYID = country.COUNTRYid
	
GO

use [ustti]
GO
GRANT DELETE ON [dbo].[ad_hoc_status] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT INSERT ON [dbo].[ad_hoc_status] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT REFERENCES ON [dbo].[ad_hoc_status] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT SELECT ON [dbo].[ad_hoc_status] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT UPDATE ON [dbo].[ad_hoc_status] TO [usttiwebmgr]
GO
