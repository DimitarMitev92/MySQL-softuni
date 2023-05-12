CREATE TABLE people (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    picture BLOB,
    height DOUBLE(5,2),
    weight double(5,2),
    gender CHAR(1) NOT NULL,
    birthdate DATE NOT NULL,
    biography TEXT
);

INSERT INTO people (id, name, gender, birthdate)
VALUE (1, 'Dimitar', 'm', NOW()),
		(2, 'Dimitar1', 'm', NOW()),
		(3, 'Dimitar2', 'm', NOW()),
		(4, 'Dimitar3', 'm', NOW()),
		(5, 'Dimitar4', 'm', NOW());