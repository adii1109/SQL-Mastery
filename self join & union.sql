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


CREATE TABLE EMPLOYEE(
ID INT PRIMARY KEY,
NAME VARCHAR (20),
MANGER_ID INT
);

INSERT INTO EMPLOYEE
(ID,NAME,MANGER_ID)
VALUES
(101,"ADAM",103),
(102,"BOB",104),
(103,"CASEY",NULL),
(104,"DONALD",103);


select * from employee;

-- self Join
select  a.name as name, e.name as manger 
from employee as e
join employee as a
on e.id =a.MANGER_ID;
 
 -- Union { it used to combine the result -set of two or more select statements. given unique records.}
 select  name from employee
 union
 select name from employee;
 
 -- Union all { gives us all value duplicate also }
 select  name from employee
 union all
 select name from employee;
 
drop database if exists college;