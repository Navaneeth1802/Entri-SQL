#1
SELECT country, COUNT(*) AS num_persons
FROM Persons
GROUP BY country;
#2
SELECT country, COUNT(*) AS num_persons
FROM Persons
GROUP BY country
ORDER BY num_persons DESC;
#3
SELECT country, AVG(rating) AS avg_rating
FROM Persons
GROUP BY country
HAVING AVG(rating) > 3.0;
#4
SELECT country, AVG(rating) AS avg_rating
FROM Persons
GROUP BY country
HAVING AVG(rating) = (
    SELECT AVG(rating)
    FROM Persons
    WHERE country = 'USA'
);
#5
SELECT country, population
FROM Country
WHERE population > (
    SELECT AVG(population)
    FROM Country
);

#PART-B
CREATE TABLE Customer (
   Customer_Id INT PRIMARY KEY,
   First_name VARCHAR(50),
   Last_name VARCHAR(50),
   Email VARCHAR(100),
   Phone_no VARCHAR(20),
   Address VARCHAR(255),
   City VARCHAR(50),
   State VARCHAR(50),
   Zip_code VARCHAR(10),
   Country VARCHAR(50)
);

#1
CREATE VIEW customer_info AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_Name,
       Email
FROM Customer;
#2
CREATE VIEW US_Customers AS
SELECT *
FROM Customer
WHERE Country = 'US';
#3
CREATE VIEW Customer_details AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_Name,
       Email,
       Phone_no,
       State
FROM Customer;
#4
UPDATE Customer
SET Phone_no = 'new_phone_number'
WHERE State = 'California';
#5
SELECT State, COUNT(*) AS num_customers
FROM Customer
GROUP BY State
HAVING COUNT(*) > 5;

#6
SELECT *
FROM Customer_details
ORDER BY State ASC;

