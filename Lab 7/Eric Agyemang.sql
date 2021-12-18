SET ECHO ON;
-- ERIC AGYEMANG
-- IT 478 ADVANCED DATABASE PROCESSING
--LAB #7
--1. Find the names of sailors and the number of boats they have reserved (even if the number is zero) use a LEFT JOIN
SELECT sname, COUNT(*) AS Number_of_Boats_Reserved
FROM SAILORS s
LEFT JOIN RESERVES r 
     ON s.SID = r.SID
LEFT JOIN BOATS b ON r.BID = b.BID
GROUP BY sname;


--2. Find the names of sailors who have reserved a red but not a blue boat (use MINUS)
SELECT sname
FROM SAILORS s JOIN RESERVES r ON s.SID = r.SID
JOIN BOATS b ON r.BID = b.BID
WHERE COLOR = 'red'
MINUS
SELECT sname
FROM SAILORS s JOIN RESERVES r ON s.SID = r.SID
JOIN BOATS b ON r.BID = b.BID
WHERE COLOR = 'blue';


--3. Find the names of sailors who have reserved all boats (use one or more INTERSECTS)
SELECT sname
FROM SAILORS s JOIN RESERVES r ON s.SID = r.SID
JOIN BOATS b ON r.BID = b.BID
WHERE COLOR = 'red'
INTERSECT
SELECT sname
FROM SAILORS s JOIN RESERVES r ON s.SID = r.SID
JOIN BOATS b ON r.BID = b.BID
WHERE COLOR = 'blue'
INTERSECT
SELECT sname
FROM SAILORS s JOIN RESERVES r ON s.SID = r.SID
JOIN BOATS b ON r.BID = b.BID
WHERE COLOR = 'green';


--4. Find all sids of sailors who have a rating of 10 or have reserved boat 104 (use a UNION)
SELECT sid
FROM SAILORS 
WHERE RATING = 10
UNION 
SELECT sid
FROM RESERVES
WHERE BID = 104;

--5. Find all sids of sailors who have a rating of 10 and have reserved boat 104 (use an INTERSECT)
SELECT sid
FROM SAILORS 
WHERE RATING = 10
INTERSECT
SELECT sid
FROM RESERVES
WHERE BID = 104;


--6. Count the number of different sailor names
SELECT COUNT(sname) AS Number_of_Different_Sailors
FROM(
(SELECT DISTINCT sname FROM SAILORS));





--7. Find the names of all boats reserved by Dustin  MINUS the boats reserved by Horataio (use MINUS).
SELECT bname, bid
FROM SAILORS JOIN RESERVES USING(sid)
             JOIN BOATS USING(bid)
             WHERE sname = 'Dustin'
MINUS

SELECT bname, bid
FROM SAILORS JOIN RESERVES USING(sid)
             JOIN BOATS USING(bid)
WHERE sname = 'Horataio';


--8. Find the dates and boat name when both Dustin and Horataio reserved the same boat on the same day.
SELECT bname, bid, day
FROM SAILORS JOIN RESERVES USING(sid)
             JOIN BOATS USING(bid)
             WHERE sname = 'Dustin'
INTERSECT

SELECT bname, bid, day
FROM SAILORS JOIN RESERVES USING(sid)
             JOIN BOATS USING(bid)
WHERE sname = 'Horataio';




--9. Find the dates and boat name when Horataio rented a boat on a day when Dustin did not reserve a boat.

SELECT bname, day AS dates
FROM SAILORS JOIN RESERVES USING(sid)
             JOIN BOATS USING(bid)
             WHERE sname = 'Horataio'
MINUS

SELECT bname, day AS dates
FROM SAILORS JOIN RESERVES USING(sid)
             JOIN BOATS USING(bid)
WHERE sname = 'Dustin';


--10. Find the names of all sailors who have never reserved a boat use a RIGHT JOIN.
SELECT S.sname
FROM SAILORS S
WHERE S.sid NOT IN(
SELECT R.sid 
FROM SAILORS S RIGHT JOIN RESERVES R
ON S.sid = R.sid
             RIGHT JOIN BOATS B
             ON R.bid =B.bid);


--11. Join all three tables using FULL JOINS. 
SELECT * 
FROM SAILORS s FULL JOIN RESERVES r
ON s.sid = r.sid
FULL JOIN BOATS b
ON r.bid = b.bid;



