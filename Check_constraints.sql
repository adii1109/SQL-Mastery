create database wipro;
use wipro;

create table employee(
id int primary key,
name varchar(20),
city  varchar(20) check (city="Pune")
);


insert into employee
(id,name,city)
values
(101,"aditya","Pune"),
(102,"shardha","Mumbai");


select * from employee;