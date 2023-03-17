CREATE DATABASE IF NOT EXISTS 100dayproject;

USE sign_in;

/*
CREATE TABLE tablename (
column1 COLUMN1_DATATYPE(size) CONSTRAINTS,
column2 COLUMN2_DATATYPE(size) CONSTRAINTS,
);
*/

CREATE TABLE IF NOT EXISTS sign_in (
 user_id VARCHAR(2) PRIMARY KEY,
first_name VARCHAR(40),
last_name VARCHAR(40),
middle_name VARCHAR(40),
DOB VARCHAR(40),
phone_number VARCHAR(40),
email VARCHAR(40),
password VARCHAR(40),
address VARCHAR(40),
gender VARCHAR(40)

);

DESCRIBE sign_in;


CREATE TABLE stamp_list (
     uuid VARCHAR(2) PRIMARY KEY,
image VARCHAR(40),
img_name VARCHAR(40),
Rs VARCHAR(40),
descriptionof VARCHAR(40)

);
DESCRIBE stamp_list;

use sign_in;
select *
from sign_in;


select *
from stamp_list;




