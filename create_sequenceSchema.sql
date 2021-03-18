USE [Database] ;  
GO  
  
CREATE SCHEMA <SequenceSchema>;  
GO  
  
CREATE SEQUENCE <SequenceSchema>.<SequenceName>  
    START WITH 1  
    INCREMENT BY 1 ;  
GO

----Test by calling the procedure in a select statement
SELECT *
      ,NEXT VALUE FOR PHSequence.CountBy1  as seq ----Call sequence prodecure
FROM <TABLENAME>
