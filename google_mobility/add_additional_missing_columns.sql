-- Adding additional columns that are missing to google_mobility table
ALTER TABLE google_mobility ADD COLUMN workplaces_change INT NULL;
ALTER TABLE google_mobility ADD COLUMN residential_change INT NULL;
