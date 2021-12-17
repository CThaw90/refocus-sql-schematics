-- Modify geo_id column to varchar data type
ALTER TABLE county_location_data MODIFY COLUMN geo_id VARCHAR(15) NULL;
