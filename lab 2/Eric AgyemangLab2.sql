--ERIC AGYEMANG
--IT 478: ADVAANCED DATABASE MANAGEMENT
--LAB 2

--Using the jrwolf.sharkattacks: 
 

--1. Find all fatal shark attacks in the US. Order by year from newest to oldest attack.

--2. Find (8+2)*7 use the DUAL table.

--3. Show the country and year of all provoked attacks between 2002 and 2005. Order by country in ascending order. 

--4. Show all attacks for Swimming in CUBA or SOUTH AFRICA use the IN command. 

--5. Show all attacks from the activity Kite Boarding not in the US: Use NOT IN. 

--6. Find all attacks from MEXICO  and any fishing activity. Use Like. Hint: 'ishing' will return more correct results than 'Fishing'. 

 

--Submit both SQL and Results

SHOW PAGESIZE;
SET PAGESIZE 25;

--QUESTION 1
SET ECHO ON;

SELECT *
FROM jrwolf.sharkattacks
WHERE fatal = 'Y' AND country = 'USA'
ORDER BY year DESC;

--QUESTION 2
SELECT (8+2)*7
FROM DUAL;


--QUESTION 3
SELECT country, year
FROM jrwolf.sharkattacks
WHERE type = 'Provoked' AND year BETWEEN '2002' AND '2005'
ORDER BY country;



--QUESTION 4
SELECT *
FROM jrwolf.sharkattacks
WHERE activity = 'Swimming' AND country IN ('CUBA', 'SOUTH AFRICA');


--QUESTION 5
SELECT *
FROM jrwolf.sharkattacks
WHERE activity = 'Kite Boarding' AND country NOT IN ('USA');



--QUESTION 6
SELECT *
FROM jrwolf.sharkattacks
WHERE (country = 'MEXICO' OR country = 'BAHAMAS') AND activity LIKE '%ishing';
