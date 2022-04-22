-- Add column positivity_rate for state_trend_data
ALTER TABLE state_trend_data ADD COLUMN positivity_rate DECIMAL(25, 15) NULL;
