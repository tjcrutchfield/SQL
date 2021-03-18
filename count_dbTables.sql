/********************************************************************************************
PURPOSE: Script counts all table rows within a given database.
********************************************************************************************/

SELECT QUOTENAME(SCHEMA_NAME(sysob.schema_id)) + '.' + QUOTENAME(sysob.name) AS [TableName]
      , SUM(syspart.Rows) AS [RowCount]
FROM  sys.objects AS sysob
INNER JOIN sys.partitions AS syspart ON sysob.object_id = syspart.object_id
WHERE sysob.type = 'U'
      AND sysob.is_ms_shipped = 0x0
      AND index_id < 2 -- 0:Heap, 1:Clustered
GROUP BY sysob.schema_id , sysob.name
ORDER BY [TableName]
