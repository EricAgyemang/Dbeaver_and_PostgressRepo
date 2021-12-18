-- ERIC AGYEMANG--
-- IT 478 ADVANCED DATABASE PROCESSING --

-- LAB #1 DDL--
-- DROP TABLES IF EXISTS.

DROP TABLE reserves;
DROP TABLE sailors;
DROP TABLE boats;

-- CREATE TABLES
CREATE TABLE sailors(
 sid INT NOT NULL CONSTRAINT sailors_PK PRIMARY KEY,
 sname VARCHAR2(20),
 rating INT,
 age DECIMAL(4,1)
);
CREATE TABLE boats(
 bid INT NOT NULL CONSTRAINT BOAT_PK PRIMARY KEY,
 bname VARCHAR2(20),
 color VARCHAR2(20)
 );

CREATE TABLE reserves(
 sid INT,
 bid INT,
 day DATE,
 PRIMARY KEY (sid,bid,day),
 FOREIGN KEY (sid) REFERENCES sailors(sid) ON DELETE CASCADE,
 FOREIGN KEY (bid) REFERENCES boats(bid) ON DELETE CASCADE
); 
-- INITIALIZE THE TABLES
INSERT INTO sailors (sid,sname,rating,age) VALUES(22,'Dustin',7,45.0);
INSERT INTO sailors (sid,sname,rating,age) VALUES(29,'Brutus',1,33.0);
INSERT INTO sailors (sid,sname,rating,age) VALUES(31,'Lubber',8,55.5);
INSERT INTO sailors (sid,sname,rating,age) VALUES(32,'Andy',8,25.5);
INSERT INTO sailors (sid,sname,rating,age) VALUES(58,'Rusty',10,35.0);
INSERT INTO sailors (sid,sname,rating,age) VALUES(64,'Horataio',7,35.0);
INSERT INTO sailors (sid,sname,rating,age) VALUES(71,'Zorba',10,16.0);
INSERT INTO sailors (sid,sname,rating,age) VALUES(74,'Horataio',9,35.0);
INSERT INTO sailors (sid,sname,rating,age) VALUES(85,'Art',3,25.5);
INSERT INTO sailors (sid,sname,rating,age) VALUES(95,'Bob',3,63.5);
INSERT INTO boats (bid,bname,color) VALUES(101,'Interlake','blue');
INSERT INTO boats (bid,bname,color) VALUES(102,'Interlake','red');
INSERT INTO boats (bid,bname,color) VALUES(103,'Clipper','green');
INSERT INTO boats (bid,bname,color) VALUES(104,'Marine','red');

INSERT INTO reserves(sid,bid,day) VALUES(58,101,'10-OCT-20');
INSERT INTO reserves(sid,bid,day) VALUES(58,102,'10-OCT-20');
INSERT INTO reserves(sid,bid,day) VALUES(58,103,'8-OCT-20');
INSERT INTO reserves(sid,bid,day) VALUES(29,104,'7-OCT-20');
INSERT INTO reserves(sid,bid,day) VALUES(29,102,'10-Nov-20');
INSERT INTO reserves(sid,bid,day) VALUES(71,103,'6-NOV-20');
INSERT INTO reserves(sid,bid,day) VALUES(74,104,'12-NOV-20');
INSERT INTO reserves(sid,bid,day) VALUES(64,101,'5-SEP-20');
INSERT INTO reserves(sid,bid,day) VALUES(64,102,'8-SEP-20');
INSERT INTO reserves(sid,bid,day) VALUES(74,103,'8-SEP-20');
COMMIT;
-- END LAB #1 DDL--


-- ANSWERS TO THE LAB
-- QUESTION 1
SET ECHO ON;

SELECT sname
FROM sailors S JOIN reserves r
    ON s.sid = r.sid
WHERE bid = 102;


-- QUESTION 2
SELECT DISTINCT sname
FROM sailors s JOIN reserves r
 ON s.sid = r.sid
 WHERE bid != 102;

-- EXTRA CREDIT
SELECT sname
FROM sailors s JOIN reserves r
 ON s.sid = r.sid
 WHERE bid != 102;

-- QUESTION 3
SELECT DISTINCT sname
FROM sailors s, reserves r, boats b
 WHERE s.sid = r.sid
  AND r.bid = b.bid
  AND b.color = 'blue';

-- QUESTION 4
SELECT color
FROM boats b JOIN reserves r
 ON b.bid = r.bid
 JOIN sailors s
 ON s.sid = r.sid
 WHERE sname = 'Rusty';

-- QUESTION 5
SELECT DISTINCT S.sname, S.sid
FROM sailors S, reserves R
WHERE S.sid = R.sid
ORDER BY sid;

-- QUESTION 6
SELECT DISTINCT sname, sailors.sid
FROM sailors JOIN reserves
 ON sailors.sid = reserves.sid
 JOIN boats
 ON boats.bid = reserves.bid
 WHERE color IN ('red', 'blue');















