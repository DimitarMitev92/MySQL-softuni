CREATE TABLE categories (
id INT PRIMARY KEY AUTO_INCREMENT, 
category VARCHAR(50) NOT NULL, 
daily_rate VARCHAR(50) NOT NULL, 
weekly_rate VARCHAR(50) , 
monthly_rate VARCHAR(50), 
weekend_rate VARCHAR(50) 
);

INSERT INTO categories (category, daily_rate)
VALUES ('test', 'test'),
		('test','test'),
        ('test','test');

CREATE TABLE cars (
id INT PRIMARY KEY AUTO_INCREMENT, 
plate_number VARCHAR(50) NOT NULL, 
make VARCHAR(50) NOT NULL,
model VARCHAR(50) NOT NULL, 
car_year YEAR , 
category_id INT, 
doors INT, 
picture BLOB, 
car_condition VARCHAR(50),
available BOOLEAN
);

INSERT INTO cars (plate_number, make, model)
VALUES ('test', 'test','test'),
		('test','test','test'),
        ('test','test','test');

CREATE TABLE employees (
id INT PRIMARY KEY AUTO_INCREMENT, 
first_name VARCHAR(50) NOT NULL, 
last_name VARCHAR(50) NOT NULL, 
title VARCHAR(50), 
notes TEXT
);

INSERT INTO employees (first_name, last_name)
VALUES ('test', 'test'),
		('test','test'),
        ('test','test');

CREATE TABLE customers (
id INT PRIMARY KEY AUTO_INCREMENT, 
driver_licence_number BOOLEAN NOT NULL, 
full_name VARCHAR(50) NOT NULL, 
address VARCHAR(50) NOT NULL, 
city VARCHAR(50) NOT NULL, 
zip_code VARCHAR(50), 
notes TEXT
);

INSERT INTO customers (driver_licence_number,full_name,address,city)
VALUES (true, 'test','test','test'),
		(true, 'test','test','test'),
        (true, 'test','test','test');

CREATE TABLE rental_orders (
id INT PRIMARY KEY AUTO_INCREMENT, 
employee_id INT NOT NULL, 
customer_id INT NOT NULL, 
car_id INT NOT NULL, 
car_condition VARCHAR(50) NOT NULL, 
tank_level DOUBLE(6,2) NOT NULL,
kilometrage_start DOUBLE(12,2) NOT NULL, 
kilometrage_end DOUBLE(12,2) NOT NULL, 
total_kilometrage DOUBLE(12,2), 
start_date DATE NOT NULL, 
end_date DATE NOT NULL,
total_days DATE, 
rate_applied DOUBLE(5,2) NOT NULL, 
tax_rate VARCHAR(50) NOT NULL, 
order_status BOOLEAN NOT NULL, 
notes TEXT
);

INSERT INTO rental_orders 
(employee_id, 
customer_id, 
car_id, 
car_condition,
tank_level, 
kilometrage_start,
kilometrage_end,
start_date,
end_date,
rate_applied,
tax_rate,
order_status)
VALUES( 1,1,1,'test',12.12,12.12,13.13, '1212-12-12','1212-12-13', 12.12, 'test',true),
( 1,1,1,'test',12.12,12.12,13.13, '1212-12-12','1212-12-13', 12.12, 'test',true),
( 1,1,1,'test',12.12,12.12,13.13, '1212-12-12','1212-12-13', 12.12, 'test',true);