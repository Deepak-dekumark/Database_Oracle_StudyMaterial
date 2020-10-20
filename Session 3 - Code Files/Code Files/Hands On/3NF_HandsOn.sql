-- 3NF

DROP TABLE transaction;

DROP TABLE car;

CREATE TABLE owner
(
    owner_id CHAR(5) PRIMARY KEY,
    owner_name VARCHAR2(50) NOT NULL
);

CREATE TABLE car
(
    car_number_plate CHAR(7) PRIMARY KEY,
    car_name VARCHAR2(50) NOT NULL,
    owner_id CHAR(5) NOT NULL,
    CONSTRAINT fk_owner
    FOREIGN KEY (owner_id) 
    REFERENCES owner(owner_id)
);

CREATE TABLE car_customer
(
    customer_id CHAR(5) PRIMARY KEY,
    customer_name VARCHAR2(50) NOT NULL
);

CREATE TABLE transaction
(
    tranasction_id CHAR(5) PRIMARY KEY,
    transaction_date DATE NOT NULL,
    customer_id CHAR(5) NOT NULL,
    car_number_plate CHAR(7) NOT NULL,
    CONSTRAINT fk_customer 
    FOREIGN KEY (customer_id) 
    REFERENCES car_customer(customer_id),
    CONSTRAINT fk_car_number_plate 
    FOREIGN KEY (car_number_plate) 
    REFERENCES car(car_number_plate)
);
