CREATE DATABASE crimedb;
USE crimedb;

-- creating table for before covid (years 2018-2020)
CREATE TABLE london_pre_covid (
crime_id VARCHAR(70),
month VARCHAR(20),
reported_by VARCHAR(60),
longitude FLOAT(10),
latitude FLOAT(10),
location VARCHAR(60),
lsoa_code VARCHAR(50),
lsoa_name VARCHAR(50),
crime_type VARCHAR(60),
last_outcome VARCHAR(60),
borough VARCHAR(60)
);

-- SET GLOBAL local_infile=1;

-- loading the data
LOAD DATA LOCAL INFILE '/Users/vasilina/Desktop/cfg_group_project/pre_covid.csv'
INTO TABLE london_pre_covid
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- after covid table
CREATE TABLE london_after_covid (
crime_id VARCHAR(70),
month VARCHAR(20),
reported_by VARCHAR(60),
longitude FLOAT(10),
latitude FLOAT(10),
location VARCHAR(60),
lsoa_code VARCHAR(30),
lsoa_name VARCHAR(30),
crime_type VARCHAR(60),
last_outcome VARCHAR(60),
borough VARCHAR(60)
);

LOAD DATA LOCAL INFILE '/Users/vasilina/Desktop/cfg_group_project/covid.csv'
INTO TABLE london_after_covid
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- adding stringency table
CREATE TABLE stringency_info (
date VARCHAR(20),
stringency FLOAT
);

LOAD DATA LOCAL INFILE '/Users/vasilina/Desktop/cfg_group_project/stringency.csv'
INTO TABLE stringency_info
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
