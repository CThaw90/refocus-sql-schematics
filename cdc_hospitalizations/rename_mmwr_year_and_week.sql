-- Rename columns to more user friendly names
ALTER TABLE cdc_hospitalizations RENAME COLUMN mmwr_year TO year;
ALTER TABLE cdc_hospitalizations RENAME COLUMN mmwr_week TO week;