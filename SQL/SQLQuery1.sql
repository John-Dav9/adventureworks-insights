RESTORE HEADERONLY 
FROM DISK = N'C:\Backup\AdventureWorks2019.bak';

RESTORE FILELISTONLY 
FROM DISK = N'C:\Backup\AdventureWorks2019.bak';

RESTORE DATABASE AdventureWorks2019
FROM DISK = N'C:\Backup\AdventureWorks2019.bak'
WITH 
    MOVE N'AdventureWorks2019'     TO N'C:\Program Files\Microsoft SQL Server\MSSQL15.GRACE_DIVINES\MSSQL\DATA\AdventureWorks2019.mdf',
    MOVE N'AdventureWorks2019_log' TO N'C:\Program Files\Microsoft SQL Server\MSSQL15.GRACE_DIVINES\MSSQL\DATA\AdventureWorks2019_log.ldf',
    REPLACE;
