USE [USTTI]
GO

CREATE VIEW AD_HOC_DEFAULT 
AS
SELECT     
	country.countryname AS Country, 
	studentcourse.studentid AS [Applicant ID], 
	studentcourse.applicationid as [Application ID],
	studentcourse.accepted, studentcourse.confirmed, studentcourse.participat,
	student.lastname AS Last, student.firstname AS First, student.sex AS Gender,
	student.dob AS [DOB], courses.trainfrom AS [Orientation Start], 
	courses.coursecode AS [Course Num], courses.crsetitle1 AS Title, 
	courses.crsetitle2 AS [Title 2], courses.trainfrom AS [Start Date]
FROM         
	studentcourse INNER JOIN
      courses ON studentcourse.courseid = courses.courseid INNER JOIN
      student ON studentcourse.studentid = student.studentid INNER JOIN
      country ON student.countryid = country.countryid 
GO

CREATE VIEW AD_HOC_COURSES 
AS 
SELECT     
	courses.coursecode AS [Course Num],
	courses.courseid AS CourseID, 
	courses.crsetitle1 AS Title, courses.crsetitle2 AS [Title 2], 
	courses.trainfrom AS [Start Date], courses.trainto AS [End Date], 
	courses.location, courses.coordinator, courses.courseyear AS Year, 
      sponsors.sponsabbr AS [Primary Sponsor]
FROM         
	courses LEFT OUTER JOIN
      sponsorcrse ON courses.courseid = sponsorcrse.courseid INNER JOIN
	sponsors ON courses.prisponsid = sponsors.sponsid OR sponsorcrse.sponsid = sponsors.sponsid 
GO

CREATE VIEW AD_HOC_COUNTRIES
AS 
SELECT     
	studentcourse.studentid AS [Applicant ID], 
	studentcourse.accepted, 
	studentcourse.confirmed, 
	studentcourse.participat,
	student.lastname AS Last, 
	student.firstname AS First, 
	student.sex AS Gender,
	country.countryid AS CountryID,
	country.countryname AS Country, 
	courses.courseid AS CourseID,
	courses.coursecode AS [Course Num],
	courses.crsetitle1 AS Title, 
      courses.courseyear AS Year, 
	courses.trainfrom AS [Start Date], 
	courses.trainto AS [End Date],
      student.org AS Organization
FROM         
	studentcourse INNER JOIN
	courses ON studentcourse.courseid = courses.courseid INNER JOIN
	student ON studentcourse.studentid = student.studentid INNER JOIN
	country ON student.countryid = country.countryid 
GO

CREATE VIEW AD_HOC_FUNDERS
AS
SELECT     
	student.studentid AS Student_ID, 
	courses.courseid AS Course_ID, er.funderid AS Funder_ID, 
	ing.fundid AS Funding_ID, er.fundername AS Name, 
	student.lastname AS Last, student.firstname AS First, student.sex AS Gender,
	er_t.fundertypdes AS Type, 
	courses.crsetitle1 AS Title
FROM         
	funding AS ing LEFT OUTER JOIN
      fundtype AS ing_t ON ing_t.fundtypid = ing.fundtypid INNER JOIN
      funders AS er ON ing.funderid = er.funderid LEFT OUTER JOIN
      fundertype AS er_t ON er_t.fundertypid = er.fundertypid LEFT OUTER JOIN
      studentcourse AS sc ON ing.studentid = sc.studentid INNER JOIN
      courses ON courses.courseid = sc.courseid LEFT OUTER JOIN
      sponsorcrse ON courses.courseid = sponsorcrse.courseid INNER JOIN
      sponsors ON courses.prisponsid = sponsors.sponsid OR sponsorcrse.sponsid = sponsors.sponsid LEFT OUTER JOIN
      student ON student.studentid = ing.studentid 
GO

CREATE VIEW AD_HOC_SPONSORS
AS 
SELECT     
	S.sponsid AS SponsorID, 
	courses.courseid, 
	courses.coursecode AS [Course Num], 
	courses.crsetitle1 AS Course, 
	S.sponsname AS Sponsor, 
	S.sponsabbr AS [Abbr.],
	courses.courseyear AS Year
FROM         
	courses LEFT OUTER JOIN
	sponsorcrse ON courses.courseid = sponsorcrse.courseid INNER JOIN
      sponsors AS S ON courses.prisponsid = S.sponsid OR sponsorcrse.sponsid = S.sponsid 
GO

CREATE VIEW AD_HOC_STATUS
AS 
SELECT     
	country.countryname AS Country, 
	studentcourse.studentid AS [Applicant ID], 
	studentcourse.accepted, 
	studentcourse.confirmed, 
	studentcourse.participat, 
	student.honorific AS Prefix, 
	student.lastname AS Last, 
	student.firstname AS First, 
	student.sex AS Gender,
	student.suffix,
	student.busphone AS [BusinessPhone], 
	student.homephone, 
	student.fax AS [BusinessFax], 
	student.cellphone, 
	student.busemail AS [BusinessEmail], 
	student.homeemail AS [H. email], 
      student.address1, 
	student.address2, 
	student.city,	      
	student.org AS Organization, 
	student.org2 AS [Organization 2], 
	student.title AS [PersonTitle],
	courses.coursecode AS [Course Num], 
	courses.coursecode as CourseCode,
	courses.crsetitle1 AS Title, 
	courses.crsetitle2 AS [Title 2], 
	studentcourse.year
FROM         
	studentcourse INNER JOIN
	courses ON studentcourse.courseid = courses.courseid INNER JOIN
	student ON studentcourse.studentid = student.studentid INNER JOIN
	country ON student.countryid = country.countryid 
GO

CREATE VIEW AD_HOC_STUDENT_EXTENDED 
AS 
SELECT     
	country.countryname AS Country, 
	student.png, 
	student.sex AS Gender, 
	student.honorific AS [hon.], 
	student.firstname AS First, 
	student.middlename AS Middle, 
	student.lastname AS Last, 
	student.suffix AS [suf.], 
	student.dob AS [DOB], 
	student.busphone, 
	student.homephone, 
	student.fax, 
	student.cellphone, 
	student.busemail AS [W. Email], 
	student.homeemail AS [H. email], 
      student.address1, 
	student.address2, 
	student.city, 
	student.org AS Organization, 
	student.org2 AS [Organization 2], 
	student.title, 
      student.supername AS Supervisor, 
	student.supertitle AS [Sup. Title], 
	student.superemail AS [Sup. Email], 
      student.homeaddress1 AS [Home Addr.], 
	student.homeaddress2 AS [Home Addr. 2], 
	student.homecity AS [Home City], 
      student.memo, 
	application.year as Year
FROM         
	student INNER JOIN
      studentcourse ON studentcourse.studentid = student.studentid INNER JOIN
      application ON studentcourse.applicationid = application.applicationid INNER JOIN
      courses ON studentcourse.courseid = courses.courseid INNER JOIN
      orientation ON application.orientid = orientation.orientid INNER JOIN
      country ON student.countryid = country.countryid 

GO

CREATE VIEW AD_HOC_STUDENT_BASIC 
AS
SELECT     
	Country, 
	png, 
	Gender, 
	[hon.], 
	First, 
	Middle, 
	Last, 
	[suf.], 
	[DOB], 
	busphone, 
	homephone, 
	fax, 
	cellphone, 
	[W. Email] As Email, 
	[H. email], 
	address1, 
	address2, 
	city, 
      Organization, 
	[Organization 2], 
	title, 
	Supervisor,
	Year 
FROM         
	ad_hoc_student_extended 

GO
