#Creatingdatabase
create database Sales;
use Sales;

create table Orders(order_id int primary key,Customer_name varchar(20) not null,Product_category varchar(20) ,Ordered_item varchar(20),contact_no numeric(10) not null);
#1
alter table Orders add column Order_quantity int;
#2 
alter table Orders rename Sales_orders;
#3
insert into Sales_orders values(1,'Abhi','Electronic','TV',856212,1),
(2,'Mahima','Books','Angels',79561213,3),
(3,'Kevin','Electronic','Television',75626232,1),
(4,'Bibin','Boots','Bata',12156514,2),
(5,'Suty','Electronic','Fridge',51545469,2),
(6,'Arundathi','Books','Java',554866977,2),
(7,'Elzia','Electronic','Mobilephone',66454615,3),
(8,'Sofia','Cosmetic','Makeupset',45166326,4),
(9,'Messi','Sports','Cricket Bat',96329963,2),
(10,'Neymar','Sports','Football',79663346,1);
#4
select Customer_name,Ordered_item from sales_orders;
#5
update sales_orders
set Ordered_item='Shuttle Racket'
where order_id=2;
#6
drop table sales_orders;
