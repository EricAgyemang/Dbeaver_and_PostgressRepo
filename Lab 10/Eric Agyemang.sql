DROP TABLE STATE_CITY;
DROP TABLE t;

SET ECHO ON;
--Eric Agyemang
--IT 478 Lab 10

--PART #1
-- Q1. Create a table named 

CREATE TABLE STATE_CITY (
state_abbrev VARCHAR2(2));

--Q2. Use ALTER TABLE to add the column STATE_NAME to the STATE_CITY table STATE_NAME's data type is VARCHAR2 (the length is 30).
ALTER TABLE STATE_CITY ADD  STATE_NAME VARCHAR2(30);


--Q3. Use ALTER TABLE to add the column CITY_NAME to the STATE_CITY table CITY_NAME's data type is VARCHAR2 (the length is 30).
ALTER TABLE STATE_CITY ADD  CITY_NAME VARCHAR2(30);


--Q4. Insert the following roles in the STATE_CITY table:
INSERT INTO STATE_CITY VALUES('NV', 'Nevada', 'Las Vegas');
INSERT INTO STATE_CITY VALUES('IL', 'Illinois', 'Chicago');
INSERT INTO STATE_CITY VALUES('NY', 'New York', 'New York');


--a. RUN 
COMMIT;

--b RUN
DESC state_city;

SELECT * FROM state_city;



--Q5 Below is the DDL to create and load the T table:
CREATE TABLE t ( pid
NUMBER(5), fname
VARCHAR2(20), lname
VARCHAR2(25));
INSERT INTO t (pid, fname, lname) VALUES (1, 'Dan', 'Morgan');
INSERT INTO t (pid, fname, lname) VALUES (2, 'Jeremiah',
'Wilton'); INSERT INTO t (pid, fname, lname) VALUES (3,
'Helen', 'Lofstrom');
COMMIT;

--b.  RUN
DESC t;


SELECT * FROM t;



--Part 2
--a. Grant SELECT privileges on the table STATE_CITY to user IT47827
GRANT SELECT ON STATE_CITY TO IT47827;


--b. Grant all privileges on the tables STATE_CITY and T to user IT47828. (Will require more than 1 statement)
GRANT SELECT ON STATE_CITY TO IT47828;

GRANT DELETE ON T TO IT47828;

GRANT DELETE ON STATE_cITY TO IT47828;

GRANT SELECT ON T TO IT47828;

GRANT INSERT ON STATE_CITY TO IT47828;

GRANT SELECT ON T TO IT47828;


--c. Grant SELECT, INSERT and DELETE privileges on the tables STATE_CITY and T to user IT47829. (Will require more than 1 statement).
GRANT SELECT ON T TO IT47829;

GRANT INSERT ON STATE_CITY TO IT47829;

GRANT INSERT ON T TO IT47829;

GRANT DELETE ON STATE_CITY TO IT47829;

GRANT DELETE ON T TO IT47829;


--d. i. Run the SQL below
SET pagesize 40
COLUMN table_name FORMAT A14
COLUMN PRIVILEGE FORMAT A20
COLUMN GRANTEE FORMAT A10

    --ii. show me the results
select TABLE_NAME, PRIVILEGE, GRANTEE 
from USER_TAB_PRIVS
ORDER BY GRANTEE, TABLE_NAME;



 --iii. EXPLAIN (in your own words) the results   
 --Answer:
       --The results obtaind shows the tables in the database e.g: INVOICES, SHARKATTACKS, STATE_CITY, and also the type of privileges available, and the grantee. Also, it shows the current user which is me and the privilege I have and the grantee


--e. Revoke the SELECT privileges on the table STATE_CITY from user IT47827.

REVOKE SELECT ON STATE_CITY from IT47827;


--f. Revoke the DELETE privileges on the tables STATE_CITY and T from users IT47828 and IT47829. (Will require more than 1 statement)

REVOKE DELETE ON STATE_CITY FROM IT47828;

REVOKE DELETE ON T FROM IT47828;

REVOKE DELETE ON STATE_CITY FROM IT47829;

REVOKE DELETE ON T FROM IT47829;

--g. Revoke all privileges on the table T from user IT47829.

REVOKE ALL ON T FROM IT47829;


--h. i. Run the SQL below 
SET pagesize 40 
COLUMN table_name FORMAT A14
COLUMN PRIVILEGE FORMAT A20 
COLUMN GRANTEE FORMAT A10 

--ii. show me the results
select TABLE_NAME, PRIVILEGE, GRANTEE
from USER_TAB_PRIVS ORDER BY
GRANTEE, TABLE_NAME;



-- iii. EXPLAIN (in your own words) the results (Why are the results different than those in d?).
        -- Answer: 
            --The SQL statements results shows the  tables names in the database, type of privileges available, and grantee. Also, it has the current user which is me and the privileges I have and the grantee
            --The results are different from those in d because we revoked privileges on the table STATE_CITY from user IT47827 in e and also revoked revoke the DELETE privileges on the tables STATE_CITY and T
            -- from users IT47828 and IT47829 and so the details of the ungranted previlages associated with these are ommited in the result set that is why with have fewer rowls for h i) compared to those in d)



--Part 3. IMPORTANT: For a-e below
--i. Run the SQL, ii. show me the results, and iii. EXPLAIN (in your own words) the results.
--a.
SELECT * FROM user_role_privs;

--Explanation: 
        --This SQL query results shows the user name and the role granted to the current user which is me  
--b.
SELECT * FROM user_sys_privs;
-- Explanation: 
        --This SQL results show  user name, and the of Lists system privileges granted to the current user which is me.
        
--c
SELECT * FROM role_sys_privs;
   --Explanation: 
        -- This SQL result shows the details of system privileges granted to roles 

--d
SELECT * FROM table_privileges WHERE owner LIKE 'I%';
   --Explanation:
        --This SQL result shows the persons who have given privileges and the actual privilegee given, and whether the various itemized privileges have been granted and are working

--e
SELECT * FROM session_privs;
   -- Explanation:
            -- This SQL results shows the privileges granted that are currently available to the user. 





