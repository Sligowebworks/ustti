USE ustti
GO

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE id = object_id(N'ad_hoc_default')
	AND OBJECTPROPERTY(id, 
	N'IsView') = 1
)
DROP VIEW ad_hoc_default
GO

CREATE VIEW ad_hoc_default AS


	SELECT 
	country.countryname as 'Country', 
	studentcourse.studentid as 'Applicant ID'	, 
	student.lastname as 'Last', 
	student.firstname as 'First', 
	student.dob as 'D.O.B.', 
	courses.trainfrom as 'Orientation Start', --orientation.date_from as 'Orientation Start', 
	courses.coursecode as 'Course Num', 
	courses.CRSETITLE1 as 'Title', 
	courses.CRSETITLE2 as 'Title 2', 
	courses.TRAINFROM as 'Start Date'
	FROM
	studentcourse INNER JOIN courses on studentcourse.courseid = courses.courseid 
	INNER JOIN student on studentcourse.studentid = student.studentid
	--INNER JOIN orientation on courses.orientid = orientation.orientid
	INNER JOIN country on student.countryid = country.countryid

GO

use [ustti]
GO
GRANT DELETE ON [dbo].[ad_hoc_default] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT INSERT ON [dbo].[ad_hoc_default] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT REFERENCES ON [dbo].[ad_hoc_default] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT SELECT ON [dbo].[ad_hoc_default] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT UPDATE ON [dbo].[ad_hoc_default] TO [usttiwebmgr]
GO

/*
SELECT top 100 * FROM studentcourse
INNER JOIN courses on studentcourse.courseid = courses.courseid
INNER JOIN student on studentcourse.studentid = student.studentid
--INNER JOIN orientation on courses.orientid = orientation.orientid
INNER JOIN country on student.countryid = country.countryid


*/