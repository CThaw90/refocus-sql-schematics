-- Remove coordinate columns longitude and latitude
ALTER TABLE county_location_data REMOVE COLUMN longitude;
ALTER TABLE county_location_data REMOVE COLUMN latitude;
