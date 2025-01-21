use sys;
#1
select substring(Country_name,3) from country;

#2
select concat(Fname,' ',Lname) as 'Name' from persons;
#3
select count(distinct(country_name)) from Persons;
#4
select max(Population)as population from country;
#5
select min(Population) from persons;
#6
insert into persons(id,Fname,Population,PopulationRating,Countryid,Country_name) values(22,'KLaus',315115,2,3,'Canada'),(24,'Lukas',26666,3,3,'Canada');
select count(Lname) from persons;
#7
select count(*) from persons;
#8
select Country_name,Population from country
limit 3;
#9
select country_name from country
order by rand()
limit 3;
#10
select Fname,Lname,PopulationRating  from persons
order by PopulationRating desc;
#11
select sum(Population),Country_name from persons
group by Country_name;
#12
select sum(Population),Country_name from persons
group by Country_name
having sum(Population)>5000000;
#13
select Country_name,count(id),avg(PopulationRating)
from persons
group by country_name
having count(id)>2
order by avg(PopulationRating);