/********************************************************
Verify your data to be remove and run at your own risk!
Using Common Table Expresson to  find exact duplicates
and remove from the data set.
*************************************************************/

WITH cte AS (
    SELECT [column1],[column2],ROW_NUMBER() OVER (PARTITION BY [column2] ORDER BY [column1]) row_num
     FROM [TABLE_NAME]
)
--DELETE FROM cte
WHERE row_num > 1; --Where duplicate found
