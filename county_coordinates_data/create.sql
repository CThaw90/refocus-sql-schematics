-- Creare schematics for county_coordinates_data table
CREATE TABLE county_coordinates_data (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	longitude DECIMAL(20, 10) NOT NULL,
	latitude DECIMAL(20, 10) NOT NULL,
	city VARCHAR(50) NOT NULL,
	county_location_data_id INT NOT NULL,

	FOREIGN KEY (county_location_data_id) 
		REFERENCES county_location_data (id) ON DELETE RESTRICT
);
