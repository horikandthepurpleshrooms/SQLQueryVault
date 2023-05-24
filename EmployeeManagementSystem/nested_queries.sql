-- Find names of all employees who have
-- sold over 30.000 to a single client

SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id
    FROM works_with
    WHERE works_with.total_sales > 30000
);

-- Find all clients who are handled by the branch
-- hat Michael Scott manages 
-- Assume you know Michael Scott's ID
SELECT client.client_id
FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
    LIMIT 1
);
