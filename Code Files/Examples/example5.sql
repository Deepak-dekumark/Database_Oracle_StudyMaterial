--Selecting SELECTED rows and ALL columns from the customer table
SELECT * 
FROM   customer 
WHERE  first_name = 'Indrajeet'; 

--Selecting SELECTED rows and SELECTED columns by creating Alias to the columns from the customer table
SELECT first_name "FIRST NAME", 
       last_name  "LAST_NAME" 
FROM   customer 
WHERE  first_name = 'Indrajeet';  