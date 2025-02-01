#1
use sys;
ALTER TABLE Persons
ADD DOB DATE;
#2
DELIMITER //
CREATE FUNCTION age(dob DATE) 
RETURNS INT DETERMINISTIC
BEGIN
    RETURN TIMESTAMPDIFF(YEAR, dob, CURDATE());
END //
DELIMITER ;
select fname,age(dob) as age from persons;
#3
SELECT FirstName, LastName, dbo.CalculateAge(DOB) AS Age
FROM Persons;
#4
SELECT Country_name, LEN(Country_name) AS Country_Lenght
FROM Country;
#5
SELECT Country_name, LEFT(Country_name, 3) AS ExtractedName
FROM Country;
#6
SELECT Country_name, UPPER(Country_name) AS UppercaseCountry,LOWER(Country_name) AS LowercaseCountry
FROM Country;
