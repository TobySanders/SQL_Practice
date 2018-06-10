/* Logic of left join

SELECT {what you want to select}
FROM {the table with the specific field we want to find}
LEFT JOIN
{the table we would like the reference against} on LHS.{shared key} = RHS.{shared key}

*/






/* WHY THIS QUERY IS WRONG (but okay for the solution)
	This query is wrong, if you refer to the logic of the table;
    we will grab all employees, and then IF they are also a manager
    we will add additional information
    THEN we will select only the employees with the last name markovitch
    
    RESULT:
    A table containing ALL employees called Markovitch
    And if that employee is a manager we will have their manager details
*/
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    dm.from_date
FROM
    employees e
        LEFT JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
WHERE
    e.last_name = 'Markovitch'
ORDER BY dm.dept_no DESC;

/*WHY THIS QUERY IS RIGHT (but doesn't match the solution)
This query grabs a list of all managers, and then grabs those managers employee information
(this is an assumption based on all managers MUST be employees and therefore we have
an employee record for them) we then create the subset of managers called markovitch

RESULT:
A table containing all managers called markovitch
*/
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    dm.from_date
FROM
    dept_manager dm
        LEFT JOIN
    employees e ON dm.emp_no = e.emp_no
WHERE
    e.last_name = 'Markovitch'
ORDER BY dm.dept_no DESC;