-- Increase column value length for race category
ALTER TABLE cdc_hospitalizations MODIFY COLUMN race_category VARCHAR(40) NOT NULL;
