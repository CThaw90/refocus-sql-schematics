-- Create schematics for vaccinations_by_race_ethnicity table
CREATE TABLE vaccinations_by_race_ethnicity (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`date` DATE NOT NULL,
	state VARCHAR(20) NOT NULL,
	hispanic_included BOOL NOT NULL DEFAULT '0',
	white_percentage_of_vaccinations DECIMAL(3, 2) NULL,
	black_percentage_of_vaccinations DECIMAL(3, 2) NULL,
	hispanic_percentage_of_vaccinations DECIMAL(3, 2) NULL,
	asian_percentage_of_vaccinations DECIMAL(3, 2) NULL,
	american_indian_percentage_of_vaccinations DECIMAL(3, 2) NULL,
	alaska_native_percentage_of_vaccinations DECIMAL(3, 2) NULL,
	native_hawaiian_percentage_of_vaccinations DECIMAL(3, 2) NULL,
	pacific_islander_percentage_of_vaccinations DECIMAL(3, 2) NULL,
	other_percentage_of_vaccinations DECIMAL(3, 2) NULL,
	known_race_percentage_of_vaccinations DECIMAL(3, 2) NULL,
	unknown_race_percentage_of_vaccinations DECIMAL(3, 2) NULL,
	known_ethnicity_percentage_of_vaccinations DECIMAL(3, 2) NULL,
	unknown_ethnicity_percentage_of_vaccinations DECIMAL(3, 2) NULL
);
