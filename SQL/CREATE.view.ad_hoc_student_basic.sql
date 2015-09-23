USE ustti
GO

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE id = object_id(N'ad_hoc_student_basic')
	AND OBJECTPROPERTY(id, 
	N'IsView') = 1
)
DROP VIEW ad_hoc_student_basic
GO

CREATE VIEW ad_hoc_student_basic AS

	SELECT [Country]
	, PNG
	, [Gender]
	, [hon.]
	, [First]
	, [Middle]
	, [Last]
	, [suf.]
	, [D.O.B.]
	, BUSPHONE
	, HOMEPHONE
	, FAX
	, cellphone -- TELEX
	, [W. Email]
	, [H. email]
	, ADDRESS1
	, ADDRESS2
	, CITY
	, [Organization]
	, [Organization 2]
	, TITLE
	, [Supervisor]
	FROM 
	ad_hoc_student_extended
	
GO

use [ustti]
GO
GRANT DELETE ON [dbo].[ad_hoc_student_basic] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT INSERT ON [dbo].[ad_hoc_student_basic] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT REFERENCES ON [dbo].[ad_hoc_student_basic] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT SELECT ON [dbo].[ad_hoc_student_basic] TO [usttiwebmgr]
GO
use [ustti]
GO
GRANT UPDATE ON [dbo].[ad_hoc_student_basic] TO [usttiwebmgr]
GO
