CREATE DATABASE COLLEGE;
USE COLLEGE;

CREATE TABLE STUDENTS(
ID INT PRIMARY KEY,
NAME VARCHAR(20)
);

INSERT INTO STUDENTS
(ID,NAME)
VALUES
(101,"ADAM"),
(102,"BOB"),
(103,"CASEY");



CREATE TABLE COURSES(
ID INT PRIMARY KEY,
COURSE VARCHAR(20)
);

INSERT INTO COURSES
(ID,COURSE)
VALUES
(102,"ENGLISH"),
(105,"MATH"),
(103,"SCIENCE"),
(107,"COMPUTER SCIENCE");

-- 1]  INNER JOIN [RENTURS RECORDS THAT HAVE MATHCHING VALUES IN BOTH ]
SELECT *
FROM STUDENTS AS S
INNER JOIN COURSES AS C
ON S.ID = C.ID;

-- 2] LEFT JOIN [ RETURNS ALL RECORDS FROM THE LEFT TABLE, AND THE MATCHED RECORDS FROM THE RIGHT TABLE ]

SELECT * 
FROM STUDENTS AS S
LEFT JOIN COURSES AS C
ON S.ID= C.ID; 

-- 3] RIGHT JOIN [ RETURNS ALL RECORDS FROM THE RIGHT TABLE AND THE MATCHED RECORDS FORM THE LEFT TABLE . ]

SELECT * 
FROM STUDENTS AS S
RIGHT JOIN COURSES AS C
ON S.ID= C.ID;  


-- 4] FULL JOIN [Returns all records when there is a match in either left or right table]

SELECT * 
FROM STUDENTS AS S
LEFT JOIN COURSES AS C
ON S.ID= C.ID
UNION
SELECT * 
FROM STUDENTS AS S
RIGHT JOIN COURSES AS C
ON S.ID= C.ID;  

-- 5] LEFT EXCULSIVE JOIN 

SELECT * 
FROM STUDENTS AS S
LEFT JOIN COURSES AS C
ON S.ID=C.ID
WHERE C.ID IS NULL; 

-- 5] RIGHT EXCULSIVE JOIN 

SELECT * 
FROM STUDENTS AS S
RIGHT JOIN COURSES AS C
ON S.ID=C.ID
WHERE S.ID IS NULL; 


-- FULL EXCULSIVE JOIN 
SELECT * 
FROM STUDENTS AS S
LEFT JOIN COURSES AS C
ON S.ID=C.ID
WHERE C.ID IS NULL
UNION
SELECT * 
FROM STUDENTS AS S 
RIGHT JOIN COURSES AS C
ON S.ID=C.ID
WHERE S.ID IS NULL; 
 
SELECT * FROM COURSES;
