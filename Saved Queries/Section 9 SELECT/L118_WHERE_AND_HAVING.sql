SELECT 
    emp_no, COUNT(from_date) AS number_of_contracts
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(from_date) > 1
ORDER BY emp_no;