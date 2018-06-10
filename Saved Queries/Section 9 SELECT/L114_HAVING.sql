-- wrong
SELECT 
    emp_no, AVG(salary)
FROM
    salaries
WHERE
    salary > 120000
GROUP BY emp_no;


-- right
SELECT 
    emp_no, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING avg(salary) > 120000;