CREATE TABLE mobility_per_date (
  date DATE PRIMARY KEY,
  retail_and_recreation_percent_change_from_baseline INT,
  grocery_and_pharmacy_percent_change_from_baseline INT,
  parks_percent_change_from_baseline INT,
  transit_stations_percent_change_from_baseline INT,
  workplaces_percent_change_from_baseline INT,
  residential_percent_change_from_baseline INT
);


CREATE TABLE IN_Cases (
  date DATE PRIMARY KEY,
  state VARCHAR,
  population INT,
  total_cases INT,
  total_cases_per_100000 INT,
  total_deaths INT,
  new_cases INT,
  new_deaths INT,
  new_deaths_per_100_000 INT,
  new_cases_per_100_000 INT
);


CREATE TABLE indiana_newcases (
    date DATE PRIMARY KEY,
    New_Cases INT,
	Seven_Day_Moving_Avg INT	
);

SELECT in_cases.date, 
	   in_cases.population, 
	   in_cases.total_cases, 
	   in_cases.total_deaths, 
	   in_cases.new_cases, 
	   in_cases.new_deaths,
	   mobility_per_date.retail_and_recreation_percent_change_from_baseline,
	   mobility_per_date.grocery_and_pharmacy_percent_change_from_baseline,
	   mobility_per_date.parks_percent_change_from_baseline,
	   mobility_per_date.transit_stations_percent_change_from_baseline,
	   mobility_per_date.workplaces_percent_change_from_baseline,
	   mobility_per_date.residential_percent_change_from_baseline
FROM in_cases
INNER JOIN mobility_per_date ON
in_cases.date = mobility_per_date.date
ORDER BY in_cases.date DESC;