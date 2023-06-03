CREATE TABLE pictures (
	id INT primary key AUTO_INCREMENT,
    url VARCHAR(100) NOT NULL,
    added_on DATETIME NOT NULL
);

CREATE TABLE categories (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE products (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL UNIQUE,
    best_before DATE,
    price DECIMAL(10,2) NOT NULL,
    description TEXT,
    category_id INT NOT NULL,
    picture_id INT NOT NULL,
    CONSTRAINT fk_products_category_id__categories_id
    FOREIGN KEY (category_id) REFERENCES categories(id),
    CONSTRAINT fk_products_picture_id__pictures_id
    FOREIGN KEY (picture_id) REFERENCES pictures(id)
);

CREATE TABLE towns (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE addresses (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL UNIQUE,
    town_id INT NOT NULL,
    CONSTRAINT fk_addresses_town_id__towns_id
    FOREIGN KEY (town_id) REFERENCES towns(id)   
);

CREATE TABLE stores (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL UNIQUE,
    rating FLOAT NOT NULL,
    has_parking TINYINT(1) DEFAULT false,
    address_id INT NOT NULL,
    CONSTRAINT fk_stores_address_id__addresses_id
    FOREIGN KEY (address_id) REFERENCES addresses(id)
);

CREATE TABLE products_stores (
	product_id INT NOT NULL,
    store_id INT NOT NULL,
    CONSTRAINT pk_products_stores
    PRIMARY KEY(product_id, store_id),
    CONSTRAINT fk_products_stores_product_id__products_id
    FOREIGN KEY (product_id) REFERENCES products(id),
    CONSTRAINT fk_products_stores_store_id__stores_id
    FOREIGN KEY (store_id) REFERENCES stores(id)
);

CREATE TABLE employees (
	id INT PRIMARY KEY AUTO_INCREMENT, 
    first_name VARCHAR(15) NOT NULL,
    middle_name CHAR(1),
    last_name VARCHAR(20) NOT NULL,
    salary DECIMAL(19,2) DEFAULT 0 NOT NULL,
    hire_date DATE NOT NULL,
    manager_id INT,
    store_id INT NOT NULL,
    CONSTRAINT fk_employees_manager_id__employees_id
    FOREIGN KEY (manager_id) REFERENCES employees(id),
    CONSTRAINT fk_employees_store_id__stores_id
    FOREIGN KEY (store_id) REFERENCES stores(id)
);