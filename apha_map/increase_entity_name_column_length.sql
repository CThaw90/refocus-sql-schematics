-- Increase size limit for entity_name in the apha_map table
ALTER TABLE apha_map MODIFY COLUMN entity_name VARCHAR(200) NOT NULL;
