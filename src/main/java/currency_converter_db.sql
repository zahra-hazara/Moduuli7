-- Drop previous version of the database if it exists
DROP DATABASE IF EXISTS currency_converter_db;

-- Create the database
CREATE DATABASE currency_converter_db;

-- Use the newly created database
USE currency_converter_db;

-- Drop the user account appuser if it exists
DROP USER IF EXISTS 'appuser'@'localhost';

-- Create the user account appuser
CREATE USER 'appuser'@'localhost' IDENTIFIED BY 'your_password_here';

-- Grant privileges to the user account appuser
GRANT SELECT ON currency_converter_db.* TO 'appuser'@'localhost';

-- Flush privileges to apply changes
FLUSH PRIVILEGES;

-- Create a table for storing Currency objects
CREATE TABLE currencies (
                            id INT AUTO_INCREMENT PRIMARY KEY,
                            abbreviation VARCHAR(10) UNIQUE,
                            name VARCHAR(100),
                            conversion_rate DECIMAL(10, 6)
);

-- Populate the table with data
INSERT INTO currencies (abbreviation, name, conversion_rate) VALUES
                                                                 ('USD', 'United States Dollar', 1.0),
                                                                 ('EUR', 'Euro', 0.845943), -- Exchange rate as of April 2024
                                                                 ('GBP', 'British Pound Sterling', 0.735301),
                                                                 ('JPY', 'Japanese Yen', 109.178),
                                                                 ('CAD', 'Canadian Dollar', 1.24864),
                                                                 ('AUD', 'Australian Dollar', 1.29502),
                                                                 ('CHF', 'Swiss Franc', 0.924871),
                                                                 ('CNY', 'Chinese Yuan Renminbi', 6.35841);

