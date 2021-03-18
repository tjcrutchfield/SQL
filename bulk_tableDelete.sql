sp_tables '%xph_bak%' ---View tables to be remove
 

DECLARE @cmd varchar(4000)
DECLARE cmds CURSOR FOR
SELECT 'drop table [' + Table_Name + ']'---View tables to be remove
FROM INFORMATION_SCHEMA.TABLES
WHERE Table_Name LIKE '%<TABLENAME>%' ---- Replace <TABLENAME>

/************************************************
Uncomment to bulk delete multiple tables.
Caution must be noted before

----OPEN cmds
----WHILE 1 = 1
----BEGIN
----    FETCH cmds INTO @cmd
----    IF @@fetch_status != 0 BREAK
----    EXEC(@cmd)
----END
----CLOSE cmds;
----DEALLOCATE cmds

************************************************/
