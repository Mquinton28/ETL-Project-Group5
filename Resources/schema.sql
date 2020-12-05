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
  State VARCHAR,
  Population INT,
  total_cases INT,
  total_cases_per_100000 INT,
  total_deaths INT,
  new_cases INT,
  new_deaths INT,
  new_deaths_per_100_000 INT,
  new_cases_per_100_000 INT
);
