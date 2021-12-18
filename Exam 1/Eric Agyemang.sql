SHOW PAGESIZE;
SET PAGESIZE 20;


SET ECHO ON;
-- AGYEMANG ERIC
-- IT 478 ADVANCED DATABASE PROCESSING
-- EXAM 1

-- Q3.Show first name, last name, city, state and whole years of service (no decimal places) for all employees--Order by last name ascending. Use only explicit joins.
SELECT first_name,last_name,city, state, ROUND((SYSDATE-start_date)/365) AS "Whole Years of Service" 
FROM employees e 
    JOIN addresses a ON e.employee_id = a.employee_id
ORDER BY last_name;


-- Q5. List the 3 youngest employees first name, last name, branch_name and division_name. Show first name, last name and whole years of age (no decimal places). (Show only three employees) Order by age descending. Use only implicit joins.
SELECT *
FROM (SELECT e.first_name,e.last_name,b.branch_name,d.division_name,ROUND((SYSDATE-dob)/365) AS "AGE"
FROM employees e,addresses a,branches b,divisions d
WHERE e.employee_id=a.employee_id AND
e.branch_id=b.branch_id AND b.division_id=d.division_id
ORDER BY AGE
FETCH FIRST 3 ROWS ONLY)
ORDER BY AGE DESC;



-- Q6. List the 3 youngest employees first name, last name, branch_name and division_name. Show first name, last name and whole years of age (no decimal places). (Show only three employees) Order by age descending. Use only explicit joins.
SELECT* 
FROM (SELECT e.first_name,e.last_name,b.branch_name,d.division_name,ROUND((SYSDATE-dob)/365) AS "AGE"
FROM addresses a JOIN employees e ON a.employee_id=e.employee_id 
     JOIN branches b ON e.branch_id=b.branch_id 
          JOIN divisions d ON b.division_id=d.division_id
ORDER BY AGE
FETCH FIRST 3 ROWS ONLY)
ORDER BY AGE DESC;


-- Q7. Show the first name, last name, branch_name and division_name and the age at hire of the 3 employees who were the oldest when they were hired (Show only three employees) Use only implicit joins.
SELECT* 
FROM (SELECT e.first_name,e.last_name,b.branch_name,d.division_name,ROUND((start_date-dob)/365) AS "AGE_AT_HIRE"
FROM employees e,addresses a,branches b,divisions d
WHERE e.employee_id=a.employee_id AND
e.branch_id=b.branch_id AND b.division_id=d.division_id
ORDER BY AGE_AT_HIRE DESC)
FETCH FIRST 3 ROWS ONLY;

-- Q8. Show the first name, last name, branch_name and division_name and the age at hire of the 3 employees who were the oldest when they were hired (Show only three employees) Use only explicit joins.
SELECT* 
FROM (SELECT e.first_name,e.last_name,b.branch_name,d.division_name,ROUND((start_date-dob)/365) AS "AGE_AT_HIRE"
      FROM employees e 
         JOIN addresses a ON e.employee_id=a.employee_id 
             JOIN branches b ON e.branch_id=b.branch_id 
                  JOIN divisions d ON  b.division_id=d.division_id
ORDER BY AGE_AT_HIRE DESC)
FETCH FIRST 3 ROWS ONLY;


-- Q11. Show first name, last name, and date_awarded for all winners of the “Employee of the year” award. Use only natural joins.
SELECT first_name,last_name,date_awarded
FROM employees NATURAL JOIN awards NATURAL JOIN employee_awards
WHERE award_desc='Employee of the year';



-- Q12. Show first name, last name, and date_awarded for all winners of the “Employee of the year” award. Use only implicit joins.
SELECT e.first_name,e.last_name,enp.date_awarded
FROM employees e,employee_awards enp, awards a
WHERE e.employee_id=enp.employee_id AND 
enp.award_id=a.award_id AND
a.award_desc='Employee of the year';

-- Q14. Show first name and last name for all winners of BOTH the “Employee of the year” and "Best new employee" awards. Use only natural joins.
SELECT first_name,last_name
FROM employees NATURAL JOIN awards NATURAL JOIN employee_awards 
WHERE award_desc = 'Employee of the year'

INTERSECT

SELECT first_name,last_name
FROM employees NATURAL JOIN awards NATURAL JOIN employee_awards 
WHERE award_desc = 'Best new employee';


-- Q15. Show first name, last name and award_desc for all winners of either the “Employee of the year” or "Best new employee" awards. Use IN
SELECT e.first_name,e.last_name, award_desc
FROM employees e,employee_awards enp, awards a
WHERE e.employee_id=enp.employee_id AND 
enp.award_id=a.award_id AND award_desc IN ('Employee of the year', 'Best new employee');


--Q16. Show first name, last name and award_desc for all winners of either the “Employee of the year” or "Best new employee" awards. Use only natural joins.
SELECT first_name, last_name, award_desc
FROM employees NATURAL JOIN awards NATURAL JOIN employee_awards 
WHERE award_desc IN ('Employee of the year', 'Best new employee');


-- Q17. Show first name, last name and award_desc for all winners of either the “Employee of the year” or "Best new employee" awards. Use UNION.
SELECT first_name,last_name, award_desc
FROM employees NATURAL JOIN awards NATURAL JOIN employee_awards 
WHERE award_desc = 'Employee of the year'

UNION

SELECT first_name,last_name, award_desc
FROM employees NATURAL JOIN awards NATURAL JOIN employee_awards 
WHERE award_desc = 'Best new employee';


--Q18. Show all employees last name, blog_desc and blog_url. If the employee does not have a blog, show "No Blog" in the blog_desc column and "NA" in the blog_url column.
SELECT last_name, NVL((blog_desc), 'No Blog') AS blog_desc, NVL((blog_url), 'NA') AS blog_url
FROM
(SELECT e.last_name, b.blog_desc, b.blog_url
FROM employees e 
     LEFT JOIN websites w ON e.employee_id=w.employee_id 
        LEFT JOIN blogs b ON w.blog_id=b.blog_id);
      
      
-- Q19. Show all employees last name, branch_name and division_name. If the employee does not have a branch_name or division_name, those columns should be blank.
SELECT last_name, NVL((branch_name), ' ') AS branch_name, NVL((division_name), ' ') AS division_name
FROM
(SELECT e.last_name, b.branch_name, d.division_name
FROM employees e 
     LEFT JOIN branches b ON b.branch_id=e.branch_id 
        LEFT JOIN divisions d ON b.division_id=d.division_id);
        

-- Q20. show all employees' first name and last name and the first name and last name of their project manager. If the employee does not have a project manager, the first name and last name of their project manager should be blank.
SELECT e.first_name, e.last_name, e.employee_id, NVL((pmgr.first_name), ' ') AS project_manager_first_name, NVL((pmgr.last_name), ' ') AS project_manager_last_name
FROM employees e 
     LEFT JOIN projects p USING (project_id) LEFT JOIN 
     (SELECT first_name, last_name, employee_id FROM employees e JOIN projects p USING(project_id) 
     WHERE  e.employee_id=p.project_mgr_id) pmgr
     ON p.project_mgr_id = pmgr.employee_id;

-- Q22. Do a full outer join on the employees, emails and messages tables. Use on.
SELECT *
FROM employees
   FULL OUTER JOIN emails ON employees.employee_id=emails.employee_id
         FULL OUTER JOIN messages ON emails.employee_id = messages.employee_id;



--Q23. Show the first name, last name, website_desc and blog_desc for all employees with either a website or a blog. Use UNION ALL. Results should have only three columns: first name, last name and "Website or Blog".
SELECT first_name, last_name , website_desc AS Website_or_Blog
FROM
(SELECT e.first_name, e.last_name, s.website_desc
FROM employees e JOIN websites s 
  ON e.employee_id = s.employee_id

UNION ALL

SELECT e.first_name, e.last_name, b.blog_desc
FROM employees e JOIN websites s 
  ON e.employee_id = s.employee_id 
  JOIN blogs b ON s.blog_id=b.blog_id)
ORDER BY first_name;

-- Q26. Show first name and last name for all winners “Employee of the year” award that have not won the "Best new employee" award. Use MINUS.
SELECT first_name, last_name
FROM employees NATURAL JOIN employee_awards NATURAL JOIN awards
WHERE award_desc = 'Employee of the year'

MINUS

SELECT first_name, last_name
FROM employees NATURAL JOIN employee_awards NATURAL JOIN awards
WHERE award_desc = 'Best new employee';


--Q28. List the first name, last name and email_address for all employees with either a gmail or yahoo email address. Use an implicit join.
SELECT first_name, last_name, email_address 
FROM EMPLOYEES, EMAILS
WHERE EMPLOYEES.employee_id = EMAILS.employee_id AND email_address LIKE '%gmail%' OR email_address LIKE '%yahoo%';



--Q29. List the first name, last name, city, state and email_address of all employees that live in Kansas (KS) and have a linkedup.com email account. Use using() for all joins.
SELECT e.first_name, e.last_name, a.city, a.state, m.email_address
FROM employees e JOIN addresses a USING(employee_id) JOIN emails m USING(employee_id)
WHERE state = 'KS' AND email_address LIKE '%linkedup.com%';



--Q30. Show the first name, last name, and blog_desc for the blogs with the 2nd and 3rd highest hit counts.
SELECT e.first_name, e.last_name, b.blog_desc, b.hit_count
FROM employees e JOIN websites w 
    ON e.employee_id = w.employee_id
    JOIN blogs b ON w.blog_id = b.blog_id
ORDER BY b.hit_count DESC
OFFSET 1 ROWS 
FETCH NEXT 2 ROWS ONLY;















