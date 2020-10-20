DROP TABLE employee;

CREATE TABLE employee 
(
  id NUMBER (5) ,
  name VARCHAR2(11),
  gender CHAR(1) default 'M',
  salary NUMBER(6),
  rating NUMBER(1)
);

INSERT INTO employee
VALUES (12345,'Vishwa','M',50000,5);

INSERT INTO employee
VALUES (12346,'Mohan','M',70000,5);

INSERT INTO employee
VALUES (12347,'Shashank','M',90000,3);

INSERT INTO employee
VALUES (12348,'Shakshi','F',9000,1);

SELECT * 
FROM employee;




DECLARE  
   total_rows NUMBER(2); 
BEGIN 
   UPDATE employee  
   SET salary = salary + 0.1*salary  where rating >= 3 ; 
   IF sql%notfound THEN 
      dbms_output.put_line('no employee selected'); 
   ELSIF sql%found THEN 
      total_rows := sql%rowcount;
      dbms_output.put_line( total_rows || ' employee selected '); 
   END IF;  
END; 


SELECT * FROM employee;





-- Now making use of the explicit cursors
SET SERVEROUTPUT ON
DECLARE 
   c_id employee.id%type; 
   c_name employee.name%type; 
   c_salary employee.salary%type; 
   CURSOR c_employee is 
      SELECT id, name, salary FROM employee; 
BEGIN 
   OPEN c_employee; 
   LOOP 
   FETCH c_employee INTO c_id, c_name, c_salary; 
      EXIT WHEN c_employee%notfound; 
      dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_salary); 
   END LOOP; 
   CLOSE c_employee; 
END;

