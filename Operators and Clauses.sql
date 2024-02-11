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
(104,"dhruv",92,"A","Delhi"),
(105,"emanul",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

-- --Select keyword
-- 	To selecting area or column
 
select name , marks from student;  -- Selecting specific columns to print using select
-- select distinct city from student; // printing unique city not any duplicate value [distinct]

-- Where keyword =[For conditions ] 
select * from student where marks > 80;
select * from student where city="Mumbai";

-- >And operator-- 

select * from student where	marks > 80 and city="Mumbai";

-- > Or operator:

select * from student where marks >90 or city="Mumbai"; 


-- Between (to select range between) 
select * from student where marks between 80 and 90 ;

-- In (matches where any value in the list)

select *  from student where city in ("Mumbai", "Pune"); 

-- Not (to negate the given condition )

select * from student where city not in ("Pune","Mumbai"); 
select * from student where marks not between 80 and 90;

-- Limit ( sets an upper limit on number of tuples ,rows to be returned . you write limit it gives your limit number)

select * from student where marks >75 limit 3; 

-- Order by clause ( To sort in ascending [asc] or descending order [desc] )

select * from student order by marks asc; -- //asending order
select * from student order by marks desc; -- // Descending order


select * from student order by city asc;

-- Top 3 student marks 
 
 select * from student 
 order by marks desc
 limit 3;


drop database college;

 
