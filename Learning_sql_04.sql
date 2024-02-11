create database college;
use college;

create table student(
rollno int primary key,
name varchar(50),
marks int not null, 
grade varchar(1),
city varchar(20)
);

insert into student 
(rollno, name,marks,grade,city)
values
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"Chetan",85,"A","Mumbai"),
(104,"dhruv",85,"A","Delhi"),
(105,"emanul",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");


-- select * from student;

--  Selecting specific columns to print using select

	select name , marks from student; 
    
--  // printing unique city not any duplicate value [distinct]
-- select distinct city from student;








