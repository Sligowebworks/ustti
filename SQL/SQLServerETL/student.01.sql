
use USTTI_OCt29_Migration;
GO

DECLARE @old char(20)
DECLARE @new char(20)

SET @old = 'students'
SET @new = 'student'
IF EXISTS( select name from sysobjects where name=@old)  
exec sp_rename @old, @new
GO
-- columns
sp_rename 'student.aplicankey', 'studentid';
GO
sp_rename	'student.homeaddr1', 'homeaddress1';
GO
sp_rename	'student.homeaddr2', 'homeaddress2';
GO
sp_rename	'student.ctznctryid', 'passportcountryid';
GO
sp_rename 'student.telex', 'cellphone';
GO

ALTER TABLE student
	ADD comprehensionskill char(20) NULL
;
ALTER TABLE student
	ADD readingskill char(20) NULL
;
ALTER TABLE student
	ADD speakingskill char(20) NULL
;
ALTER TABLE student
	ADD writingskill char(20) NULL
;
ALTER TABLE student
	ADD homezipcode char(20) NULL
;
ALTER TABLE student
	ADD passexpdate datetime NULL
;
ALTER TABLE student
	ADD passportnum char(20) NULL
;
ALTER TABLE student
	ADD zipcode char(20) NULL
;
ALTER TABLE student
	ADD superemail char(60) NULL
;
-- country : convenience column, dropped
-- catalogue: boolean; Need verification of drop
