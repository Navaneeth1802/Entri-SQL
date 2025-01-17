use sales;
create table Manager(ManagerId int Primary key,Firstname varchar(20) not null,Lastname varchar(20),DOB date,age int check(age>18),Gender varchar(1),Department varchar(20),Salary int not null);
drop table Manager;
#1
insert into Manager values(2,'Sherin','T','2003-10-9',21,'F','Finance',17500),
(12,'Melvin','kumar','1990-5-9',30,'M','HR',30000),
(15,'Babu','k','1980-2-18',44,'M','IT',155000),
(107,'Arun','Thomas','2004-1-1',21,'M','Finance',15000),
(51, 'Arjun', 'Kumar', '1998-05-15', 26, 'M', 'HR', 32000),
(661, 'Priya', 'Sharma', '1999-08-22', 25, 'F', 'IT', 28000),
(41, 'Ravi', 'Verma', '2001-01-10', 23, 'M', 'IT', 25000),
(61, 'Sneha', 'Iyer', '1997-11-05', 27, 'F', 'Finance', 35000),
(21, 'Manoj', 'Desai', '2000-04-18', 24, 'M', 'IT', 19000);
insert into Manager values(35,'Aalia','Nazrin','1995-8-5',29,'F','Finance',25000);
#2
select Firstname,Lastname,DOB,ManagerID from Manager;
#3
select Firstname,Lastname,Salary*12 as Annual_Salary from Manager;
#4
select * from Manager
where Firstname not Like 'Aalia';
#5
select * from Manager
where Salary>25000 and Department like 'IT';
#6
select * from Manager
where Salary>=10000 and Salary<=30000;