-- Modify column positivity_rate_7_day_plus_mean to positivity_rate_14_day_mean
ALTER TABLE state_trend_data RENAME COLUMN positivity_rate_7_day_plus_mean TO positivity_rate_14_day_mean;
