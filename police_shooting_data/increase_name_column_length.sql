-- Increase column length for name in police_shooting_data
ALTER TABLE police_shooting_data MODIFY COLUMN name VARCHAR(50) NOT NULL;
