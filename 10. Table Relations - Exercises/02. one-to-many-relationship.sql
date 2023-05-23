CREATE TABLE `manufactures` (
	`manufacturer_id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `established_on` DATE
);

INSERT INTO `manufactures` (`name`, `established_on`)
VALUES ('BMW', '1916-03-01'),
		('Tesla', '2003-01-01'),
        ('Lada', '1966-05-01');

CREATE TABLE `models` (
	`model_id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `manufacturer_id` INT ,
    CONSTRAINT fk_models_manufacture
    FOREIGN KEY (`manufacturer_id`) 
    REFERENCES `manufactures`(`manufacturer_id`)
);

ALTER TABLE `models` AUTO_INCREMENT = 101;

INSERT INTO `models` (`name`, `manufacturer_id`)
VALUES ('X1', 1),
		('i6',1),
        ('Model S', 2),
        ('Model X', 2),
        ('Model 3', 2),
        ('Nova', 3);
    