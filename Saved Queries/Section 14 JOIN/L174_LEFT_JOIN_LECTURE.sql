DELETE FROM dept_manager_dup 
WHERE
    emp_no = '110228';
    
DELETE FROM departments_dup 
WHERE
    dept_no = 'd009';
    
Insert into dept_manager_dup
values('110228','d003','1992-03-21','9999-01-01');

insert into departments_dup
values('d009', 'customer_service');


/*
	Left join returns all columns from the LHS of the declaration
    AND the joining column
    BUT none of the data from the RHS
*/
SELECT 
    d.dept_no, m.emp_no, d.dept_name
FROM
    departments_dup d
        LEFT JOIN
    dept_manager_dup m ON m.dept_no = d.dept_no
#GROUP BY emp_no;
ORDER BY d.dept_no;



