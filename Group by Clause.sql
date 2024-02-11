create database if not  exists college;
use college;

create table student(
id int primary key,
name varchar(20),
marks int not null ,
grade varchar(1),
city varchar (20)
);


insert into student
values

(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"Chetan",85,"A","Mumbai"),
(104,"dhruv",85,"A","Delhi"),
(105,"emanul",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");


select	city ,count(name)
from student
group by city 
order by count(name) desc;

select city ,avg(marks)
from student
group by city 
order by avg(marks) desc;

select city,name ,max(marks)
from student
group by city,name
order by max(marks) desc;

