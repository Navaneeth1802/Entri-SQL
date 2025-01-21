#1
use sys;
select Fname,country.Population,Area from country
left join persons
on country.id=persons.countryid;

select Fname,country.Population,Area from country
inner join persons
on country.id=persons.countryid;

select Fname,country.Population,Area from country
right join persons
on country.id=persons.countryid;

#2
SELECT distinct country_name FROM country
UNION
SELECT DISTINCT country_name FROM persons
join persons on country.id=persons.id;

#3
select country.country_name,persons.country_name from country
inner join persons
on country.id=persons.id;

#4
select round(PopulationRating),Fname from persons;