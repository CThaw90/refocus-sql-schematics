-- Remove coordinate columns longitude and latitude
ALTER TABLE county_location_data DROP COLUMN longitude;
ALTER TABLE county_location_data DROP COLUMN latitude;
