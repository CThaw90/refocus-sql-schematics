-- Create schematics for the hrsa_vaccine_program table
CREATE TABLE hrsa_vaccine_program (
	id INT NOT NULL PRIMARY AUTO_INCREMENT,
	health_center TINYTEXT NOT NULL,
	city VARCHAR(50) NOT NULL,
	county VARCHAR(50) NOT NULL,
	state VARCHAR(50) NOT NULL,
	participating TINTINT(1) NOT NULL
);
