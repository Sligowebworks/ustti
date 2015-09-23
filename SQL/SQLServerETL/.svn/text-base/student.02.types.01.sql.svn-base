use USTTI_Oct29_Migration;
GO

ALTER TABLE student 
	ALTER COLUMN address1
		char(100)
;
GO

ALTER TABLE student
	ALTER COLUMN png
			char(10)
;
UPDATE student SET png = CASE WHEN png = 0 THEN 'No' ELSE 'Yes' END;
/*	Proof:
SELECT count(png), 'Yes/No' = CASE WHEN png = 0 THEN 'No' ELSE 'Yes' END FROM student GROUP BY CASE WHEN png = 0 THEN 'No' ELSE 'Yes' END;
No = 22426; Yes = 95
SELECT count(png), 'Yes/No' = CASE WHEN png = 'No' THEN 'No' ELSE 'Yes' END FROM student GROUP BY CASE WHEN png = 'No' THEN 'No' ELSE 'Yes' END;
*/
GO

ALTER TABLE student
	ALTER COLUMN countryid
		int
;
GO

ALTER TABLE student
	ALTER COLUMN homeaddress1
		char(100)
;
GO
--~~~
sp_rename 'student.memo', 'memo_old'
GO
ALTER TABLE student
	ADD memo varchar(100) NULL
;
GO
UPDATE student SET memo = cast(memo_old as varchar(100))
GO
ALTER TABLE student
	DROP COLUMN memo_old
;
GO
--~~~
ALTER TABLE student
	ALTER COLUMN org
		char(100)
;
GO
ALTER TABLE student
	ALTER COLUMN passportcountryid
		int
;
ALTER TABLE student
	ALTER COLUMN sex
		char(10)
;
ALTER TABLE student
	ALTER COLUMN studentid
		int
;