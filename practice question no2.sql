create	 database insta;
use insta;


create table emp(
customer_id int primary key,
customer varchar(50),
mode varchar(20),
city varchar(20)
);


insert into emp 
(customer_id,customer,mode,city)
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

select * from emp;

select mode ,count(mode)
from emp
group by mode;





















