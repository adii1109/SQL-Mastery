create database if not exists college;
use college;

create table dept(
id int primary key,
name varchar(50)
);

insert into dept 
values
(101,"Science"),
(102,"English"),
(103, "Hindi");

update dept
set id=111
where id=101;

SELECT * FROM dept;

create table teacher(
id int primary key,  
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

insert into teacher
values
(101,"Adam",101),
(102,"John",103),
(103,"Adii",101);

select * from teacher;
