-- Add state column to the state_trend_data table
ALTER TABLE state_trend_data ADD COLUMN state VARCHAR(30) NOT NULL;
