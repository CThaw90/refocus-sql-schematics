-- Add column hotspot for state_trend_data
ALTER TABLE state_trend_data ADD COLUMN hotspot SMALLINT(1) NOT NULL DEFAULT 0;
