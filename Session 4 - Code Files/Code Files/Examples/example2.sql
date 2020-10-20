/** correlated nested query
Finding details of employees with salary more than the average salary in each department
**/
DROP TABLE employee;

CREATE TABLE employee (
    employee_id  CHAR(5) PRIMARY KEY, 
    first_name VARCHAR(20), 
    last_name VARCHAR(20), 
    salary NUMBER(10,2), 
    department_name VARCHAR(20)
);

--Data Insertion
INSERT INTO employee
VALUES ('E0001', 'Jagan', 'Ram', 60000.00, 'IT');

INSERT INTO employee
VALUES ('E0002', 'Arvind', 'Bhim', 100000.00, 'IT');

INSERT INTO employee
VALUES ('E0003', 'Kishan', 'Chand', 50000.00, 'IT');

INSERT INTO employee
VALUES ('E0004', 'Rita', 'Mohan', 120000.00, 'HR');

INSERT INTO employee
VALUES ('E0005', 'Heena', 'Jagan', 70000.00, 'HR');



SELECT * 
FROM employee;

--Correlated Subquery
SELECT 
    employee_id, 
    first_name, 
    last_name, 
    salary, 
    department_name
FROM
    employee e
WHERE
    salary > 
    (SELECT AVG(salary)
    FROM employee
    WHERE department_name = e.department_name)
ORDER BY 
    department_name;
