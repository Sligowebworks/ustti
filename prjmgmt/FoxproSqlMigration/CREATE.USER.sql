USE ustti
GO


EXEC sp_revokedbaccess 'usttiwebmgr'
GO

EXEC sp_droplogin 'usttiwebmgr'
GO


sp_addlogin @loginame = 'usttiwebmgr', @passwd = 'usttiweb2006'
GO

sp_grantdbaccess 'usttiwebmgr'
GO

EXEC sp_addrolemember 'db_datareader', 'usttiwebmgr'
GO

EXEC sp_addrolemember 'db_datawriter', 'usttiwebmgr'
GO

sp_helplogins 'usttiwebmgr'




