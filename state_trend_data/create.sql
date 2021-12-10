-- Creating the state_trend_data table
CREATE TABLE state_trend_data (
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`date` DATE NOT NULL,
	cases INTEGER NULL,
	deaths INTEGER NULL,
	tests INTEGER NULL,
	cases_change INTEGER NULL,
	deaths_change INTEGER NULL,
	tests_change INTEGER NULL,
	cases_7_day_mean DECIMAL(25, 15) NULL,
	deaths_7_day_mean DECIMAL(25, 15) NULL,
	tests__7_day_mean DECIMAL(25, 15) NULL,
	cases_per_million DECIMAL(25, 15) NULL,
	deaths_per_million DECIMAL(25, 15) NULL,
	tests_per_million DECIMAL(25, 15) NULL,

	positivity_rate_7_day_mean DECIMAL(25, 15) NULL,
	positivity_rate_7_day_plus_mean DECIMAL(25, 15) NULL,
	pct_change_weekly_cases_7 DECIMAL(25, 15) NULL,
	pct_change_weekly_cases_14 DECIMAL(25, 15) NULL,
	pct_change_weekly_deaths_7 DECIMAL(25, 15) NULL,
	pct_change_weekly_deaths_14 DECIMAL(25, 15) NULL,
	pct_change_weekly_tests_7 DECIMAL(25, 15) NULL,
	pct_change_weekly_tests_14 DECIMAL(25, 15) NULL,
	pct_change_positivity_rate_7 DECIMAL(25, 15) NULL,
	pct_change_positivity_rate_14 DECIMAL(25, 15) NULL,

	population INTEGER NOT NULL
	vaccines_distributed INTEGER NULL,
	vaccines_administered INTEGER NULL,
	vaccines_one_dose INTEGER NULL,
	vaccines_two_dose INTEGER NULL
);
