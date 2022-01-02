CREATE DATABASE crimedb;
USE crimedb;

-- london table for both before and after covid
CREATE TABLE london_all (
-- crime_id VARCHAR(90) NOT NULL PRIMARY KEY,
month VARCHAR(20),
longitude FLOAT(30),
latitude FLOAT(30),
lsoa_code VARCHAR(40),
stringency FLOAT(20),
covid INT,
last_outcome_investigation_complete_no_suspect_identified INT,
last_outcome_category_status_update_unavailable INT,
last_outcome_category_suspect_present_action_taken INT,
crime_type_bicycle_theft INT,
crime_type_burglary INT,
crime_type_criminal_damage_and_arson INT,
crime_type_drugs INT,
crime_type_other_crime INT,
crime_type_other_theft INT,
crime_type_possession_of_weapons INT,
crime_type_public_order INT,
crime_type_robbery INT,
crime_type_shoplifting INT,
crime_type_theft_from_the_person INT,
crime_type_Vehicle_crime INT,
crime_type_Violence_and_sexual_offences INT,
crimes_count FLOAT(50)
);

LOAD DATA LOCAL INFILE '/Users/vasilina/Downloads/london_ohe.csv'
INTO TABLE london_all
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- adding the diff cities db 
CREATE TABLE other_cities_all (
month VARCHAR(20),
longitude FLOAT(30),
latitude FLOAT(30),
lsoa_code VARCHAR(40),
covid INT,
stringency FLOAT(20),
last_outcome_investigation_complete_no_suspect_identified INT,
last_outcome_category_status_update_unavailable INT,
last_outcome_category_suspect_present_action_taken INT,
crime_type_bicycle_theft INT,
crime_type_burglary INT,
crime_type_criminal_damage_and_arson INT,
crime_type_drugs INT,
crime_type_other_crime INT,
crime_type_other_theft INT,
crime_type_possession_of_weapons INT,
crime_type_public_order INT,
crime_type_robbery INT,
crime_type_shoplifting INT,
crime_type_theft_from_the_person INT,
crime_type_Vehicle_crime INT,
crime_type_Violence_and_sexual_offences INT,
crimes_count FLOAT(50)
);

LOAD DATA LOCAL INFILE '/Users/vasilina/Downloads/other_ohe.csv'
INTO TABLE other_cities_all
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
