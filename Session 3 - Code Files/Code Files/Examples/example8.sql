-- Starter Code

DROP TABLE customer;

CREATE TABLE customer
(
    customer_id     CHAR(5),
    first_name      VARCHAR(20),
    last_name       VARCHAR(20),
    username        VARCHAR(20), 
    password        VARCHAR(20),
    mobile_number   VARCHAR(30),
    date_of_birth   DATE,
    user_type_id    CHAR(5),
    user_type       VARCHAR(20)
);

INSERT INTO customer 
VALUES ('C1001', 'Vishwa', 'Mohan', 'vish@g.com', 'sadfesf', '9176239943,9176239000', TO_DATE ('07-12-1988', 'dd-mm-yy'), 'U0001', 'User');

INSERT INTO customer
VALUES ('C1002','Roshan','Kumar', 'rosh0@g.com1','sadfesf12','9176239953,9176239777', TO_DATE ('01-11-1987', 'dd-mm-yy'),'U0001', 'User');


INSERT INTO customer
VALUES ('C1003','Sachin','Tendulkar','sach01@g.com','sadf1sdsf12','9176239912,9176239234', TO_DATE ('30-04-1985', 'dd-mm-yy'),'U0002', 'Admin');

SELECT *
FROM customer;

--1 NF
TRUNCATE TABLE customer;

INSERT INTO customer 
VALUES ('C1001', 'Vishwa', 'Mohan', 'vish@g.com', 'sadfesf', '9176239943', TO_DATE ('07-12-1988', 'dd-mm-yy'), 'U0001', 'User');

INSERT INTO customer 
VALUES ('C1001', 'Vishwa', 'Mohan', 'vish@g.com', 'sadfesf', '9176239000', TO_DATE ('07-12-1988', 'dd-mm-yy'), 'U0001', 'User');

INSERT INTO customer
VALUES ('C1002','Roshan','Kumar', 'rosh0@g.com1','sadfesf12','9176239777', TO_DATE ('01-11-1987', 'dd-mm-yy'),'U0001', 'User');

INSERT INTO customer
VALUES ('C1002','Roshan','Kumar', 'rosh0@g.com1','sadfesf12','9176239953', TO_DATE ('01-11-1987', 'dd-mm-yy'),'U0001', 'User');

INSERT INTO customer
VALUES ('C1001','Sachin','Tendulkar','sach01@g.com','sadf1sdsf12','9176239912', TO_DATE ('30-04-1985', 'dd-mm-yy'),'U0002', 'Admin');

INSERT INTO customer
VALUES ('C1001','Sachin','Tendulkar','sach01@g.com','sadf1sdsf12','9176239234', TO_DATE ('30-04-1985', 'dd-mm-yy'),'U0002', 'Admin');

SELECT *
FROM customer;

--2NF

DROP TABLE customer;

CREATE TABLE customer
(
    customer_id     CHAR(5) PRIMARY KEY,
    first_name      VARCHAR(20),
    last_name       VARCHAR(20),
    username        VARCHAR(20), 
    password        VARCHAR(20),
    date_of_birth   DATE,
    user_type_id    CHAR(5),
    user_type       VARCHAR(20)
);

CREATE TABLE customer_contact
(
    mobile_number CHAR(10),
    customer_id CHAR(5)  
);

ALTER TABLE customer_contact 
ADD PRIMARY KEY (customer_id, mobile_number);

ALTER TABLE customer_contact 
ADD FOREIGN KEY (customer_id) 
REFERENCES customer(customer_id);


INSERT INTO customer 
VALUES ('C1001', 'Vishwa', 'Mohan', 'vish@g.com', 'sadfesf', TO_DATE ('07-12-1988', 'dd-mm-yy'), 'U0001', 'User');

INSERT INTO customer 
VALUES ('C1002', 'Vishwa', 'Mohan', 'vish@g.com', 'sadfesf', TO_DATE ('07-12-1988', 'dd-mm-yy'), 'U0001', 'User');

INSERT INTO customer
VALUES ('C1003','Roshan','Kumar', 'rosh0@g.com1','sadfesf12', TO_DATE ('01-11-1987', 'dd-mm-yy'),'U0001', 'User');

INSERT INTO customer
VALUES ('C1004','Roshan','Kumar', 'rosh0@g.com1','sadfesf12', TO_DATE ('01-11-1987', 'dd-mm-yy'),'U0001', 'User');

INSERT INTO customer
VALUES ('C1005','Sachin','Tendulkar','sach01@g.com','sadf1sdsf12', TO_DATE ('30-04-1985', 'dd-mm-yy'),'U0002', 'Admin');

INSERT INTO customer
VALUES ('C1006','Sachin','Tendulkar','sach01@g.com','sadf1sdsf12',TO_DATE ('30-04-1985', 'dd-mm-yy'),'U0002', 'Admin');

SELECT *
FROM customer;

INSERT INTO customer_contact
VALUES ('9176239943', 'C1001');

INSERT INTO customer_contact
VALUES ('9176239000', 'C1001');

INSERT INTO customer_contact
VALUES ('9176239777', 'C1002');

INSERT INTO customer_contact
VALUES ('9176239953', 'C1002');

INSERT INTO customer_contact
VALUES ('9176239912', 'C1003');

INSERT INTO customer_contact
VALUES ('9176239234', 'C1003');

--3NF
DROP TABLE user_type;
CREATE TABLE user_type
(
    user_type_id CHAR(5) PRIMARY KEY,
    user_type_name CHAR(20) UNIQUE NOT NULL 
);

DROP TABLE customer_contact;

DROP TABLE customer;

CREATE TABLE customer
(
    customer_id     CHAR(5) PRIMARY KEY,
    first_name      VARCHAR(20) NOT NULL,
    last_name       VARCHAR(20),
    username        VARCHAR(20) NOT NULL UNIQUE, 
    password        VARCHAR(20) NOT NULL,
    date_of_birth   DATE NOT NULL,
    user_type_id    CHAR(5) NOT NULL
);

ALTER TABLE customer
ADD FOREIGN KEY (user_type_id) 
REFERENCES user_type(user_type_id);

CREATE TABLE customer_contact
(
    mobile_number CHAR(10),
    customer_id CHAR(5)  
);

ALTER TABLE customer_contact 
ADD PRIMARY KEY (customer_id, mobile_number);

ALTER TABLE customer_contact 
ADD FOREIGN KEY (customer_id) 
REFERENCES customer(customer_id);


INSERT INTO user_type
VALUES ('U0001', 'User');

INSERT INTO user_type
VALUES ('U0002', 'Admin');

INSERT INTO customer 
VALUES ('C1001', 'Vishwa', 'Mohan', 'vish@g.com', 'sadfesf', TO_DATE ('07-12-1988', 'dd-mm-yy'), 'U0001');

INSERT INTO customer
VALUES ('C1002','Roshan','Kumar', 'rosh0@g.com1','sadfesf12', TO_DATE ('01-11-1987', 'dd-mm-yy'),'U0001');

INSERT INTO customer
VALUES ('C1003','Sachin','Tendulkar','sach01@g.com','sadf1sdsf12', TO_DATE ('30-04-1985', 'dd-mm-yy'),'U0002');


SELECT *
FROM customer;

INSERT INTO customer_contact
VALUES ('9176239943', 'C1001');

INSERT INTO customer_contact
VALUES ('9176239000', 'C1001');

INSERT INTO customer_contact
VALUES ('9176239777', 'C1002');

INSERT INTO customer_contact
VALUES ('9176239953', 'C1002');

INSERT INTO customer_contact
VALUES ('9176239912', 'C1003');

INSERT INTO customer_contact
VALUES ('9176239234', 'C1003');
