USE ustti
GO

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE id = object_id(N'ad_hoc_student_extended')
	AND OBJECTPROPERTY(id, 
	N'IsView') = 1
)
DROP VIEW ad_hoc_student_extended
GO

CREATE VIEW ad_hoc_student_extended AS

	SELECT country.COUNTRYNAMe as 'Country'
	, student.PNG
	, student.SEX as 'Gender'
	, student.HONORIFIC as 'hon.'
	, student.FIRSTNAME as 'First'
	, student.MIDDLENAME as 'Middle'
	, student.LASTNAME as 'Last'
	, student.SUFFIX as 'suf.'
	, student.DOB as 'D.O.B.'
	, student.BUSPHONE
	, student.HOMEPHONE
	, student.FAX
	, student.cellphone -- TELEX
	, student.BUSEMAIL as 'W. Email'
	, student.HOMEEMAIL as 'H. email'
	, student.ADDRESS1
	, student.ADDRESS2
	, student.CITY
	, student.ORG as 'Organization'
	, student.ORG2 as 'Organization 2'
	, student.TITLE
	, student.SUPERNAME as 'Supervisor' 
	, student.SUPERTITLE as 'Sup. Title'
	, student.superemail as 'Sup. Email'
	--, student.catalogue
	, student.homeaddress1 as 'Home Addr.'
	, student.HOMEADDress2 as 'Home Addr. 2'
	, student.HOMECITY as 'Home City'
	, student.memo
	
	FROM 
	student INNER JOIN studentcourse 
	on studentcourse.studentid = student.studentid
	INNER JOIN application on studentcourse.applicationid = application.applicationid
	INNER JOIN courses on studentcourse.COURSEID = courses.COURSEid 
	INNER JOIN orientation on application.ORIENTID = orientation.ORIENTid 
	INNER JOIN country on student.COUNTRYID = country.COUNTRYid
	
GO

use [ustti]
GO
GRANT DELETE ON [dbo].[ad_hoc_student_extended] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT INSERT ON [dbo].[ad_hoc_student_extended] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT REFERENCES ON [dbo].[ad_hoc_student_extended] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT SELECT ON [dbo].[ad_hoc_student_extended] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT UPDATE ON [dbo].[ad_hoc_student_extended] TO [usttiwebmgr]
GO
