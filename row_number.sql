/***********************************************************
Count by sequence the number of times <employee> returns in 
the data set
***********************************************************/

SELECT *, ROW_NUMBER() over(partition by employee order by employee) as count
FROM employee
ORDER BY employee
