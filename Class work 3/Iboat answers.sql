-- Q1
SELECT *
FROM iships LEFT JOIN iboats 
ON iships.sub_id = iboats.sub_id;

-- Q2
SELECT *
FROM iships RIGHT JOIN iboats 
ON iships.sub_id = iboats.sub_id;

-- Q3
SELECT *
FROM iships FULL JOIN iboats 
ON iships.sub_id = iboats.sub_id;

-- Q4
SELECT *
FROM iships, subs
WHERE iboats.sub_id(+) = iships.sub_id;

-- Q5
SELECT *
FROM iships, iboats
WHERE iboats.sub_id = iships.sub_id(+);

-- Q6
SELECT *
FROM iships RIGHT JOIN iboats 
ON iships.sub_id = iboats.sub_id 
AND iships.country!='US' ;

-- Q7
SELECT sub.sub_id, COUNT(ship.sub_id) AS TOTAL
FROM iships ship RIGHT JOIN iboats sub
ON ship.sub_id = sub.sub_id
GROUP BY (sub.sub_id);

-- Q8
SELECT sub.sub_id, COUNT(ship.sub_id) AS TOTAL
FROM iships ship RIGHT JOIN iboats sub
ON ship.sub_id = sub.sub_id
GROUP BY (sub.sub_id)
HAVING count(ship.sub_id) > 0;