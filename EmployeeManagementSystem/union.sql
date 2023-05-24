-- Find a list of all clients and branch suppliers names
SELECT client_name AS name, branch_id
FROM client
UNION
SELECT supplier_name, branch_id
FROM branch_supplier;

-- Find a list of all money spent or earned by the company
SELECT salary as salaries_and_total_sales
FROM employee
UNION 
SELECT total_sales
FROM works_with;
