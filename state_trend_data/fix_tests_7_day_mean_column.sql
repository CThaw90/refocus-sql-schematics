-- Fix typo in tests_7_day_mean column
ALTER TABLE state_trend_data RENAME COLUMN tests__7_day_mean TO tests_7_day_mean;
