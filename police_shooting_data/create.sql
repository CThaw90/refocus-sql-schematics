-- Creating the police_shooting_data table
CREATE TABLE police_shooting_data (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`date` DATE NOT NULL,
	name VARCHAR(30) NOT NULL,
	manner_of_death VARCHAR(30) NOT NULL,
	armed VARCHAR(20) NOT NULL,
	age SMALLINT NULL,
	gender VARCHAR(10) NOT NULL,
	race VARCHAR(30) NOT NULL,
	city VARCHAR(50) NOT NULL,
	county VARCHAR(50) NOT NULL,
	state VARCHAR(30) NOT NULL,
	signs_of_mental_illness SMALLINT NOT NULL DEFAULT 0,
	threat_level VARCHAR(30) NOT NULL,
	flee VARCHAR(20) NOT NULL,
	body_camera SMALLINT NOT NULL DEFAULT 0,
	longitude DECIMAL(10, 5) NOT NULL,
	latitude DECIMAL(10, 5) NOT NULL,
	is_geocoding_exact SMALLINT DEFAULT 0
);
