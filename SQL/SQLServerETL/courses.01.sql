
use USTTI_OCt29_Migration;
GO
-- columns
--sp_rename 'country.ctryabbr', 'countryabbr';
sp_rename 'courses.coordinatr',	'coordinator';
GO
sp_rename 'courses.coursenum',	'coursecode';
GO
sp_rename 'courses.coursekey', 'courseid';
GO

/*ALTER TABLE courses
	ADD printablename char(40) NULL
;*/
-- Data Types:
ALTER TABLE courses
	ALTER COLUMN courseid int NOT NULL
;
ALTER TABLE courses
	ALTER COLUMN prisponsid int NOT NULL
;
ALTER TABLE courses
	ALTER COLUMN slots int NOT NULL
;
ALTER TABLE courses
	ALTER COLUMN morespons char(10) NULL
;
ALTER TABLE courses
	ALTER COLUMN coursecode char(10) NULL
;
ALTER TABLE courses
	ALTER COLUMN crsetitle1 char(100) NULL
;
