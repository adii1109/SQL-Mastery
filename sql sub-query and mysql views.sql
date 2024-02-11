CREATE DATABASE IF NOT EXISTS COLLEGE;
USE COLLEGE;


CREATE TABLE STUDENT(
ID INT PRIMARY KEY,
NAME VARCHAR(20),
MARKS INT,
GREADE VARCHAR(1),
CITY VARCHAR(20)
);

INSERT INTO STUDENT
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"Chetan",85,"A","Mumbai"),
(104,"dhruv",85,"A","Delhi"),
(105,"emanul",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

select avg(marks) from student;

select name,marks from student
where marks > (select avg(marks ) from student);

select id, name 
from student
where id % 2=0;

select max(marks)
from student
where city="Delhi";

-- virtual table 
create view teacher as
select id , name , marks from student;

select * from teacher;

