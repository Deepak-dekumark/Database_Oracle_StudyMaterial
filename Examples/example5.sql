SELECT * FROM employee ;

-- create a row level trigger , which will get fired with every uodate and will show old and new salary

CREATE OR REPLACE TRIGGER trigger_salary_changes 
BEFORE DELETE OR INSERT OR UPDATE ON employee 
FOR EACH ROW 
WHEN (NEW.ID > 0) 
DECLARE 
   sal_diff NUMBER; 
BEGIN 
   sal_diff := :NEW.salary  - :OLD.salary; 
   dbms_output.put_line('Old salary: ' || :OLD.salary); 
   dbms_output.put_line('New salary: ' || :NEW.salary); 
   dbms_output.put_line('Salary difference: ' || sal_diff); 
END; 


-- Triggering the trigger

UPDATE company_employee 
SET salary = 100000 
WHERE ID=12345;
