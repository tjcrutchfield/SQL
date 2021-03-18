--Fragmentation
SELECT OBJECT_NAME(ix.object_ID) AS TableName, 
       ix.name AS IndexName, 
       ixs.index_type_desc AS IndexType, 
       ixs.avg_fragmentation_in_percent
FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, NULL) ixs
     INNER JOIN sys.indexes ix ON ix.object_id = ixs.object_id
                                  AND ixs.index_id = ixs.index_id
WHERE ixs.avg_fragmentation_in_percent > 30
ORDER BY ixs.avg_fragmentation_in_percent DESC;
