USE [USTTI]
GO

CREATE PROCEDURE sp_StudentSheet(@StudentID nvarchar(15), @ApplicationID nvarchar(15) )
AS
SELECT        s.*,CONVERT(VARCHAR(12),s.dob,107) as birthday,a.*,
              CONVERT(VARCHAR(12),a.applicdate,107) as applicdate,
              CONVERT(VARCHAR(12),a.arriveus,107) as arriveus,
              CONVERT(VARCHAR(12),a.departus,107) as departus,
              CONVERT(VARCHAR(12),a.checkoutdc,107) as checkoutdc,o.*,
              CONVERT(VARCHAR(6),o.date_from,107) as date_from,
              CONVERT(VARCHAR(12),o.date_to,107) as date_to, ct.countryname 
FROM          student s INNER JOIN application a ON s.studentid=a.studentid 
INNER JOIN    country ct ON s.countryid=ct.countryid 
INNER JOIN    orientation o ON o.orientid =a.orientid 
AND           s.studentid=@StudentID AND a.applicationid=@ApplicationID 
RETURN
GO

CREATE PROCEDURE sp_CourseSheet(@StudentID nvarchar(15), @ApplicationID nvarchar(15) )
As
SELECT      sc.*,c.crsetitle1,CONVERT(VARCHAR(6),c.trainfrom,107) as trainfrom,
            CONVERT(VARCHAR(12),c.trainto,107) as trainto,sp.sponsname as primarysponsor 
FROM        studentcourse sc INNER JOIN courses c ON sc.courseid=c.courseid
INNER JOIN  sponsors sp ON c.prisponsid=sp.sponsid
AND         sc.studentid=@studentid 
AND         sc.applicationid=@applicationid
RETURN 
GO

CREATE PROCEDURE spFundingSheet(@StudentID nvarchar(15), @Year nvarchar(15) )
AS 
SELECT      f.*,a.studentid,CONVERT(VARCHAR(6),f.begindate,107) as begindate,
            CONVERT(VARCHAR(12),f.enddate,107) as enddate,fd.fundername,fdt.fundertypdes,ft.fundtypdes
FROM        funding f,funders fd,fundertype fdt,fundtype ft,application a
WHERE       f.funderid=fd.funderid 
AND         f.fundtypid=ft.fundtypid 
AND         fd.fundertypid=fdt.fundertypid 
AND         a.studentid=@StudentID 
AND         a.applicationid=f.applicationid
AND         f.year=@Year 
RETURN 
GO

CREATE PROCEDURE sp_ParticipantByCourse(@CourseID nvarchar(15), @Year nvarchar(15))
AS
SELECT
	student.lastname AS Last, student.firstname AS First,
	student.title AS Title,
	student.org AS Organization,
	student.address1 AS Address,
	student.city AS City,     
	country.countryname AS Country 
FROM         
	studentcourse INNER JOIN
      courses ON studentcourse.courseid = courses.courseid INNER JOIN
      student ON studentcourse.studentid = student.studentid INNER JOIN
      country ON student.countryid = country.countryid 
WHERE
	courses.courseid = @CourseID 
AND   courses.courseyear = @Year 
RETURN
GO

CREATE PROCEDURE sp_ParticipantByCountry(@CountryID nvarchar(15), @Year nvarchar(15))
AS
SELECT
	student.lastname AS Last, student.firstname AS First, 
	student.title as Title,
	student.org AS Organization,
	student.address1 AS Address,
	student.city AS City,     
	country.countryname AS Country 
FROM
	studentcourse INNER JOIN
	courses ON studentcourse.courseid = courses.courseid INNER JOIN
	student ON studentcourse.studentid = student.studentid INNER JOIN
	country ON student.countryid = country.countryid 
WHERE
	country.countryid = @CountryID 
AND 	courses.courseyear = @Year 
RETURN
GO


CREATE PROCEDURE sp_TrainingFactSheet(@Year nvarchar(15))
AS
SELECT 'Course Offered' as Title, count(courseid) as Count FROM courses
GROUP BY courseyear HAVING courseyear=@Year
UNION 
SELECT 'Training Slot Offered' as Title, sum(slots) FROM courses 
GROUP BY courseyear HAVING courseyear=@Year 
UNION  
SELECT 'Course Held', count(distinct sc.courseid) FROM studentcourse sc,courses c
WHERE sc.year=@Year AND participat='Yes'
UNION 
SELECT 'Course Application', count(sc.courseid) FROM studentcourse sc
WHERE sc.year=@Year
UNION 
SELECT 'Individual Participant', count(distinct sc.studentid) FROM studentcourse sc,courses c,student s
WHERE sc.courseid=c.courseid AND s.studentid=sc.studentid AND sc.participat='Yes' AND c.courseyear=@Year
UNION 
SELECT 'Countries Participant', count(distinct s.countryid) FROM studentcourse sc,courses c,student s
WHERE sc.courseid=c.courseid AND s.studentid=sc.studentid AND sc.participat='Yes' AND c.courseyear=@Year
UNION
SELECT 'Individual Applied',  count(distinct sc.studentid) FROM studentcourse sc,student s
WHERE s.studentid=sc.studentid AND sc.year=@Year
UNION 
SELECT 'Countries Applied', count(distinct s.countryid) FROM studentcourse sc,student s
WHERE s.studentid=sc.studentid AND sc.year=@Year
RETURN
GO

CREATE PROCEDURE sp_TrainingCourseFactSheet(@Year nvarchar(15))
AS 
SELECT distinct sc.courseid,c.crsetitle1,c.coursecode,c.slots,
CONVERT(VARCHAR(6),c.trainfrom,107) as trainfrom, CONVERT(VARCHAR(12),c.trainto,107) as trainto,
a.year FROM courses c,application a,studentcourse sc 
WHERE sc.courseid=c.courseid AND sc.applicationid=a.applicationid AND a.year=2007 ORDER BY sc.courseid 
RETURN
GO

CREATE PROCEDURE sp_CoursesBySponsor(@SponsorID nvarchar(15), @Year nvarchar(15))
AS
SELECT distinct sc.courseid,c.crsetitle1,c.slots,CONVERT(VARCHAR(6),c.trainfrom,107) as trainfrom, 
CONVERT(VARCHAR(12),c.trainto,107) as trainto,sp.sponsname,a.year FROM courses c,application a,studentcourse sc,sponsors sp 
WHERE sc.courseid=c.courseid AND sc.applicationid=a.applicationid AND sp.sponsid=c.prisponsid 
AND a.year=@Year AND c.prisponsid=@SponsorID ORDER BY sc.courseid
RETURN
GO 

CREATE PROCEDURE sp_MultiBioSheet(@Year nvarchar(15), @Country nvarchar(15), @First nvarchar(30), @Last nvarchar(30), @StartYear nvarchar(15), @EndYear nvarchar(15))
AS
DECLARE @SQLString varchar(1000)
DECLARE @SelectList varchar(1000) 

SET NOCOUNT ON

SELECT @SelectList = 'SELECT * FROM AD_HOC_STUDENT_BASIC '

if @Year Is Not NULL
	BEGIN
		SELECT @SQLString = 'WHERE Year = ''' + @Year + '''' 
	END

if @Country Is NOT NULL
	BEGIN
		IF @SQLSTRING Is Not NULL
			BEGIN
				SELECT @SQLSTRING = @SQLSTRING + 
				' AND Country = ''' + @Country + '''' 
			END
		ELSE
			BEGIN
				SELECT @SQLSTRING = 'WHERE Country = ''' + @Country + ''''
			END
	END

if @First Is NOT NULL
	BEGIN
		IF @SQLSTRING Is Not NULL
			BEGIN
				SELECT @SQLSTRING = @SQLSTRING + 
				' AND First = ''' + @First + '''' 
			END
		ELSE
			BEGIN
				SELECT @SQLSTRING = 'WHERE First = ''' + @First + ''''
			END
	END

if @Last Is NOT NULL
	BEGIN
		IF @SQLSTRING Is Not NULL
			BEGIN
				SELECT @SQLSTRING = @SQLSTRING + 
				' AND Last = ''' + @Last + '''' 
			END
		ELSE
			BEGIN
				SELECT @SQLSTRING = 'WHERE Last = ''' + @Last + ''''
			END
	END

if @StartYear Is NOT NULL AND @EndYear Is NOT NULL
	BEGIN
		IF @SQLSTRING Is Not NULL
			BEGIN
				SELECT @SQLSTRING = @SQLSTRING + 
				' AND Year BETWEEN ''' + @StartYear + '''' + ' AND ''' + @EndYear + ''''
			END
		ELSE
			BEGIN
				SELECT @SQLSTRING = 'WHERE Year BETWEEN ''' + @StartYear + '''' + ' AND ''' + @EndYear + ''''
			END
	END

SELECT @SelectList = @SelectList + ' ' + @SQLString

EXECUTE(@SELECTLIST)
RETURN
GO

CREATE PROCEDURE sp_MultiBioSheetStatus(@Year nvarchar(15), @Country nvarchar(15), @First nvarchar(30), @Last nvarchar(30), @CourseNum nvarchar(30), @Title nvarchar(100), @StartYear nvarchar(15), @EndYear nvarchar(15), @Participant nvarchar(10))
AS
DECLARE @SQLString varchar(1000)
DECLARE @SelectList varchar(1000) 

SET NOCOUNT ON

SELECT @SelectList = 'SELECT * FROM AD_HOC_STATUS '

if @Year Is Not NULL
	BEGIN
		SELECT @SQLString = 'WHERE Year = ''' + @Year + '''' 
	END

if @Country Is NOT NULL
	BEGIN
		IF @SQLSTRING Is Not NULL
			BEGIN
				SELECT @SQLSTRING = @SQLSTRING + 
				' AND Country = ''' + @Country + '''' 
			END
		ELSE
			BEGIN
				SELECT @SQLSTRING = 'WHERE Country = ''' + @Country + ''''
			END
	END

if @Last Is NOT NULL
	BEGIN
		IF @SQLSTRING Is Not NULL
			BEGIN
				SELECT @SQLSTRING = @SQLSTRING + 
				' AND Last LIKE ''%' + @Last + '%''' 
			END
		ELSE
			BEGIN
				SELECT @SQLSTRING = 'WHERE Last LIKE ''%' + @Last + '%'''
			END
	END

if @First Is NOT NULL
	BEGIN
		IF @SQLSTRING Is Not NULL
			BEGIN
				SELECT @SQLSTRING = @SQLSTRING + 
				' AND First LIKE ''%' + @First + '%''' 
			END
		ELSE
			BEGIN
				SELECT @SQLSTRING = 'WHERE First LIKE ''%' + @First + '%'''
			END
	END

if @CourseNum Is NOT NULL
	BEGIN
		IF @SQLSTRING Is Not NULL
			BEGIN
				SELECT @SQLSTRING = @SQLSTRING + 
				' AND CourseCode = ''' + @CourseNum + '''' 
			END
		ELSE
			BEGIN
				SELECT @SQLSTRING = 'WHERE CourseCode = ''' + @CourseNum + ''''
			END
	END

if @Title Is NOT NULL
	BEGIN
		IF @SQLSTRING Is Not NULL
			BEGIN
				SELECT @SQLSTRING = @SQLSTRING + 
				' AND Title = ''' + @Title + '''' 
			END
		ELSE
			BEGIN
				SELECT @SQLSTRING = 'WHERE Title = ''' + @Title + ''''
			END
	END

if @StartYear Is NOT NULL AND @EndYear Is NOT NULL
	BEGIN
		IF @SQLSTRING Is Not NULL
			BEGIN
				SELECT @SQLSTRING = @SQLSTRING + 
				' AND Year BETWEEN ''' + @StartYear + '''' + ' AND ''' + @EndYear + ''''
			END
		ELSE
			BEGIN
				SELECT @SQLSTRING = 'WHERE Year BETWEEN ''' + @StartYear + '''' + ' AND ''' + @EndYear + ''''
			END
	END

if @Participant Is NOT NULL
	BEGIN
		IF @SQLSTRING Is Not NULL
			BEGIN
				SELECT @SQLSTRING = @SQLSTRING + 
				' AND Participat = ''' + @Participant + '''' 
			END
		ELSE
			BEGIN
				SELECT @SQLSTRING = 'WHERE Participat = ''' + @Participant + ''''
			END
	END

SELECT @SelectList = @SelectList + ' ' + @SQLString

EXECUTE(@SELECTLIST)
RETURN
GO


