CREATE DATABASE crimedb;
USE crimedb;

-- creating table for before covid (years 2018-2020)
CREATE TABLE london_pre_covid (
crime_id VARCHAR(40),
month DATE,
reported_by VARCHAR(50),
falls_within VARCHAR(50),
longitude INT,
latitude INT,
location VARCHAR(60),
lsoa_code VARCHAR(20),
lsoa_name VARCHAR(20),
crime_type VARCHAR(50),
last_outcome VARCHAR(60)
);

SET GLOBAL local_infile=1;

-- loading the data
LOAD DATA LOCAL INFILE '/Users/vasilina/Desktop/cfg_group_project/london2018_2020.csv'
INTO TABLE london_pre_covid
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- after covid table
CREATE TABLE london_after_covid (
crime_id VARCHAR(40),
month DATE,
reported_by VARCHAR(50),
falls_within VARCHAR(50),
longitude INT,
latitude INT,
location VARCHAR(60),
lsoa_code VARCHAR(20),
lsoa_name VARCHAR(20),
crime_type VARCHAR(50),
last_outcome VARCHAR(60)
);

LOAD DATA LOCAL INFILE '/Users/vasilina/Desktop/cfg_group_project/london2021.csv'
INTO TABLE london_after_covid
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- with lockdown info 
CREATE TABLE london_lockdown (
crime_id VARCHAR(40),
month DATE,
reported_by VARCHAR(50),
falls_within VARCHAR(50),
longitude INT,
latitude INT,
location VARCHAR(60),
lsoa_code VARCHAR(20),
lsoa_name VARCHAR(20),
crime_type VARCHAR(50),
last_outcome VARCHAR(60),
lockdown INT
);

LOAD DATA LOCAL INFILE '/Users/vasilina/Desktop/cfg_group_project/london_crime_lockdown.csv'
INTO TABLE london_lockdown
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;