create database	 if not exists	payment;
use payment;


create table payment_info(
customer_id int primary key ,
name varchar(20),
mode varchar(20),
city varchar(20)
);

insert into payment_info
(customer_id,name,mode,city)
values
(101,"Olivia Barrett","Netbanking","Portland"),
(102,"Ethan Sinclair","Credit Card","Miami"),
(103,"Maya Hernadez","Credit Card","Seattle"),
(104,"Liam Donovan","Netbanking","Denver"),
(105,"Sophia Nguyen","Credit Card","New Orleans"),
(106,"Caleb Foster","Debit Card","Minneapolis"),
(107,"Ava Patel","Debit Card","Phonix"),
(108,"Lucss Carter","Netbanking","Boston"),
(109,"Isabella Martienez","Netbanking","Nashvillie"),
(110,"Jackson Brooks","Credit Card","Boston");


select mode ,count(mode)
from payment_info
group by mode
order by count(mode) desc;