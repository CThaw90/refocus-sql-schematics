-- Creating the cdc_hospitalizations table
CREATE TABLE cdc_hospitalizations (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	public_key VARCHAR(10) NOT NULL UNIQUE,
	catchment VARCHAR(30) NOT NULL,
	network VARCHAR(25) NOT NULL,
	mmwr_year SMALLINT NOT NULL,
	mmwr_week SMALLINT NOT NULL,
	mmwr_date DATE NOT NULL,
	age_category VARCHAR(15) NOT NULL,
	sex_category VARCHAR(15) NOT NULL,
	race_category VARCHAR(25) NOT NULL,
	cumulative_rate DECIMAL(15, 10) NOT NULL DEFAULT '0.0',
	weekly_rate DECIMAL(15, 10) NOT NULL DEFAULT '0.0'
);
