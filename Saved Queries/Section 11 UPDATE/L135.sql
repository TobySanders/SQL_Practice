SELECT 
    *
FROM
    departments;

COMMIT;

update departments
set 
	dept_name = 'Data Analysis'
where dept_name = 'Business Analysis';

