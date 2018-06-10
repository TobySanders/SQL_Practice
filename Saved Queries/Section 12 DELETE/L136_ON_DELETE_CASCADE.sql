COMMIT;

SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;
    
DELETE FROM employees 
WHERE
    Emp_no = 999903;
    
ROLLBACK;