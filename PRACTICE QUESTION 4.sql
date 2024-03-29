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


-- CHANGE THE COLUMN NAME "NAME" TO "FULL_NAME"
ALTER TABLE STUDENT
CHANGE COLUMN NAME FULL_NAME  VARCHAR(20);


-- DELETE WHERE STUDENTS SCORE LESS THAN 80

SET SQL_SAFE_UPDATES=0;
DELETE FROM STUDENT
WHERE MARKS<80; 

-- DELETE COLUMN FOR GRADE

ALTER TABLE STUDENT
DROP COLUMN  GREADE;
 

SELECT * FROM STUDENT;

DROP DATABASE IF EXISTS COLLEGE;