create database School;
use School;
#Creating Table
create table Student(Roll_no int,Student_Name varchar(20),Marks int,
Grade varchar(2));
#Inserting Values
insert into Student values(1,'Abhi',86,'A'),(2,'Kevin',91,'A+'),(3,'Luka',67,'B');
select * from classten;
#Adding Contact Column
alter table Student add column Contact_no Varchar(12);
#Removing Grade column
alter table Student drop column Grade;
#Renaming Table
alter table Student rename classten;
#Deleting all rows
truncate classten;
#Drop table 
drop table classten;