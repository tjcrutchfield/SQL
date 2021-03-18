/*************BACKUP DBO.<TABLE>****************/
DECLARE @d CHAR(8) = CONVERT(CHAR(8), GETDATE(), 112);  --Format date for timestamp
DECLARE         @h char(2) =  right(concat('00',convert(varchar(2),datepart(hour, SYSDATETIME()))),2);  --Format 2-digit hour for timestamp 
DECLARE       @m char(2) = right(concat('00',convert(varchar(2),datepart(MINUTE, SYSDATETIME()))),2);   --Format 2-digit minute for timestamp 


--==Replace <TableName> ==--
DECLARE @sql NVARCHAR(MAX) = N'SELECT *  INTO xph_bak_<TableName>_'+@d+'_'+@h+@m+'   FROM <TableName>;';
                     
PRINT @sql;     --Print to get the name of the backup
EXEC sys.sp_executesql @sql;   --Execute script
