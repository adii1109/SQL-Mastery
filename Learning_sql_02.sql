
create database if not exists college;

use college;

create table student(
rollno int primary key,
name varchar(50)
);

insert into student (rollno,name)
values
(101,"Aditya"),
(102,"Shrdha"),
(103,"Ram");

select * from student;
insert into student values (104,"Shaym");


