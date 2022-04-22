-- Create table for population
CREATE TABLE population (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`date` DATE NOT NULL,
	state VARCHAR(50) NOT NULL,
	estimate INT NOT NULL
);
