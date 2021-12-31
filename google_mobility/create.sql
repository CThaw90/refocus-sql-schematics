-- Create shematics for google_mobility table
CREATE TABLE google_mobility (
	id INT NOT NULL PRIMARY AUTO_INCREMENT,
	date DATE NOT NULL,
	county VARCHAR(50) NOT NULL,
	state VARCHAR(50) NOT NULL,
	retail_and_recreation_change INT NULL,
	grocery_and_pharmacy_change INT NULL,
	parks_change INT NULL,
	transit_stations_change INT NULL
);
