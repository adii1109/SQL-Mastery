create database if not exists college;
use college;

create table students(
rollno int primary key,
name varchar(20),
marks int,
grade varchar(1),
city varchar(20)
);

insert into students
values
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"Chetan",85,"A","Mumbai"),
(104,"dhruv",85,"A","Delhi"),
(105,"emanul",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");


select city ,count(name)
from student
group by city
having max(marks)>90;

set SQL_SAFE_UPDATES=0;
-- // Marks update
update students
set grade="O"
where marks >=90;

update students
set grade="A"
where marks between 85 and 90;

update students
set marks=100 
where rollno=101;

 

select * from students;


