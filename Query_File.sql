
-- Create table
CREATE TABLE Customer
(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	FirstName VARCHAR(30) NOT NULL,
	LastName VARCHAR(30) NOT NULL,
	CustomerNumber INT NOT NULL UNIQUE CHECK(CustomerNumber > 0),
	AreaCode INT DEFAULT 3700,
	[Address] VARCHAR(50),
	Country VARCHAR(30) DEFAULT 'Bangladesh'
)

-- Insert values into table
INSERT INTO Customer VALUES 
('Sunil', 'Karmakar', 1001, DEFAULT, 'Dhaka', DEFAULT),
('Pritam', 'Karmakar', 1002, DEFAULT, 'Dhaka', DEFAULT),
('Mr', 'Rahul', 1003, DEFAULT, 'Dhaka', 'USA')

-- Display record from table
SELECT * FROM Customer

-- Display particular columns
SELECT 
Id, FirstName, LastName, CustomerNumber, AreaCode, Address, Country
FROM Customer

-- Add new column to table
ALTER TABLE Customer
ADD Phone VARCHAR(20)

-- Add values to newly added column / Update table
UPDATE Customer SET Phone = '01743909840' WHERE Id = 1
UPDATE Customer SET Phone = '01743909840' WHERE Id = 2

-- Delete a column
ALTER TABLE Customer
DROP COLUMN Phone

-- Delete record from table
DELETE FROM Customer
WHERE Country = 'USA'