-- Drop existing database
DROP DATABASE IF EXISTS currency_converter;

-- Create new database
CREATE DATABASE currency_converter;

USE currency_converter;

-- Create currencies table
CREATE TABLE currencies (
    abbreviation VARCHAR(3) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    conversion_rate DECIMAL(20, 6) NOT NULL
);

-- Populate with sample data (exchange rates as of October 2023)
INSERT INTO currencies (abbreviation, name, conversion_rate) VALUES
('USD', 'United States Dollar', 1.000000),
('EUR', 'Euro', 1.060000),
('GBP', 'British Pound Sterling', 1.220000),
('JPY', 'Japanese Yen', 0.006800),
('AUD', 'Australian Dollar', 0.640000),
('CAD', 'Canadian Dollar', 0.730000),
('CHF', 'Swiss Franc', 1.120000),
('CNY', 'Chinese Yuan', 0.140000);

-- Remove existing appuser
DROP USER IF EXISTS 'zahra'@'localhost';

-- Create appuser with password
CREATE USER 'zahra'@'localhost' IDENTIFIED BY '1234';

-- Grant SELECT privilege on currencies table
GRANT SELECT ON currency_converter.currencies TO 'zahra'@'localhost';

FLUSH PRIVILEGES;

