-- Find all branches and the names of their managers

-- JOIN is used to combine rows from two or more tables based on the related column

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

-- LEFT JOIN - gets all the rows from the left table

-- RIGHT JOIN - gets all the rows from the right table

-- FULL OUTER JOIN - gets all the rows from both right and left tables no matter the condition, cannot do it in MySQL