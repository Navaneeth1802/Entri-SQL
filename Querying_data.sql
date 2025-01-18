use sys;
create table Country(id int primary key,Country_name varchar(20),Population numeric,Area numeric);
create table Persons(id int primary key,Fname varchar(20),Lname varchar(20),PopulationRating int,Countryid int,Country_name varchar(20), Foreign key(Countryid) references Country(id));

INSERT INTO Country VALUES
(1, 'USA', 5000000, 435656),
(2, 'UK', 67000000, 243610),
(3, 'Canada', 38000000, 9984670),
(4, 'India', 1393409038, 3287263),
(5, 'Australia', 25687041, 7692024),
(6, 'China', 1444216107, 9596961),
(7, 'Brazil', 213993437, 8515767),
(8, 'Russia', 146171015, 17098242),
(9, 'Japan', 126476461, 377975),
(10, 'Germany', 83166711, 357022),
(11, 'France', 65480710, 551695),
(12, 'Italy', 60367477, 301340),
(13, 'Spain', 47351567, 505990),
(14, 'Mexico', 126014024, 1964375),
(15, 'South Africa', 59308690, 1219090),
(16, 'South Korea', 51709098, 100210),
(17, 'Argentina', 45510318, 2780400),
(18, 'Saudi Arabia', 35269002, 2149690),
(19, 'Indonesia', 276361783, 1904569),
(20, 'Egypt', 104124440, 1002450);
INSERT INTO Country VALUES(21,'Canada',150000,23040),
(22,'Congo',350000,120000);
INSERT INTO Persons VALUES
(1, 'Subash', 'Chandran', 3.5, 4, 'India'),
(2, 'John', 'Doe', 4.2, 1, 'USA'),
(3, 'Emily', 'Blunt', 4.7, 2, 'UK'),
(4, 'Chris', 'Hemsworth', 4.9, 5, 'Australia'),
(5, 'Robert', 'Brown', 3.8, 3, 'Canada'),
(6, 'Amit', 'Sharma', 4.0, 4, 'India'),
(7, 'Samantha', 'Williams', 3.9, 1, 'USA'),
(8, 'Sophia', 'Davis', 4.6, 2, 'UK'),
(9, 'Liam', 'Wilson', 4.5, 3, 'Canada'),
(10, 'Jack', 'Taylor', 3.7, 5, 'Australia'),
(11, 'Olivia', 'Johnson', 4.8, 1, 'USA'),
(12, 'Ethan', 'Anderson', 4.1, 2, 'UK'),
(13, 'Mia', 'Clark', 4.3, 3, 'Canada'),
(14, 'Noah', 'Moore', 4.4, 5, 'Australia'),
(15, 'Arjun', 'Nair', 3.6, 4, 'India'),
(16, 'Charlotte', 'Garcia', 4.2, 1, 'USA'),
(17, 'Lucas', 'Martinez', 4.0, 3, 'Canada'),
(18, 'Ava', 'Rodriguez', 3.9, 5, 'Australia'),
(19, 'Isabella', 'Martins', 4.7, 2, 'UK'),
(20, 'David', 'Evans', 3.5, 4, 'India');
INSERT INTO Persons(id,Fname,Lname,PopulationRating) VALUES
(21,'Theni','Lukas',3);
#1Disticntnames
select Distinct Country_name from Persons;

#2Full name with alias

select concat(fname,lname) as "NAME" from persons;

#3rating greater than 4

select id,fname,lname from Persons
where PopulationRating>4;

#4 Countries with population greater than 10L
select id,Country_name from Country
where Population>1000000;
#5
select id,fname,lname from Persons
where Country_name like 'USA' or PopulationRating>4.5;
#6
select id,fname,lname from Persons
where Country_name is null;
#7
select fname,lname from Persons where
Country_name  in ('USA','UK','Canada');
#8
select id,fname,lname from Persons where
Country_name not in ('India','Australia');
#9
select Country_name from Country
where Population>500000 and Population<2000000;
#10
select Country_name from Country
where Country_name not like 'C%';

