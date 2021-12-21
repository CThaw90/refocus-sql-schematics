-- Modify coordinate columns from decimal to varchar
ALTER TABLE county_coordinates_data MODIFY COLUMN longitude VARCHAR(25) NOT NULL;
ALTER TABLE county_coordinates_data MODIFY COLUMN latitude VARCHAR(25) NOT NULL;
