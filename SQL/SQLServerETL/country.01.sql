
use USTTI_OCt29_Migration;
GO
-- columns
sp_rename 'country.ctryabbr', 'countryabbr';
GO
sp_rename 'country.countrykey', 'countryid';
GO
sp_rename 'country.countrynam', 'countryname';
GO
sp_rename 'country.independen', 'independent'; 
GO

ALTER TABLE country
	ADD printablename char(40) NULL
;
-- Data Types:
ALTER TABLE country
	ALTER COLUMN aid_eligib char(10) NULL
;
ALTER TABLE country
	ALTER COLUMN countryid int NOT NULL
;
ALTER TABLE country
	ALTER COLUMN independent char(10)
;
ALTER TABLE country
	ALTER COLUMN mailcode char(2)
;
ALTER TABLE country
	ALTER COLUMN regionid int
;
ALTER TABLE country
	ALTER COLUMN trainingel char(10)
;
