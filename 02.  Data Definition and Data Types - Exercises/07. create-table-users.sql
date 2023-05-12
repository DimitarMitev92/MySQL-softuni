CREATE TABLE users (
	id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(30) UNIQUE NOT NULL,
    password VARCHAR(26) NOT NULL,
    profile_picture BLOB,
    last_login_time DATETIME,
    is_deleted boolean
    );
    
INSERT INTO users (id, username, password)
VALUES (1,'Dimitar','dimitar1'),
		(2,'Dimitar1','dimitar2'),
        (3,'Dimitar2','dimitar3'),
        (4,'Dimitar3','dimitar4'),
        (5,'Dimitar4','dimitar5');