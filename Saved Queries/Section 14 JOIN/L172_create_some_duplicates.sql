Insert into dept_manager_dup
values('110228','d003','1992-03-21','9999-01-01');

insert into departments_dup
values('d009', 'customer_service');

-- this now returns 5 extra rows
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
GROUP BY emp_no #this is the most unique field so will hide duplicates
ORDER BY m.dept_no;