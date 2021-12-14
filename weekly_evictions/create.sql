-- Create the weekly_evictions table
CREATE TABLE weekly_evictions (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`date` DATE NOT NULL,
	week SMALLINT NOT NULL,
	city VARCHAR(50) NOT NULL,
	state VARCHAR(30) NOT NULL,
	racial_majority VARCHAR(25) NOT NULL,
	filings SMALLINT NOT NULL,
	filings_avg DECIMAL(20, 10) NOT NULL DEFAULT 0.0
	last_updated DATE NOT NULL
);
