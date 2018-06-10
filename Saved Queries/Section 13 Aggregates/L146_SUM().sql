SELECT 
    SUM(salary) AS total_spent
FROM
    salaries
WHERE
    from_date > '1997-01-01';