-- Create schematics for the apha_map table
CREATE TABLE apha_map (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`date` DATE NOT NULL,
	longitude VARCHAR(20) NOT NULL,
	latitude VARCHAR(20) NOT NULL,
	city VARCHAR(50) NOT NULL,
	county VARCHAR(50) NOT NULL,
	state VARCHAR(30) NOT NULL,
	entity_type VARCHAR(50) NOT NULL,
	entity_geo VARCHAR(30) NOT NULL,
	entity_name VARCHAR(100) NOT NULL,
	link_to_decleration TEXT NOT NULL
);
