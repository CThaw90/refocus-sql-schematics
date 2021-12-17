-- Creating the county_location_data table
CREATE TABLE county_location_data (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	county VARCHAR(50) NOT NULL,
	state VARCHAR(50) NOT NULL,
	longitude DECIMAL(10, 5) NULL,
	latitude DECIMAL(10, 5) NULL,
	geo_id INT NULL
);
