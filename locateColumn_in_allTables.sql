/*******************************************************
Script locates all tables where <COLUMN_NAME> is found.
*******************************************************/

SELECT * 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE COLUMN_NAME like '%<TABLENAME>%'  --Replace <TABLENAME>
ORDER BY TABLE_NAME
