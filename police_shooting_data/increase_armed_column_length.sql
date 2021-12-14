-- Increase armed column length in police_shooting_data
ALTER TABLE police_shooting_data MODIFY COLUMN armed VARCHAR(35) NOT NULL;
