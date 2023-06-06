CREATE TABLE planets (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE spaceports (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    planet_id INT,
    CONSTRAINT fk_spaceports_planet_id__planets_id
    FOREIGN KEY (planet_id) REFERENCES planets(id)
);

CREATE TABLE spaceships (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(30) NOT NULL,
    light_speed_rate INT DEFAULT 0
);

CREATE TABLE colonists (
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    ucn CHAR(10) NOT NULL UNIQUE,
    birth_date DATE NOT NULL
);

CREATE TABLE journeys (
	id INT PRIMARY KEY AUTO_INCREMENT,
    journey_start DATETIME NOT NULL,
    journey_end DATETIME NOT NULL,
    purpose ENUM('Medical', 'Technical', 'Educational', 'Military'),
    destination_spaceport_id INT ,
    spaceship_id INT,
    CONSTRAINT fk_journeys_destination_spaceport_id__spaceports_id
    FOREIGN KEY (destination_spaceport_id) REFERENCES spaceports(id),
    CONSTRAINT fk_journey_spaceship_id__spaceships_id
    FOREIGN KEY (spaceship_id) REFERENCES spaceships(id)
);

CREATE TABLE travel_cards (
	id INT PRIMARY KEY AUTO_INCREMENT,
    card_number CHAR(10) NOT NULL UNIQUE,
    job_during_journey ENUM('Pilot', 'Engineer', 'Trooper', 'Cleaner', 'Cook'),
    colonist_id INT,
    journey_id INT,
    CONSTRAINT fk_travel_cards_colonist_id__colonists_id
    FOREIGN KEY (colonist_id) REFERENCES colonists(id),
    CONSTRAINT fk_travel_cards_journey_id__journeys_id
    FOREIGN KEY (journey_id) REFERENCES journeys(id)
);


