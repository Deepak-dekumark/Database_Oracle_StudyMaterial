SELECT * FROM car_customer;
-- composite key - car_number_plate , date_transaction


-- Converting this to a second normal form

DROP TABLE car_customer;

CREATE TABLE car
(
    car_number_plate CHAR(7) PRIMARY KEY,
    car_name VARCHAR2(50) NOT NULL,
    owner_id CHAR(5) NOT NULL,
    owner_name VARCHAR2(50) NOT NULL
    
);

CREATE TABLE transaction
(
    tranasction_id CHAR(5) PRIMARY KEY,
    transaction_date DATE NOT NULL,
    customer_id CHAR(5) NOT NULL,
    customer_name VARCHAR2(50) NOT NULL,
    car_number_plate CHAR(7) NOT NULL,
    CONSTRAINT fk_car_number_plate 
    FOREIGN KEY (car_number_plate) 
    REFERENCES car(car_number_plate)
);








