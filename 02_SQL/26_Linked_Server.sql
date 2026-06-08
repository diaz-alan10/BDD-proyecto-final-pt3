USE master;
GO

EXEC sp_addlinkedserver
    @server = N'CENTRAL_ENOE',
    @srvproduct = N'',
    @provider = N'MSOLEDBSQL',
    @datasrc = N'5V1NFL3\SQLEXPRESS';
GO

EXEC sp_addlinkedsrvlogin
    @rmtsrvname = N'CENTRAL_ENOE',
    @useself = N'True';
GO